package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class EventStreamData
   {
      
      public static const const_1780:uint = 0;
      
      public static const const_1923:uint = 1;
      
      public static const const_1811:uint = 2;
      
      public static const const_1938:uint = 3;
      
      public static const const_2103:uint = 3;
      
      public static const const_2285:int = 0;
      
      public static const const_2107:int = 1;
      
      public static const const_2301:int = 2;
      
      public static const LINK_TARGET_OPEN_ACHIEVEMENTS:int = 3;
      
      public static const const_2175:int = 4;
       
      
      private var _id:int;
      
      private var var_2431:int;
      
      private var var_2427:String;
      
      private var var_2432:String;
      
      private var var_2428:String;
      
      private var var_2429:String;
      
      private var var_2430:int;
      
      private var var_2426:int;
      
      private var var_2425:Object;
      
      public function EventStreamData(param1:int, param2:int, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:IMessageDataWrapper)
      {
         super();
         this._id = param1;
         this.var_2431 = param2;
         this.var_2427 = param3;
         this.var_2432 = param4;
         this.var_2428 = param5;
         this.var_2429 = param6;
         this.var_2430 = param7;
         this.var_2426 = param8;
         this.var_2425 = parse(param2,param9);
      }
      
      protected static function parse(param1:int, param2:IMessageDataWrapper) : Object
      {
         var _loc3_:Object = new Object();
         switch(param1)
         {
            case const_1780:
               _loc3_.friendId = param2.readString();
               _loc3_.friendName = param2.readString();
               break;
            case const_1923:
               _loc3_.roomId = param2.readString();
               _loc3_.roomName = param2.readString();
               break;
            case const_1811:
               _loc3_.achievementCode = param2.readString();
               break;
            case const_1938:
               _loc3_.motto = param2.readString();
         }
         return _loc3_;
      }
      
      public function get actionId() : int
      {
         return this.var_2431;
      }
      
      public function get accountId() : String
      {
         return this.var_2427;
      }
      
      public function get accountName() : String
      {
         return this.var_2432;
      }
      
      public function get imageFilePath() : String
      {
         return this.var_2429;
      }
      
      public function get minutesSinceEvent() : int
      {
         return this.var_2430;
      }
      
      public function get linkTargetType() : int
      {
         return this.var_2426;
      }
      
      public function get extraDataStruct() : Object
      {
         return this.var_2425;
      }
      
      public function get accountGender() : String
      {
         return this.var_2428;
      }
   }
}

class Struct
{
    
   
   function Struct()
   {
      super();
   }
}

class FriendMadeStruct extends Struct
{
    
   
   public var friendId:String;
   
   public var friendName:String;
   
   function FriendMadeStruct(param1:String, param2:String)
   {
      super();
      this.friendId = param1;
      this.friendName = param2;
   }
}

class RoomLikedStruct extends Struct
{
    
   
   public var roomId:String;
   
   public var roomName:String;
   
   function RoomLikedStruct(param1:String, param2:String)
   {
      super();
      this.roomId = param1;
      this.roomName = param2;
   }
}

class AchievementEarnedStruct extends Struct
{
    
   
   public var achievementCode:String;
   
   function AchievementEarnedStruct(param1:String)
   {
      super();
      this.achievementCode = param1;
   }
}
