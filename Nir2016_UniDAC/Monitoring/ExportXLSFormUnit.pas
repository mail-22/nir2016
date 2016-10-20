unit ExportXLSFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, StdCtrls, ComCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement
  , ADODB
  , ComObj, ActiveX
  ,DB
  ;

type
  TExportXLSForm = class(TBaseForm)
    redt1: TRichEdit;
    actmmb1: TActionMainMenuBar;
    procedure FormShow(Sender: TObject);
  private
  public
    procedure ExportXLSAll;
    procedure ExportXLS_1_Record;
    { Public declarations }
  end;

/// <summary>procedure ExportXLSMasterTabl экспорт всех объектов в эксель
/// </summary>
procedure ExportXLSMasterTabl;
/// <summary>procedure ExportXLSDetailTabl
/// экспорт в эксль строк по текущему объекту
/// </summary>
procedure ExportXLSDetailTabl;
procedure ExportXLSRecordFields();

function IsOLEObjectInstalled(Name: string): boolean;

var
  ExportXLSForm: TExportXLSForm;

implementation

uses DMUnit, ExportFormUnit;

{$R *.dfm}

var
  Sheet: Variant;
  Row, Col: integer;
///////////////////////////////////////////////////

procedure TExportXLSForm.ExportXLSAll;
var //DataSet:TCustomADODataSet;
  maxN: Integer; //const
  i: Integer;
  N: Integer;
  sN: string;
  iPos: Integer;
  iRes: Integer;
  bRes: Boolean;
  fSum: Real;
  kol_treb: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSet: TDataSet;
  arrX: array of string;
  arrY: array of real;
  BB: Integer;
begin
                //RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('Добавляемая строка');
  DataSet := DM.tblVypoln;
  //DataSet := DM.tblVypoln;
  DataSet.Open;
  s1 := '';
  FreeAndNil(arrX);
  FreeAndNil(arrY);

  maxN := 16;
  SetLength(arrX, maxN);
  SetLength(arrY, maxN);
  dm.tblBilding.First; dm.tblBilding.RecNo;
  for BB := 0 to dm.tblBilding.RecordCount - 1 do
  begin
    for N := 0 to maxN - 1 do
    begin
      sN := IntToStr(N + 1) + '.';
      DataSet.First; DataSet.RecordCount; DataSet.RecNo;
      if (DataSet.RecordCount = 0) then break;
      fSum := 0; kol_treb := 0;
      while not DataSet.EOF do
      begin
        iRes := Pos(sN, DataSet.FieldByName('N').AsString);
        if (iRes = 1) then
        begin
          bRes := DataSet.FieldByName('Соответствует да/нет').AsBoolean;
          if (bRes = True) then iRes := 1 else iRes := 0;
          fSum := fSum + iRes;
          kol_treb := kol_treb + 1;
          if (Pos(sN, DataSet.FieldByName('N').AsString) = 1) and
            (Length(sN) = Length(DataSet.FieldByName('N').AsString)) then
          begin
            arrX[N] := sN + ' ' + DataSet.FieldByName('Соответствие требованиям пожарной безопасности').AsString;
          end;
        end; //if (iRes = 1)
        DataSet.Next;
      end; // while not DataSet.EOF do
      arrY[N] := arrY[N] + Round((fSum / kol_treb) * 100); //%
    end; //for N := 1 to 16 do
    dm.tblBilding.Next;
  end; //for BB:=1 to  dm.tblBilding.RecordCount do


end; //procedure TFormGr.Gr_MethodAll;

procedure TExportXLSForm.FormShow(Sender: TObject);
begin
  inherited;
  ExportXLS_1_Record;
  //ExportXLSFormUnit.ExportXLSMasterTabl;
end;

//////////////////////////////////////////////////////////////////////////////////////////
procedure ExportXLSMasterTabl;
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetMaster: TDataSet;
  RichEdit: TRichEdit;
  NNBilding: Integer;
  SaveRecNo: Integer;
//////////////////////////////////////////////////////////////////////////////////////////
  ExcelApp, Workbook, Range, Cell1, Cell2, ArrayData: Variant;
  TemplateFile: string;
  BeginCol, BeginRow, j: integer;
  RowCount, ColCount: integer;
//////////////////////////////////////////////////////////////////////////////////////////
begin
  Screen.Cursor := crHourGlass;
  try
// Координаты левого верхнего угла области, в которую будем выводить данные
    BeginCol := 1;
    BeginRow := 5;

// Размеры выводимого массива данных
    RowCount := 100;
    ColCount := 50;

// Создание Excel
    ExcelApp := CreateOleObject(
      'Excel.Application'
      );

// Отключаем реакцию Excel на события, чтобы ускорить вывод информации
    ExcelApp.Application.EnableEvents := false;
 // Делаем Excel видимым
  ExcelApp.Visible := true;
 //  Создаем Книгу (Workbook)
 //  Если заполняем шаблон, то
 //  Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
    Workbook := ExcelApp.WorkBooks.Add;
    Sheet := ExcelApp.ActiveWorkBook.Sheets[1];
    Row := 1; Col := 1;
//////////////////////////////////////////////////////////////////////////////////////
    RichEdit := ExportForm.redt1;
    RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('Добавляемая строка');
    s1 := ''; NNBilding := 0;
    DataSetMaster := DM.tblBilding;
    i := DataSetMaster.FieldCount;
    i := DataSetMaster.RecNo;
    SaveRecNo := DataSetMaster.RecNo;
    DataSetMaster.First;
    for i := 0 to DataSetMaster.RecordCount - 1 do
    begin
      s1 := 'Здание N' + IntToStr(NNBilding + 1);
      Row := Row + 1; Row := Row + 1;
      Sheet.Cells[Row, Col] := s1; Row := Row + 1; //Col:=Col+1;
      s1 := s1 + #13#10 + #13#10 + #13#10;
    //RichEdit.Lines.Append(s1); //RichEdit.Lines.Append(#13#10) ;

      ExportXLSDetailTabl();
      application.ProcessMessages;
      DataSetMaster.Next; NNBilding := NNBilding + 1;
      Sheet.Cells[Row, Col] := s1; Row := Row + 1; //Col:=Col+1;
    end;

// Делаем Excel видимым
    ExcelApp.Visible := true;
  finally
    Screen.Cursor := crDefault;
    DataSetMaster.RecNo := SaveRecNo; //
    Sheet := UnAssigned;
    ExcelApp := UnAssigned;
  end;
end;

procedure ExportXLSDetailTabl;
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetDetail: TDataSet;
  RichEdit: TRichEdit;
  NNTrebovan: Integer;
    strBool: string;
begin
  DataSetDetail := DM.tblVypoln;
  RichEdit := ExportForm.redt1;
                //RichEdit.Lines.Append('Добавляемая строка');
  s1 := '';
  i := DataSetDetail.FieldCount;
  i := DataSetDetail.RecNo;

  DataSetDetail.First; NNTrebovan := 0;
  for i := 0 to DataSetDetail.RecordCount - 1 do
  begin
    NNTrebovan := NNTrebovan + 1;
    //s1 := 'требование N:' + IntToStr(NNTrebovan);
    s1 := 'категория требования N: ' + DataSetDetail.FieldByName('N').AsString;
    Sheet.Cells[Row, Col] := s1; //Row := Row + 1; //Col:=Col+1;

    s1 := 'наименование требования: '
      + DataSetDetail.FieldByName('Соответствие требованиям пожарной безопасности').AsString;
    Sheet.Cells[Row, Col +1] := s1; //Row := Row + 1; //Col:=Col+1;

      if (DataSetDetail.FieldByName('Соответствует да/нет').AsBoolean = True) then
      begin
          strBool := 'Соответствует';
      end
      else
      begin
        strBool := 'НЕ соответствует';
      end;

    s1 := 'Соответствует да/нет:'       + strBool;
    Sheet.Cells[Row, Col +2] := s1;
    Row := Row + 1; //Col:=Col+1;

    application.ProcessMessages;
    DataSetDetail.Next;
  end;

end;

procedure ExportXLSRecordFields();
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetDetail: TDataSet;
  RichEdit: TRichEdit;
begin
  DataSetDetail := DM.tblVypoln;
  RichEdit := ExportForm.redt1;

  s1 := '';
  i := DataSetDetail.FieldCount;
  for i := 0 to DataSetDetail.FieldCount - 1 do
  begin
    s1 := DataSetDetail.Fields[i].FieldName;
    s1 := DataSetDetail.Fields[i].DisplayName;
    RichEdit.Lines.Append(s1); //RichEdit.Lines.Append(#13#10) ;

    s1 := s1 + #13#10;
    s1 := DataSetDetail.Fields[i].DisplayText;
    s1 := DataSetDetail.Fields[i].Text;
    s1 := s1 + #13#10;
                   /////RichEdit.Lines.Append(s1) ; //RichEdit.Lines.Append(#13#10) ;
    application.ProcessMessages;

  end;

end;

procedure ExportXLSPrepare();
begin
  if not IsOLEObjectInstalled('Excel.Application') then
    ShowMessage(
      'Класс не зарегистрирован'
      )
  else
    ShowMessage(
      'Класс найден'
      );
end;

function IsOLEObjectInstalled(Name: string): boolean;
var
  ClassID: TCLSID;
  Rez: HRESULT;
begin
// Ищем CLSID OLE-объекта
  Rez := CLSIDFromProgID(PWideChar(WideString(Name)), ClassID);
  if Rez = S_OK then
 // Объект найден
    Result := true
  else
    Result := false;
end;

procedure ExportXLSStart;
var
  ExcelApp, Workbook, Range, Cell1, Cell2, ArrayData: Variant;
  TemplateFile: string;
  BeginCol, BeginRow, i, j: integer;
  RowCount, ColCount: integer;
begin

// Координаты левого верхнего угла области, в которую будем выводить данные
  BeginCol := 1;
  BeginRow := 5;

// Размеры выводимого массива данных
  RowCount := 100;
  ColCount := 50;

// Создание Excel
  ExcelApp := CreateOleObject(
    'Excel.Application'
    );

// Отключаем реакцию Excel на события, чтобы ускорить вывод информации
  ExcelApp.Application.EnableEvents := false;

 //  Создаем Книгу (Workbook)
 //  Если заполняем шаблон, то
 //  Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
  Workbook := ExcelApp.WorkBooks.Add;
{
// Создаем Вариантный Массив, который заполним выходными данными
ArrayData := VarArrayCreate([1, RowCount, 1, ColCount], varVariant);

 // Заполняем массив
  for I := 1 to RowCount do
    for J := 1 to ColCount do
      ArrayData[I, J] := J * 10 + I;

// Левая верхняя ячейка области, в которую будем выводить данные
  Cell1 := WorkBook.WorkSheets[1].Cells[BeginRow, BeginCol];

// Правая нижняя ячейка области, в которую будем выводить данные
  Cell2 := WorkBook.WorkSheets[1].Cells[BeginRow  + RowCount - 1, BeginCol +
ColCount - 1];

// Область, в которую будем выводить данные
  Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];

// А вот и сам вывод данных
  // Намного быстрее поячеечного присвоения
  Range.Value := ArrayData;
}
// Делаем Excel видимым
  ExcelApp.Visible := true;
end;

//////////////////////////////////////////////////////////////////////////////////////////
procedure TExportXLSForm.ExportXLS_1_Record;
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetMaster: TDataSet;
  RichEdit: TRichEdit;
  NNBilding: Integer;
  SaveRecNo: Integer;
//////////////////////////////////////////////////////////////////////////////////////////
  ExcelApp, Workbook, Range, Cell1, Cell2, ArrayData: Variant;
  TemplateFile: string;
  BeginCol, BeginRow, j: integer;
  RowCount, ColCount: integer;
//////////////////////////////////////////////////////////////////////////////////////////
begin
  Screen.Cursor := crHourGlass;
  try
// Координаты левого верхнего угла области, в которую будем выводить данные
    BeginCol := 1;
    BeginRow := 5;

// Размеры выводимого массива данных
    RowCount := 100;
    ColCount := 50;

// Создание Excel
    ExcelApp := CreateOleObject(
      'Excel.Application'
      );

// Отключаем реакцию Excel на события, чтобы ускорить вывод информации
    ExcelApp.Application.EnableEvents := false;
 // Делаем Excel видимым
  ExcelApp.Visible := true;
 //  Создаем Книгу (Workbook)
 //  Если заполняем шаблон, то
 //  Workbook := ExcelApp.WorkBooks.Add('C:\MyTemplate.xls');
    Workbook := ExcelApp.WorkBooks.Add;
    Sheet := ExcelApp.ActiveWorkBook.Sheets[1];
    Row := 1; Col := 1;
//////////////////////////////////////////////////////////////////////////////////////
    RichEdit := ExportForm.redt1;
    RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('Добавляемая строка');
    s1 := ''; NNBilding := 0;
    DataSetMaster := DM.tblBilding;
    i := DataSetMaster.FieldCount;
    i := DataSetMaster.RecNo;
    SaveRecNo := DataSetMaster.RecNo;

    //DataSetMaster.First;
    //for i := 0 to DataSetMaster.RecordCount - 1 do
    begin
      s1 := 'Здание N' + IntToStr(NNBilding + 1);
      Row := Row + 1; Row := Row + 1;
      Sheet.Cells[Row, Col] := s1; Row := Row + 1; //Col:=Col+1;
      s1 := s1 + #13#10 + #13#10 + #13#10;
    //RichEdit.Lines.Append(s1); //RichEdit.Lines.Append(#13#10) ;

      ExportXLSDetailTabl();
      application.ProcessMessages;
      //DataSetMaster.Next; NNBilding := NNBilding + 1;
      Sheet.Cells[Row, Col] := s1; Row := Row + 1; //Col:=Col+1;
    end;

// Делаем Excel видимым
    ExcelApp.Visible := true;
  finally
    Screen.Cursor := crDefault;
    DataSetMaster.RecNo := SaveRecNo; //
    Sheet := UnAssigned;
    ExcelApp := UnAssigned;
  end;
end;

end.

