package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_908:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_740:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_908);
         this.var_740 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_740;
      }
   }
}
