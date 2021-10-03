package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_110:String = "RWPIUE_PET_INFO";
       
      
      private var var_1294:int;
      
      private var var_2449:int;
      
      private var var_2450:int;
      
      private var var_2448:int;
      
      private var _energy:int;
      
      private var var_2446:int;
      
      private var _nutrition:int;
      
      private var var_2451:int;
      
      private var _petRespectLeft:int;
      
      private var _petRespect:int;
      
      private var var_546:int;
      
      private var _name:String;
      
      private var _id:int;
      
      private var var_47:BitmapData;
      
      private var var_1209:int;
      
      private var var_2803:int;
      
      private var var_2488:Boolean;
      
      private var var_2445:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2490:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_110,param10,param11);
         this.var_1209 = param1;
         this.var_2803 = param2;
         this._name = param3;
         this._id = param4;
         this.var_47 = param5;
         this.var_2488 = param6;
         this.var_2445 = param7;
         this._ownerName = param8;
         this.var_2490 = param9;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get petType() : int
      {
         return this.var_1209;
      }
      
      public function get petRace() : int
      {
         return this.var_2803;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2488;
      }
      
      public function get method_1() : int
      {
         return this.var_2445;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2490;
      }
      
      public function get age() : int
      {
         return this.var_546;
      }
      
      public function get level() : int
      {
         return this.var_1294;
      }
      
      public function get levelMax() : int
      {
         return this.var_2449;
      }
      
      public function get experience() : int
      {
         return this.var_2450;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2448;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2446;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2451;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1294 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2449 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2450 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2448 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2446 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2451 = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this._petRespectLeft = param1;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         this._canOwnerBeKicked = param1;
      }
      
      public function set petRespect(param1:int) : void
      {
         this._petRespect = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_546 = param1;
      }
   }
}
