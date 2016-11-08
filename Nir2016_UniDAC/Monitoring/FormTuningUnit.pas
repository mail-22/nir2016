unit FormTuningUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus,
  XPStyleActnCtrls
  ,ShellAPI, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, StdCtrls, cxPropertiesStore
  ;

type
  TFormTuning = class(TBaseForm)
    actmgr1: TActionManager;
    actmmb1: TActionMainMenuBar;
    actlst1: TActionList;
    actConn: TAction;
    acBack: TAction;
    acTreb: TAction;
    act1: TAction;
    btn1: TButton;
    cxprprtstr1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure acBackExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure actConnExecute(Sender: TObject);
    procedure acTrebExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FileCopy(Source, Destination: string): boolean;

var
  FormTuning: TFormTuning;

implementation

uses MainUnit, Vypoln_Unit;

{$R *.dfm}

procedure TFormTuning.FormCreate(Sender: TObject);
begin
  inherited;

  cxprprtstr1.StorageName:=ExtractFilePath(Application.ExeName) +
    Self.Name + '.cxprprtstr1.ini';
    AFileName := cxprprtstr1.StorageName;
    if not FileExists(AFileName) then begin
       cxprprtstr1.StoreTo(True);
    end
    else begin
      cxprprtstr1.RestoreFrom;
    end;

end;

procedure TFormTuning.acBackExecute(Sender: TObject);
begin
  inherited;
 // FileCopy(Source, Destination: string);
end;

procedure TFormTuning.act1Execute(Sender: TObject);
begin
  inherited;
    Vypoln.actExport11Execute(Sender);
end;

procedure TFormTuning.actConnExecute(Sender: TObject);
var
strTmp :string;
NameUDLFile   :string;
pan:PAnsiChar ;
begin
  inherited;

      SetCurrentDir(ExtractFilePath(Application.ExeName)  +'\');
      strTmp := GetCurrentDir;
      NameUDLFile := ChangeFileExt(Application.ExeName ,'.udl');
      NameUDLFile := ExtractFilePath(Application.ExeName)  +'\'
                + ChangeFileExt(ExtractFileName(Application.ExeName) , '.udl');
      pan :=  PChar (NameUDLFile);
ShellExecute(0, 'open', pan, '', '', SW_SHOWNORMAL);
end;

procedure TFormTuning.acTrebExecute(Sender: TObject);
begin
  inherited;
   FormMain.Trebov_Show;
end;

procedure TFormTuning.btn1Click(Sender: TObject);
begin
  inherited;
  FormMain.ImportXLSUnit_Show;
end;

procedure TFormTuning.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   cxprprtstr1.StoreTo(True);
end;

function FileCopy(Source, Destination: string): boolean;
var 
  ShFileOpStruct: TShFileOpStruct; 
begin
  with ShFileOpStruct do 
  begin 
    { FO_MOVE для перемещения файла } 
    wFunc := FO_COPY;         
    { имя файла источника } 
    pFrom := PChar(Source);
    { имя файла получателя } 
    pTo := PChar(Destination); 
  end; 

  { возвращает true при удачном выполнении ; иначе false } 
  result := (0 = SHFileOperation(ShFileOpStruct)); 
end;
end.
