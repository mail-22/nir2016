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
  JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, ActnColorMaps,
  cxNavigator, cxDBNavigator, cxMRUEdit,utility, StdActns, cxCheckBox,
  cxContainer, cxProgressBar, JvExComCtrls, JvProgressBar, JvDBProgressBar,
  cxPropertiesStore, cxDBLookupComboBox, cxSplitter
  ;

type
  TFormListOfBilding = class(TBaseForm)
    pnlAll: TPanel;
    pnlT01: TPanel;
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
    cxProgressBarVypoln: TcxProgressBar;
    cxProgressBarTrebovan: TcxProgressBar;
    JvDBProgressBar1: TJvDBProgressBar;
    cxPropertiesStore1: TcxPropertiesStore;
    act5: TAction;
    btn1: TButton;
    spl2: TcxSplitter;
    cxSplitter1: TcxSplitter;
    dbmmortf: TDBMemo;
    cxgrdbtblvw1DBColumn: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn1: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn2: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn_FUNC: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn4: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn5: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn6: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn7: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn8: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn9: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn10: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn11: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn12: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn13: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn14: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn15: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn16: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn17: TcxGridDBColumn;
    cxgrdbtblvw1C: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn18: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn19: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn20: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn21: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn22: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn23: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn24: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn25: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn26: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn27: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn28: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn29: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn30: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn31: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn32: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn33: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn34: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn35: TcxGridDBColumn;
    cxgrdbtblvw1rtf: TcxGridDBColumn;
    cxgrdbtblvw1Adress: TcxGridDBColumn;
    cxgrdbtblvw1Street: TcxGridDBColumn;
    cxgrdbtblvw1BildingNo: TcxGridDBColumn;
    cxgrdbtblvw1Region: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn36: TcxGridDBColumn;
    cxgrdbtblvw1DBColumn37: TcxGridDBColumn;
    cxgrdbtblvw1sootvet: TcxGridDBColumn;
    cxgrdbtblvw1PprT: TcxGridDBColumn;
    cxgrdbtblvw1ZT: TcxGridDBColumn;
    cxgrdbtblvw1Et: TcxGridDBColumn;
    cxgrdbtblvw1P1: TcxGridDBColumn;
    cxgrdbtblvw1P2: TcxGridDBColumn;
    cxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditor_FUN: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow4: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow5: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow6: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow7: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow8: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow9: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow10: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow12: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow13: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow14: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow15: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow16: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow17: TcxDBEditorRow;
    cxdbvrtclgrd1C: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow18: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow19: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow20: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow21: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow22: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow23: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow24: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow25: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow26: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow27: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow28: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow29: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow30: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow31: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow32: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow33: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow34: TcxDBEditorRow;
    cxdbvrtclgrd1rtf: TcxDBEditorRow;
    cxdbvrtclgrd1Adress: TcxDBEditorRow;
    cxdbvrtclgrd1Street: TcxDBEditorRow;
    cxdbvrtclgrd1BildingNo: TcxDBEditorRow;
    cxdbvrtclgrd1Region: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow35: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow36: TcxDBEditorRow;
    cxdbvrtclgrd1sootvet: TcxDBEditorRow;
    cxdbvrtclgrd1PprT: TcxDBEditorRow;
    cxdbvrtclgrd1ZT: TcxDBEditorRow;
    cxdbvrtclgrd1Et: TcxDBEditorRow;
    cxdbvrtclgrd1P1: TcxDBEditorRow;
    cxdbvrtclgrd1P2: TcxDBEditorRow;
    cxdbvrtclgrd1DBEditorRow37: TcxDBEditorRow;
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
  MRUEdit_rubricator :=ExtractFilePath(Application.ExeName)                 + 'MRUEdit.rubricator_F.txt';
  if FileExists1(MRUEdit_rubricator) then
  begin
    TcxMRUEditProperties(cxgrdbtblvw1DBColumn_FUNC.Properties).LookupItems.LoadFromFile(MRUEdit_rubricator);
    TcxMRUEditProperties(cxgrdbtblvw1DBColumn_FUNC.Properties).LookupItems.Text;

    //TcxMRUEditProperties(cxdbdtrwcxdbvrtclgrd1DBEditor_FUN.Properties).LookupItems.LoadFromFile(MRUEdit_rubricator);
    //TcxMRUEditProperties(cxdbdtrwcxdbvrtclgrd1DBEditor_FUN.Properties).LookupItems := TcxMRUEditProperties(cxgrdbtblvw1DBColumn_FUNC.Properties).LookupItems;
     //TcxMRUEditProperties(cxdbdtrwcxdbvrtclgrd1DBEditor_FUN.Properties).LookupItems.LoadFromFile(MRUEdit_rubricator);
    //TcxMRUEditProperties(cxdbdtrwcxdbvrtclgrd1DBEditor_FUN.Properties).LookupItems.Text;
  end
  else
  begin
  end;


exit; // !!!  
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
 btn1.Click;
end;

procedure TFormListOfBilding.FormClose(Sender: TObject; var Action:
    TCloseAction);
begin
  inherited;  
  //состояние таблицы

   cxgrdbtblvw1.StoreToIniFile(AFileName, true); // сохранить! состояние таблицы

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
