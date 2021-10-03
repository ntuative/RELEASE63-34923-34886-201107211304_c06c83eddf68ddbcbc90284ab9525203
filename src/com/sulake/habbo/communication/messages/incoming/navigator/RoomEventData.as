package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_2110:Boolean;
      
      private var var_2901:int;
      
      private var var_2899:String;
      
      private var var_426:int;
      
      private var var_2903:int;
      
      private var var_1764:String;
      
      private var var_2902:String;
      
      private var var_2900:String;
      
      private var var_942:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_942 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_2110 = false;
            return;
         }
         this.var_2110 = true;
         this.var_2901 = int(_loc2_);
         this.var_2899 = param1.readString();
         this.var_426 = int(param1.readString());
         this.var_2903 = param1.readInteger();
         this.var_1764 = param1.readString();
         this.var_2902 = param1.readString();
         this.var_2900 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_942.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_942 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2901;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2899;
      }
      
      public function get flatId() : int
      {
         return this.var_426;
      }
      
      public function get eventType() : int
      {
         return this.var_2903;
      }
      
      public function get eventName() : String
      {
         return this.var_1764;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2902;
      }
      
      public function get creationTime() : String
      {
         return this.var_2900;
      }
      
      public function get tags() : Array
      {
         return this.var_942;
      }
      
      public function get exists() : Boolean
      {
         return this.var_2110;
      }
   }
}
