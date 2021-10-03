package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectRoomAdUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.ui.widget.enums.RoomWidgetInfostandExtraParamEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class FurnitureRoomBrandingLogic extends FurnitureLogic
   {
      
      public static const const_1904:String = "state";
      
      public static const const_1369:String = "imageUrl";
      
      public static const const_1264:String = "clickUrl";
      
      public static const const_1229:String = "offsetX";
      
      public static const const_1290:String = "offsetY";
      
      public static const const_1317:String = "offsetZ";
       
      
      protected var var_3055:Boolean;
      
      protected var var_1712:Boolean;
      
      public function FurnitureRoomBrandingLogic()
      {
         super();
         this.var_3055 = true;
         this.var_1712 = false;
      }
      
      override public function initialize(param1:XML) : void
      {
         super.initialize(param1);
         if(this.var_3055)
         {
            object.getModelController().setNumber(RoomObjectVariableEnum.const_1330,1);
         }
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectRoomAdEvent.const_598];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:* = null;
         super.processUpdateMessage(param1);
         if(param1 is RoomObjectDataUpdateMessage)
         {
            this.setupImageFromFurnitureData();
         }
         if(param1 is RoomObjectRoomAdUpdateMessage)
         {
            _loc2_ = param1 as RoomObjectRoomAdUpdateMessage;
            switch(_loc2_.type)
            {
               case RoomObjectRoomAdUpdateMessage.const_1269:
                  object.getModelController().setNumber(RoomObjectVariableEnum.const_513,1,false);
                  break;
               case RoomObjectRoomAdUpdateMessage.const_1391:
                  object.getModelController().setNumber(RoomObjectVariableEnum.const_513,-1);
                  Logger.log("failed to load billboard image from url " + object.getModelController().getString(RoomObjectVariableEnum.const_348));
            }
         }
      }
      
      private function setupImageFromFurnitureData() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:Number = NaN;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:int = 0;
         var _loc1_:Boolean = false;
         if(object != null)
         {
            _loc2_ = object.getModel().getString(RoomObjectVariableEnum.const_101);
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.split("\t");
               if(_loc3_ != null)
               {
                  for each(_loc10_ in _loc3_)
                  {
                     _loc11_ = _loc10_.split("=",2);
                     if(!(_loc11_ != null && _loc11_.length == 2))
                     {
                        continue;
                     }
                     _loc12_ = _loc11_[0];
                     _loc13_ = _loc11_[1];
                     switch(_loc12_)
                     {
                        case const_1904:
                           _loc14_ = parseInt(_loc13_);
                           if(!isNaN(_loc14_))
                           {
                              _loc17_ = int(_loc14_);
                              if(object.getState(0) != _loc17_)
                              {
                                 object.setState(_loc17_,0);
                                 _loc1_ = true;
                              }
                           }
                           break;
                        case const_1369:
                           _loc15_ = object.getModelController().getString(RoomObjectVariableEnum.const_348);
                           if(_loc15_ == null || _loc15_ != _loc13_)
                           {
                              object.getModelController().setString(RoomObjectVariableEnum.const_348,_loc13_,false);
                              object.getModelController().setNumber(RoomObjectVariableEnum.const_513,0,false);
                              _loc1_ = true;
                           }
                           break;
                        case const_1264:
                           _loc16_ = object.getModelController().getString(RoomObjectVariableEnum.FURNITURE_BRANDING_CLICK_URL);
                           if(_loc16_ == null || _loc16_ != _loc13_)
                           {
                              object.getModelController().setString(RoomObjectVariableEnum.FURNITURE_BRANDING_CLICK_URL,_loc13_);
                              _loc1_ = true;
                           }
                           break;
                        case const_1229:
                           _loc1_ = this.updateOffset(RoomObjectVariableEnum.const_661,object.getModelController().getNumber(RoomObjectVariableEnum.const_661),parseInt(_loc13_));
                           break;
                        case const_1290:
                           _loc1_ = this.updateOffset(RoomObjectVariableEnum.const_505,object.getModelController().getNumber(RoomObjectVariableEnum.const_505),parseInt(_loc13_));
                           break;
                        case const_1317:
                           _loc1_ = this.updateOffset(RoomObjectVariableEnum.const_655,object.getModelController().getNumber(RoomObjectVariableEnum.const_655),parseInt(_loc13_));
                           break;
                     }
                  }
               }
               _loc4_ = object.getModelController().getString(RoomObjectVariableEnum.const_348);
               _loc5_ = object.getModelController().getString(RoomObjectVariableEnum.FURNITURE_BRANDING_CLICK_URL);
               _loc6_ = object.getModelController().getNumber(RoomObjectVariableEnum.const_661);
               _loc7_ = object.getModelController().getNumber(RoomObjectVariableEnum.const_505);
               _loc8_ = object.getModelController().getNumber(RoomObjectVariableEnum.const_655);
               if(_loc4_ != null)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_598,object.getId(),object.getType(),_loc4_,_loc5_));
               }
               _loc9_ = const_1369 + "=" + (_loc4_ != null ? _loc4_ : "") + "\t";
               if(this.var_1712)
               {
                  _loc9_ += const_1264 + "=" + (_loc5_ != null ? _loc5_ : "") + "\t";
               }
               _loc9_ += const_1229 + "=" + _loc6_ + "\t";
               _loc9_ += const_1290 + "=" + _loc7_ + "\t";
               _loc9_ += const_1317 + "=" + _loc8_ + "\t";
               object.getModelController().setString(RoomWidgetInfostandExtraParamEnum.const_442,RoomWidgetInfostandExtraParamEnum.const_1295 + _loc9_);
            }
         }
         return _loc1_;
      }
      
      private function updateOffset(param1:String, param2:int, param3:int) : Boolean
      {
         if(param2 != param3)
         {
            object.getModelController().setNumber(param1,param3);
            return true;
         }
         return false;
      }
   }
}
