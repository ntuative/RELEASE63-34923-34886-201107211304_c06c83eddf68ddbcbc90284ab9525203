package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1172:int;
      
      private var var_2922:String;
      
      private var var_2921:int;
      
      private var var_2295:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1172 = param1.readInteger();
         this.var_2922 = param1.readString();
         this.var_2295 = param1.readString();
         this.var_2921 = this.var_1172;
      }
      
      public function get requestId() : int
      {
         return this.var_1172;
      }
      
      public function get requesterName() : String
      {
         return this.var_2922;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2921;
      }
      
      public function get figureString() : String
      {
         return this.var_2295;
      }
   }
}
