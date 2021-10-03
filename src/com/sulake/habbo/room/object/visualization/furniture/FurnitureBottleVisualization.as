package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1144:int = 20;
      
      private static const const_724:int = 9;
      
      private static const const_1561:int = -1;
       
      
      private var var_354:Array;
      
      private var var_828:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_354 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_828)
            {
               this.var_828 = true;
               this.var_354 = new Array();
               this.var_354.push(const_1561);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_828)
            {
               this.var_828 = false;
               this.var_354 = new Array();
               this.var_354.push(const_1144);
               this.var_354.push(const_724 + param1);
               this.var_354.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
         {
            if(this.var_354.length > 0)
            {
               super.setAnimation(this.var_354.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
