package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2331:int;
      
      private var var_2855:int;
      
      private var var_2854:int;
      
      private var _dayOffsets:Array;
      
      private var var_2080:Array;
      
      private var var_2081:Array;
      
      private var var_2856:int;
      
      private var var_2857:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2331 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2855 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2854 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2080 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2081 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2856 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2857 = param1;
      }
   }
}
