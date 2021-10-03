package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1774:String = "pricing_model_unknown";
      
      public static const const_425:String = "pricing_model_single";
      
      public static const const_435:String = "pricing_model_multi";
      
      public static const const_544:String = "pricing_model_bundle";
      
      public static const const_1934:String = "price_type_none";
      
      public static const const_950:String = "price_type_credits";
      
      public static const const_1204:String = "price_type_activitypoints";
      
      public static const const_1386:String = "price_type_credits_and_activitypoints";
       
      
      private var var_833:String;
      
      private var var_1246:String;
      
      private var var_1220:int;
      
      private var var_1905:String;
      
      private var var_1248:int;
      
      private var var_1247:int;
      
      private var var_1904:int;
      
      private var var_250:ICatalogPage;
      
      private var var_657:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1755:int = 0;
      
      private var var_2576:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1220 = param1;
         this.var_1905 = param2;
         this.var_1248 = param3;
         this.var_1247 = param4;
         this.var_1904 = param5;
         this.var_250 = param8;
         this.var_1755 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1755;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_250;
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
      
      public function get activityPointType() : int
      {
         return this.var_1904;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_657;
      }
      
      public function get pricingModel() : String
      {
         return this.var_833;
      }
      
      public function get priceType() : String
      {
         return this.var_1246;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2576;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2576 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1220 = 0;
         this.var_1905 = "";
         this.var_1248 = 0;
         this.var_1247 = 0;
         this.var_1904 = 0;
         this.var_250 = null;
         if(this.var_657 != null)
         {
            this.var_657.dispose();
            this.var_657 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_833)
         {
            case const_425:
               this.var_657 = new SingleProductContainer(this,param1);
               break;
            case const_435:
               this.var_657 = new MultiProductContainer(this,param1);
               break;
            case const_544:
               this.var_657 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_833);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_833 = const_425;
            }
            else
            {
               this.var_833 = const_435;
            }
         }
         else if(param1.length > 1)
         {
            this.var_833 = const_544;
         }
         else
         {
            this.var_833 = const_1774;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1248 > 0 && this.var_1247 > 0)
         {
            this.var_1246 = const_1386;
         }
         else if(this.var_1248 > 0)
         {
            this.var_1246 = const_950;
         }
         else if(this.var_1247 > 0)
         {
            this.var_1246 = const_1204;
         }
         else
         {
            this.var_1246 = const_1934;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_250.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_657.products)
         {
            _loc4_ = this.var_250.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
