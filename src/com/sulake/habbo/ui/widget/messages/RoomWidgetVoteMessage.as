package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_131:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_2073:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_131);
         this.var_2073 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_2073;
      }
   }
}
