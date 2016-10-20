unit FormTuningUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus,
  XPStyleActnCtrls
  ,ShellAPI, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement
  ;

type
  TFormTuning = class(TBaseForm)
    actmgr1: TActionManager;
    actmmb1: TActionMainMenuBar;
    actlst1: TActionList;
    actConn: TAction;
    acBack: TAction;
    acTreb: TAction;
    procedure acBackExecute(Sender: TObject);
    procedure actConnExecute(Sender: TObject);
    procedure acTrebExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FileCopy(Source, Destination: string): boolean;

var
  FormTuning: TFormTuning;

implementation

uses MainUnit;

{$R *.dfm}

procedure TFormTuning.acBackExecute(Sender: TObject);
begin
  inherited;
 // FileCopy(Source, Destination: string);
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
