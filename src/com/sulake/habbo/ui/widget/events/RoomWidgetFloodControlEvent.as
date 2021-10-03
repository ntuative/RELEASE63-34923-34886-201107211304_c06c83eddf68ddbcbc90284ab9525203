package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_751:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1970:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_751,false,false);
         this.var_1970 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1970;
      }
   }
}
