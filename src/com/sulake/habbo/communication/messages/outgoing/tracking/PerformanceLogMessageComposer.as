package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2444:int = 0;
      
      private var var_1686:String = "";
      
      private var var_2182:String = "";
      
      private var var_2720:String = "";
      
      private var var_2721:String = "";
      
      private var var_2000:int = 0;
      
      private var var_2719:int = 0;
      
      private var var_2718:int = 0;
      
      private var var_1685:int = 0;
      
      private var var_2717:int = 0;
      
      private var var_1688:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2444 = param1;
         this.var_1686 = param2;
         this.var_2182 = param3;
         this.var_2720 = param4;
         this.var_2721 = param5;
         if(param6)
         {
            this.var_2000 = 1;
         }
         else
         {
            this.var_2000 = 0;
         }
         this.var_2719 = param7;
         this.var_2718 = param8;
         this.var_1685 = param9;
         this.var_2717 = param10;
         this.var_1688 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2444,this.var_1686,this.var_2182,this.var_2720,this.var_2721,this.var_2000,this.var_2719,this.var_2718,this.var_1685,this.var_2717,this.var_1688];
      }
   }
}
