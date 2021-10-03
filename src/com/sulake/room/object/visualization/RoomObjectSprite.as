package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1190:int = 0;
       
      
      private var var_492:BitmapData = null;
      
      private var var_2310:String = "";
      
      private var var_356:Boolean = true;
      
      private var var_2702:String = "";
      
      private var var_2726:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2724:String = "normal";
      
      private var var_1561:Boolean = false;
      
      private var var_1562:Boolean = false;
      
      private var _offset:Point;
      
      private var var_215:int = 0;
      
      private var _height:int = 0;
      
      private var var_1271:Number = 0;
      
      private var var_2701:Boolean = false;
      
      private var var_2723:Boolean = true;
      
      private var var_2389:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2725:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1190++;
      }
      
      public function dispose() : void
      {
         this.var_492 = null;
         this.var_215 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_492;
      }
      
      public function get assetName() : String
      {
         return this.var_2310;
      }
      
      public function get visible() : Boolean
      {
         return this.var_356;
      }
      
      public function get tag() : String
      {
         return this.var_2702;
      }
      
      public function get alpha() : int
      {
         return this.var_2726;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2724;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1562;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1561;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_215;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1271;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2701;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2723;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2389;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2725;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_215 = param1.width;
            this._height = param1.height;
         }
         this.var_492 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2310 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_356 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2702 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2726 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2724 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2725 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1561 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1562 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1271 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2701 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2723 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2389 = param1;
         ++this._updateID;
      }
   }
}
