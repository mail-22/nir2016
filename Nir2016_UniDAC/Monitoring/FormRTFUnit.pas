unit FormRTFUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RVScroll, RichView, RVEdit, DBRV, RVStyle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxRichEdit, cxDBRichEdit, StdCtrls, JvExStdCtrls,
  JvRichEdit, JvDBRichEdit, ComCtrls;

type
  TFormRTF = class(TForm)
    dbrchvwdtole: TDBRichViewEdit;
    ds1: TDataSource;
    rvstyl1: TRVStyle;
    cxdbrchdt1: TcxDBRichEdit;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    edtole2: TJvDBRichEdit;
    mmo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRTF: TFormRTF;

implementation



{$R *.dfm}

end.
