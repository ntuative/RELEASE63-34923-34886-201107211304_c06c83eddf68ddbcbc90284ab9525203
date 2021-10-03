package com.sulake.habbo.room.events
{
   public class RoomEngineObjectPlacedEvent extends RoomEngineObjectEvent
   {
       
      
      private var var_2001:String = "";
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_172:Number = 0;
      
      private var _direction:int = 0;
      
      private var var_2884:Boolean = false;
      
      private var var_2885:Boolean = false;
      
      private var var_2883:Boolean = false;
      
      private var var_2391:String = null;
      
      public function RoomEngineObjectPlacedEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:int, param11:Boolean, param12:Boolean, param13:Boolean, param14:String, param15:Boolean = false, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param15,param16);
         this.var_2001 = param6;
         this._x = param7;
         this.var_171 = param8;
         this.var_172 = param9;
         this._direction = param10;
         this.var_2884 = param11;
         this.var_2885 = param12;
         this.var_2883 = param13;
         this.var_2391 = param14;
      }
      
      public function get wallLocation() : String
      {
         return this.var_2001;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function get placedInRoom() : Boolean
      {
         return this.var_2884;
      }
      
      public function get placedOnFloor() : Boolean
      {
         return this.var_2885;
      }
      
      public function get placedOnWall() : Boolean
      {
         return this.var_2883;
      }
      
      public function get instanceData() : String
      {
         return this.var_2391;
      }
   }
}