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
  NameSAU:string; //наименование  СЭУ
   NumberSAU:string; //номер СЭУ

implementation

{$R *.dfm}

uses
  MainUnit, FormListOfBildingUnit, Math, AddBildUnit;


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
  Bilding_F :string; Norm_F :string;
begin
  try
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
   // DM.tblBilding.FieldByName('Предприятие, организация осуществляет вид деятельности:').AsString
   //   := IntToStr(DM.tblBilding.FieldByName('id').AsInteger);
    DM.tblBilding.FieldByName('год').AsInteger := Year;

    //номер СЭУ     NumberSAU
    NumberSAU := utility.INI(IniFile, 'SAU', 'NumberSAU', 'номер СЭУ');//
    DM.tblBilding.FieldByName('номер СЭУ').AsString := NumberSAU;

    //наименование  СЭУ NameSAU
    NameSAU := utility.INI(IniFile, 'SAU', 'NumberSAU', 'наименование  СЭУ');//
    DM.tblBilding.FieldByName('наименование  СЭУ').AsString := NameSAU;
///

    FormMain.AddBildForm_Show;
    if (AddBildForm.AddBildFormResult = -1) then
    begin   dm.UniTransaction1.Rollback; Exit; end;
    if (AddBildForm.AddBildFormResult = +1) then
    begin ;
    end;




    dm.tblBilding.Post; // !!!

    DM.tblBilding.UpdateCursorPos;
    //DM.tblBilding.Recordset.Resync(adAffectCurrent, adResyncAllValues);
    DM.tblBilding.Resync([]);

    dm.tblBilding.FindLast;

///

//tblVypoln
    tblVypoln_RecNo := DM.tblVypoln.RecNo;
    tblVypoln_RecordCount := DM.tblVypoln.RecordCount;

    DM.tdlTrebovan.First;
    while not DM.tdlTrebovan.EOF do
    begin
      DM.tblVypoln.RecNo; i := DM.tdlTrebovan.FieldCount; i := DM.tdlTrebovan.RecNo;
      i := DM.tblVypoln.RecordCount; i := DM.tdlTrebovan.RecordCount;//

      DM.tblVypoln.Append;
      DM.tblVypoln.FieldByName('Соответствие требованиям пожарной безопасности').AsString := DM.tdlTrebovan.FieldByName('Соответствие требованиям пожарной безопасности').AsString;
      DM.tblVypoln.FieldByName('soot').AsBoolean := False;  //'Соответствует да/нет'
      DM.tblVypoln.FieldByName('N').AsString := DM.tdlTrebovan.FieldByName('N').AsString;
      DM.tblVypoln.FieldByName('год1').AsInteger := Year;
      //DataSet2.FieldByName('fid_Bilding').AsInteger := DM.tblBilding.FieldByName('id').AsInteger;
      i := DM.tblVypoln.FieldByName('fid_Bilding').AsInteger;
      i :=DM.tblBilding.FieldByName('id').AsInteger;
      DM.tblVypoln.Post; // !!!

      DM.tblVypoln.UpdateCursorPos;
      //DM.tblVypoln.Recordset.Resync(adAffectCurrent, adResyncAllValues);
      DM.tblVypoln.Resync([]);

 //     Application.ProcessMessages;
      FormListOfBilding.cxProgressBarTrebovan.Position := DM.tdlTrebovan.RecNo;
  //    Application.ProcessMessages;

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
    DM.tblVypoln.FindFirst;
    //while  not DM.tblVypoln.EOF do
    repeat
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

              //Bilding_F := DM.tblBilding.FieldByName('F').AsString;
              Bilding_F := DM.tblBilding.FieldByName('Класс функциональной пожарной опасности').AsString;
              Norm_F := DM.tblNorm.FieldByName('F').AsString;
              if ( not (Bilding_F = '')) and ( not (Norm_F = ''))then
              begin   beep;
                 iRes := AnsiCompareStr(Bilding_F, Norm_F);
                 iRes := Pos(Bilding_F, Norm_F);
                 if iRes = 0 then begin
                                     //DM.tblNorm.Next;
                                     Continue;
                                  end;
              end;

              //if (not NormOfBildingFilterRecord) then Continue;

              DM.tblNormOfBilding.RecNo; i := DM.tblNorm.FieldCount; i := DM.tblNormOfBilding.RecordCount; i := DM.tblNorm.RecordCount;i := DM.tblNorm.RecNo; //
              DM.tblNormOfBilding.Append;
              DM.tblNormOfBilding.FieldByName('fid_Vypoln').AsInteger := DM.tblVypoln.FieldByName('id').AsInteger;

              DM.tblNormOfBilding.FieldByName('N').AsString := DM.tblNorm.FieldByName('N').AsString;
              DM.tblNormOfBilding.FieldByName('Документ').AsString := DM.tblNorm.FieldByName('Документ').AsString;
              DM.tblNormOfBilding.FieldByName('статья-раздел').AsString := DM.tblNorm.FieldByName('статья-раздел').AsString;

{ TODO 1 -oSVS -cNEXT : переименовать поле в tblNormOfBilding }
              DM.tblNormOfBilding.FieldByName('часть (пункт)').AsString := DM.tblNorm.FieldByName('часть (пункт)').AsString; // переименовать
              DM.tblNormOfBilding.FieldByName('примечание').AsString := DM.tblNorm.FieldByName('примечание').AsString; // переименовать

              DM.tblNormOfBilding.FieldByName('содержание норм').AsString := DM.tblNorm.FieldByName('содержание норм').AsString;
              DM.tblNormOfBilding.FieldByName('Соответствует да/нет').AsBoolean := False;
              DM.tblNormOfBilding.FieldByName('F').AsString := DM.tblNorm.FieldByName('F').AsString;

              DM.tblNormOfBilding.Post;
          end;
          DM.tblNorm.Next;
        end; //while not DM.tblNorm.EOF do

        Application.ProcessMessages;
        FormListOfBilding.cxProgressBarVypoln.Position := DM.tblVypoln.RecNo;
        Application.ProcessMessages;
        DM.tblVypoln.Next;
      end;//while  not DM.tblVypoln.EOF do
      until not DM.tblVypoln.FindNext;

     DM.tblNormOfBilding.Filtered := true;   DM.tblNorm.Filtered := true;

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
    // откатываем транзакцию в случае ошибки
    begin

      dm.UniTransaction1.Rollback;
     // dm.ADOConnection1.RollbackTrans();  !!!
      ShowMessage(E.ClassName + ' db error: ' + E.Message);
    end;
  end;
  finally
    Screen.Cursor := crDefault;
    FormListOfBilding.cxProgressBarTrebovan.Visible := false;
    FormListOfBilding.cxProgressBarVypoln.Visible := false;
  end;

end; //procedure AddNewBuilding

procedure Vypoln_Show(N: string);
begin
  DM.tblVypoln.Close;
  DM.tblVypoln.Params[1].Value := N + '%';
{
  //(((Vypoln.[Соответствует да/нет])=False));

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
                //RichEdit.Lines.Append('Добавляемая строка');
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
                //RichEdit.Lines.Append('Добавляемая строка');
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
