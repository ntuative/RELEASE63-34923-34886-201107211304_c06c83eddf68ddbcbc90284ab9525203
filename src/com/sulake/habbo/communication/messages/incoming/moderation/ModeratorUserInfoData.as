package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2944:int;
      
      private var var_2939:int;
      
      private var var_838:Boolean;
      
      private var var_2940:int;
      
      private var var_2941:int;
      
      private var var_2943:int;
      
      private var var_2942:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2944 = param1.readInteger();
         this.var_2939 = param1.readInteger();
         this.var_838 = param1.readBoolean();
         this.var_2940 = param1.readInteger();
         this.var_2941 = param1.readInteger();
         this.var_2943 = param1.readInteger();
         this.var_2942 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2944;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2939;
      }
      
      public function get online() : Boolean
      {
         return this.var_838;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2940;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2941;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2943;
      }
      
      public function get banCount() : int
      {
         return this.var_2942;
      }
   }
}
