package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_800:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1291:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2218:String = "RWOCM_PIXELS";
      
      public static const const_2271:String = "RWOCM_CREDITS";
      
      public static const const_2272:String = "RWOCM_SHELLS";
       
      
      private var var_2345:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_800);
         this.var_2345 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2345;
      }
   }
}
