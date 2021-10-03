package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1848:int;
      
      private var var_2304:String;
      
      private var var_1294:int;
      
      private var var_1209:int;
      
      private var var_1823:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1848 = param1.readInteger();
         this.var_2304 = param1.readString();
         this.var_1294 = param1.readInteger();
         this.var_1209 = param1.readInteger();
         this.var_1823 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1848;
      }
      
      public function get petName() : String
      {
         return this.var_2304;
      }
      
      public function get level() : int
      {
         return this.var_1294;
      }
      
      public function get petType() : int
      {
         return this.var_1209;
      }
      
      public function get breed() : int
      {
         return this.var_1823;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
