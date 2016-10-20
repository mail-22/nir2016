unit Trebov_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, DB, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxImage, cxContainer, cxDBEdit,
  RVScroll, RichView, RVEdit, DBRV, RVStyle, DBCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCardView, cxGridDBCardView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ToolWin, ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, ActnMenus,
  ImgList, JvExControls, JvLabel, JvDBControls, ADODB, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, ComCtrls, dxtree,
  dxdbtree, cxTL, cxMaskEdit, cxCheckBox, cxMemo, cxTLdxBarBuiltInMenu,
  cxDBTL, cxTLData, JvExComCtrls, JvDBTreeView, cxLocalization, cxNavigator,
  cxSplitter;

type
  TTrebov = class(TBaseForm)
    pnlH: TPanel;
    mmo1: TMemo;
    pnlT: TPanel;
    pnlL: TPanel;
    ds1: TDataSource;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbndtblvwcxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrdbndclmncxgrdbndtblvwcxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxgrdbcrdvwcxgrd1DBCardView1: TcxGridDBCardView;
    cxgrdbcrdvwcxgrd1DBCardView1Row1: TcxGridDBCardViewRow;
    cxgrdbtblvwcxgrd1DBTableView1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    lbl1: TLabel;
    pnlR: TPanel;
    lbl2: TLabel;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    dbnvgr1: TDBNavigator;
    pnlB: TPanel;
    rvstyl1: TRVStyle;
    dbrchvwdtole: TDBRichViewEdit;
    img1: TcxDBImage;
    acttb1: TActionToolBar;
    actmmb1: TActionMainMenuBar;
    actmgr1: TActionManager;
    act1Copy: TAction;
    pnlC: TPanel;
    il1: TImageList;
    JvDBStatusLabel1: TJvDBStatusLabel;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow;
    cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1N: TcxGridDBColumn;
    tv1: TdxDBTreeView;
    cxgrdbtblvw1DBColumn1: TcxGridDBColumn;
    cxgrdbtblvw1rtf: TcxGridDBColumn;
    cxgrdbtblvw1ParentField: TcxGridDBColumn;
    cxgrdbtblvw1DetailField: TcxGridDBColumn;
    cxlclzr1: TcxLocalizer;
    spl2: TcxSplitter;
    spl1: TcxSplitter;
    spl3: TcxSplitter;
    procedure img1Click(Sender: TObject);
    procedure dbrchvwdtoleClick(Sender: TObject);
    procedure act1CopyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Trebov: TTrebov;

implementation

uses FormJPGUnit, FormRTFUnit, DMUnit;

{$R *.dfm}

procedure TTrebov.img1Click(Sender: TObject);
begin
  inherited;
    if   (FormJPG = nil)  then
       Application.CreateForm(TFormJPG, FormJPG);
    FormJPG.Show;
end;

procedure TTrebov.dbrchvwdtoleClick(Sender: TObject);
begin
  inherited;
    if   (FormRTF = nil)  then
       Application.CreateForm(TFormRTF, FormRTF);
    FormRTF.Show;
end;

procedure TTrebov.act1CopyExecute(Sender: TObject);
var
    i:Integer;
    tmpRecordIndex:Integer;
    sFnn, sFn, sF :String;
    View : TcxGridDBTableView;
    //vValue : TcxFieltrCriteriaItem;

    DataSet:TDataSet;
    DataSet2:TDataSet;
begin
  //dm.tblBilding_Add;

end;

end.
