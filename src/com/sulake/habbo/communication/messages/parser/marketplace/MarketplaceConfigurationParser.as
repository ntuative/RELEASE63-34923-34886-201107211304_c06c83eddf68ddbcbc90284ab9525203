package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1630:Boolean;
      
      private var var_2584:int;
      
      private var var_1907:int;
      
      private var var_1908:int;
      
      private var var_2582:int;
      
      private var var_2583:int;
      
      private var var_2585:int;
      
      private var var_2581:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1630;
      }
      
      public function get commission() : int
      {
         return this.var_2584;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1907;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1908;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2583;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2582;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2585;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2581;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1630 = param1.readBoolean();
         this.var_2584 = param1.readInteger();
         this.var_1907 = param1.readInteger();
         this.var_1908 = param1.readInteger();
         this.var_2583 = param1.readInteger();
         this.var_2582 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_2581 = param1.readInteger();
         return true;
      }
   }
}
