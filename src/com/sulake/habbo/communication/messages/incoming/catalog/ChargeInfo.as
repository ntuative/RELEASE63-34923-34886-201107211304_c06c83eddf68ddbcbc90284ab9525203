package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2579:int;
      
      private var var_2996:int;
      
      private var var_1248:int;
      
      private var var_1247:int;
      
      private var var_1904:int;
      
      private var var_2995:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2579 = param1.readInteger();
         this.var_2996 = param1.readInteger();
         this.var_1248 = param1.readInteger();
         this.var_1247 = param1.readInteger();
         this.var_1904 = param1.readInteger();
         this.var_2995 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2579;
      }
      
      public function get charges() : int
      {
         return this.var_2996;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1248;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1247;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2995;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1904;
      }
   }
}
