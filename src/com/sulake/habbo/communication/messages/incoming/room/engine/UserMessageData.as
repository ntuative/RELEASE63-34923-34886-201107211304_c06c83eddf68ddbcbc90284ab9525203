package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1199:String = "M";
      
      public static const const_1928:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_473:int = 0;
      
      private var _name:String = "";
      
      private var var_1708:int = 0;
      
      private var var_1067:String = "";
      
      private var var_710:String = "";
      
      private var var_2471:String = "";
      
      private var var_2325:int;
      
      private var var_2316:int = 0;
      
      private var var_2474:String = "";
      
      private var var_2473:int = 0;
      
      private var var_2322:int = 0;
      
      private var var_2472:String = "";
      
      private var var_196:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_196 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_196)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_473;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_473 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_196)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1708;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_1708 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1067;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_1067 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_710 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2471;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2471 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2325;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2325 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2316;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2316 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2474;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2474 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2473;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2473 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2322;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_196)
         {
            this.var_2322 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2472;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_196)
         {
            this.var_2472 = param1;
         }
      }
   }
}
