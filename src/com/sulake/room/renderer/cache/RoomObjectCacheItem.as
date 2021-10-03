package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_470:RoomObjectLocationCacheItem = null;
      
      private var var_216:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_470 = new RoomObjectLocationCacheItem(param1);
         this.var_216 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_470;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_216;
      }
      
      public function dispose() : void
      {
         if(this.var_470 != null)
         {
            this.var_470.dispose();
            this.var_470 = null;
         }
         if(this.var_216 != null)
         {
            this.var_216.dispose();
            this.var_216 = null;
         }
      }
   }
}
