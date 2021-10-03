package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_754:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_1800:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_754);
         this.var_1800 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_1800;
      }
   }
}
