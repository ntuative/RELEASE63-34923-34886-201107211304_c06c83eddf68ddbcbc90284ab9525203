package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2683:int;
      
      private var var_1539:String;
      
      private var _objId:int;
      
      private var var_1783:int;
      
      private var _category:int;
      
      private var var_2252:String;
      
      private var var_2918:Boolean;
      
      private var var_2917:Boolean;
      
      private var var_2919:Boolean;
      
      private var var_2563:Boolean;
      
      private var var_2402:int;
      
      private var var_1601:int;
      
      private var var_2090:String = "";
      
      private var var_1663:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2683 = param1;
         this.var_1539 = param2;
         this._objId = param3;
         this.var_1783 = param4;
         this._category = param5;
         this.var_2252 = param6;
         this.var_2918 = param7;
         this.var_2917 = param8;
         this.var_2919 = param9;
         this.var_2563 = param10;
         this.var_2402 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2090 = param1;
         this.var_1601 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2683;
      }
      
      public function get itemType() : String
      {
         return this.var_1539;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1783;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2918;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2917;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2919;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2563;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2402;
      }
      
      public function get slotId() : String
      {
         return this.var_2090;
      }
      
      public function get songId() : int
      {
         return this.var_1663;
      }
      
      public function get extra() : int
      {
         return this.var_1601;
      }
   }
}
