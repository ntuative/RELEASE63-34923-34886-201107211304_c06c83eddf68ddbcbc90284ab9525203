package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1561:int = 3;
      
      private static const const_1675:int = 2;
      
      private static const const_1674:int = 1;
      
      private static const const_1676:int = 15;
       
      
      private var var_354:Array;
      
      private var var_1344:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_354 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1675)
         {
            this.var_354 = new Array();
            this.var_354.push(const_1674);
            this.var_1344 = const_1676;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1344 > 0)
         {
            --this.var_1344;
         }
         if(this.var_1344 == 0)
         {
            if(this.var_354.length > 0)
            {
               super.setAnimation(this.var_354.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
