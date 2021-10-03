package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1220:int;
      
      private var _furniId:int;
      
      private var var_2329:int;
      
      private var var_2252:String;
      
      private var var_2091:int;
      
      private var var_434:int;
      
      private var var_2330:int = -1;
      
      private var var_2331:int;
      
      private var var_2092:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1220 = param1;
         this._furniId = param2;
         this.var_2329 = param3;
         this.var_2252 = param4;
         this.var_2091 = param5;
         this.var_434 = param6;
         this.var_2330 = param7;
         this.var_2331 = param8;
         this.var_2092 = param9;
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
      
      public function get status() : int
      {
         return this.var_434;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2330;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2331;
      }
      
      public function get offerCount() : int
      {
         return this.var_2092;
      }
   }
}
