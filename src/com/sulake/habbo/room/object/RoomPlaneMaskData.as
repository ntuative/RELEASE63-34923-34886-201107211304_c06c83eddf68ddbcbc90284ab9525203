package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2540:Number = 0.0;
      
      private var var_2543:Number = 0.0;
      
      private var var_2542:Number = 0.0;
      
      private var var_2541:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2540 = param1;
         this.var_2543 = param2;
         this.var_2542 = param3;
         this.var_2541 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2540;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2543;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2542;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2541;
      }
   }
}
