unit WordUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WordXP, OleServer, Grids, JvExGrids, JvStringGrid,
  JvgStringGrid
  ,ComObj
  ;

const
 // AWordDoc = 'C:\Dropbox\Share5\Work\НИР_мониторинг_2016\Таблица ИТОГ 29.08.2016.doc'
  AWordDoc = 'C:\Dropbox\Share5\Work\НИР_мониторинг_2016\1.doc';

type TGridRect = record
  case Integer of
     0: (Left, Top, Right, Bottom: Longint);
     1: (TopLeft, BottomRight: TGridCoord);
  end;



///////////////////////////////////////
type

TWordTableCell = record
   Merged : boolean;//индикатор объединенности ячеек
   VertCellMerged : boolean;
   PrevMerCol : integer;
   NextMerCol : integer;
   EndMerRow : integer;
   EndMerCol : integer;
   CellWidth : single;//ширина ячейки
   CellHeight : single;
   TableLeft : single;
   Text : OleVariant;//содержимое ячейки. К сожалению, только текст.
end;

TWordTableCells = array of array of TWordTableCell;

///////////////////////////

type
  TWordForm = class(TForm)
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    WordFont1: TWordFont;
    WordParagraphFormat1: TWordParagraphFormat;
    MStringGrid1: TStringGrid;
    JvgStringGrid1: TJvgStringGrid;
    JvStringGrid1: TJvStringGrid;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
  protected
    WApp : WordApplication;
    FTable : Table;
    FMaxUsedRows : integer; //максимальное количество используемых строк в компоненте
    FMaxUsedCols : integer; //максимальное количество столбцов в компоненте
    FWordTableCell : TWordTableCells;//массив ячеек компонента

    procedure GetTable;//процедура считывает некоторые свойства ячеек таблицы Word в запись FWordTableCell
    procedure CalcWordTableProp;//процедура обрабатывает считанные данные

/////////////////////////////
  public
    { Public declarations }
  end;


var
  WordForm: TWordForm;

  XL: Variant;
  Doc: Variant;

  { input }
  DocFileName:string;

//
MSWord, Table: OLEVariant;
  iRows, iCols, iGridRows, jGridCols, iNumTables, iTableChosen: Integer;
  CellText: string;
  InputString: string;
//

implementation

uses Math;

{$R *.dfm}

procedure TWordForm.FormCreate(Sender: TObject);
var
  before :string;
  after   :string;
begin

bif not FileExists(AWordDoc) then Exit ;


  try
b    MSWord := CreateOleObject('Word.Application');
  except
    // Error....
    Exit;
  end;

   try
    MSWord.Visible := true;
    MSWord.Documents.Open(AWordDoc);

    // Get number of tables in document
    iNumTables := MSWord.ActiveDocument.Tables.Count;

    //InputString := InputBox(IntToStr(iNumTables) +  ' Tables in Word Document', 'Please Enter Table Number', '1');
    // Todo: Validate string for integer, range...
    //iTableChosen := StrToInt(InputString);
    iTableChosen := 2;

    // access table
    Table := MSWord.ActiveDocument.Tables.Item(iTableChosen);
    // get dimensions of table
    iCols :=  Table.Columns.Count;
    iRows :=  Table.Rows.Count;
    // adjust stringgrid columns
    StringGrid1.RowCount := iRows +1;
    StringGrid1.ColCount := iCols + 1 +1;

    // loop through cells
    for iGridRows := 1 to iRows do
      for jGridCols := 1 to iCols do
      begin
        CellText := Table.Cell(jGridCols, iGridRows).Range.FormattedText;
        if not VarisEmpty(CellText) then
        begin
          // Remove Tabs
          before := '#0$D';
          after  := '';
          //CellText := SysUtils.StringReplace(CellText, before, after, [rfReplaceAll]);
          // Remove linebreaks
          before := '#0$7';
          after  := '';
          CellText := StringReplace(CellText, Chr(7) ,after, [rfReplaceAll]);
          CellText := StringReplace(CellText, #13 ,after, [rfReplaceAll]);
          CellText := StringReplace(CellText, #10 ,after, [rfReplaceAll]);

          // fill Stringgrid
          Stringgrid1.Cells[iGridRows, jGridCols] := CellText;
        end;
      end;
    //..
  finally
    MSWord.Quit;
  end;
 Exit;
 
  GetTable;
  CalcWordTableProp;
end;

{Ядром обработки таблицы является следующая процедура:}
procedure TWordForm.GetTable;
var i,j, UndoCount : integer;
     NumRows, NumColumns : OleVariant;
     bool : boolean;
begin

  FTable := WApp.ActiveDocument.Tables.Item(1); //первая таблица активного документа
  FMaxUsedRows := FTable.Rows.Count;
  FMaxUsedCols := FTable.Columns.Count;

  SetLength(FWordTableCell,0, 0);
  SetLength(FWordTableCell,FMaxUsedRows+1, FMaxUsedCols+1);
  WApp.Visible := true;
  NumColumns := 1;

   for i := 1 to FMaxUsedRows do
     for j := 1 to FMaxUsedCols do
     begin
      FWordTableCell[i,j].VertCellMerged := false;
      try
          FTable.Cell(i,j).HeightRule := wdRowHeightAtLeast;

          if FTable.Cell(i,j).Width >= 99999 then
          begin
           NumRows := 1;
           UndoCount := 1;
           repeat
            inc(NumRows);
            inc(UndoCount);
            if (FTable.Cell(i,j).Width >= 99999) then
            begin
              bool := false;
              try
               try
                try
                 FTable.Cell(i,j).Split(NumRows, NumColumns);
                 NumRows := 1;
                except
                end;
               except
               end;
              except
              end;
            end
            else bool := true;
           until bool;
            FWordTableCell[i,j].CellWidth := FTable.Cell(i,j).Width;
            while UndoCount <> 1 do
             begin
              dec(UndoCount);
              WApp.ActiveDocument.Undo(EmptyParam);
             end;
          end else
          FWordTableCell[i,j].CellWidth := FTable.Cell(i,j).Width;
          FWordTableCell[i,j].CellHeight := FTable.Cell(i,j).Height;
          FWordTableCell[i,j].Merged := false;
          FWordTableCell[i,j].Text := FTable.Cell(i,j).Range;
        except
          FWordTableCell[i,j].CellWidth := 0;
          FWordTableCell[i,j].CellHeight := FTable.Rows.Height;
          FWordTableCell[i,j].Merged := true;
        end;
      FWordTableCell[i,j].PrevMerCol := -1;
      FWordTableCell[i,j].NextMerCol := -1;
     end;
  CalcWordTableProp;
end;

{
В этой процедуре выполняется последовательное обращение к ячейкам таблицы и формирование записи FWordTableCell для каждой ячейки,
характеризующей считываемую таблицу Word (как ни странно, здесь необходима именно тройная упаковка в try except end).
Нужно обратить внимание, что некоторые ячейки приходится разбивать, т.к. для них невозможно определить никаких данных.
(К сожалению, при прогонке программы в ручном режиме клавишами F7, F8 или F9, всегда возникает сообщение об ошибке,
даже если отключить Tools->Debugger Option->Language Exception Stop on Delphi Exception).
Как видно из кода, инициализируются не все поля записи FWordTableCell.
Для определения остальных полей производится обработка данных в процедуре CalcWordTableProp:
}
procedure TWordForm.CalcWordTableProp;
var i, j, k, N, EndCol: integer;
    FTableWidth : single;

  procedure CalcTableVertMergedInfo(i,j:integer);
  var Col : integer;
  begin
   for Col := 1 to FMaxUsedCols do
      if ((abs(FWordTableCell[i-1,Col].TableLeft-
                  FWordTableCell[i,j].TableLeft) <= 1) and
                  (FWordTableCell[i-1,Col].CellWidth <> 0))then
        begin
         FWordTableCell[i-1,Col].VertCellMerged := true;
         FWordTableCell[i-1,Col].NextMerCol := j;
         FWordTableCell[i,j].PrevMerCol := col;
         FWordTableCell[i,j].CellWidth := FWordTableCell[i-1,Col].CellWidth;
         Exit;
        end;
  end;
begin
{Эта часть для нахождения признаков вериткальной объединенности ячеек  существующей таблицы}
 for i := 1 to FMaxUsedRows do
  begin
   FWordTableCell[i,0].TableLeft:=0;
     for j := 1 to FMaxUsedCols do
     begin
      with FWordTableCell[i,j] do
      begin
       TableLeft := FWordTableCell[i,j - 1].TableLeft+
                     FWordTableCell[i,j - 1].CellWidth;

       FTableWidth := 0;
       for k := 1 to FMaxUsedCols do FTableWidth := FTableWidth + FWordTableCell[i-1, k].CellWidth;

       VertCellMerged := false;
       if Merged and not (FWordTableCell[i,j].TableLeft = FTableWidth) then
          CalcTableVertMergedInfo(i,j);
      end;
     end;
   end;

{Эта часть для нахождения характеристик вертикально объединенных ячеек}
   for j := 1 to FMaxUsedCols do
     for i := 1 to FMaxUsedRows do
      if FWordTableCell[i,j].VertCellMerged then
      begin
        N := 0;
        EndCol := j;
        while FWordTableCell[i + N, EndCol].NextMerCol <> -1 do
        begin
         EndCol := FWordTableCell[i + N, EndCol].NextMerCol;
         inc(N);
        end;
        FWordTableCell[i,j].EndMerRow := i + N;
        FWordTableCell[i,j].EndMerCol := EndCol;
      end;
{================================}
end;

procedure R1();
var tmpBoolean :Boolean;
begin



end;

end.
