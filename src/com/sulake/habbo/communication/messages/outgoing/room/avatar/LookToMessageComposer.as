package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2864:int;
      
      private var var_2865:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         this.var_2864 = param1;
         this.var_2865 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2864,this.var_2865];
      }
      
      public function dispose() : void
      {
      }
   }
}
