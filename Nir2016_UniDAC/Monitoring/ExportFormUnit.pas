unit ExportFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, StdCtrls, ComCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement
  , ADODB
  ;

type
  TExportForm = class(TBaseForm)
    redt1: TRichEdit;
    actmmb1: TActionMainMenuBar;
    procedure FormShow(Sender: TObject);
    procedure redt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ExportAll;
    { Public declarations }
  end;


procedure ExportMasterTabl();
procedure ExportDetailTabl();
procedure ExportRecordFields();

procedure ExportRecordFieldsBilding;

var
  ExportForm: TExportForm;

implementation

uses DMUnit, Vypoln_Unit, DB;



{$R *.dfm}

procedure TExportForm.redt1Change(Sender: TObject);
begin
  inherited;
end;



///////////////////////////////////////////////////
procedure TExportForm.ExportAll;
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

  // цикл по зданиям
  dm.tblBilding.First; dm.tblBilding.RecNo;
  for BB := 0 to dm.tblBilding.RecordCount - 1 do
    begin
      for N := 0 to maxN - 1 do
        begin
          sN := IntToStr(N + 1) + '.';
          // цикл по категориям
          DataSet.First; DataSet.RecordCount; DataSet.RecNo;
          if (DataSet.RecordCount = 0) then break;
          fSum := 0; kol_treb := 0;
          while not DataSet.EOF do
            begin
              //экспорт только НЕ выполненных категорий требований
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

procedure TExportForm.FormShow(Sender: TObject);
begin
  inherited;
end;

////////////////////////////////////////////////////////////////////////////////
procedure ExportMasterTabl();
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetMaster: TDataSet;
  RichEdit: TRichEdit;
  NNBilding: Integer;
  SaveRecNo: Integer;
begin
  Screen.Cursor := crHourGlass;
  try
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
        s1 := s1 + #13#10 + #13#10 + #13#10;
        RichEdit.Lines.Append(s1); //RichEdit.Lines.Append(#13#10) ;

        ExportDetailTabl();
        application.ProcessMessages;
        DataSetMaster.Next; NNBilding := NNBilding + 1;
      end;
  finally
    Screen.Cursor := crDefault;
    DataSetMaster.RecNo := SaveRecNo; //
  end;

end;

 { TODO -oSVS -c1 : export }
/// <param name="NewParam"> (Integer) </param>
procedure ExportDetailTabl1(NewParam: Integer = 0);
var //DataSet:TCustomADODataSet;
  i, j: Integer;
  tmpRecordIndex: Integer;
  s1, s2, sFn, sF: string;
  DataSetDetail: TDataSet;
  RichEdit: TRichEdit;
  NNTrebovan: Integer;
  strBool: string;

  bRes: Boolean;
  iRes : integer;
  bTest : Boolean;
begin
  DataSetDetail := DM.tblVypoln;
  RichEdit := ExportForm.redt1;
  Vypoln.rgjvrdgrp1.ItemIndex := 2;
                //RichEdit.Lines.Append('Добавляемая строка');
  s1 := '';
  i := DataSetDetail.FieldCount;
  i := DataSetDetail.RecNo;

  DataSetDetail.First; NNTrebovan := 0;

  for i := 0 to DataSetDetail.RecordCount - 1 do
   begin
      s1 := '';
      NNTrebovan := NNTrebovan + 1;
      //s1 :=  s1 + 'номер абзаца:' + IntToStr(NNTrebovan); s1 := s1 + #13#10;

      s1 := s1 + #13#10;
      s1 :=  s1 + 'категория требования N:'
        + DataSetDetail.FieldByName('N').AsString; s1 := s1 + #13#10;
      s1 :=  s1 + 'Соответствие требованиям пожарной безопасности:'
        + DataSetDetail.FieldByName('Соответствие требованиям пожарной безопасности').AsString; s1 := s1 + #13#10;
      //s1 :=  s1 + 'Соответствует да/нет:' + DataSetDetail.FieldByName('Соответствует да/нет').AsString; s1 := s1 + #13#10 + #13#10;

      if (DataSetDetail.FieldByName('Соответствует да/нет').AsBoolean = True) then
      begin
          strBool := 'Соответствует';
      end
      else
      begin
        strBool := 'НЕ соответствует';
      end;
     s1 := s1 + 'Соответствует да/нет:'
        + strBool; s1 := s1 + #13#10 + #13#10;

     if(NewParam = 0) then   // выводить только НЕ выполненные
     begin
         if(DataSetDetail.FieldByName('Соответствует да/нет').AsBoolean = False) then   // выводить только НЕ выполненные
         begin
           RichEdit.Lines.Append(s1);;
         end
         else begin
         ;
         end;;
     end
     else begin
     ;
     end;

    if(NewParam = 1) then   // выводить только выполненные
     begin
         if(DataSetDetail.FieldByName('Соответствует да/нет').AsBoolean = True) then   // выводить только выполненные
         begin
           RichEdit.Lines.Append(s1);;
         end
         else begin
         ;
         end;;
     end
     else begin
     ;
     end;

     DM.tblNormOfBilding.First;  j:= 0;  s1 := '';  bTest:=DM.tblNormOfBilding.filtered;
     for j := 0 to DM.tblNormOfBilding.RecordCount - 1 do
     begin
        iRes := AnsiCompareStr(dm.tblVypoln.FieldByName('N').AsString, dm.tblNormOfBilding.FieldByName('N').AsString);
        if not(0=iRes) then continue; //???

        bRes := dm.tblBilding.FieldByName('id').AsInteger = dm.tblNormOfBilding.FieldByName('fid_Bilding').AsInteger;
        //if not(bRes) then continue;

        //if ( (0=iRes) and(bRes) ) then
        begin
          s2 :=  s2 + 'Документ' + DM.tblNormOfBilding.FieldByName('Документ').AsString; s2 := s2 + #13#10;
          s2 :=  s2 + 'статья-раздел' + DM.tblNormOfBilding.FieldByName('статья-раздел').AsString; s2 := s2 + #13#10;
          s2 :=  s2 + 'часть (пункт)' + DM.tblNormOfBilding.FieldByName('часть (пункт)').AsString; s2 := s2 + #13#10;
          s2 :=  s2 + 'содержание норм' + DM.tblNormOfBilding.FieldByName('содержание норм').AsString; s2 := s2 + #13#10;
          s2 :=  s2 + 'Соответствует да/нет' + DM.tblNormOfBilding.FieldByName('Соответствует да/нет').AsString; s2 := s2 + #13#10;
          s1 := s1 + #13#10; s1 := s1 + #13#10;
          RichEdit.Lines.Append(s2);
        end;    

        DM.tblNormOfBilding.Next;
     end;

     application.ProcessMessages;
     DataSetDetail.Next;
   end;   //for i := 0 to DataSetDetail.RecordCount - 1 do
end;
/////////////////////////////////////////////////////////////////////////////////////////

procedure ExportDetailTabl(); //  Экспорт всех записей
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetDetail: TCustomADODataSet;
  RichEdit: TRichEdit;
  NNTrebovan: Integer;
  strBool: string;
begin
   RichEdit := ExportForm.redt1;

   s1 := 'Описание объекта:'; s1 := s1 + #13#10; RichEdit.Lines.Append(s1);
   ExportRecordFieldsBilding();

   s1 := 'Отчет по не выполненным требованиям на объекте:'; s1 := s1 + #13#10; RichEdit.Lines.Append(s1);
   ExportDetailTabl1(0);

   Exit;
      s1 := 'Отчет по выполненным требованиям на объекте:'; s1 := s1 + #13#10; RichEdit.Lines.Append(s1);
   ExportDetailTabl1(1);
end;

/////////////////////////////////////////////////////////////////////////////////////////
procedure ExportRecordFieldsBilding;
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetDetail: TDataSet;
  RichEdit: TRichEdit;
begin
  DataSetDetail := DM.tblBilding;
  RichEdit := ExportForm.redt1;

  s1 := '';
  i := DataSetDetail.FieldCount;
  for i := 0 to DataSetDetail.FieldCount - 1 do
    begin
      s1 := '';
      //s1 := DataSetDetail.Fields[i].FieldName;
      s1 := s1 + DataSetDetail.Fields[i].DisplayName; s1 := s1 + ':';
      s1 := s1 +  DataSetDetail.Fields[i].DisplayText; s1 := s1 + #13#10;
      //s1 := DataSetDetail.Fields[i].Text;
      RichEdit.Lines.Append(s1); //RichEdit.Lines.Append(#13#10) ;
      application.ProcessMessages;
    end;
end;

/////////////////////////////////////////////////////////////////////////////////////////
procedure ExportRecordFields();
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

end.

