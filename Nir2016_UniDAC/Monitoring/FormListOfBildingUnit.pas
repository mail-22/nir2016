unit FormListOfBildingUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, ExtCtrls, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxGridLevel, cxGridCardView,
  cxGridDBCardView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBCtrls,
   ADODB   ,Unit_BaseForm, JvExControls,
  JvLookOut, ActnList, XPStyleActnCtrls, ActnMan, JvExStdCtrls
  ,ComCtrls, ToolWin, ActnCtrls, ActnMenus, JvLabel, JvDBControls,
  RVScroll, RichView, RVEdit, DBRV, RVStyle, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, ActnColorMaps,
  cxNavigator, cxDBNavigator, cxMRUEdit,utility, StdActns, cxCheckBox,
  cxContainer, cxProgressBar, JvExComCtrls, JvProgressBar, JvDBProgressBar,
  cxPropertiesStore, cxDBLookupComboBox;

type
  TFormListOfBilding = class(TBaseForm)
    pnlAll: TPanel;
    pnlT01: TPanel;
    spl2: TSplitter;
    pnlL: TPanel;
    lbl1: TLabel;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbndtblvwcxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrdbndclmncxgrdbndtblvwcxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxgrdbcrdvwcxgrd1DBCardView1: TcxGridDBCardView;
    cxgrdbcrdvwcxgrd1DBCardView1Row1: TcxGridDBCardViewRow;
    cxgrdbtblvwcxgrd1DBTableView1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    pnlR: TPanel;
    lbl2: TLabel;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    pnlB: TPanel;
    lbl3: TLabel;
    scrlbx1: TScrollBox;
    pnlH: TPanel;
    mmo1: TMemo;
    ds1: TDataSource;
    pnlHeader: TPanel;
    actmgr1: TActionManager;
    act3: TAction;
    act2: TAction;
    act1: TAction;
    act0: TAction;
    act24: TAction;
    act23: TAction;
    act22: TAction;
    act21: TAction;
    act25: TAction;
    act26: TAction;
    act27: TAction;
    act28: TAction;
    act29: TAction;
    act210: TAction;
    act211: TAction;
    act212: TAction;
    act213: TAction;
    act214: TAction;
    act215: TAction;
    act216: TAction;
    actTabl2RichEdit: TAction;
    actExport: TAction;
    actVypoln_False: TAction;
    actVypol_TRUE: TAction;
    actAct_Vypoln_Show: TAction;
    actmmb1: TActionMainMenuBar;
    act_AddNewBuilding: TAction;
    spl1: TSplitter;
    dbrchvwdtole: TDBRichViewEdit;
    rvstyl1: TRVStyle;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    xpclrmp1: TXPColorMap;
    stndrdclrmp1: TStandardColorMap;
    pnlBB: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    cxdbnvgtr1: TcxDBNavigator;
    hlpcntnts1: THelpContents;
    hlptpcsrch1: THelpTopicSearch;
    hlpnhlp1: THelpOnHelp;
    Action1: TAction;
    act4: THelpContextAction;
    cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn6: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn7: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn8: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn9: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn10: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn11: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn12: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn13: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn14: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn15: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn16: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1C: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn17: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn18: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn19: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn20: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn21: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn22: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn23: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn24: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn0: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn25: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn26: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn27: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn28: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Adress: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Street: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1BildingNo: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Region: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn29: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn30: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1sootvet: TcxGridDBColumn;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow3: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow4: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow5: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow6: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow7: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow8: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow9: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow10: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow12: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow13: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow14: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow15: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow16: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1C: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow17: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow18: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow19: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow20: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow21: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow22: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow23: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow24: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow0: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow25: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow26: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow27: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow28: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1rtf: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1Adress: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1Street: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1BildingNo: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1Region: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow29: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow30: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1sootvet: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1PprT: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1ZT: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1Et: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1P1: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1P2: TcxDBEditorRow;
    cxgrdbclmncxgrdbtblvw1PprT: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ZT: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Et: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1P1: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1P2: TcxGridDBColumn;
    cxProgressBarVypoln: TcxProgressBar;
    cxProgressBarTrebovan: TcxProgressBar;
    JvDBProgressBar1: TJvDBProgressBar;
    cxPropertiesStore1: TcxPropertiesStore;
    act5: TAction;
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure act0Execute(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure act24Execute(Sender: TObject);
    procedure act23Execute(Sender: TObject);
    procedure act22Execute(Sender: TObject);
    procedure act21Execute(Sender: TObject);
    procedure act25Execute(Sender: TObject);
    procedure act26Execute(Sender: TObject);
    procedure act27Execute(Sender: TObject);
    procedure act28Execute(Sender: TObject);
    procedure act29Execute(Sender: TObject);
    procedure act210Execute(Sender: TObject);
    procedure act211Execute(Sender: TObject);
    procedure act212Execute(Sender: TObject);
    procedure act213Execute(Sender: TObject);
    procedure act214Execute(Sender: TObject);
    procedure act215Execute(Sender: TObject);
    procedure act216Execute(Sender: TObject);
    procedure act4Execute(Sender: TObject);
    procedure act5Execute(Sender: TObject);
    procedure actAct_Vypoln_ShowExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure actVypoln_FalseExecute(Sender: TObject);
    procedure actVypol_TRUEExecute(Sender: TObject);
    procedure act_AddNewBuildingExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function FormHelp(Command: Word; Data: Integer; var CallHelp: Boolean): Boolean;
    procedure hlpcntnts1Execute(Sender: TObject);
    procedure hlpnhlp1Execute(Sender: TObject);
    procedure hlptpcsrch1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;


var
  FormListOfBilding: TFormListOfBilding;
  AFileName : string;

implementation

uses MainUnit, DMUnit, Logic,
  ExportFormUnit, Vypoln_Unit;

{$R *.dfm}


procedure TFormListOfBilding.FormCreate(Sender: TObject);
var MRUEdit_rubricator: string;
begin
  inherited;

    cxPropertiesStore1.StorageName:=ExtractFilePath(Application.ExeName) +
    Self.Name + '.cxPropertiesStore1.ini';
    AFileName := cxPropertiesStore1.StorageName;
    if not FileExists(AFileName) then begin
       cxPropertiesStore1.StoreTo(True);
    end
    else begin
      cxPropertiesStore1.RestoreFrom;
      cxPropertiesStore1.Active := True ;
    end;


    //cxIntlPrintSys31.FileName := ExtractFilePath(Application.ExeName) +     'cxIntlPrintSys3.ini';
  //cxIntlPrintSys31.FileNameAndPath := ExtractFilePath(Application.ExeName) +    'cxIntlPrintSys3.ini';
  //cxIntlPrintSys31.Connected := true;
  //cxgrdbtblvw1.DataController.Groups.FullExpand;

  AFileName:= ExtractFilePath(Application.ExeName) + 'FormListOfBilding.cxgrdbtblvw1.ini';
  if not FileExists(AFileName)  then
      cxgrdbtblvw1.StoreToIniFile(AFileName, true);

  //Vypoln.cxgrdbtblvw1.Name;
{ TODO 1 -oSVS -cfor debug : for debug }  //
//состояние таблицы

  cxgrdbtblvw1.RestoreFromIniFile(AFileName);// НЕ восстанавливать состояние таблицы

  //cxgrdbtblvw1.StoreToIniFile(AFileName, true);//НЕ сохранять состояние таблицы

 //MRU
  MRUEdit_rubricator :=ExtractFilePath(Application.ExeName) + Self.Name +'.'+ 'MRUEdit.rubricator_F.txt';
  if FileExists1(MRUEdit_rubricator) then begin
       TcxMRUEditProperties(cxgrdbclmncxgrdbtblvw1DBColumn3.Properties).LookupItems.LoadFromFile(MRUEdit_rubricator);
  TcxMRUEditProperties(cxgrdbclmncxgrdbtblvw1DBColumn3.Properties).LookupItems.Text;
  end
  else
  begin 
  end;



end;

procedure TFormListOfBilding.act0Execute(Sender: TObject);
begin
  inherited;
  //Выполнение требований
  FormMain.Vypoln_Show;
end;

procedure TFormListOfBilding.act3Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFormListOfBilding.btn1Click(Sender: TObject);
var
    i:Integer;
    tmpRecordIndex:Integer;
    sFnn, sFn, sF :String;
    //vValue : TcxFieltrCriteriaItem;
    DataSet:TCustomADODataSet;
    DataSet2:TCustomADODataSet;
begin
      AddNewBuilding;   //??
end; //procedure TFormListOfBilding.btn1Click(Sender: TObject);

procedure TFormListOfBilding.act24Execute(Sender: TObject);
begin
  inherited;
  // 4. Строительных конструкций и противопожарных преград
  Vypoln_Show('4.');
end;

procedure TFormListOfBilding.act23Execute(Sender: TObject);
begin
  inherited;
  //  3. Объемно-планировочных решений зданий
  Vypoln_Show('3.');
end;

procedure TFormListOfBilding.act22Execute(Sender: TObject);
begin
  inherited;
  //2. Систем наружного противопожарного водоснабжения
  Vypoln_Show('2.');;
end;

procedure TFormListOfBilding.act21Execute(Sender: TObject);
begin
  inherited;
  Vypoln_Show('1.');
//1. Решений по генеральному плану
end;

procedure TFormListOfBilding.act25Execute(Sender: TObject);
begin
  inherited;
  //5. Эвакуационных путей и выходов
  Vypoln_Show('5.');
end;

procedure TFormListOfBilding.act26Execute(Sender: TObject);
begin
  inherited;
  //6. Мероприятий и технических решений, обеспечивающих успешное тушение пожара
  Vypoln_Show('6.');
end;

procedure TFormListOfBilding.act27Execute(Sender: TObject);
begin
  inherited;
  //7. Технологического процесса
  Vypoln_Show('7.');
end;

procedure TFormListOfBilding.act28Execute(Sender: TObject);
begin
  inherited;
  //8. Систем внутреннего противопожарного водоснабжения
  Vypoln_Show('8.');
end;

procedure TFormListOfBilding.act29Execute(Sender: TObject);
begin
  inherited;
  //9. Систем обнаружения пожара, оповещения и управления эвакуацией людей
  Vypoln_Show('9.');
end;

procedure TFormListOfBilding.act210Execute(Sender: TObject);
begin
  inherited;
//10. Автоматических установок пожаротушения
     Vypoln_Show('10.');
end;

procedure TFormListOfBilding.act211Execute(Sender: TObject);
begin
  inherited;
//11. Систем противодымной защиты
     Vypoln_Show('11.');
end;

procedure TFormListOfBilding.act212Execute(Sender: TObject);
begin
  inherited;
//12. Вентиляционных систем
    Vypoln_Show('12.');
end;

procedure TFormListOfBilding.act213Execute(Sender: TObject);
begin
  inherited;
//13. Систем отопления
    Vypoln_Show('13.');
end;

procedure TFormListOfBilding.act214Execute(Sender: TObject);
begin
  inherited;
//14. Систем энергоснабжения и электрооборудования
    Vypoln_Show('14.');
end;


procedure TFormListOfBilding.act215Execute(Sender: TObject);
begin
  inherited;
//15. Систем противовзрывной защиты здания
    Vypoln_Show('15.');
end;



procedure TFormListOfBilding.act216Execute(Sender: TObject);
begin
  inherited;
//16. Противопожарного режима
     Vypoln_Show('16.');
end;

procedure TFormListOfBilding.act4Execute(Sender: TObject);
begin
  inherited;
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormListOfBilding.act5Execute(Sender: TObject);
begin
  inherited;
  Vypoln.actExport11Execute(Sender);
end;

procedure TFormListOfBilding.actAct_Vypoln_ShowExecute(Sender: TObject);
begin
  inherited;
  FormMain.Vypoln_Show;
end;

procedure TFormListOfBilding.actExportExecute(Sender: TObject);
var
   DataSet:TDataSet;
   RichEdit :TRichEdit;
begin
  inherited;
  FormMain.ExportForm_Show;

  //
  DataSet :=  DM.tblBilding;

  DataSet :=  DM.tblVypolnAll;
  RichEdit := ExportForm.redt1;    //JvRichEdit

  DM.tblVypolnAll.Close;
  DM.tblVypolnAll.Open;
   
  //logic.Fields2RichEdit(DataSet, RichEdit );
  logic.Tabl2RichEdit(DataSet, RichEdit );

end;

procedure TFormListOfBilding.actVypoln_FalseExecute(Sender: TObject);
begin
  inherited;
  DM.tblVypoln.Close;
  //(((Vypoln.[Соответствует да/нет])=False));
  DM.tblVypoln.Params[2].Value := False  ;
  DM.tblVypoln.Open;
end;

procedure TFormListOfBilding.actVypol_TRUEExecute(Sender: TObject);
begin
  inherited;
  DM.tblVypoln.Close;
  //(((Vypoln.[Соответствует да/нет])=False));
  DM.tblVypoln.Params[2].Value := True  ;
  DM.tblVypoln.Open;
end;

procedure TFormListOfBilding.act_AddNewBuildingExecute(Sender: TObject);
begin
  //inherited;
 // AddNewBuilding; //
end;

procedure TFormListOfBilding.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  inherited;  
  //состояние таблицы
  if FileExists(AFileName)  then
    cxgrdbtblvw1.StoreToIniFile(AFileName, true);//НЕ сохранять состояние таблицы

  cxPropertiesStore1.StoreTo(True);
end;

function TFormListOfBilding.FormHelp(Command: Word; Data: Integer; var
    CallHelp: Boolean): Boolean;
begin
  inherited;
  strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormListOfBilding.hlpcntnts1Execute(Sender: TObject);
begin
  inherited;
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormListOfBilding.hlpnhlp1Execute(Sender: TObject);
begin
  inherited;
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormListOfBilding.hlptpcsrch1Execute(Sender: TObject);
begin
  inherited;
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

end.
