package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_210:IWindowContainer;
      
      private var var_3071:int;
      
      private var var_372:RoomEventViewCtrl;
      
      private var var_374:Timer;
      
      private var var_152:RoomSettingsCtrl;
      
      private var var_274:RoomThumbnailCtrl;
      
      private var var_976:TagRenderer;
      
      private var var_373:IWindowContainer;
      
      private var var_375:IWindowContainer;
      
      private var var_625:IWindowContainer;
      
      private var var_1766:IWindowContainer;
      
      private var var_1765:IWindowContainer;
      
      private var var_1185:IWindowContainer;
      
      private var var_977:ITextWindow;
      
      private var var_974:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_776:ITextWindow;
      
      private var var_1182:ITextWindow;
      
      private var var_975:ITextWindow;
      
      private var var_778:ITextWindow;
      
      private var var_1461:ITextWindow;
      
      private var var_273:IWindowContainer;
      
      private var var_779:IWindowContainer;
      
      private var var_1459:IWindowContainer;
      
      private var var_1764:ITextWindow;
      
      private var var_626:ITextWindow;
      
      private var var_1763:IWindow;
      
      private var var_1188:IContainerButtonWindow;
      
      private var var_1184:IContainerButtonWindow;
      
      private var var_1186:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1187:IContainerButtonWindow;
      
      private var var_1464:IButtonWindow;
      
      private var var_1462:IButtonWindow;
      
      private var var_1460:IButtonWindow;
      
      private var var_775:IWindowContainer;
      
      private var var_1183:ITextWindow;
      
      private var var_973:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_777:IButtonWindow;
      
      private var var_1463:Boolean = false;
      
      private const const_852:int = 75;
      
      private const const_783:int = 3;
      
      private const const_994:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_372 = new RoomEventViewCtrl(this._navigator);
         this.var_152 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_274 = new RoomThumbnailCtrl(this._navigator);
         this.var_976 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_152);
         this.var_374 = new Timer(6000,1);
         this.var_374.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_374)
         {
            this.var_374.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_374.reset();
            this.var_374 = null;
         }
         this._navigator = null;
         this.var_372 = null;
         this.var_152 = null;
         this.var_274 = null;
         if(this.var_976)
         {
            this.var_976.dispose();
            this.var_976 = null;
         }
         this.var_210 = null;
         this.var_373 = null;
         this.var_375 = null;
         this.var_625 = null;
         this.var_1766 = null;
         this.var_1765 = null;
         this.var_1185 = null;
         this.var_977 = null;
         this.var_974 = null;
         this._ownerName = null;
         this.var_776 = null;
         this.var_1182 = null;
         this.var_975 = null;
         this.var_778 = null;
         this.var_1461 = null;
         this.var_273 = null;
         this.var_779 = null;
         this.var_1459 = null;
         this.var_1764 = null;
         this.var_626 = null;
         this.var_1763 = null;
         this.var_1188 = null;
         this.var_1184 = null;
         this.var_1186 = null;
         this._remFavouriteButton = null;
         this.var_1187 = null;
         this.var_1464 = null;
         this.var_1462 = null;
         this.var_1460 = null;
         this.var_775 = null;
         this.var_1183 = null;
         this.var_973 = null;
         this._buttons = null;
         this.var_777 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_374.reset();
         this.var_372.active = true;
         this.var_152.active = false;
         this.var_274.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_374.reset();
         this.var_152.load(param1);
         this.var_152.active = true;
         this.var_372.active = false;
         this.var_274.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_152.active = true;
         this.var_372.active = false;
         this.var_274.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_374.reset();
         this.var_152.active = false;
         this.var_372.active = false;
         this.var_274.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1463 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_374.reset();
         this.var_372.active = false;
         this.var_152.active = false;
         this.var_274.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_783;
         this._window.y = this.const_852;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_210,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_210.height = Util.getLowestPoint(this.var_210);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_994;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_373);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_152.refresh(this.var_373);
         this.var_274.refresh(this.var_373);
         Util.moveChildrenToColumn(this.var_373,["room_details","room_buttons"],0,2);
         this.var_373.height = Util.getLowestPoint(this.var_373);
         this.var_373.visible = true;
         Logger.log("XORP: " + this.var_375.visible + ", " + this.var_1185.visible + ", " + this.var_625.visible + ", " + this.var_625.rectangle + ", " + this.var_373.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_273);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_372.refresh(this.var_273);
         if(Util.hasVisibleChildren(this.var_273) && !(this.var_152.active || this.var_274.active))
         {
            Util.moveChildrenToColumn(this.var_273,["event_details","event_buttons"],0,2);
            this.var_273.height = Util.getLowestPoint(this.var_273);
            this.var_273.visible = true;
         }
         else
         {
            this.var_273.visible = false;
         }
         Logger.log("EVENT: " + this.var_273.visible + ", " + this.var_273.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","HabboRoomUICom_jb_icon_disc") == "SetClothingChangeDataMessageComposer";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_152.active && !this.var_274.active && !this.var_372.active)
         {
            this.var_775.visible = true;
            this.var_973.text = this.getEmbedData();
         }
         else
         {
            this.var_775.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_152.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_777)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_777.visible = _loc1_;
            if(this.var_1463)
            {
               this.var_777.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_777.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_152.active || this.var_274.active)
         {
            return;
         }
         this.var_977.text = param1.roomName;
         this.var_977.height = this.var_977.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_776.text = param1.description;
         this.var_976.refreshTags(this.var_375,param1.tags);
         this.var_776.visible = false;
         if(param1.description != "")
         {
            this.var_776.height = this.var_776.textHeight + 5;
            this.var_776.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1184,"facebook_logo_small",_loc3_,null,0);
         this.var_1184.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1188,"thumb_up",_loc4_,null,0);
         this.var_1188.visible = _loc4_;
         this.var_778.visible = !_loc4_;
         this.var_1461.visible = !_loc4_;
         this.var_1461.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_375,"home",param2,null,0);
         this._navigator.refreshButton(this.var_375,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_375,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_977.y,0);
         this.var_375.visible = true;
         this.var_375.height = Util.getLowestPoint(this.var_375);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_375.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_152.active || this.var_274.active)
         {
            return;
         }
         this.var_974.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_974.height = this.var_974.textHeight + 5;
         this.var_1182.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1182.height = this.var_1182.textHeight + 5;
         Util.moveChildrenToColumn(this.var_625,["public_space_name","public_space_desc"],this.var_974.y,0);
         this.var_625.visible = true;
         this.var_625.height = Math.max(86,Util.getLowestPoint(this.var_625));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_372.active)
         {
            return;
         }
         this.var_1764.text = param1.eventName;
         this.var_626.text = param1.eventDescription;
         this.var_976.refreshTags(this.var_779,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_626.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_626.height = this.var_626.textHeight + 5;
            this.var_626.y = Util.getLowestPoint(this.var_779) + 2;
            this.var_626.visible = true;
         }
         this.var_779.visible = true;
         this.var_779.height = Util.getLowestPoint(this.var_779);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_152.active || this.var_274.active)
         {
            return;
         }
         this.var_1464.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1186.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1187.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1185.visible = Util.hasVisibleChildren(this.var_1185);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_372.active)
         {
            return;
         }
         this.var_1462.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1460.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1459.visible = Util.hasVisibleChildren(this.var_1459);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_210 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_373 = IWindowContainer(this.find("room_info"));
         this.var_375 = IWindowContainer(this.find("room_details"));
         this.var_625 = IWindowContainer(this.find("public_space_details"));
         this.var_1766 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1765 = IWindowContainer(this.find("rating_cont"));
         this.var_1185 = IWindowContainer(this.find("room_buttons"));
         this.var_977 = ITextWindow(this.find("room_name"));
         this.var_974 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_776 = ITextWindow(this.find("room_desc"));
         this.var_1182 = ITextWindow(this.find("public_space_desc"));
         this.var_975 = ITextWindow(this.find("owner_caption"));
         this.var_778 = ITextWindow(this.find("rating_caption"));
         this.var_1461 = ITextWindow(this.find("rating_txt"));
         this.var_273 = IWindowContainer(this.find("event_info"));
         this.var_779 = IWindowContainer(this.find("event_details"));
         this.var_1459 = IWindowContainer(this.find("event_buttons"));
         this.var_1764 = ITextWindow(this.find("event_name"));
         this.var_626 = ITextWindow(this.find("event_desc"));
         this.var_1184 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1188 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1763 = this.find("staff_pick_button");
         this.var_1186 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1187 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1464 = IButtonWindow(this.find("room_settings_button"));
         this.var_1462 = IButtonWindow(this.find("create_event_button"));
         this.var_1460 = IButtonWindow(this.find("edit_event_button"));
         this.var_775 = IWindowContainer(this.find("embed_info"));
         this.var_1183 = ITextWindow(this.find("embed_info_txt"));
         this.var_973 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_777 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1186,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1464,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1187,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1462,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1460,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_973,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1188,this.onThumbUp);
         this.addMouseClickListener(this.var_1763,this.onStaffPick);
         this.addMouseClickListener(this.var_1184,this.onFacebookLike);
         this.addMouseClickListener(this.var_777,this.onZoomClick);
         this._navigator.refreshButton(this.var_1186,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1187,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_373,this.onHover);
         this.addMouseOverListener(this.var_273,this.onHover);
         this.var_975.width = this.var_975.textWidth;
         Util.moveChildrenToRow(this.var_1766,["owner_caption","owner_name"],this.var_975.x,this.var_975.y,3);
         this.var_778.width = this.var_778.textWidth;
         Util.moveChildrenToRow(this.var_1765,["rating_caption","rating_txt"],this.var_778.x,this.var_778.y,3);
         this.var_1183.height = this.var_1183.textHeight + 5;
         Util.moveChildrenToColumn(this.var_775,["embed_info_txt","embed_src_txt"],this.var_1183.y,2);
         this.var_775.height = Util.getLowestPoint(this.var_775) + 5;
         this.var_3071 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_973.setSelection(0,this.var_973.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_323));
         this.var_1463 = !this.var_1463;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_374.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_152 != null)
         {
            this.var_152.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
