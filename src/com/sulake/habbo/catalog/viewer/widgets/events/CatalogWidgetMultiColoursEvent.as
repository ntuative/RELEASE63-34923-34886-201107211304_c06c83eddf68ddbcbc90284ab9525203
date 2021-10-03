package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_956:Array;
      
      private var var_2689:String;
      
      private var var_2691:String;
      
      private var var_2690:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_956 = param1;
         this.var_2689 = param2;
         this.var_2691 = param3;
         this.var_2690 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_956;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2689;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2691;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2690;
      }
   }
}
