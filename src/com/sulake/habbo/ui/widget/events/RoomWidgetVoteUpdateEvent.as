package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_159:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_166:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1171:String;
      
      private var var_1502:Array;
      
      private var var_1194:Array;
      
      private var var_1841:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1171 = param2;
         this.var_1502 = param3;
         this.var_1194 = param4;
         if(this.var_1194 == null)
         {
            this.var_1194 = [];
         }
         this.var_1841 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1171;
      }
      
      public function get choices() : Array
      {
         return this.var_1502.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1194.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1841;
      }
   }
}
