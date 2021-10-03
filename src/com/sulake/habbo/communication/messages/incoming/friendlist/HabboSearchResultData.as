package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2525:int;
      
      private var var_1929:String;
      
      private var var_2592:String;
      
      private var var_2595:Boolean;
      
      private var var_2594:Boolean;
      
      private var var_2597:int;
      
      private var var_2593:String;
      
      private var var_2596:String;
      
      private var var_1878:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2525 = param1.readInteger();
         this.var_1929 = param1.readString();
         this.var_2592 = param1.readString();
         this.var_2595 = param1.readBoolean();
         this.var_2594 = param1.readBoolean();
         param1.readString();
         this.var_2597 = param1.readInteger();
         this.var_2593 = param1.readString();
         this.var_2596 = param1.readString();
         this.var_1878 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2525;
      }
      
      public function get avatarName() : String
      {
         return this.var_1929;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2592;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2595;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2594;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2597;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2593;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2596;
      }
      
      public function get realName() : String
      {
         return this.var_1878;
      }
   }
}
