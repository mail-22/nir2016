unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit_BaseForm, OLAPUnit, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, ImgList, StdActns,
  ActnList, XPStyleActnCtrls, ActnMan, JvAppHotKey, ToolWin, ActnCtrls,
  ActnMenus, JvExControls, JvStaticText, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage , UBusyRtl, cxPropertiesStore ;

type
  TFormMain = class(TBaseForm)
    il1: TImageList;
    actlst1: TActionList;
    hlpcntnts1: THelpContents;
    AboutExecute: TAction;
    hlpcntnts2: THelpContents;
    act1: THelpContextAction;
    actmgr1: TActionManager;
    hlpcntnts3: THelpContents;
    hlptpcsrch1: THelpTopicSearch;
    hlpnhlp1: THelpOnHelp;
    act2: THelpContextAction;
    jvplctnhtky1: TJvApplicationHotKey;
    actmmb1: TActionMainMenuBar;
    actHELP2: TAction;
    actTuning2: TAction;
    actListOfBilding: TAction;
    jvstctxt1: TJvStaticText;
    img1: TJvImage;
    jvstctxt2: TJvStaticText;
    jvstctxt3: TJvStaticText;
    jvstctxt4: TJvStaticText;
    jvstctxt5: TJvStaticText;
    actAbout: TAction;
    cxprprtstr1: TcxPropertiesStore;
    procedure AboutExecuteExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure actHELP2Execute(Sender: TObject);
    procedure actListOfBildingExecute(Sender: TObject);
    procedure actTuning2Execute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBildingClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function FormHelp(Command: Word; Data: Integer; var CallHelp: Boolean): Boolean;
    procedure hlpcntnts3Execute(Sender: TObject);
    procedure hlpnhlp1Execute(Sender: TObject);
    procedure hlptpcsrch1Execute(Sender: TObject);
    procedure jvplctnhtky1HotKey(Sender: TObject);
  private

  public
    procedure ExportForm_Show;
    procedure ExportXLSForm_Show;
    procedure FormListOfBilding_Show;
    procedure FormGr_Show;
    procedure Trebov_Show;
    procedure Vypoln_Show;
    procedure FormTuning_Show;
    procedure FormGrAll_Show;
    procedure OLAPForm_Show;
    procedure ImportXLSUnit_Show;
    procedure AddBildForm_Show;
  end;

      procedure Help2;
      
var
  FormMain: TFormMain;
  strTmp : String;
      Detector : TBusyDetector;

implementation

uses
  FormListOfBildingUnit, Vypoln_Unit,
  Trebov_Unit, ExportFormUnit, FormGrUnit, FormTuningUnit, FormGrAllUnit, CommonUnit,
  ExportXLSFormUnit, ABOUT,utility, WordUnit, ImportXLSUnit, AddBildUnit;

{$R *.dfm}

procedure TFormMain.AboutExecuteExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(AboutForm) then
    Application.CreateForm(TAboutForm, AboutForm);
  //FormDBeditAct.Show;
  AboutForm.ShowModal;
  FreeAndNil(AboutForm);
end;

procedure TFormMain.act1Execute(Sender: TObject);
begin
  inherited;
  Application.HelpContext(self.HelpContext);

  strTmp:=ExtractFilePath(Application.ExeName) + 'example.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.act2Execute(Sender: TObject);
begin
  inherited;
      strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.actHELP2Execute(Sender: TObject);
begin
  inherited;
  Help2;
end;

procedure TFormMain.actListOfBildingExecute(Sender: TObject);
begin
  inherited;
  FormListOfBilding_Show;
end;

procedure TFormMain.actTuning2Execute(Sender: TObject);
begin
  inherited;
  FormTuning_Show;
end;

procedure TFormMain.btn1Click(Sender: TObject);
begin
  inherited;
  FormTuning_Show;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
    //Application.CreateForm(TForm3, Form3);
    //Form2.Show;
    //Form3.Show;
{ Detector := TBusyDetector.Create(Self);
  with Detector do begin
    Interval := 1000;
    Caption:=Application.Title;
    Text := 'Программа занята'#13#10'Подождите пожалуйста';
    Enabled:=true;
  end;
}

    cxprprtstr1.StorageName:=ExtractFilePath(Application.ExeName) +
    Self.Name + '.cxprprtstr1.ini';
    if not FileExists(cxprprtstr1.StorageName) then begin
       cxprprtstr1.StoreTo(True);
    end
    else begin
      cxprprtstr1.RestoreFrom;
    end;

end;

procedure TFormMain.FormShow(Sender: TObject);
var
  sl: TStrings; { declare the list }
  sFileName: string; { }
begin
  //FormGrAll_Show;
  //OLAPForm_Show;

  //WordForm.show;

Exit;
  sl := TStringList.Create;

  GetLoadedModulesList(sl);
  sFileName := ExtractFilePath((Application.ExeName)) + 'bpl_list.bat';
  CreatePackagesCopier(sFileName);

end;

procedure TFormMain.btnBildingClick(Sender: TObject);
begin
  FormListOfBilding_Show;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TFormMain.FormListOfBilding_Show;
begin
  if (FormListOfBilding = nil) then
    Application.CreateForm(TFormListOfBilding, FormListOfBilding);
  FormListOfBilding.Show;
end;


procedure TFormMain.Vypoln_Show;
begin
  // выполн
  if (Vypoln = nil) then
    Application.CreateForm(TVypoln, Vypoln);
  Vypoln.Show;
  Vypoln.WindowState := wsMaximized;
end;

procedure TFormMain.Trebov_Show;
begin
  if (Trebov = nil) then
    Application.CreateForm(TTrebov, Trebov);
  Trebov.Show;
  Trebov.WindowState := wsMaximized;
end;

procedure TFormMain.ExportForm_Show;
begin
  if (ExportForm = nil) then
    Application.CreateForm(TExportForm, ExportForm);
  ExportForm.Show;
  ExportForm.WindowState := wsMaximized;
end;

procedure TFormMain.FormTuning_Show;
begin
  if (FormGr = nil) then
    Application.CreateForm(TFormTuning, FormTuning);
  FormTuning.Show;
  FormTuning.WindowState := wsMaximized;
end;

procedure TFormMain.FormGr_Show;
begin
  if (FormGr = nil) then
    Application.CreateForm(TFormGr, FormGr);
  FormGr.Show;
  FormGr.WindowState := wsMaximized;
end;

procedure TFormMain.FormGrAll_Show;
begin
  if (FormGrAll = nil) then
    Application.CreateForm(TFormGrAll, FormGrAll);
  FormGrAll.Show;
  FormGrAll.WindowState := wsMaximized;
end;


procedure TFormMain.AddBildForm_Show;
begin
  if (AddBildForm = nil) then
    Application.CreateForm(TAddBildForm, AddBildForm);
  AddBildForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;



procedure TFormMain.OLAPForm_Show;
begin
  if (OLAPForm = nil) then
    Application.CreateForm(TOLAPForm, OLAPForm);
  OLAPForm.Show;
  OLAPForm.WindowState := wsMaximized;
end;


procedure TFormMain.ExportXLSForm_Show;
begin
  if (ExportXLSForm = nil) then
    Application.CreateForm(TExportXLSForm, ExportXLSForm);
  ExportXLSForm.Show;
  ExportXLSForm.WindowState := wsMinimized;
end;

function TFormMain.FormHelp(Command: Word; Data: Integer; var CallHelp:
    Boolean): Boolean;
begin
  inherited;
      strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.hlpcntnts3Execute(Sender: TObject);
begin
  inherited;
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');

end;

procedure TFormMain.hlpnhlp1Execute(Sender: TObject);
begin
  inherited;
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.hlptpcsrch1Execute(Sender: TObject);
begin
  inherited;
      strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.jvplctnhtky1HotKey(Sender: TObject);
begin
  inherited;
  Help2
end;

procedure Help2;
   begin
    strTmp:=ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxprprtstr1.StoreTo(True);
end;

procedure TFormMain.ImportXLSUnit_Show;
begin
  if (ImportXLSUnitForm = nil) then
    Application.CreateForm(TImportXLSUnitForm, ImportXLSUnitForm);
  ImportXLSUnitForm.Show;
  
end;

///////////////////////////////////////////////////////////////////////////////



end.

