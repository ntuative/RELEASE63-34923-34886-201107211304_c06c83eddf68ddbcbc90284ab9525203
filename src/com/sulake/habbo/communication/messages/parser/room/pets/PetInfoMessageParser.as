package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1848:int;
      
      private var _name:String;
      
      private var var_1294:int;
      
      private var var_2479:int;
      
      private var var_2450:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_710:String;
      
      private var var_2477:int;
      
      private var var_2476:int;
      
      private var var_2478:int;
      
      private var var_2447:int;
      
      private var var_2445:int;
      
      private var _ownerName:String;
      
      private var var_546:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1848;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1294;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2479;
      }
      
      public function get experience() : int
      {
         return this.var_2450;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2477;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2476;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2478;
      }
      
      public function get respect() : int
      {
         return this.var_2447;
      }
      
      public function get method_1() : int
      {
         return this.var_2445;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_546;
      }
      
      public function flush() : Boolean
      {
         this.var_1848 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1848 = param1.readInteger();
         this._name = param1.readString();
         this.var_1294 = param1.readInteger();
         this.var_2479 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2476 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2478 = param1.readInteger();
         this.var_710 = param1.readString();
         this.var_2447 = param1.readInteger();
         this.var_2445 = param1.readInteger();
         this.var_546 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
