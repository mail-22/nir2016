program Monitoring;
{$WARNINGS OFF}
{$WARN UNIT_PLATFORM OFF}

uses 
  //ExceptionLog,           
  Forms,
  DMUnit in 'dmunit.pas' {DM: TDataModule},
  CommonUnit in 'CommonUnit.pas' {Common: TDataModule},
  MainUnit in 'MainUnit.pas' {FormMain},
  Unit_BaseForm in 'Unit_BaseForm.pas' {BaseForm},
  FormListOfBildingUnit in 'FormListOfBildingUnit.pas' {FormListOfBilding},
  FormRTFUnit in 'FormRTFUnit.pas' {FormRTF},
  FormJPGUnit in 'FormJPGUnit.pas' {FormJPG},
  Trebov_Unit in 'Trebov_Unit.pas' {Trebov},
  Vypoln_Unit in 'Vypoln_Unit.pas' {Vypoln},
  ExportFormUnit in 'ExportFormUnit.pas' {ExportForm},
  FormGrUnit in 'FormGrUnit.pas' {FormGr},
  FormTuningUnit in 'FormTuningUnit.pas' {FormTuning},
  FormGrAllUnit in 'FormGrAllUnit.pas' {FormGrAll},
  OLAPUnit in 'OLAPUnit.pas' {OLAPForm},
  Logic in 'Logic.pas' {LogicForm},
  ExportXLSFormUnit in 'ExportXLSFormUnit.pas' {ExportXLSForm},
  ABOUT in 'ABOUT.PAS' {AboutForm},
  UBusyRtl in 'BusyDetect\UBusyrtl.pas',
  WordUnit in 'WordUnit.pas' {WordForm};

{$R *.res}

begin
  Application.Initialize;
/////////////////////////////////////////////////////////////////////////////////
  Application.CreateForm(TCommon, Common);
  Application.CreateForm(TDM, DM);
  try

except

end;

  ///////////////////////////////////////////////////////////////////////////////
  Application.CreateForm(TFormMain, FormMain);
/////////////////////////////////////////////////////////////////////////////////
  Application.CreateForm(TBaseForm, BaseForm);
  Application.CreateForm(TFormListOfBilding, FormListOfBilding);
  Application.CreateForm(TTrebov, Trebov);
  Application.CreateForm(TVypoln, Vypoln);
  Application.CreateForm(TExportForm, ExportForm);
  Application.CreateForm(TFormGr, FormGr);
  Application.CreateForm(TFormGrAll, FormGrAll);
  Application.CreateForm(TFormTuning, FormTuning);
  Application.CreateForm(TOLAPForm, OLAPForm);
  Application.CreateForm(TLogicForm, LogicForm);
  Application.CreateForm(TExportXLSForm, ExportXLSForm);
  
  Application.CreateForm(TWordForm, WordForm);
  //Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
