package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1220:int;
      
      private var var_1784:String;
      
      private var var_2091:int;
      
      private var _upgrade:Boolean;
      
      private var var_2914:Boolean;
      
      private var var_2913:int;
      
      private var var_2909:int;
      
      private var var_2912:int;
      
      private var var_2910:int;
      
      private var var_2911:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1220 = param1.readInteger();
         this.var_1784 = param1.readString();
         this.var_2091 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2914 = param1.readBoolean();
         this.var_2913 = param1.readInteger();
         this.var_2909 = param1.readInteger();
         this.var_2912 = param1.readInteger();
         this.var_2910 = param1.readInteger();
         this.var_2911 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1220;
      }
      
      public function get productCode() : String
      {
         return this.var_1784;
      }
      
      public function get price() : int
      {
         return this.var_2091;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2914;
      }
      
      public function get periods() : int
      {
         return this.var_2913;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2909;
      }
      
      public function get year() : int
      {
         return this.var_2912;
      }
      
      public function get month() : int
      {
         return this.var_2910;
      }
      
      public function get day() : int
      {
         return this.var_2911;
      }
   }
}
