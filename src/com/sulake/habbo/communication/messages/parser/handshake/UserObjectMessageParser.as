package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_710:String;
      
      private var var_1067:String;
      
      private var var_2737:String;
      
      private var var_1878:String;
      
      private var var_2736:int;
      
      private var var_2433:int;
      
      private var var_1178:int;
      
      private var _petRespectLeft:int;
      
      private var var_2735:Boolean;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_710 = param1.readString();
         this.var_1067 = param1.readString();
         this.var_2737 = param1.readString();
         this.var_1878 = param1.readString();
         this.var_2736 = param1.readInteger();
         this.var_2433 = param1.readInteger();
         this.var_1178 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2735 = param1.readBoolean();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_710;
      }
      
      public function get sex() : String
      {
         return this.var_1067;
      }
      
      public function get customData() : String
      {
         return this.var_2737;
      }
      
      public function get realName() : String
      {
         return this.var_1878;
      }
      
      public function get directMail() : int
      {
         return this.var_2736;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2433;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1178;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get streamPublishingAllowed() : Boolean
      {
         return this.var_2735;
      }
   }
}
