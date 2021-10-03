package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1294:int;
      
      private var var_1800:String;
      
      private var var_1997:int;
      
      private var var_2711:int;
      
      private var var_2712:int;
      
      private var var_1998:int;
      
      private var var_1996:Boolean;
      
      private var _category:String;
      
      private var var_2713:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1294 = param1.readInteger();
         this.var_1800 = param1.readString();
         this.var_1997 = Math.max(1,param1.readInteger());
         this.var_2711 = param1.readInteger();
         this.var_2712 = param1.readInteger();
         this.var_1998 = param1.readInteger();
         this.var_1996 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2713 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1800;
      }
      
      public function get level() : int
      {
         return this.var_1294;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1997;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2711;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2712;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1998;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1996;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2713;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1294 > 1 || this.var_1996;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1998 = this.var_1997;
      }
   }
}
