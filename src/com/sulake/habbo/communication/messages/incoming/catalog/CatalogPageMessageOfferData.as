package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1220:int;
      
      private var var_1905:String;
      
      private var var_1248:int;
      
      private var var_1247:int;
      
      private var var_1904:int;
      
      private var var_1755:int;
      
      private var var_1317:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1220 = param1.readInteger();
         this.var_1905 = param1.readString();
         this.var_1248 = param1.readInteger();
         this.var_1247 = param1.readInteger();
         this.var_1904 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1317 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1317.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1755 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1220;
      }
      
      public function get localizationId() : String
      {
         return this.var_1905;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1248;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1247;
      }
      
      public function get products() : Array
      {
         return this.var_1317;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1904;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1755;
      }
   }
}
