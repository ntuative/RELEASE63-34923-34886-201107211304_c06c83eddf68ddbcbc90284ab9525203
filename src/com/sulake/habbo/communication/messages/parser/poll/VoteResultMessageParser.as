package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1171:String;
      
      private var var_1502:Array;
      
      private var var_1194:Array;
      
      private var var_1841:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1171;
      }
      
      public function get choices() : Array
      {
         return this.var_1502.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1194.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1841;
      }
      
      public function flush() : Boolean
      {
         this.var_1171 = "";
         this.var_1502 = [];
         this.var_1194 = [];
         this.var_1841 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1171 = param1.readString();
         this.var_1502 = [];
         this.var_1194 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1502.push(param1.readString());
            this.var_1194.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1841 = param1.readInteger();
         return true;
      }
   }
}
