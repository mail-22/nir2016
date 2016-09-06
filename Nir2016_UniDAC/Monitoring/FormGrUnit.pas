unit FormGrUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, ExtCtrls, TeeProcs, TeEngine, Chart
  , ADODB, ToolWin, ActnMan, ActnCtrls, ActnMenus, XPStyleActnCtrls,
  ActnList, Series, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, TeeTools , DB
  ;

type
  TFormGr = class(TBaseForm)
    cht1: TChart;
    actlst1: TActionList;
    actGr: TAction;
    actmgr1: TActionManager;
    actmmb1: TActionMainMenuBar;
    brsrsSeries1: TBarSeries;
    GridBandTool1: TGridBandTool;
    procedure actGrExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Gr_Method01;
    { Private declarations }
  public
    procedure Gr_Method;
    { Public declarations }
  end;

var
  FormGr: TFormGr;

implementation

uses
  DMUnit;

{$R *.dfm}

procedure TFormGr.actGrExecute(Sender: TObject);
begin
  inherited;
  Gr_Method;
end;

procedure TFormGr.FormShow(Sender: TObject);
begin
  inherited;
   Gr_Method;
end;


procedure TFormGr.Gr_Method01;
  // TODO -cMM: TFormGr.Gr_Method default body inserted
var //DataSet:TCustomADODataSet;
  i: Integer;
  N: Integer;
  sN: string;
  iPos: Integer;
  iRes: Integer;
  bRes: Boolean;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSet: TDataSet;
  arrX: array of string;
  arrY: array of Integer;

  AXValue: Double;
  ALabel: string;
  AColor: TColor;
  Series: TChartSeries;
begin
                //RichEdit.Lines.Clear;
                //RichEdit.Lines.Append('Добавляемая строка');
  DataSet := DM.tblVypolnAll;
  //DataSet := DM.tblVypoln;
  s1 := '';

  N := 1;
  sN := IntToStr(N) + '.';

  DataSet.Open;
  DataSet.First; DataSet.RecordCount; DataSet.RecNo;
  FreeAndNil(arrX);
  FreeAndNil(arrY);
  while not DataSet.EOF do
  begin
    iRes := Pos(sN, DataSet.FieldByName('N').AsString);
    if (iRes = 1) then
    begin
      bRes := DataSet.FieldByName('Соответствует да/нет').AsBoolean;
      if (bRes = True) then iRes := 1 else iRes := -1;
      SetLength(arrY, Length(arrY) + 1); arrY[High(arrY)] := iRes;
      SetLength(arrX, Length(arrX) + 1); arrX[High(arrX)] := DataSet.FieldByName('Соответствие требованиям пожарной безопасности').AsString;
    end;
    DataSet.Next;
  end;

    //cht1

  Series := brsrsSeries1;
  Series.Clear;
  Series.Count;
  for i := 0 to High(arrX) do
  begin
    AXValue := i;
    ALabel := '';
    //lnsrsSeries1.AddX(AXValue, ALabel);

    AXValue := arrY[i];
    ALabel := '';
    //lnsrsSeries1.AddY(AXValue, ALabel);

    Series.AddXY(i, arrY[i], ALabel)
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

end; //procedure TFormGr.Gr_Method01;



procedure TFormGr.Gr_Method;
  // TODO -cMM: TFormGr.Gr_Method default body inserted
var //DataSet:TCustomADODataSet;
  i: Integer;
  N: Integer;
  sN: string;
  iPos: Integer;
  iRes: Integer;
  bRes: Boolean;
  fSum: Real;
  kol_treb:Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSet: TDataSet;
  arrX: array of string;
  arrY: array of real;

  AXValue: Double;
  ALabel: string;
  AColor: TColor;
  Series: TChartSeries;
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
  N := 1;
  for N := 1 to 16 do
  begin
    sN := IntToStr(N) + '.';
    DataSet.First; DataSet.RecordCount; DataSet.RecNo;        if(DataSet.RecordCount=0) then exit;
    fSum := 0;  kol_treb:=0;
    while not DataSet.EOF do
    begin
      iRes := Pos(sN, DataSet.FieldByName('N').AsString);
      if (iRes = 1) then
      begin
        bRes := DataSet.FieldByName('Соответствует да/нет').AsBoolean;
        if (bRes = True) then iRes := 1 else iRes := 0;
        fSum := fSum + iRes;
        kol_treb := kol_treb +1;
        if (Pos(sN, DataSet.FieldByName('N').AsString) = 1) and
          (Length(sN) = Length(DataSet.FieldByName('N').AsString)) then
        begin
          SetLength(arrX, Length(arrX) + 1);
          arrX[High(arrX)] := ' '+
            DataSet.FieldByName('Соответствие требованиям пожарной безопасности').AsString;
        end;
      end; //if (iRes = 1)
      DataSet.Next;
    end; // while not DataSet.EOF do
    SetLength(arrY, Length(arrY) + 1); arrY[High(arrY)] := Round((fSum/kol_treb)*100); //%
  end; //for N := 1 to 16 do

    //cht1

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

    Series.AddXY(i, arrY[i], ALabel)
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
      Screen.Cursor := crDefault;
        end;
end; //procedure TFormGr.Gr_Method;



end.

