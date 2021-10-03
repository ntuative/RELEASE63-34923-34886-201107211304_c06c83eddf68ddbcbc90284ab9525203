package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_171:Number;
      
      private var var_172:Number;
      
      private var var_1865:Number;
      
      private var var_1864:Number;
      
      private var var_1863:Number;
      
      private var var_1234:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_546:int = 0;
      
      private var var_1003:int;
      
      private var var_2521:Boolean = false;
      
      private var var_1866:Boolean = false;
      
      private var var_1711:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1866;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_546;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_171 = param2;
         this.var_172 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1865 = this._x - this._direction.x * param6;
         this.var_1864 = this.var_171 - this._direction.y * param6;
         this.var_1863 = this.var_172 - this._direction.z * param6;
         this.var_546 = 0;
         this.var_1234 = false;
         this.var_1003 = param7;
         this.var_2521 = param8;
         this._frames = param9;
         this.var_1866 = param10;
         this._alphaMultiplier = 1;
         this.var_1711 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_546;
         if(this.var_546 == this.var_1003)
         {
            this.ignite();
         }
         if(this.var_1866)
         {
            if(this.var_546 / this.var_1003 > this.var_1711)
            {
               this._alphaMultiplier = (this.var_1003 - this.var_546) / (this.var_1003 * (1 - this.var_1711));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_546 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2521;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_546 <= this.var_1003;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_171 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_172 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1865;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1234 = true;
         this.var_1865 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1864;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1234 = true;
         this.var_1864 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1863;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1234 = true;
         this.var_1863 = param1;
      }
      
      public function get method_10() : Boolean
      {
         return this.var_1234;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_171,this.var_172].toString();
      }
   }
}
