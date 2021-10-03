package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1801:String;
      
      private var var_2394:int;
      
      private var _password:String;
      
      private var var_1569:int;
      
      private var var_2514:int;
      
      private var var_942:Array;
      
      private var var_2506:Array;
      
      private var var_2511:Boolean;
      
      private var var_2512:Boolean;
      
      private var var_2508:Boolean;
      
      private var var_2505:Boolean;
      
      private var var_2510:int;
      
      private var var_2507:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2511;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2511 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2512;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2512 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2508;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2508 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2505;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2505 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2510;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2510 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2507;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2507 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1801;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1801 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2394;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2394 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1569;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1569 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2514;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2514 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_942;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_942 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2506;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2506 = param1;
      }
   }
}
