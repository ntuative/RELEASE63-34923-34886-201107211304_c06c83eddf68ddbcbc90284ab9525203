package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1663:int;
      
      private var var_1856:Number;
      
      private var var_2496:Number;
      
      private var var_2497:int;
      
      private var var_2495:Number;
      
      private var var_2498:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1663 = param1;
         this.var_1856 = param2;
         this.var_2496 = param3;
         this.var_2495 = param4;
         this.var_2498 = param5;
         this.var_2497 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1663;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1856 < 0)
         {
            return 0;
         }
         return this.var_1856 + (getTimer() - this.var_2497) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2496;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2495;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2498;
      }
   }
}
