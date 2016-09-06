unit Logic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm

  
  , ComCtrls
  , DMUnit
  ,utility
  ,CommonUnit


  , ADODB
  , ADOint

  , DB, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxProgressBar, cxDBProgressBar
  ;

type
  TLogicForm = class(TBaseForm)
    cxDBProgressBar1: TcxDBProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure AddNewBuilding;
procedure Vypoln_Show(N: string);

procedure Fields2RichEdit(DataSet: TDataSet; RichEdit: TRichEdit);

procedure Tabl2RichEdit(DataSet: TDataSet; RichEdit: TRichEdit);

procedure Del2 (DataSet:TDataSet);

var
  LogicForm: TLogicForm;
  NameSAU:string; //������������  ���
   NumberSAU:string; //����� ���

implementation

{$R *.dfm}

uses
  MainUnit, FormListOfBildingUnit;


procedure AddNewBuilding;
var
  i: Integer;
  tmpRecordIndex: Integer;
  sFnn, sFn, sF: string;
    //vValue : TcxFieltrCriteriaItem;
  Year, Month, Day: word;
  tblVypolnAfterScroll: TDataSetNotifyEvent;
  tblNorm_RecordCount : Integer;
  tblNorm_RecNo : Integer;
  tblNormOfBilding_RecordCount : Integer;
  tblNormOfBilding_RecNo : Integer;
  tblVypoln_RecNo  : Integer;
  tblVypoln_RecordCount  : Integer;
  s1, s2: string;  bResN : Boolean;
  sRes: string;
  iRes : integer;
begin
  try
    Screen.Cursor := crHourGlass;

//TUniTransaction
    dm.UniTransaction1.Active;
    dm.UniTransaction1.StartTransaction;

    FormListOfBilding.cxProgressBarTrebovan.Position := 0;
    FormListOfBilding.cxProgressBarTrebovan.Properties.Max := DM.tdlTrebovan.RecordCount;
    FormListOfBilding.cxProgressBarTrebovan.Visible := true;
    Application.ProcessMessages;
    FormListOfBilding.cxProgressBarTrebovan.Position := DM.tdlTrebovan.RecNo;

    FormListOfBilding.cxProgressBarVypoln.Position := 0;
    FormListOfBilding.cxProgressBarVypoln.Properties.Max := DM.tblVypoln.RecordCount;
    FormListOfBilding.cxProgressBarVypoln.Visible := true;
//Application.ProcessMessages;
    FormListOfBilding.cxProgressBarVypoln.Position := DM.tblVypoln.RecNo;


     DM.tblNorm.Filtered:=False;
     DM.tblNormofbilding.Filtered:=False;
     tblVypolnAfterScroll := DM.tblVypoln.AfterScroll;
     
    // DM.tblVypoln.AfterScroll:=nil;   //

    DecodeDate(Now, Year, Month, Day);

   // dm.ADOConnection1.BeginTrans;      // !!!

//tblBilding
    DM.tblBilding.FieldByName('id').AsInteger; DM.tblBilding.RecNo; i := DM.tblBilding.RecordCount; //
    dm.tblBilding.Append;
   // DM.tblBilding.FieldByName('�����������, ����������� ������������ ��� ������������:').AsString
   //   := IntToStr(DM.tblBilding.FieldByName('id').AsInteger);
    DM.tblBilding.FieldByName('���0').AsInteger := Year;

    //����� ���     NumberSAU
    NumberSAU := utility.INI(IniFile, 'SAU', 'NumberSAU', '����� ���');//
    DM.tblBilding.FieldByName('����� ���').AsString := NumberSAU;

    //������������  ��� NameSAU
    NameSAU := utility.INI(IniFile, 'SAU', 'NumberSAU', '������������  ���');//
    DM.tblBilding.FieldByName('������������  ���').AsString := NameSAU;


    dm.tblBilding.Post; // !!!

    DM.tblBilding.UpdateCursorPos;
    //DM.tblBilding.Recordset.Resync(adAffectCurrent, adResyncAllValues);
    DM.tblBilding.Resync([]);

    dm.tblBilding.FindLast;

//tblVypoln
    tblVypoln_RecNo := DM.tblVypoln.RecNo;
    tblVypoln_RecordCount := DM.tblVypoln.RecordCount;

    DM.tdlTrebovan.First;
    while not DM.tdlTrebovan.EOF do
    begin
      DM.tblVypoln.RecNo; i := DM.tdlTrebovan.FieldCount; i := DM.tdlTrebovan.RecNo;
      i := DM.tblVypoln.RecordCount; i := DM.tdlTrebovan.RecordCount;//

      DM.tblVypoln.Append;
      DM.tblVypoln.FieldByName('������������ ����������� �������� ������������').AsString := DM.tdlTrebovan.FieldByName('������������ ����������� �������� ������������').AsString;
      DM.tblVypoln.FieldByName('������������� ��/���').AsBoolean := False;
      DM.tblVypoln.FieldByName('N').AsString := DM.tdlTrebovan.FieldByName('N').AsString;
      DM.tblVypoln.FieldByName('���1').AsInteger := Year;
      //DataSet2.FieldByName('fid_Bilding').AsInteger := DM.tblBilding.FieldByName('id').AsInteger;
      i := DM.tblVypoln.FieldByName('fid_Bilding').AsInteger;
      i :=DM.tblBilding.FieldByName('id').AsInteger;
      DM.tblVypoln.Post; // !!!

      DM.tblVypoln.UpdateCursorPos;
      //DM.tblVypoln.Recordset.Resync(adAffectCurrent, adResyncAllValues);
      DM.tblVypoln.Resync([]);
//Application.ProcessMessages;
      FormListOfBilding.cxProgressBarTrebovan.Position := DM.tdlTrebovan.RecNo;
      DM.tdlTrebovan.Next;
    end;  // while not DM.tdlTrebovan.EOF do
   //dm.tblBilding.Post;

    //DM.OpenDB(DM.tblVypoln); // !!!

//tblNormOfBilding
    DM.tblNormOfBilding.Filtered := False;   DM.tblNorm.Filtered := False;
    //DataSet2 := DM.tblNormOfBilding;
    tblNorm_RecordCount := DM.tblNorm.RecordCount;
    tblNorm_RecNo := DM.tblNorm.RecNo;

    tblNormOfBilding_RecordCount := DM.tblNormOfBilding.RecordCount;
    tblNormOfBilding_RecNo := DM.tblNormOfBilding.RecNo;

    DM.tblVypoln.First;
    while  not DM.tblVypoln.EOF do
    begin
        DM.tblNorm.First;
        while not DM.tblNorm.EOF do
        begin
          s1 := dm.tblVypoln.FieldByName('N').AsString;
          s2 := dm.tblNorm.FieldByName('N').AsString;
          iRes := AnsiCompareStr(s1, s2);
          bResN := iRes = 0;   
          if bResN then    //if not bResN then Continue;
          begin
              DM.tblNormOfBilding.RecNo; i := DM.tblNorm.FieldCount; i := DM.tblNormOfBilding.RecordCount; i := DM.tblNorm.RecordCount;i := DM.tblNorm.RecNo; //
              DM.tblNormOfBilding.Append;
              DM.tblNormOfBilding.FieldByName('fid_Vypoln').AsInteger := DM.tblVypoln.FieldByName('id').AsInteger;

              DM.tblNormOfBilding.FieldByName('N').AsString := DM.tblNorm.FieldByName('N').AsString;
              DM.tblNormOfBilding.FieldByName('��������').AsString := DM.tblNorm.FieldByName('��������').AsString;
              DM.tblNormOfBilding.FieldByName('�����').AsString := DM.tblNorm.FieldByName('�����').AsString;
              DM.tblNormOfBilding.FieldByName('������-������').AsString := DM.tblNorm.FieldByName('������-������').AsString;
              DM.tblNormOfBilding.FieldByName('��������').AsString := DM.tblNorm.FieldByName('��������').AsString;
              DM.tblNormOfBilding.FieldByName('���������� ����').AsString := DM.tblNorm.FieldByName('���������� ����').AsString;
              DM.tblNormOfBilding.FieldByName('������������� ��/���').AsBoolean := False;

              DM.tblNormOfBilding.Post;
          end;
          DM.tblNorm.Next;
        end; //while not DM.tblNorm.EOF do

//Application.ProcessMessages;
        FormListOfBilding.cxProgressBarVypoln.Position := DM.tblVypoln.RecNo;
        DM.tblVypoln.Next;
      end;//while  not DM.tblVypoln.EOF do



   //dm.tblBilding.Post;
   // DM.OpenDB(DM.tblNormOfBilding); // !!!


   // dm.ADOConnection1.CommitTrans();  // !!!
    Screen.Cursor := crDefault;

     DM.tblVypoln.AfterScroll:=tblVypolnAfterScroll;
     //DM.tblNorm.Filtered:=True;
     //DM.tblNormofbilding.Filtered:=True;
     //FormListOfBilding.cxProgressBarTrebovan.Visible := False;
     //FormListOfBilding.cxProgressBarVypoln.Visible := False;

     dm.UniTransaction1.Commit;
     Beep;
  except on E: Exception do
    // ���������� ���������� � ������ ������
    begin
      Screen.Cursor := crDefault;
      dm.UniTransaction1.Rollback;
     // dm.ADOConnection1.RollbackTrans();  !!!
      ShowMessage(E.ClassName + ' db error: ' + E.Message);
    end;
  end;

end; //procedure AddNewBuilding

procedure Vypoln_Show(N: string);
begin
  DM.tblVypoln.Close;
  DM.tblVypoln.Params[1].Value := N + '%';
{
  //(((Vypoln.[������������� ��/���])=False));

  DM.tblVypoln.Parameters[2].Value := False  ;
  DM.tblVypoln.Parameters[2].DataType;
}
  DM.tblVypoln.Open;
  FormMain.Vypoln_Show;
end;

/////////////////////////////////////////////////////////////////////////////////////////
procedure Fields2RichEdit(DataSet: TDataSet; RichEdit: TRichEdit);
var //DataSet:TDataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
begin
                //RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('����������� ������');
  s1 := '';
  i := DataSet.FieldCount;
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    s1 := DataSet.Fields[i].FieldName;
    s1 := DataSet.Fields[i].DisplayName;
    RichEdit.Lines.Append(s1); //RichEdit.Lines.Append(#13#10) ;

    s1 := s1 + #13#10;
    s1 := DataSet.Fields[i].DisplayText;
    s1 := DataSet.Fields[i].Text;
    s1 := s1 + #13#10;
                   /////RichEdit.Lines.Append(s1) ; //RichEdit.Lines.Append(#13#10) ;
    application.ProcessMessages;

  end;
{
  while not DataSet.EOF do
  begin

    DataSet.Next;
  end;
}
end;

/////////////////////////////////////////////////////////////////////////////////////////
procedure Tabl2RichEdit(DataSet: TDataSet; RichEdit: TRichEdit);
var //DataSet:TDataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
begin
  RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('����������� ������');
  s1 := '';
  i := DataSet.FieldCount;
  i := DataSet.RecNo;

  DataSet.First;
  for i := 0 to DataSet.RecordCount - 1 do
  begin
    Fields2RichEdit(DataSet, RichEdit);
    application.ProcessMessages;
    DataSet.Next;
  end;

{
  while not DataSet.EOF do
  begin

    DataSet.Next;
  end;
}
end;

/////////////////////////////////////////////////////////////////////////////////////////
procedure Del2 (DataSet:TDataSet);
var
    i:Integer;
    tmpRecordIndex:Integer;
    s:String;
begin
  DataSet.First;
  while not DataSet.EOF do
  begin
    DataSet.Edit;
    DataSet.Delete;
    //DataSet.Post;
    //DataSet.Next;
  end;
end;

end.
