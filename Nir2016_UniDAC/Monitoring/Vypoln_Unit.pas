unit Vypoln_Unit;
// выполнение требований нормативных документов-  -> ->
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
  cxImage, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxBlobEdit,  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxRichEdit, StdCtrls, DBCtrls, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid
  , Unit_BaseForm, ActnList, XPStyleActnCtrls, ActnMan, JvExControls,
  JvLookOut
  , ToolWin, ActnCtrls, ActnMenus
  , ADODB
  , ComCtrls
  , MainUnit, JvLabel, JvDBControls, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, cxDBLookupComboBox, cxNavigator, cxDBNavigator,
  Grids, DBGrids, cxSplitter, cxProgressBar, cxDBProgressBar, JvExComCtrls,
  JvProgressBar, JvDBProgressBar, cxPropertiesStore;

type
  TVypoln = class(TBaseForm)
    pnlL: TPanel;
    pnlalClient: TPanel;
    lbl1: TLabel;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    pnlRight: TPanel;
    lbl2: TLabel;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    pnlH: TPanel;
    mmo1: TMemo;
    ds1: TDataSource;
    lbl3: TLabel;
    jvlktOutlookBar1: TJvLookOut;
    jvlktpgLookOutPage1: TJvLookOutPage;
    btnLookOutButton4: TJvLookOutButton;
    btnLookOutButton5: TJvLookOutButton;
    btnLookOutButton6: TJvLookOutButton;
    btnLookOutButton7: TJvLookOutButton;
    btnLookOutButton8: TJvLookOutButton;
    btnLookOutButton9: TJvLookOutButton;
    btnLookOutButton10: TJvLookOutButton;
    btnLookOutButton11: TJvLookOutButton;
    btnLookOutButton12: TJvLookOutButton;
    btnLookOutButton13: TJvLookOutButton;
    btnLookOutButton14: TJvLookOutButton;
    btnLookOutButton15: TJvLookOutButton;
    btnLookOutButton16: TJvLookOutButton;
    btnLookOutButton17: TJvLookOutButton;
    btnLookOutButton18: TJvLookOutButton;
    btnLookOutButton19: TJvLookOutButton;
    btnLookOutButton20: TJvLookOutButton;
    jvlktpgLookOutPage2: TJvLookOutPage;
    btnExport: TJvLookOutButton;
    jvlktpgLookOutPage3: TJvLookOutPage;
    rgjvrdgrp1: TRadioGroup;
    actmmb1: TActionMainMenuBar;
    actmgr1: TActionManager;
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
    act_AddNewBuilding: TAction;
    actAll: TAction;
    jvlktpgFormGrLookOutPage1: TJvLookOutPage;
    btnFormGr: TJvLookOutButton;
    actFormGr: TAction;
    actDel: TAction;
    btnLookOutButton1: TJvLookOutButton;
    actGr2: TAction;
    actAnal: TAction;
    btnAnal: TJvLookOutButton;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1N: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1fid_Bilding: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1SOOTVETSTV: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1rtf: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1NTreb: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1NTreb2: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1test: TcxDBEditorRow;
    actExportXLS: TAction;
    btnLookOutButton2: TJvLookOutButton;
    pnlBBB: TPanel;
    pnlB: TPanel;
    pnlLLL: TPanel;
    pnlGrid: TPanel;
    btnExport1: TJvLookOutButton;
    actExport11: TAction;
    cxspltr2: TcxSplitter;
    pnl1T: TPanel;
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Panel2: TPanel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    cxDBNavigator1: TcxDBNavigator;
    pnlT: TPanel;
    cxspltr3: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    cxDBNavigator2: TcxDBNavigator;
    cxDBProgressBar1: TcxDBProgressBar;
    Panel4: TPanel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    cxDBNavigator3: TcxDBNavigator;
    JvDBProgressBar1: TJvDBProgressBar;
    JvDBProgressBar2: TJvDBProgressBar;
    JvDBProgressBar3: TJvDBProgressBar;
    cxPropertiesStore1: TcxPropertiesStore;
    lbl4: TLabel;
    lbl5: TLabel;
    cxspltr4: TcxSplitter;
    spl2: TcxSplitter;
    cxgrdbclmnGridDBTableView3id: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3N: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3DBColumn: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3DBColumn4: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3DBColumn5: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3fid_Bilding: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView3fid_Vypoln: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1N: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1DBColumn4: TcxGridDBColumn;
    btnLookOutButton3: TJvLookOutButton;
    actExportEx1: TAction;
    cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1N: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1fid_Bilding: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SOOTVETSTV: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1rtf: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1NTreb: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1NTreb2: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1test: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1soot: TcxGridDBColumn;
    procedure act210Execute(Sender: TObject);
    procedure act211Execute(Sender: TObject);
    procedure act212Execute(Sender: TObject);
    procedure act213Execute(Sender: TObject);
    procedure act214Execute(Sender: TObject);
    procedure act215Execute(Sender: TObject);
    procedure act216Execute(Sender: TObject);
    procedure act21Execute(Sender: TObject);
    procedure act22Execute(Sender: TObject);
    procedure act23Execute(Sender: TObject);
    procedure act24Execute(Sender: TObject);
    procedure act25Execute(Sender: TObject);
    procedure act26Execute(Sender: TObject);
    procedure act27Execute(Sender: TObject);
    procedure act28Execute(Sender: TObject);
    procedure act29Execute(Sender: TObject);
    procedure actAct_Vypoln_ShowExecute(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure actAnalExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actExport11Execute(Sender: TObject);
    procedure actExportEx1Execute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure actExportXLSExecute(Sender: TObject);
    procedure actFormGrExecute(Sender: TObject);
    procedure actGr2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rgjvrdgrp1Click(Sender: TObject);
  private
    procedure Vypoln_Show(N: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vypoln: TVypoln;

var
  AFileName: string;

implementation

uses
  DMUnit, Logic, ExportFormUnit, ExportXLSFormUnit;

{$R *.dfm}


procedure TVypoln.act210Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('10.');
end;

procedure TVypoln.act211Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('11.');
end;

procedure TVypoln.act212Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('12.');
end;

procedure TVypoln.act213Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('13.');
end;

procedure TVypoln.act214Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('14.');
end;

procedure TVypoln.act215Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('15.');
end;

procedure TVypoln.act216Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('16.');
end;

////////////////////////////////////////////////////////////////////////////////
procedure TVypoln.Vypoln_Show(N: string);
begin
  DM.tblVypoln.Close;
  DM.tblVypoln.Params[1].Value := N + '%';
  DM.tblVypoln.Open;
end;

procedure TVypoln.act21Execute(Sender: TObject);
begin
  Vypoln_Show('1.');
//1. Решений по генеральному плану
end;

procedure TVypoln.act22Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('2.');
end;

procedure TVypoln.act23Execute(Sender: TObject);
begin
  inherited;
  Vypoln_Show('3.');
end;

procedure TVypoln.act24Execute(Sender: TObject);
begin
  inherited;
  Vypoln_Show('4.');
end;

procedure TVypoln.act25Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('5.');
end;

procedure TVypoln.act26Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('6.');
end;

procedure TVypoln.act27Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('7.');
end;

procedure TVypoln.act28Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('8.');
end;

procedure TVypoln.act29Execute(Sender: TObject);
begin
  inherited; Vypoln_Show('9.');
end;

procedure TVypoln.actAct_Vypoln_ShowExecute(Sender: TObject);
begin
  inherited;
  FormMain.Trebov_Show;
end;

procedure TVypoln.actAllExecute(Sender: TObject);
begin
  inherited; Vypoln_Show('');
end;

procedure TVypoln.actAnalExecute(Sender: TObject);
begin
  inherited;
  FormMain.OLAPForm_Show;
end;

procedure TVypoln.actDelExecute(Sender: TObject);
begin
  inherited;
  Del2(DM.tblVypoln);
end;

/////////////////////////////////////////////////////////////////////////////////////////  
procedure TVypoln.actExport11Execute(Sender: TObject);
var //DataSet:TCustomADODataSet;
  i: Integer;
  tmpRecordIndex: Integer;
  s1, sFn, sF: string;
  DataSetMaster: TDataSet;
  RichEdit: TRichEdit;
  NNBilding: Integer;
  SaveRecNo: Integer;
begin
  //Export в текстовый файл текущей записей
  FormMain.ExportForm_Show;
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

  //DataSetMaster.First;
  //for i := 0 to DataSetMaster.RecordCount - 1 do
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

procedure TVypoln.actExportEx1Execute(Sender: TObject);
begin
  // Export в Microsoft Office Excel текущего объекта (здания)
  inherited;
  FormMain.ExportXLSForm_Show;
  ExportXLSForm.Close;
end;

procedure TVypoln.actExportExecute(Sender: TObject);
var
  DataSet: TDataSet;
  RichEdit: TRichEdit;
begin
  inherited;
  FormMain.ExportForm_Show;
  ExportFormUnit.ExportMasterTabl;
  exit;
  //
  DataSet := DM.tblBilding;

  DataSet := DM.tblVypolnAll;
  RichEdit := ExportForm.redt1; //JvRichEdit

  DM.tblVypolnAll.Close;
  DM.tblVypolnAll.Open;

  //logic.Fields2RichEdit(DataSet, RichEdit );
  logic.Tabl2RichEdit(DataSet, RichEdit);
end;

procedure TVypoln.actExportXLSExecute(Sender: TObject);
begin
  inherited;
  FormMain.ExportXLSForm_Show;
  ExportXLSForm.Close;
end;

procedure TVypoln.actFormGrExecute(Sender: TObject);
begin
  inherited;
  FormMain.FormGr_Show;
end;

procedure TVypoln.actGr2Execute(Sender: TObject);
begin
  inherited;
  FormMain.FormGrAll_Show;
end;

procedure TVypoln.FormCreate(Sender: TObject);
begin
  inherited;
  DM.tblVypoln.Close;
  //dm.tblVypoln.ParamByName('№').Value := '*';
  DM.tblVypoln.Params[1].Value := '%';
  //DM.tblVypoln.Parameters[2].Value := false ;
  //DM.tblVypoln.Parameters[2].DataType;
  DM.tblVypoln.Open;


    //cxIntlPrintSys31.FileName := ExtractFilePath(Application.ExeName) +     'cxIntlPrintSys3.ini';
  //cxIntlPrintSys31.FileNameAndPath := ExtractFilePath(Application.ExeName) +    'cxIntlPrintSys3.ini';
  //cxIntlPrintSys31.Connected := true;
  //cxgrdbtblvw1.DataController.Groups.FullExpand;
  //Beep;
  cxPropertiesStore1.StorageName:=ExtractFilePath(Application.ExeName) +
    Self.Name + '.cxPropertiesStore1.ini';
    AFileName := cxPropertiesStore1.StorageName;
    if not FileExists(AFileName) then begin
       cxPropertiesStore1.StoreTo(True);
    end
    else begin
      cxPropertiesStore1.RestoreFrom;
    end;



  


// Vypoln таблица
  AFileName := ExtractFilePath(Application.ExeName) + 'Vypoln.cxgrdbtblvw1.ini';
  if not FileExists(AFileName) then
    cxgrdbtblvw1.StoreToIniFile(AFileName, true);
  //Vypoln.cxgrdbtblvw1.Name;
 { TODO 1 -oSVS -cfor debug : for debug }//
//состояние таблицы
  cxgrdbtblvw1.RestoreFromIniFile(AFileName); //   восстанавливать состояние таблицы
  //cxgrdbtblvw1.StoreToIniFile(AFileName, true);//НЕ сохранять состояние таблицы

// cxgrdbtblvw1 таблица
   AFileName := ExtractFilePath(Application.ExeName) + 'Vypoln.cxGridDBTableView3.ini';
  if not FileExists(AFileName) then
     cxGridDBTableView3.StoreToIniFile(AFileName, true);
  cxGridDBTableView3.RestoreFromIniFile(AFileName); //   восстанавливать состояние таблицы

  // cxgrdbtblvw1 таблица
   AFileName := ExtractFilePath(Application.ExeName) + 'Vypoln.cxGridDBTableView1.ini';
  if not FileExists(AFileName) then
     cxGridDBTableView1.StoreToIniFile(AFileName, true);
  cxGridDBTableView1.RestoreFromIniFile(AFileName); //   восстанавливать состояние таблицы


end;

procedure TVypoln.btn1Click(Sender: TObject);
begin
  Del2(DM.tblVypoln);
end;

procedure TVypoln.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//состояние таблицы
  if FileExists(AFileName) then
    cxgrdbtblvw1.StoreToIniFile(AFileName, true); // сохранять состояние таблицы

  if FileExists(AFileName) then
    cxGridDBTableView3.StoreToIniFile(AFileName, true); // сохранять состояние таблицы

  if FileExists(AFileName) then
    cxGridDBTableView1.StoreToIniFile(AFileName, true); // сохранять состояние таблицы


  cxPropertiesStore1.StoreTo(True);

end;

procedure TVypoln.FormShow(Sender: TObject);
begin
  inherited;
  rgjvrdgrp1Click(Sender);
end;

procedure TVypoln.rgjvrdgrp1Click(Sender: TObject);
begin
  inherited;

  //DM.blnfldVypolnsoot.
  DM.tblVypoln.Close;
  if rgjvrdgrp1.ItemIndex = 0 then
    begin
      DM.tblVypoln.Params[2].Value := True;
      DM.tblVypoln.Params[3].Value := True;
    end;
  if rgjvrdgrp1.ItemIndex = 1 then
    begin
      DM.tblVypoln.Params[2].Value := False;
      DM.tblVypoln.Params[3].Value := False;
    end;
  if rgjvrdgrp1.ItemIndex = 2 then
    begin
      DM.tblVypoln.Params[2].Value := True;
      DM.tblVypoln.Params[3].Value := False;
    end;
  DM.tblVypoln.Open;
end;


end.

