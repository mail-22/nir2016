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
  cxSplitter, cxTextEdit,JvExStdCtrls, JvEdit, JvDBSearchEdit, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit;

type
  TTrebov = class(TBaseForm)
    pnlH: TPanel;
    mmo1: TMemo;
    ds1: TDataSource;
    pnlR: TPanel;
    rvstyl1: TRVStyle;
    acttb1: TActionToolBar;
    actmgr1: TActionManager;
    act1Copy: TAction;
    il1: TImageList;
    cxlclzr1: TcxLocalizer;
    spl3: TcxSplitter;
    pnlL: TPanel;
    lbl3: TLabel;
    jvdbstslbl1: TJvDBStatusLabel;
    dbnvgr2: TDBNavigator;
    cxdbm1: TcxDBMemo;
    edt1: TJvDBFindEdit;
    edt2: TJvDBSearchEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1N: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    pnl1: TPanel;
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
