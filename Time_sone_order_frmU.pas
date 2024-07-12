unit Time_sone_order_frmU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  cxTextEdit, cxGroupBox, Vcl.Menus, cxStyles, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinscxSchedulerPainter, cxClasses,
  Vcl.ImgList, Vcl.ExtCtrls, PlannerMonthView, cxPivotGridChartConnection,
  Vcl.Touch.GestureMgr, Data.DB, MemDS, DBAccess, Uni, cxSchedulerDBStorage;

type
  TTime_sone_order_frm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    cxImageList1: TcxImageList;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Time_sone_order_frm: TTime_sone_order_frm;

implementation

{$R *.dfm}

uses MyMDU;

end.
