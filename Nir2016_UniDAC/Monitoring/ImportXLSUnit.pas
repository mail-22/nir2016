unit ImportXLSUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs
, Unit_BaseForm, StdCtrls, ComCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement
  , ADODB
  , ComObj, ActiveX
  ,DB, Grids, MemDS, DBAccess, Uni, UniProvider, ODBCUniProvider,
  AccessUniProvider
  ;


type
  TImportXLSUnitForm = class(TForm)
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    UniConnection1: TUniConnection;
    AccessUniProvider1: TAccessUniProvider;
    UniTransaction1: TUniTransaction;
    unqryAllNorm: TUniQuery;
    intgrfld1: TIntegerField;
    strngfld1: TStringField;
    strngfld2: TStringField;
    strngfld3: TStringField;
    strngfld4: TStringField;
    strngfld5: TStringField;
    mfld1: TMemoField;
    dsAllNorm: TDataSource;
    strngfldAllNormF: TStringField;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure metod1;
    { Public declarations }
  end;

procedure Xls_Open(XLSFile:string; Grid:TStringGrid);

var
  ImportXLSUnitForm: TImportXLSUnitForm;
  DataSet: TDataSet;
  strTmp :string;
  tmpB : Boolean;

implementation

uses
  DMUnit;

{$R *.dfm}

var
  XLSFile :string;

procedure TImportXLSUnitForm.btn1Click(Sender: TObject);
begin
    metod1;
end;

procedure TImportXLSUnitForm.FormCreate(Sender: TObject);
begin
   // exit; ///!!!
  ;
end;

procedure TImportXLSUnitForm.metod1;
begin
  // TODO -cMM: TImportXLSUnitForm.metod1 default body inserted

  UniConnection1.Disconnect;
  strTmp := ExtractFilePath(Application.ExeName) + '\db1.mdb';
  UniConnection1.Database := strTmp;
  tmpB:= UniConnection1.Connected;
  UniConnection1.Connect;

    Xls_Open (XLSFile, StringGrid1);

end;


procedure Xls_Open(XLSFile:string; Grid:TStringGrid);
 const
  xlCellTypeLastCell = $0000000B;
var
  ExlApp, Sheet: OLEVariant;
  i, j, r, c:integer;
  tmpStr :string;
  tmpStr1, tmpStr2, tmpStr3, tmpStr4, tmpStr5 :string;
  tmpI1 :integer; tmpI2 :integer;
  sl : TStringList;
  Separators, WhiteSpace: TSysCharSet;
  Content: PChar; Strings: TStrings;   ret : Integer;
begin
  //Separators := [' ', ',', '.', '?', '!', ':', ';', #9, #13, #10, #0];
  Separators := [' '];
  //WhiteSpace := [' ', #9, #13, #10, #0];
  WhiteSpace := [' '];
  sl:=TStringList.Create;

  XLSFile := 'D:\Dropbox\Share5\Work\Monitoring_2017\BIN\Критерии.xls';
  XLSFile := ExtractFilePath(Application.ExeName) + 'Критерии.xls';
  //AWordDoc := ExtractFilePath(Application.ExeName) + AWordDoc;
  if not FileExists(XLSFile) then Exit;

    DataSet := ImportXLSUnitForm.unqryAllNorm;
    ImportXLSUnitForm.unqryAllNorm.ReadOnly := False;
    DataSet.Open;
    DataSet.First;
    for i := 0 to DataSet.RecordCount - 1 do
    begin
      tmpI1 := DataSet.RecNo;
      DataSet.Delete;
      DataSet.Next;
    end;

   while not DataSet.Eof do begin
     DataSet.Delete;
   end;

   //DataSet.Post;
   DataSet.Close;
    ImportXLSUnitForm.unqryAllNorm.ReadOnly := False;
    DataSet.Open;
    DataSet.First;

     //создаем объект Excel
try
  ExlApp := CreateOleObject('Excel.Application');

  //делаем окно Excel невидимым
  ExlApp.Visible := false;

  //открываем файл XLSFile
  ExlApp.Workbooks.Open(XLSFile);

  //создаем объект Sheet(страница) и указываем номер листа (1)
  //в книге, с которого будем осуществлять чтение
  Sheet := ExlApp.Workbooks[ExtractFileName(XLSFile)].WorkSheets[1];

  //активируем последнюю ячейку на листе
  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

    // Возвращает номер последней строки
    r := ExlApp.ActiveCell.Row;

    // Возвращает номер последнего столбца
    c := ExlApp.ActiveCell.Column;

    //устанавливаем кол-во столбцов и строк в StringGrid
    Grid.RowCount:=r;
    Grid.ColCount:=c;

      DataSet.First;
    //считываем значение из каждой ячейки и копируем в нашу таблицу
     for j:= 1+1 to r do
     begin
       tmpStr1 := sheet.cells[j,1];
       tmpStr2 := sheet.cells[j,2];
       tmpStr3 := sheet.cells[j,3];
       tmpStr4 := sheet.cells[j,4];
       tmpStr5 := sheet.cells[j,5];

       if (''=tmpStr1) and (''=tmpStr2) and (''=tmpStr3) and (''=tmpStr4) and (''=tmpStr5)   then
       begin
            MessageDlg('pustye  yacheiki ', mtInformation, [mbOK], 0);
            break
       end;

       FreeAndNil(sl);
       tmpStr := sheet.cells[j,1];
       Content := PChar(tmpStr);
       sl:=TStringList.Create;
       Strings := sl;
       ret := ExtractStrings(Separators, WhiteSpace, Content, Strings);

         begin
            DataSet.Append;
            DataSet.FieldByName('N').AsString               := sheet.cells[j,1];

            tmpStr2 := sheet.cells[j,2];
            if (tmpStr2  = '')  and (ret >1) then
               DataSet.FieldByName('Документ').AsString := sheet.cells[j,1]
            else
                DataSet.FieldByName('Документ').AsString        := sheet.cells[j,2];

            DataSet.FieldByName('статья-раздел').AsString   := sheet.cells[j,3];
            DataSet.FieldByName('часть (пункт)').AsString   := sheet.cells[j,4];
            DataSet.FieldByName('примечание').AsString      := sheet.cells[j,5];
            DataSet.FieldByName('содержание норм').AsString := sheet.cells[j,6];
            DataSet.FieldByName('F').AsString               := sheet.cells[j,7];

            DataSet.Post;      tmpI1 := DataSet.RecNo;
         end;

       for i:= 1 to c do
       begin
          //Sheet.Cells[Row, Col]
         Grid.Cells[i-1,j-1]:= sheet.cells[j,i];

         tmpStr := sheet.cells[j,4];
         if tmpStr = '6.7.19' then
         begin
           tmpStr1 := sheet.cells[j,6];
           tmpI1:=Length(tmpStr1);
           ImportXLSUnitForm.Memo1.lines.text := tmpStr1;
         end;

         begin
            DataSet.FieldByName('N').AsString;
         end;
        //если необходимо прочитать формулы то
       //Grid.Cells[i-1,j-1]:= sheet.cells[j,i].formula;
       end; //for i:= 1 to c do
       ImportXLSUnitForm.StringGrid1.Row := j-1;  ImportXLSUnitForm.StringGrid1.Row := 1;

        if Grid.RowCount > Grid.VisibleRowCount then
        Grid.TopRow := Grid.RowCount - Grid.VisibleRowCount;
        Grid.Row := Grid.RowCount - 1;
       ImportXLSUnitForm.StringGrid1.Row := j-1;  ImportXLSUnitForm.StringGrid1.Row := 1;

       Grid.TopRow :=  j - Grid.VisibleRowCount;

       application.ProcessMessages;
       Beep;
     end; //for j:= 1 to r do
 finally
 //закрываем приложение Excel
 ExlApp.Quit;
 //очищаем выделенную память
 ExlApp := Unassigned;
 Sheet := Unassigned;
 end;
end;  //procedure Xls_Open(XLSFile:string; Grid:TStringGrid);


end.
