package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_929:String = "";
      
      public static const const_434:int = 0;
      
      public static const const_630:int = 255;
      
      public static const const_748:Boolean = false;
      
      public static const const_496:int = 0;
      
      public static const const_675:int = 0;
      
      public static const const_431:int = 0;
      
      public static const const_1232:int = 1;
      
      public static const const_1403:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2702:String = "";
      
      private var var_2169:int = 0;
      
      private var var_2726:int = 255;
      
      private var var_2982:Boolean = false;
      
      private var var_2979:int = 0;
      
      private var var_2980:int = 0;
      
      private var var_2981:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2702 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2702;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2169 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2169;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2726 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2726;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2982 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2982;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2979 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2979;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2980 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2980;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2981 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2981;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
