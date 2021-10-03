package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1144:int = 20;
      
      private static const const_724:int = 10;
      
      private static const const_1691:int = 31;
      
      private static const const_1561:int = 32;
      
      private static const const_723:int = 30;
       
      
      private var var_354:Array;
      
      private var var_828:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_354 = new Array();
         super();
         super.setAnimation(const_723);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_828)
            {
               this.var_828 = true;
               this.var_354 = new Array();
               this.var_354.push(const_1691);
               this.var_354.push(const_1561);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_724)
         {
            if(this.var_828)
            {
               this.var_828 = false;
               this.var_354 = new Array();
               if(direction == 2)
               {
                  this.var_354.push(const_1144 + 5 - param1);
                  this.var_354.push(const_724 + 5 - param1);
               }
               else
               {
                  this.var_354.push(const_1144 + param1);
                  this.var_354.push(const_724 + param1);
               }
               this.var_354.push(const_723);
               return;
            }
            super.setAnimation(const_723);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
