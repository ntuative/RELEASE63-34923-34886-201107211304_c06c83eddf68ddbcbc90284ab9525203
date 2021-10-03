package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2672:Boolean;
      
      private var var_2673:int;
      
      private var var_1842:Array;
      
      private var var_817:Array;
      
      private var var_816:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2672;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2673;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1842;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_817;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_816;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1842 = [];
         this.var_817 = [];
         this.var_816 = [];
         this.var_2672 = param1.readBoolean();
         this.var_2673 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1842.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_817.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_816.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
