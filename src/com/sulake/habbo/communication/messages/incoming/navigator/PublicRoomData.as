package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2285:String;
      
      private var var_2284:int;
      
      private var var_2286:int;
      
      private var var_2283:String;
      
      private var var_2287:int;
      
      private var var_2207:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2285 = param1.readString();
         this.var_2284 = param1.readInteger();
         this.var_2286 = param1.readInteger();
         this.var_2283 = param1.readString();
         this.var_2287 = param1.readInteger();
         this.var_2207 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2285;
      }
      
      public function get unitPort() : int
      {
         return this.var_2284;
      }
      
      public function get worldId() : int
      {
         return this.var_2286;
      }
      
      public function get castLibs() : String
      {
         return this.var_2283;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2287;
      }
      
      public function get nodeId() : int
      {
         return this.var_2207;
      }
   }
}
