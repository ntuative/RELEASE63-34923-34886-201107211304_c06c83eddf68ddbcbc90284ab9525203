package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2517:Boolean = false;
      
      private var var_2516:int = 0;
      
      private var var_2519:int = 0;
      
      private var var_2518:int = 0;
      
      private var var_2515:int = 0;
      
      private var var_171:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_473:String = "";
      
      private var _type:int = 0;
      
      private var var_3108:String = "";
      
      private var var_1601:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_196:Boolean = false;
      
      private var var_2400:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2517 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_196 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2517;
      }
      
      public function get wallX() : Number
      {
         return this.var_2516;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_2516 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2519;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_2519 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2518;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_2518 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2515;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_2515 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_171 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_196)
         {
            this.var_172 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_473;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_473 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_196)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_196)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_196)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2400;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_196)
         {
            this.var_2400 = param1;
         }
      }
   }
}
