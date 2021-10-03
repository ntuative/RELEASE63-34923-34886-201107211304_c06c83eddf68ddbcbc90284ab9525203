package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1294:int;
      
      private var var_1911:int;
      
      private var var_2711:int;
      
      private var var_2712:int;
      
      private var var_2704:int;
      
      private var var_1800:int;
      
      private var var_2808:String = "";
      
      private var var_2807:String = "";
      
      private var var_2809:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1294 = param1.readInteger();
         this.var_1800 = param1.readInteger();
         this.var_2808 = param1.readString();
         this.var_1911 = param1.readInteger();
         this.var_2711 = param1.readInteger();
         this.var_2712 = param1.readInteger();
         this.var_2704 = param1.readInteger();
         this.var_2809 = param1.readInteger();
         this.var_2807 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1294;
      }
      
      public function get points() : int
      {
         return this.var_1911;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2711;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2712;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2704;
      }
      
      public function get badgeId() : int
      {
         return this.var_1800;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2808;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2807;
      }
      
      public function get achievementID() : int
      {
         return this.var_2809;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
