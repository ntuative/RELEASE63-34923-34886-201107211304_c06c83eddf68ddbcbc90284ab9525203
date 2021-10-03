package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2252:String;
      
      protected var var_1601:Number;
      
      protected var var_3047:Boolean;
      
      protected var var_3046:Boolean;
      
      protected var var_2604:Boolean;
      
      protected var var_2928:Boolean;
      
      protected var var_3056:int;
      
      protected var var_2598:int;
      
      protected var var_2599:int;
      
      protected var var_2601:int;
      
      protected var var_2090:String;
      
      protected var var_1663:int;
      
      protected var var_994:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2604 = param5;
         this.var_3046 = param6;
         this.var_3047 = param7;
         this.var_2928 = param8;
         this.var_2252 = param9;
         this.var_1601 = param10;
         this.var_3056 = param11;
         this.var_2598 = param12;
         this.var_2599 = param13;
         this.var_2601 = param14;
         this.var_2090 = param15;
         this.var_1663 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2252;
      }
      
      public function get extra() : Number
      {
         return this.var_1601;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3047;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3046;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2604;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2928;
      }
      
      public function get expires() : int
      {
         return this.var_3056;
      }
      
      public function get creationDay() : int
      {
         return this.var_2598;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2599;
      }
      
      public function get creationYear() : int
      {
         return this.var_2601;
      }
      
      public function get slotId() : String
      {
         return this.var_2090;
      }
      
      public function get songId() : int
      {
         return this.var_1663;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_994 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_994;
      }
   }
}
