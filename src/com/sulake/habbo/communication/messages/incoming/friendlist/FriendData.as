package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1087:int;
      
      private var var_838:Boolean;
      
      private var var_1881:Boolean;
      
      private var var_710:String;
      
      private var var_1569:int;
      
      private var var_1879:String;
      
      private var var_1880:String;
      
      private var var_1878:String;
      
      private var var_2812:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1087 = param1.readInteger();
         this.var_838 = param1.readBoolean();
         this.var_1881 = param1.readBoolean();
         this.var_710 = param1.readString();
         this.var_1569 = param1.readInteger();
         this.var_1879 = param1.readString();
         this.var_1880 = param1.readString();
         this.var_1878 = param1.readString();
         this.var_2812 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1087;
      }
      
      public function get online() : Boolean
      {
         return this.var_838;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1881;
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function get categoryId() : int
      {
         return this.var_1569;
      }
      
      public function get motto() : String
      {
         return this.var_1879;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1880;
      }
      
      public function get realName() : String
      {
         return this.var_1878;
      }
      
      public function get facebookId() : String
      {
         return this.var_2812;
      }
   }
}
