package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1613:Number = 12;
       
      
      private var var_2750:int = -1;
      
      private var var_2749:int = -2;
      
      private var var_230:Vector3d = null;
      
      private var var_1307:Number = 0;
      
      private var var_1600:Number = 0;
      
      private var var_2012:Boolean = false;
      
      private var var_201:Vector3d = null;
      
      private var var_2009:Vector3d;
      
      private var var_2742:Boolean = false;
      
      private var var_2741:Boolean = false;
      
      private var var_2745:Boolean = false;
      
      private var var_2746:Boolean = false;
      
      private var var_2743:int = 0;
      
      private var var_2747:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2744:int = 0;
      
      private var var_2748:int = 0;
      
      private var var_1805:int = -1;
      
      private var var_2010:int = 0;
      
      private var var_2011:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2009 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_201;
      }
      
      public function get targetId() : int
      {
         return this.var_2750;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2749;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2009;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2742;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2741;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2745;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2746;
      }
      
      public function get screenWd() : int
      {
         return this.var_2743;
      }
      
      public function get screenHt() : int
      {
         return this.var_2747;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2744;
      }
      
      public function get roomHt() : int
      {
         return this.var_2748;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1805;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_230 != null && this.var_201 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2750 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2009.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2749 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2742 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2741 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2745 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2746 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2743 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2747 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2011 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2744 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2748 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1805 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_230 == null)
         {
            this.var_230 = new Vector3d();
         }
         if(this.var_230.x != param1.x || this.var_230.y != param1.y || this.var_230.z != param1.z)
         {
            this.var_230.assign(param1);
            this.var_2010 = 0;
            _loc2_ = Vector3d.dif(this.var_230,this.var_201);
            this.var_1307 = _loc2_.length;
            this.var_2012 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_230 = null;
         this.var_201 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_201 != null)
         {
            return;
         }
         this.var_201 = new Vector3d();
         this.var_201.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_201 == null)
         {
            this.var_201 = new Vector3d();
         }
         this.var_201.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_230 != null && this.var_201 != null)
         {
            ++this.var_2010;
            if(this.var_2011)
            {
               this.var_2011 = false;
               this.var_201 = this.var_230;
               this.var_230 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_230,this.var_201);
            if(_loc3_.length > this.var_1307)
            {
               this.var_1307 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_201 = this.var_230;
               this.var_230 = null;
               this.var_1600 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1307);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1307 / const_1613;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2012)
               {
                  if(_loc7_ < this.var_1600)
                  {
                     _loc7_ = this.var_1600;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2012 = false;
                  }
               }
               this.var_1600 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_201 = Vector3d.sum(this.var_201,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1805 = -1;
      }
   }
}
