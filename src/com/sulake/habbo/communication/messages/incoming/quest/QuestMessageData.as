package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2107:String;
      
      private var var_2105:int;
      
      private var var_2106:int;
      
      private var var_1904:int;
      
      private var _id:int;
      
      private var var_2103:Boolean;
      
      private var _type:String;
      
      private var var_2895:String;
      
      private var var_2896:int;
      
      private var var_2108:String;
      
      private var var_2894:int;
      
      private var var_2893:int;
      
      private var var_1633:int;
      
      private var var_2104:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2104 = new Date();
         super();
         this.var_2107 = param1.readString();
         this.var_2105 = param1.readInteger();
         this.var_2106 = param1.readInteger();
         this.var_1904 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2103 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2895 = param1.readString();
         this.var_2896 = param1.readInteger();
         this.var_2108 = param1.readString();
         this.var_2894 = param1.readInteger();
         this.var_2893 = param1.readInteger();
         this.var_1633 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2107;
      }
      
      public function get method_4() : String
      {
         return this.var_2108;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2105;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2106;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1904;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2103;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2895;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2896;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2894;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2893;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1633 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2104.getTime();
         return int(Math.max(0,this.var_1633 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2107;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2108;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2103 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2105 >= this.var_2106;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2104;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1633 = param1;
      }
   }
}
