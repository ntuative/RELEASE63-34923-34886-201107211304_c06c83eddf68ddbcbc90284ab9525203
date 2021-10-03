package com.sulake.habbo.ui.widget.infostand
{
   import com.sulake.habbo.ui.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1294:int;
      
      private var var_2449:int;
      
      private var var_2450:int;
      
      private var var_2448:int;
      
      private var _energy:int;
      
      private var var_2446:int;
      
      private var _nutrition:int;
      
      private var var_2451:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1848:int = -1;
      
      private var _type:int;
      
      private var var_2489:int;
      
      private var var_47:BitmapData;
      
      private var var_2488:Boolean;
      
      private var var_2445:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2490:int;
      
      private var var_546:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1848;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2489;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
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
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2490;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1848 = param1.id;
         this._type = param1.petType;
         this.var_2489 = param1.petRace;
         this.var_47 = param1.image;
         this.var_2488 = param1.isOwnPet;
         this.var_2445 = param1.method_1;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1294 = param1.level;
         this.var_2449 = param1.levelMax;
         this.var_2450 = param1.experience;
         this.var_2448 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2446 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2451 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2490 = param1.roomIndex;
         this.var_546 = param1.age;
      }
   }
}
