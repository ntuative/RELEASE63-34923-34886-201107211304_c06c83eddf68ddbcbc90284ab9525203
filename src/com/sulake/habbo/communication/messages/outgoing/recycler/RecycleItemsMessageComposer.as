package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_1377:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         this.var_1377 = new Array();
         this.var_1377.push(param1.length);
         this.var_1377 = this.var_1377.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return this.var_1377;
      }
   }
}
