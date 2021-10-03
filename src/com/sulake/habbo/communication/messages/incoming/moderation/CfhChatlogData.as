package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1872:int;
      
      private var var_2534:int;
      
      private var var_1628:int;
      
      private var var_2535:int;
      
      private var var_130:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1872 = param1.readInteger();
         this.var_2534 = param1.readInteger();
         this.var_1628 = param1.readInteger();
         this.var_2535 = param1.readInteger();
         this.var_130 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1872);
      }
      
      public function get callId() : int
      {
         return this.var_1872;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2534;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1628;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2535;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_130;
      }
   }
}
