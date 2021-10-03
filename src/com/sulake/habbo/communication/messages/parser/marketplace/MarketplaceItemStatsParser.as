package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2331:int;
      
      private var var_2855:int;
      
      private var var_2854:int;
      
      private var _dayOffsets:Array;
      
      private var var_2080:Array;
      
      private var var_2081:Array;
      
      private var var_2856:int;
      
      private var var_2857:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2331;
      }
      
      public function get offerCount() : int
      {
         return this.var_2855;
      }
      
      public function get historyLength() : int
      {
         return this.var_2854;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2080;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2081;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2856;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2857;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2331 = param1.readInteger();
         this.var_2855 = param1.readInteger();
         this.var_2854 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2080 = [];
         this.var_2081 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2080.push(param1.readInteger());
            this.var_2081.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2857 = param1.readInteger();
         this.var_2856 = param1.readInteger();
         return true;
      }
   }
}
