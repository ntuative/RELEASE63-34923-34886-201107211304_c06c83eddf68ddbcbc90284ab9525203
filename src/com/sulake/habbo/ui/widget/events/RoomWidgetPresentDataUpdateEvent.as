package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_76:String = "RWPDUE_PACKAGEINFO";
      
      public static const const_96:String = "RWPDUE_CONTENTS";
      
      public static const const_634:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_535:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_552:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_570:String = "RWPDUE_CONTENTS_WALLPAPER";
       
      
      private var var_238:int = -1;
      
      private var _text:String;
      
      private var var_26:Boolean;
      
      private var var_2627:BitmapData;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_238 = param2;
         this._text = param3;
         this.var_26 = param4;
         this.var_2627 = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get controller() : Boolean
      {
         return this.var_26;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return this.var_2627;
      }
   }
}
