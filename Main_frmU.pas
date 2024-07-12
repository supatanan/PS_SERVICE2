unit Main_frmU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxContainer, cxEdit, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxBarApplicationMenu, dxGDIPlusClasses,
  Vcl.ExtCtrls, RzForms, RzBHints, cxTextEdit, cxDBEdit,INIFiles, Vcl.ImgList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  AdvCircularProgress, cxBarEditItem, RzButton, ppBands, ppCache,
  ppClass, ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe, ppDBBDE;

type
  TMain_frm = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxSkinController1: TdxSkinController;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarManager1Bar8: TdxBar;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarManager1Bar9: TdxBar;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton40: TdxBarLargeButton;
    dxBarLargeButton41: TdxBarLargeButton;
    dxBarLargeButton42: TdxBarLargeButton;
    dxBarLargeButton43: TdxBarLargeButton;
    RzBalloonHints1: TRzBalloonHints;
    txt_checkadmin: TcxDBTextEdit;
    txtServer: TcxTextEdit;
    txtstatus: TcxDBTextEdit;
    txtDatabase: TcxTextEdit;
    txtstatus_id_1: TcxDBTextEdit;
    ImageList1: TImageList;
    ImageList2: TImageList;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    qry_select: TUniQuery;
    ds_select: TDataSource;
    txtfullname: TDBEdit;
    txtmember_id: TDBEdit;
    dxBarButton1: TdxBarButton;
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton44: TdxBarLargeButton;
    gen_order: TEdit;
    qry_gent_order_id: TUniQuery;
    ds_gent_order_id: TDataSource;
    txt_auto_order: TDBEdit;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton47: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton48: TdxBarLargeButton;
    dxBarLargeButton49: TdxBarLargeButton;
    dxBarLargeButton50: TdxBarLargeButton;
    dxBarLargeButton51: TdxBarLargeButton;
    dxBarLargeButton52: TdxBarLargeButton;
    dxBarLargeButton53: TdxBarLargeButton;
    dxBarLargeButton54: TdxBarLargeButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarLargeButton55: TdxBarLargeButton;
    dxBarLargeButton56: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    dxBarLargeButton57: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarLargeButton58: TdxBarLargeButton;
    dxBarLargeButton59: TdxBarLargeButton;
    dxBarManager1Bar11: TdxBar;
    dxBarManager1Bar12: TdxBar;
    dxBarLargeButton60: TdxBarLargeButton;
    dxBarLargeButton61: TdxBarLargeButton;
    dxBarManager1Bar13: TdxBar;
    dxBarLargeButton62: TdxBarLargeButton;
    dxBarLargeButton63: TdxBarLargeButton;
    dxBarLargeButton64: TdxBarLargeButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarLargeButton65: TdxBarLargeButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarLargeButton66: TdxBarLargeButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarLargeButton67: TdxBarLargeButton;
    dxBarLargeButton68: TdxBarLargeButton;
    dxBarLargeButton69: TdxBarLargeButton;
    dxBarLargeButton70: TdxBarLargeButton;
    dxBarLargeButton71: TdxBarLargeButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarLargeButton72: TdxBarLargeButton;
    dxBarLargeButton73: TdxBarLargeButton;
    dxBarLargeButton74: TdxBarLargeButton;
    dxBarLargeButton75: TdxBarLargeButton;
    dxBarLargeButton76: TdxBarLargeButton;
    dxBarLargeButton77: TdxBarLargeButton;
    dxBarLargeButton78: TdxBarLargeButton;
    dxBarLargeButton79: TdxBarLargeButton;
    dxBarLargeButton80: TdxBarLargeButton;
    dxBarLargeButton81: TdxBarLargeButton;
    dxBarLargeButton82: TdxBarLargeButton;
    dxBarLargeButton83: TdxBarLargeButton;
    dxBarLargeButton84: TdxBarLargeButton;
    dxBarLargeButton85: TdxBarLargeButton;
    dxBarLargeButton86: TdxBarLargeButton;
    dxBarLargeButton87: TdxBarLargeButton;
    dxBarLargeButton88: TdxBarLargeButton;
    dxBarLargeButton89: TdxBarLargeButton;
    dxBarLargeButton90: TdxBarLargeButton;
    dxBarLargeButton91: TdxBarLargeButton;
    dxBarLargeButton92: TdxBarLargeButton;
    dxBarLargeButton93: TdxBarLargeButton;
    dxBarLargeButton94: TdxBarLargeButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarLargeButton95: TdxBarLargeButton;
    dxBarManager1Bar14: TdxBar;
    dxBarLargeButton96: TdxBarLargeButton;
    dxBarLargeButton97: TdxBarLargeButton;
    dxBarLargeButton98: TdxBarLargeButton;
    dxBarLargeButton99: TdxBarLargeButton;
    dxBarLargeButton100: TdxBarLargeButton;
    txt_mem_id: TcxDBTextEdit;
    dxBarLargeButton101: TdxBarLargeButton;
    dxBarLargeButton102: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton103: TdxBarLargeButton;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton104: TdxBarLargeButton;
    dxBarLargeButton105: TdxBarLargeButton;
    dxBarManager1Bar15: TdxBar;
    dxBarLargeButton106: TdxBarLargeButton;
    dxBarLargeButton107: TdxBarLargeButton;
    dxBarLargeButton108: TdxBarLargeButton;
    dxBarLargeButton109: TdxBarLargeButton;
    dxBarLargeButton110: TdxBarLargeButton;
    dxBarLargeButton111: TdxBarLargeButton;
    dxBarManager1Bar16: TdxBar;
    dxBarLargeButton112: TdxBarLargeButton;
    dxBarManager1Bar17: TdxBar;
    dxBarLargeButton113: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure dxBarLargeButton19Click(Sender: TObject);
    procedure dxBarLargeButton20Click(Sender: TObject);
    procedure dxBarLargeButton22Click(Sender: TObject);
    procedure dxBarLargeButton25Click(Sender: TObject);
    procedure dxBarLargeButton24Click(Sender: TObject);
    procedure dxBarLargeButton26Click(Sender: TObject);
    procedure dxBarLargeButton27Click(Sender: TObject);
    procedure dxBarLargeButton39Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarLargeButton28Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarLargeButton32Click(Sender: TObject);
    procedure dxBarLargeButton33Click(Sender: TObject);
    procedure RzShapeButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
    procedure dxBarLargeButton31Click(Sender: TObject);
    procedure dxBarLargeButton34Click(Sender: TObject);
    procedure dxBarLargeButton56Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarLargeButton55Click(Sender: TObject);
    procedure dxBarLargeButton59Click(Sender: TObject);
    procedure dxBarLargeButton40Click(Sender: TObject);
    procedure dxBarLargeButton61Click(Sender: TObject);
    procedure dxBarLargeButton97Click(Sender: TObject);
    procedure dxBarLargeButton98Click(Sender: TObject);
    procedure dxBarLargeButton100Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure dxBarLargeButton49Click(Sender: TObject);
    procedure dxBarLargeButton50Click(Sender: TObject);
    procedure dxBarLargeButton51Click(Sender: TObject);
    procedure dxBarLargeButton52Click(Sender: TObject);
    procedure dxBarLargeButton53Click(Sender: TObject);
    procedure dxBarLargeButton54Click(Sender: TObject);
    procedure dxBarLargeButton101Click(Sender: TObject);
    procedure dxBarLargeButton60Click(Sender: TObject);
    procedure dxBarLargeButton62Click(Sender: TObject);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure dxBarLargeButton36Click(Sender: TObject);
    procedure dxBarLargeButton92Click(Sender: TObject);
    procedure dxBarLargeButton93Click(Sender: TObject);
    procedure dxBarLargeButton103Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton107Click(Sender: TObject);
    procedure dxBarLargeButton106Click(Sender: TObject);
    procedure dxBarLargeButton111Click(Sender: TObject);
    procedure dxBarLargeButton112Click(Sender: TObject);
    procedure dxBarLargeButton113Click(Sender: TObject);
    procedure dxBarLargeButton104Click(Sender: TObject);
  private
    { Private declarations }
  public
   Login_name:string;
   Login_pass:string;
   member_id:string;
   order_id:string;
   procedure showhost;
    { Public declarations }
  end;

var
  Main_frm: TMain_frm;
  order_id:string;     //   order_id

implementation

{$R *.dfm}

uses ConnectU, register_frmU, Login_frmU, MyMDU, dept_frmU, register_frm1U,
  position_frnU, unit_frmU, type_service_frmU, order_service_frmU, FrmSplashU,
  main_member_frmU, mian_order_service_frmU, store_items_frmU, language_frmU,
  purchase_frmU, Time_sone_order_frmU, Treport_frmU, report_frmU,
  report11_frmU, companey_frmU, report_a1_frmU, report_frm2_2U, report_frm3U,
  report_frm3_3U, report_frm4U, report_frm5U, report_frm6U, report_frm10U,
  report_frm7U, report_frm8U, report_frm9U, update_stock_frmU, Tracking_frmU,
  inbox_engerner_frmU, Ok_order_frmU, Uorder_frmU, System_report_mode_fU,
  System_report_all_fU, main_register_frmU, System2_frmU,
  report_index_system_frmU, about_frmU;

{ TForm1 }

procedure TMain_frm.dxBarButton1Click(Sender: TObject);
begin
dxRibbon1.ShowTabGroups :=true;
end;

procedure TMain_frm.dxBarButton2Click(Sender: TObject);
begin
     screen.cursor := crhourglass;
  if report_a1_frm = nil then
  begin
    Application.CreateForm(Treport_a1_frm, report_a1_frm);
    report_a1_frm.Show;
  end;
  screen.cursor := crdefault;

end;

procedure TMain_frm.dxBarButton3Click(Sender: TObject);
begin
  screen.cursor := crhourglass;
  if report_frm2_2 = nil then
  begin
    Application.CreateForm(Treport_frm2_2, report_frm2_2);
    report_frm2_2.Show;
  end;
  screen.cursor := crdefault;
end;

procedure TMain_frm.dxBarButton4Click(Sender: TObject);
begin
      Screen.Cursor := -11;
      if report_frm3 = nil then
      begin
        Application.CreateForm(Treport_frm3_3,report_frm3_3);
      report_frm3_3.show;
      end;
         Screen.Cursor := 0;



end;

procedure TMain_frm.dxBarLargeButton100Click(Sender: TObject);
begin
Tcompaney_frm.Create(self).show;
end;

procedure TMain_frm.dxBarLargeButton101Click(Sender: TObject);
begin
            Screen.Cursor := -11;
      if report_frm8 = nil then
      begin
        Application.CreateForm(Treport_frm8,report_frm8);
        report_frm8.show;
      end;
         Screen.Cursor := 0;


end;

procedure TMain_frm.dxBarLargeButton103Click(Sender: TObject);
begin
          if  System2_frm = nil then
          begin
              Application.CreateForm(TSystem2_frm,System2_frm);
              System2_frm.Show;
          end;


end;

procedure TMain_frm.dxBarLargeButton104Click(Sender: TObject);
begin
      MessageDlg('ระบบอยู่ระหว่าง การพัฒนาเพิ่มเติมติดต่อ  ICT', mtInformation, [mbOK], 0);
end;

procedure TMain_frm.dxBarLargeButton106Click(Sender: TObject);
begin
    MessageDlg('ระบบอยู่ระหว่าง การพัฒนาเพิ่มเติมติดต่อ  ICT', mtInformation, [mbOK], 0);
end;

procedure TMain_frm.dxBarLargeButton107Click(Sender: TObject);
begin
                if report_index_system_frm = nil then
               begin
                  Application.CreateForm(Treport_index_system_frm,report_index_system_frm);
                  report_index_system_frm.Show;
               end;
end;

procedure TMain_frm.dxBarLargeButton10Click(Sender: TObject);
begin

      // register_frm := Tregister_frm.Create(nil);
      // try
      //    register_frm.ShowModal;
     //  finally
     //    register_frm.Free;
     //  end;

               if main_member_frm = nil then
               begin
                  Application.CreateForm(Tmain_member_frm,main_member_frm);
                  main_member_frm.Show;
               end;


end;

procedure TMain_frm.dxBarLargeButton111Click(Sender: TObject);
begin
       if report_index_system_frm = nil then
               begin
                  Application.CreateForm(Treport_index_system_frm,report_index_system_frm);
                  report_index_system_frm.Show;
               end;
end;

procedure TMain_frm.dxBarLargeButton112Click(Sender: TObject);
begin
MessageDlg('ระบบอยู่ระหว่าง การพัฒนาเพิ่มเติมติดต่อ  ICT', mtInformation, [mbOK], 0);
end;

procedure TMain_frm.dxBarLargeButton113Click(Sender: TObject);
begin
       screen.cursor:=crhourglass;
         dxRibbon1.ShowTabGroups := False;
 if store_items_frm = nil then
 Application.CreateForm(Tstore_items_frm,store_items_frm);
 with store_items_frm do
 begin
    show;
 end;
   screen.cursor:=crdefault;
end;

procedure TMain_frm.dxBarLargeButton11Click(Sender: TObject);
begin

      screen.cursor:=crhourglass;
      Tupdate_stock_frm.Create(self).Show;
      if order_service_frm = nil then
      Application.CreateForm(Torder_service_frm,order_service_frm);
      order_service_frm.Show;
      screen.cursor:=crdefault;
      order_service_frm.tt_mem_id.Text:= txtmember_id.Text;
end;

procedure TMain_frm.dxBarLargeButton15Click(Sender: TObject);
begin
      Screen.Cursor := -11;
     if purchase_frm  = nil then
     begin
       Application.CreateForm(Tpurchase_frm,purchase_frm);
       purchase_frm.Show;
     end;
     dxRibbon1.ShowTabGroups := False;
     Screen.Cursor := 0;


end;

procedure TMain_frm.dxBarLargeButton16Click(Sender: TObject);
begin
             Screen.Cursor := -11;
               if  Ok_order_frm = nil then
               begin
                 Application.CreateForm(TOk_order_frm,Ok_order_frm);
                 Ok_order_frm.Show;
               end;

             Screen.Cursor := 0;

end;

procedure TMain_frm.dxBarLargeButton17Click(Sender: TObject);
begin
       register_frm := Tregister_frm.Create(nil);
       try
          register_frm.ShowModal;
       finally
         register_frm.Free;
       end;
end;

procedure TMain_frm.dxBarLargeButton19Click(Sender: TObject);
begin


     unit_frm  :=  Tunit_frm.Create(nil);
     try
       unit_frm.ShowModal;
     finally
         unit_frm.Free;
     end;



end;

procedure TMain_frm.dxBarLargeButton20Click(Sender: TObject);
begin

       if type_service_frm = nil  then
       begin
         Application.CreateForm(Ttype_service_frm,type_service_frm);
         type_service_frm.Show;
       end;



end;

procedure TMain_frm.dxBarLargeButton22Click(Sender: TObject);
begin
             dept_frm  := Tdept_frm.Create(nil);
             try
               dept_frm.ShowModal;
             finally
                 dept_frm.Free;
             end;
end;

procedure TMain_frm.dxBarLargeButton24Click(Sender: TObject);
begin
   position_frn :=Tposition_frn.Create(nil);
          try
            position_frn.ShowModal;
          finally
             position_frn.Free;
          end;
end;

procedure TMain_frm.dxBarLargeButton25Click(Sender: TObject);
begin
           if main_member_frm = nil then
               begin
                  Application.CreateForm(Tmain_member_frm,main_member_frm);
                  main_member_frm.Show;
               end;



end;

procedure TMain_frm.dxBarLargeButton26Click(Sender: TObject);
begin
            unit_frm  := Tunit_frm.Create(nil);
           try
             unit_frm.ShowModal;
           finally
             unit_frm.Free;
           end;


end;

procedure TMain_frm.dxBarLargeButton27Click(Sender: TObject);
begin
              type_service_frm   :=  Ttype_service_frm.Create(nil);
              try
                type_service_frm.ShowModal;
              finally
               type_service_frm.Free;
              end;


end;

procedure TMain_frm.dxBarLargeButton28Click(Sender: TObject);
begin
    screen.cursor:=crhourglass;
       if mian_order_service_frm = nil then
       begin
         Application.CreateForm(Tmian_order_service_frm,mian_order_service_frm);
         mian_order_service_frm.show;
       end;

    dxRibbon1.ShowTabGroups := False;    //ปิด ribbar
    screen.cursor:=crdefault;
end;

procedure TMain_frm.dxBarLargeButton31Click(Sender: TObject);
begin

        Time_sone_order_frm := TTime_sone_order_frm.Create(nil);
        try
          Time_sone_order_frm.ShowModal;
        finally
           Time_sone_order_frm.Free;
        end;

end;

procedure TMain_frm.dxBarLargeButton32Click(Sender: TObject);
begin
 screen.cursor:=crhourglass;
 if store_items_frm = nil then
 Application.CreateForm(Tstore_items_frm,store_items_frm);
 with store_items_frm do
 begin
    show;
 end;
   screen.cursor:=crdefault;
end;

procedure TMain_frm.dxBarLargeButton33Click(Sender: TObject);
begin

            main_member_frm :=  Tmain_member_frm.Create(nil);
            try
              main_member_frm.ShowModal;
            finally
              main_member_frm.Free;
            end;




end;

procedure TMain_frm.dxBarLargeButton34Click(Sender: TObject);
begin
  MessageDlg('c'+order_id, mtWarning, [mbOK], 0);
end;

procedure TMain_frm.dxBarLargeButton36Click(Sender: TObject);
begin
           screen.cursor:= -11;
          if Uorder_frm  = nil then
          begin
              Application.CreateForm(TUorder_frm,Uorder_frm);
              Uorder_frm.show;
          end;
          screen.cursor:= 0;

end;

procedure TMain_frm.dxBarLargeButton39Click(Sender: TObject);
begin
//  Application.Terminatepa;
if (MessageDlg('ยืนยันการออกจากระบบ', mtInformation, [mbYes, mbNo], 0) = mrYes) then
     Application.Terminate

end;

procedure TMain_frm.dxBarLargeButton40Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
       if report_a1_frm = nil then
       Application.CreateForm(Treport_a1_frm,report_a1_frm);
       report_a1_frm.Show;
        screen.cursor:=crdefault;
end;

procedure TMain_frm.dxBarLargeButton48Click(Sender: TObject);
begin
       if report_frm4 = nil then
       Application.CreateForm(Treport_frm4,report_frm4);
       report_frm4.Show;

end;

procedure TMain_frm.dxBarLargeButton49Click(Sender: TObject);
begin
           screen.cursor:= -11;
         if report_frm5 = nil then
          Application.CreateForm(Treport_frm5,report_frm5);
          report_frm5.Show;
         screen.cursor:= 0;


end;

procedure TMain_frm.dxBarLargeButton50Click(Sender: TObject);
begin
       screen.cursor:= -11;
         if report_frm6 = nil then
         Application.CreateForm(Treport_frm6,report_frm6);
         report_frm6.Show;
       screen.cursor:= 0;
end;

procedure TMain_frm.dxBarLargeButton51Click(Sender: TObject);
begin
                    screen.cursor:= -11;
         if report_frm7 = nil then
           Application.CreateForm(Treport_frm7,report_frm7);
           report_frm7.Show;
         screen.cursor:= 0;

                    screen.cursor:= -11;
         if report_frm8 = nil then
         Application.CreateForm(Treport_frm8,report_frm8);
         report_frm8.Show;
       screen.cursor:= 0;
end;

procedure TMain_frm.dxBarLargeButton52Click(Sender: TObject);
begin


                screen.cursor:= -11;
         if report_frm7 = nil then
                  Application.CreateForm(Treport_frm7, report_frm7);
                report_frm7.Show;
                screen.cursor := 0;
              end;

              procedure TMain_frm.dxBarLargeButton53Click(Sender: TObject);
begin
                     screen.cursor:= -11;
         if report_frm9 = nil then
                       Application.CreateForm(Treport_frm9, report_frm9);
                     report_frm9.Show;
                     screen.cursor := 0;
                   end;

 procedure TMain_frm.dxBarLargeButton54Click(Sender: TObject);
begin

                 screen.cursor:= -11;
         if report_frm10 = nil then
                   Application.CreateForm(Treport_frm10, report_frm10);
                 report_frm10.Show;
                 screen.cursor := 0;

               end;


procedure TMain_frm.dxBarLargeButton55Click(Sender: TObject);
begin
       screen.cursor:= -11;
     if report11_frm = nil then
     begin
        Application.CreateForm(Treport11_frm,report11_frm);
      report11_frm.Show;
     end;
       screen.cursor:= 0;

end;

procedure TMain_frm.dxBarLargeButton56Click(Sender: TObject);
begin
      Close;
end;

procedure TMain_frm.dxBarLargeButton59Click(Sender: TObject);
begin

                  companey_frm  :=   Tcompaney_frm.Create(nil);
                  try
                    companey_frm.ShowModal;
                  finally
                    companey_frm.Free;
                  end;

end;

procedure TMain_frm.dxBarLargeButton5Click(Sender: TObject);
begin
  dxRibbon1.ShowTabGroups := False;
end;

procedure TMain_frm.dxBarLargeButton60Click(Sender: TObject);
begin
              Screen.Cursor := -11;
             if Tracking_frm = nil then
             Begin
                Application.CreateForm(TTracking_frm,Tracking_frm);
                Tracking_frm.Show;
             End;
             Screen.Cursor := 0;
end;

procedure TMain_frm.dxBarLargeButton61Click(Sender: TObject);
begin
       screen.cursor:=crhourglass;
         dxRibbon1.ShowTabGroups := False;
 if store_items_frm = nil then
 Application.CreateForm(Tstore_items_frm,store_items_frm);
 with store_items_frm do
 begin
    show;
 end;
   screen.cursor:=crdefault;
end;

procedure TMain_frm.dxBarLargeButton62Click(Sender: TObject);
begin
        Screen.Cursor := -11;
         if inbox_engerner_frm = nil then
         begin
              Application.CreateForm(Tinbox_engerner_frm,inbox_engerner_frm);
              inbox_engerner_frm.Show;
         end;



        Screen.Cursor := 0;

end;

procedure TMain_frm.dxBarLargeButton6Click(Sender: TObject);
begin
          about_frm := Tabout_frm.Create(nil);
        try
          about_frm.ShowModal;
        finally
            about_frm.Free;
        end;
end;

procedure TMain_frm.dxBarLargeButton8Click(Sender: TObject);
begin

        ConnectFrm := TConnectFrm.Create(nil);
        try
          ConnectFrm.ShowModal;
        finally
            ConnectFrm.Free;
        end;



end;

procedure TMain_frm.dxBarLargeButton92Click(Sender: TObject);
begin
    Screen.Cursor := -11;
   if System_report_mode_f = nil then
    begin
   Application.CreateForm(TSystem_report_mode_f,System_report_mode_f);
   System_report_mode_f.Show;
    end;
     Screen.Cursor := 0;

end;

procedure TMain_frm.dxBarLargeButton93Click(Sender: TObject);
begin
             Screen.Cursor := -11;
          if System_report_all_f = nil then
          begin
            Application.CreateForm(TSystem_report_all_f,System_report_all_f);
            System_report_all_f.Show;
          end;
             Screen.Cursor := 0;

end;

procedure TMain_frm.dxBarLargeButton97Click(Sender: TObject);
begin
           Screen.Cursor := -11;
         unit_frm :=  Tunit_frm.Create(nil);
         try
           unit_frm.ShowModal;
         finally
           unit_frm.Free;
         end;
           Screen.Cursor := 0;

end;

procedure TMain_frm.dxBarLargeButton98Click(Sender: TObject);
begin
 Screen.Cursor := -11;
  type_service_frm  := Ttype_service_frm.Create(nil);
  try
    type_service_frm.ShowModal;
  finally
     type_service_frm.Free;
  end;
     Screen.Cursor := 0;

end;

procedure TMain_frm.dxBarLargeButton9Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TMain_frm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if (MessageDlg('ยืนยันการออกจากระบบ', mtInformation, [mbYes, mbNo], 0) = mrYes) then
  canclose := true
  else
     CanClose := False;
end;

procedure TMain_frm.FormCreate(Sender: TObject);
var sql:string;

begin

    order_id := gen_order.Text+txt_auto_order.Text;


    DisableAero := True;
    showhost;
    Caption := txtServer.Text;
     member_id :=  txtmember_id.Text;


end;

procedure TMain_frm.FormShow(Sender: TObject);
begin
    ////siLangDispatcher1.ActiveLanguage:= 2;     //chang Lang

    // qry_Language.Active := True;


  MyMD.CheckConnection;    //    function chheckconnection

   Login_frm := TLogin_frm.Create(nil);
  try
    Login_frm.ShowModal;
  finally
     Login_frm.Free;
  end;




   with  qry_select do
    begin
          close;
          sql.Text :='SELECT  *,CONCAT(firstname,''  '',lastname)as fullname FROM tbmember  where  username='''+Login_name+'''  and `password`='''+Login_pass+''' ';
          open;
    end;

     dxRibbonStatusBar1.Panels[3].Text := 'ผู้ใช้งาน  :'+txtfullname.Text;


   Caption := 'LoginName : '+ Login_name;

     if txtstatus_id_1.Text  = '1'  then    //  user
    begin
             dxRibbon1Tab2.Visible := False;
             dxRibbon1Tab3.Visible := False;
             dxRibbon1Tab4.Visible := False;
    end
       else
      if txtstatus_id_1.Text  = '3'  then    // จัดซื้อ
    begin
             dxRibbon1Tab1.Visible := False;
             dxRibbon1Tab2.Visible := False;
             dxRibbon1Tab4.Visible := False;
    end
         else
             if txtstatus_id_1.Text  = '4'  then    // จัดซื้อ
    begin
             dxRibbon1Tab1.Visible := False;
             dxRibbon1Tab3.Visible := False;
             dxRibbon1Tab4.Visible := False;
    end;



end;

procedure TMain_frm.Image1Click(Sender: TObject);
begin
      Screen.Cursor := -11;
    language_frm := Tlanguage_frm.Create(nil);
    try
      language_frm.ShowModal;
    finally
      language_frm.Free;
    end;
     Screen.Cursor := 0;
end;

procedure TMain_frm.RzShapeButton1Click(Sender: TObject);
begin
        MessageDlg('กกกก', mtInformation, [mbOK], 0);
end;

procedure TMain_frm.showhost;
 var  myini:TINIFile;
begin
      try
      myINI := TINIFile.Create(ExtractFilePath(Application.EXEName) +'MySetting.ini');
      txtServer.Text := myINI.ReadString('CONNECT', 'SERVER',txtServer.Text);
      txtDatabase.Text := myINI.ReadString('CONNECT', 'DB',txtDatabase.Text);
      dxRibbonStatusBar1.Panels[1].Text := 'host :   '+ txtServer.Text;
      dxRibbonStatusBar1.Panels[2].Text := 'database :'+ txtDatabase.Text;

     finally
     end;

end;

end.
