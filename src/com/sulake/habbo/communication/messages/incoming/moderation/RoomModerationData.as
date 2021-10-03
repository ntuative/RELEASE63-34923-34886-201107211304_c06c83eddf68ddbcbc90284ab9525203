package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_426:int;
      
      private var var_2757:int;
      
      private var var_2770:Boolean;
      
      private var var_2445:int;
      
      private var _ownerName:String;
      
      private var var_130:RoomData;
      
      private var var_837:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_426 = param1.readInteger();
         this.var_2757 = param1.readInteger();
         this.var_2770 = param1.readBoolean();
         this.var_2445 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_130 = new RoomData(param1);
         this.var_837 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_130 != null)
         {
            this.var_130.dispose();
            this.var_130 = null;
         }
         if(this.var_837 != null)
         {
            this.var_837.dispose();
            this.var_837 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_426;
      }
      
      public function get userCount() : int
      {
         return this.var_2757;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2770;
      }
      
      public function get method_1() : int
      {
         return this.var_2445;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_130;
      }
      
      public function get event() : RoomData
      {
         return this.var_837;
      }
   }
}
