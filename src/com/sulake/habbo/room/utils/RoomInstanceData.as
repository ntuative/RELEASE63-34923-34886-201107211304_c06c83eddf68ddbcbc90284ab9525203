package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_811:TileHeightMap = null;
      
      private var var_1212:LegacyWallGeometry = null;
      
      private var var_1213:RoomCamera = null;
      
      private var var_810:SelectedRoomObjectData = null;
      
      private var var_809:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_542:Map;
      
      private var var_543:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_542 = new Map();
         this.var_543 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1212 = new LegacyWallGeometry();
         this.var_1213 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_811;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_811 != null)
         {
            this.var_811.dispose();
         }
         this.var_811 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1212;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1213;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_810;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_810 != null)
         {
            this.var_810.dispose();
         }
         this.var_810 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_809;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_809 != null)
         {
            this.var_809.dispose();
         }
         this.var_809 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_811 != null)
         {
            this.var_811.dispose();
            this.var_811 = null;
         }
         if(this.var_1212 != null)
         {
            this.var_1212.dispose();
            this.var_1212 = null;
         }
         if(this.var_1213 != null)
         {
            this.var_1213.dispose();
            this.var_1213 = null;
         }
         if(this.var_810 != null)
         {
            this.var_810.dispose();
            this.var_810 = null;
         }
         if(this.var_809 != null)
         {
            this.var_809.dispose();
            this.var_809 = null;
         }
         if(this.var_542 != null)
         {
            this.var_542.dispose();
            this.var_542 = null;
         }
         if(this.var_543 != null)
         {
            this.var_543.dispose();
            this.var_543 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_542.remove(param1.id);
            this.var_542.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_542.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_542.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_542.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_543.remove(param1.id);
            this.var_543.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_543.length > 0)
         {
            return this.getWallItemDataWithId(this.var_543.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_543.remove(param1);
      }
   }
}
