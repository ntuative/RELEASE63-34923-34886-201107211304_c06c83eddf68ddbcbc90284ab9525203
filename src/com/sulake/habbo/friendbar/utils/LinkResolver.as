package com.sulake.habbo.friendbar.utils
{
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.enum.InventoryCategory;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboNavigator;
   
   public class LinkResolver
   {
      
      private static var _UNKNOWN:IUnknown;
       
      
      public function LinkResolver()
      {
         super();
      }
      
      public static function set unknown(param1:IUnknown) : void
      {
         _UNKNOWN = param1;
      }
      
      public static function open(param1:LinkTarget) : void
      {
         var linkTarget:LinkTarget = param1;
         if(!_UNKNOWN || false)
         {
            return;
         }
         if(!linkTarget)
         {
            return;
         }
         switch(linkTarget.type)
         {
            case LinkTarget.NONE:
               break;
            case LinkTarget.const_1853:
               _UNKNOWN.queueInterface(new IIDHabboFriendList(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboFriendList(param2).openFriendList();
                  param2.release(param1);
               });
               break;
            case LinkTarget.ROOM:
               _UNKNOWN.queueInterface(new IIDHabboNavigator(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboNavigator(param2).goToRoom(linkTarget.identifier,false);
                  param2.release(param1);
               });
               break;
            case LinkTarget.ACHIEVEMENTS:
               _UNKNOWN.queueInterface(new IIDHabboInventory(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboInventory(param2).toggleInventoryPage(InventoryCategory.const_213);
                  param2.release(param1);
               });
               break;
            case LinkTarget.const_1950:
            default:
               throw new Error("Don\'t forget to implement new link target types!");
         }
      }
   }
}
