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

procedure TImportXLSUnitForm.FormCreate(Sender: TObject);
begin   exit; ///!!!
  UniConnection1.Disconnect;
  strTmp := ExtractFilePath(Application.ExeName) + '\db1.mdb';
  UniConnection1.Database := strTmp;
  tmpB:= UniConnection1.Connected;
  UniConnection1.Connect;

    Xls_Open (XLSFile, StringGrid1);
end;

procedure TImportXLSUnitForm.metod1;


begin
  // TODO -cMM: TImportXLSUnitForm.metod1 default body inserted

    DataSet := DM.unqryAllNorm;

end;


procedure Xls_Open(XLSFile:string; Grid:TStringGrid);
 const
  xlCellTypeLastCell = $0000000B;
var
  ExlApp, Sheet: OLEVariant;
  i, j, r, c:integer;
  tmpStr :string;
  tmpStr1 :string;tmpStr2 :string;
  tmpI1 :integer; tmpI2 :integer;
begin

  XLSFile := 'D:\Dropbox\Share5\Work\Monitoring_all\�������� �������� 01112016.xls';
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

     //������� ������ Excel
  ExlApp := CreateOleObject('Excel.Application');

  //������ ���� Excel ���������
  ExlApp.Visible := false;

  //��������� ���� XLSFile
  ExlApp.Workbooks.Open(XLSFile);

  //������� ������ Sheet(��������) � ��������� ����� ����� (1)
  //� �����, � �������� ����� ������������ ������
  Sheet := ExlApp.Workbooks[ExtractFileName(XLSFile)].WorkSheets[1];

  //���������� ��������� ������ �� �����
  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

    // ���������� ����� ��������� ������
    r := ExlApp.ActiveCell.Row;

    // ���������� ����� ���������� �������
    c := ExlApp.ActiveCell.Column;

    //������������� ���-�� �������� � ����� � StringGrid
    Grid.RowCount:=r;
    Grid.ColCount:=c;

      DataSet.First;
    //��������� �������� �� ������ ������ � �������� � ���� �������
     for j:= 1 to r do
     begin
       tmpStr := sheet.cells[j,1];
       if tmpStr = '' then begin break end;

         begin
            DataSet.Append;
            DataSet.FieldByName('N').AsString               := sheet.cells[j,1];
            DataSet.FieldByName('��������').AsString        := sheet.cells[j,2];
            DataSet.FieldByName('������-������').AsString   := sheet.cells[j,3];
            DataSet.FieldByName('����� (�����)').AsString   := sheet.cells[j,4];
            DataSet.FieldByName('����������').AsString      := sheet.cells[j,5];
            DataSet.FieldByName('���������� ����').AsString := sheet.cells[j,6];
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
        //���� ���������� ��������� ������� ��
       //Grid.Cells[i-1,j-1]:= sheet.cells[j,i].formula;
       end; //for i:= 1 to c do
     end; //for j:= 1 to r do

 //��������� ���������� Excel
 ExlApp.Quit;

 //������� ���������� ������
 ExlApp := Unassigned;
 Sheet := Unassigned;

end;  //procedure Xls_Open(XLSFile:string; Grid:TStringGrid);


end.
