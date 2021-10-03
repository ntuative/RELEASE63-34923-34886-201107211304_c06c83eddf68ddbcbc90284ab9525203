package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1806:int;
      
      private var _currentPosition:int;
      
      private var var_1808:int;
      
      private var var_1807:int;
      
      private var var_1809:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1806;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1808;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1807;
      }
      
      public function get syncCount() : int
      {
         return this.var_1809;
      }
      
      public function flush() : Boolean
      {
         this.var_1806 = -1;
         this._currentPosition = -1;
         this.var_1808 = -1;
         this.var_1807 = -1;
         this.var_1809 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1806 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1808 = param1.readInteger();
         this.var_1807 = param1.readInteger();
         this.var_1809 = param1.readInteger();
         return true;
      }
   }
}
