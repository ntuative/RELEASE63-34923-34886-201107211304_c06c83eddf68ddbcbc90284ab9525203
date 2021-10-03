package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_1067:String = "";
      
      private var var_710:String = "";
      
      private var var_2471:String = "";
      
      private var var_2325:int;
      
      private var var_2316:int = 0;
      
      private var var_2474:String = "";
      
      private var var_2473:int = 0;
      
      private var var_2322:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2325;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2325 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_1067;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_1067 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_710 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2471;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2471 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2316;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2316 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2474;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2474 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2473;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2473 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2322;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2322 = param1;
      }
   }
}
