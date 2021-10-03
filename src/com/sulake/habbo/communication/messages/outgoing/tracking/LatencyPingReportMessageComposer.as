package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2804:int;
      
      private var var_2806:int;
      
      private var var_2805:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2804 = param1;
         this.var_2806 = param2;
         this.var_2805 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2804,this.var_2806,this.var_2805];
      }
      
      public function dispose() : void
      {
      }
   }
}
