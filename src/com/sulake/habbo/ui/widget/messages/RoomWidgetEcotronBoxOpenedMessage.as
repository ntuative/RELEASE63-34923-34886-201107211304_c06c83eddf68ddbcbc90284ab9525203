package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1797:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1539:String;
      
      private var var_1783:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1539 = param2;
         this.var_1783 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1539;
      }
      
      public function get classId() : int
      {
         return this.var_1783;
      }
   }
}
