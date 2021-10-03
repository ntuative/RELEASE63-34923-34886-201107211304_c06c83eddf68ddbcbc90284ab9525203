package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1955:int = 1;
      
      public static const const_2253:int = 2;
      
      public static const const_1888:int = 3;
      
      public static const const_1966:int = 4;
       
      
      private var var_1683:int = 0;
      
      private var var_1682:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1683 = 0;
         this.var_1682 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1683 = param1.readInteger();
         if(this.var_1683 == 3)
         {
            this.var_1682 = param1.readString();
         }
         else
         {
            this.var_1682 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1683;
      }
      
      public function get parameter() : String
      {
         return this.var_1682;
      }
   }
}
