program PS_SERVICE;

uses
  Vcl.Forms,
  Main_frmU in 'Main_frmU.pas' {Main_frm},
  Vcl.Themes,
  Vcl.Styles,
  ConnectU in 'ConnectU.pas' {ConnectFrm},
  MyMDU in 'MyMDU.pas' {MyMD: TDataModule},
  Login_frmU in 'Login_frmU.pas' {Login_frm},
  dept_frmU in 'dept_frmU.pas' {dept_frm},
  position_frnU in 'position_frnU.pas' {position_frn},
  unit_frmU in 'unit_frmU.pas' {unit_frm},
  type_service_frmU in 'type_service_frmU.pas' {type_service_frm},
  order_service_frmU in 'order_service_frmU.pas' {order_service_frm},
  service_img_frmU in 'service_img_frmU.pas' {service_img_frm},
  main_member_frmU in 'main_member_frmU.pas' {main_member_frm},
  mian_order_service_frmU in 'mian_order_service_frmU.pas' {mian_order_service_frm},
  store_items_frmU in 'store_items_frmU.pas' {store_items_frm},
  add_frm_itemsU in 'add_frm_itemsU.pas' {add_frm_items},
  serails_number_frmU in 'serails_number_frmU.pas' {serails_number_frm},
  new_order_frmU in 'new_order_frmU.pas' {new_order_frm},
  language_frmU in 'language_frmU.pas' {language_frm},
  purchase_frmU in 'purchase_frmU.pas' {purchase_frm},
  Time_sone_order_frmU in 'Time_sone_order_frmU.pas' {Time_sone_order_frm},
  Lote_frm_number_frmU in 'Lote_frm_number_frmU.pas' {Lote_frm_number_frm},
  update_stock_frmU in 'update_stock_frmU.pas' {update_stock_frm},
  Status_trype_frmU in 'Status_trype_frmU.pas' {Status_trype_frm},
  report_frmU in 'report_frmU.pas' {report_frm},
  report11_frmU in 'report11_frmU.pas' {report11_frm},
  companey_frmU in 'companey_frmU.pas' {companey_frm},
  report_a1_frmU in 'report_a1_frmU.pas' {report_a1_frm},
  report_frm2_2U in 'report_frm2_2U.pas' {report_frm2_2},
  report_frm3_3U in 'report_frm3_3U.pas' {report_frm2_2},
  report_frm4U in 'report_frm4U.pas' {report_frm4},
  report_frm5U in 'report_frm5U.pas' {report_frm5},
  report_frm6U in 'report_frm6U.pas' {report_frm6},
  report_frm7U in 'report_frm7U.pas' {report_frm7},
  report_frm8U in 'report_frm8U.pas' {report_frm8},
  report_frm9U in 'report_frm9U.pas' {report_frm9},
  report_frm10U in 'report_frm10U.pas' {report_frm10},
  report_frm11U in 'report_frm11U.pas' {report_frm11},
  Tracking_frmU in 'Tracking_frmU.pas' {Tracking_frm},
  inbox_engerner_frmU in 'inbox_engerner_frmU.pas' {inbox_engerner_frm},
  add_inbox_engerner_frmU in 'add_inbox_engerner_frmU.pas' {add_inbox_engerner_frm},
  Ok_order_frmU in 'Ok_order_frmU.pas' {Ok_order_frm},
  Uorder_frmU in 'Uorder_frmU.pas' {Uorder_frm},
  System_report_mode_fU in 'System_report_mode_fU.pas' {System_report_mode_f},
  System_report_mode_date_fU in 'System_report_mode_date_fU.pas' {System_report_mode_date_f},
  System_report_all_fU in 'System_report_all_fU.pas' {System_report_all_f},
  System2_frmU in 'System2_frmU.pas' {System2_frm},
  report_index_system_frmU in 'report_index_system_frmU.pas' {report_index_system_frm},
  about_frmU in 'about_frmU.pas' {about_frm},
  cxGridExportLink in 'cxGridExportLink.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMyMD, MyMD);
  Application.CreateForm(TMain_frm, Main_frm);
  Application.Run;
end.
