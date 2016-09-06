unit OLAPUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DMUnit, Unit_BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid, cxPivotGridOLAPDataSource, DB, ExtCtrls,
  JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement   ;

type
  TOLAPForm = class(TBaseForm)
    cxdbpvtgrd1: TcxDBPivotGrid;
    ds1: TDataSource;
    cxdbpvtgrdfldcxdbpvtgrd1id: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1N: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1cxDBPivotGridField: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1cxDBPivotGridField1: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1fid_Bilding: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1cxDBPivotGridField11: TcxDBPivotGridField;
    spl1: TSplitter;
    cxdbpvtgrd2: TcxDBPivotGrid;
    ds2: TDataSource;
    cxdbpvtgrdfldcxdbpvtgrd2id: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField1: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField2: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField3: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField4: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField5: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField6: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField7: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField8: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField9: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField10: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField11: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField12: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField13: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField14: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField15: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField16: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2C: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField17: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField18: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField19: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField20: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField21: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField22: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField23: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField24: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField0: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField25: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField26: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField27: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2cxDBPivotGridField28: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2rtf: TcxDBPivotGridField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OLAPForm: TOLAPForm;

implementation

{$R *.dfm}

end.
