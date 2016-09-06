unit FormGrAllUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, XPStyleActnCtrls, ActnMan, ActnList, ToolWin,
  ActnCtrls, ActnMenus
  , ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement
  ;

type
  TFormGrAll = class(TBaseForm)
    actmmb1: TActionMainMenuBar;
    actlst1: TActionList;
    actGr: TAction;
    actmgr1: TActionManager;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    procedure actGrExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    procedure Gr_MethodAll;
  end;

var
  FormGrAll: TFormGrAll;

implementation

uses DMUnit, DB;

{$R *.dfm}

procedure TFormGrAll.actGrExecute(Sender: TObject);
begin
  inherited;
  Gr_MethodAll;
end;

procedure TFormGrAll.FormShow(Sender: TObject);
begin
  inherited;
  Gr_MethodAll;
end;

procedure TFormGrAll.Gr_MethodAll;
  // TODO -cMM: TFormGr.Gr_Method default body inserted
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

  AXValue: Double;
  ALabel: string;
  AColor: TColor;
  Series: TChartSeries;
  SaveRecNo: Integer;
  BB: Integer;
begin
  Screen.Cursor := crHourGlass;

try
                //RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('Добавляемая строка');
  DataSet := DM.tblVypolnAll;
  //DataSet := DM.tblVypoln;
  DataSet.Open;
  s1 := '';
  FreeAndNil(arrX);
  FreeAndNil(arrY);

  maxN := 16;
  SetLength(arrX, maxN);
  SetLength(arrY, maxN);
  dm.tblBilding.First; dm.tblBilding.RecNo;
  SaveRecNo := dm.tblBilding.RecNo;
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
                      arrX[N] :=  ' ' + DataSet.FieldByName('Соответствие требованиям пожарной безопасности').AsString;
                    end;
                end; //if (iRes = 1)
              DataSet.Next;
            end; // while not DataSet.EOF do
          arrY[N] := arrY[N] + Round((fSum / kol_treb) * 100); //%
        end; //for N := 1 to 16 do
      dm.tblBilding.Next;
    end; //for BB:=1 to  dm.tblBilding.RecordCount do

  Series := brsrsSeries1;
  Series.Clear;
  Series.Count;
  for i := 0 to High(arrX) do
    begin
      AXValue := i;
      ALabel := arrX[i]; ;
    //lnsrsSeries1.AddX(AXValue, ALabel);

      AXValue := arrY[i];
    //ALabel := '';
    //lnsrsSeries1.AddY(AXValue, ALabel);

      Series.AddXY(i, arrY[i] / dm.tblBilding.RecordCount, ALabel)
    end;





{
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
}
{
  while not DataSet.EOF do
  begin

    DataSet.Next;
  end;
}
 finally
   
    dm.tblBilding.RecNo := SaveRecNo;
       Screen.Cursor := crDefault;
       end;
end; //procedure TFormGr.Gr_MethodAll;



end.

