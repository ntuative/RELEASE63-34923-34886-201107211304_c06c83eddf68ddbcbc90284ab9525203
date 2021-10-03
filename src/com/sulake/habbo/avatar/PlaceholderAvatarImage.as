package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_896:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1155)
         {
            _structure = null;
            _assets = null;
            var_304 = null;
            var_317 = null;
            var_710 = null;
            var_610 = null;
            var_364 = null;
            if(!var_1431 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_925 = null;
            var_1155 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_896[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_896[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_421:
               switch(_loc3_)
               {
                  case AvatarAction.const_880:
                  case AvatarAction.const_652:
                  case AvatarAction.const_437:
                  case AvatarAction.const_769:
                  case AvatarAction.const_426:
                  case AvatarAction.const_905:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_339:
            case AvatarAction.const_164:
            case AvatarAction.const_272:
            case AvatarAction.const_979:
            case AvatarAction.const_917:
            case AvatarAction.const_846:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
