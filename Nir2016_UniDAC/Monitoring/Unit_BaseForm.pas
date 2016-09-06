unit Unit_BaseForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement

  ;

type
  TBaseForm = class(TForm)
    jvfrmstrg1: TJvFormStorage;
    jvpnflstrg1: TJvAppIniFileStorage;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseForm: TBaseForm;

implementation

{$R *.dfm}

procedure TBaseForm.FormDestroy(Sender: TObject);
var strTmp:string ;
begin
    strTmp:=jvpnflstrg1.FileName;
end;

procedure TBaseForm.FormCreate(Sender: TObject);
var strTmp:string ;
begin
   strTmp:=jvpnflstrg1.FileName;
end;

end.
