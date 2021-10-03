package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1266:int = 1;
      
      public static const const_765:int = 2;
      
      public static const const_888:int = 3;
      
      public static const const_1784:int = 4;
       
      
      private var _index:int;
      
      private var var_2761:String;
      
      private var var_2756:String;
      
      private var var_2759:Boolean;
      
      private var var_2760:String;
      
      private var var_1127:String;
      
      private var var_2758:int;
      
      private var var_2757:int;
      
      private var _type:int;
      
      private var var_2702:String;
      
      private var var_1056:GuestRoomData;
      
      private var var_1057:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2761 = param1.readString();
         this.var_2756 = param1.readString();
         this.var_2759 = param1.readInteger() == 1;
         this.var_2760 = param1.readString();
         this.var_1127 = param1.readString();
         this.var_2758 = param1.readInteger();
         this.var_2757 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1266)
         {
            this.var_2702 = param1.readString();
         }
         else if(this._type == const_888)
         {
            this.var_1057 = new PublicRoomData(param1);
         }
         else if(this._type == const_765)
         {
            this.var_1056 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1056 != null)
         {
            this.var_1056.dispose();
            this.var_1056 = null;
         }
         if(this.var_1057 != null)
         {
            this.var_1057.dispose();
            this.var_1057 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2761;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2756;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2759;
      }
      
      public function get picText() : String
      {
         return this.var_2760;
      }
      
      public function get picRef() : String
      {
         return this.var_1127;
      }
      
      public function get folderId() : int
      {
         return this.var_2758;
      }
      
      public function get tag() : String
      {
         return this.var_2702;
      }
      
      public function get userCount() : int
      {
         return this.var_2757;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1056;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1057;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1266)
         {
            return 0;
         }
         if(this.type == const_765)
         {
            return this.var_1056.maxUserCount;
         }
         if(this.type == const_888)
         {
            return this.var_1057.maxUsers;
         }
         return 0;
      }
   }
}
