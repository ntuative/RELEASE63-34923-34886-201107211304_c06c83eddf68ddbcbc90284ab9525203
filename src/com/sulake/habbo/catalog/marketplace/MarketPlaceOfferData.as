package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_115:int = 1;
      
      public static const const_70:int = 2;
       
      
      private var var_1220:int;
      
      private var _furniId:int;
      
      private var var_2329:int;
      
      private var var_2252:String;
      
      private var var_2091:int;
      
      private var var_2331:int;
      
      private var var_2871:int;
      
      private var var_434:int;
      
      private var var_2330:int = -1;
      
      private var var_2092:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1220 = param1;
         this._furniId = param2;
         this.var_2329 = param3;
         this.var_2252 = param4;
         this.var_2091 = param5;
         this.var_434 = param6;
         this.var_2331 = param7;
         this.var_2092 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1220;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2329;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get price() : int
      {
         return this.var_2091;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2331;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2871 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2871;
      }
      
      public function get status() : int
      {
         return this.var_434;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2330;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_2091 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1220 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2092;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2092 = param1;
      }
   }
}
