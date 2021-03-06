package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1855:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_921:String = "RWSSM_STORE_SOUND";
      
      public static const const_971:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_1064:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_1064;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_1064 = param1;
      }
   }
}
