package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_559:QuestsList;
      
      private var var_474:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_393:QuestTracker;
      
      private var var_676:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_393 = new QuestTracker(this.var_51);
         this.var_559 = new QuestsList(this.var_51);
         this.var_474 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_676 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_559.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_559.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_393.onQuest(param1);
         this.var_474.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_676.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_393.onQuestCompleted(param1);
         this.var_474.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_393.onQuestCancelled();
         this.var_474.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_676.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_393.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_559.onRoomExit();
         this.var_393.onRoomExit();
         this.var_474.onRoomExit();
         this.var_676.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_393.update(param1);
         this.var_676.update(param1);
         this.var_559.update(param1);
         this.var_474.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_559)
         {
            this.var_559.dispose();
            this.var_559 = null;
         }
         if(this.var_393)
         {
            this.var_393.dispose();
            this.var_393 = null;
         }
         if(this.var_474)
         {
            this.var_474.dispose();
            this.var_474 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_676)
         {
            this.var_676.dispose();
            this.var_676 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_559;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_474;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_393;
      }
   }
}
