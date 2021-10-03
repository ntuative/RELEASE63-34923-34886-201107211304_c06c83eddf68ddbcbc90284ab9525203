package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_871;
         param1["badge"] = const_1004;
         param1["bitmap"] = const_441;
         param1["border"] = const_855;
         param1["border_notify"] = const_1783;
         param1["bubble"] = const_851;
         param1["bubble_pointer_up"] = const_1374;
         param1["bubble_pointer_right"] = const_1162;
         param1["bubble_pointer_down"] = const_1237;
         param1["bubble_pointer_left"] = const_1358;
         param1["button"] = const_510;
         param1["button_thick"] = const_1007;
         param1["button_icon"] = const_1898;
         param1["button_group_left"] = const_945;
         param1["button_group_center"] = const_814;
         param1["button_group_right"] = const_778;
         param1["canvas"] = const_847;
         param1["checkbox"] = const_897;
         param1["closebutton"] = const_1177;
         param1["container"] = const_399;
         param1["container_button"] = const_777;
         param1["display_object_wrapper"] = const_829;
         param1["dropmenu"] = const_618;
         param1["dropmenu_item"] = const_564;
         param1["frame"] = const_428;
         param1["frame_notify"] = const_1883;
         param1["header"] = const_899;
         param1["html"] = const_1375;
         param1["icon"] = const_1187;
         param1["itemgrid"] = const_1230;
         param1["itemgrid_horizontal"] = const_499;
         param1["itemgrid_vertical"] = const_879;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_415;
         param1["itemlist_vertical"] = const_445;
         param1["label"] = const_956;
         param1["maximizebox"] = const_1872;
         param1["menu"] = const_1762;
         param1["menu_item"] = const_2023;
         param1["submenu"] = const_1163;
         param1["minimizebox"] = const_1757;
         param1["notify"] = const_1992;
         param1["null"] = const_967;
         param1["password"] = const_838;
         param1["radiobutton"] = const_1012;
         param1["region"] = const_360;
         param1["restorebox"] = const_1820;
         param1["scaler"] = const_576;
         param1["scaler_horizontal"] = const_1763;
         param1["scaler_vertical"] = const_1839;
         param1["scrollbar_horizontal"] = const_524;
         param1["scrollbar_vertical"] = const_1027;
         param1["scrollbar_slider_button_up"] = const_1373;
         param1["scrollbar_slider_button_down"] = const_1186;
         param1["scrollbar_slider_button_left"] = const_1298;
         param1["scrollbar_slider_button_right"] = const_1224;
         param1["scrollbar_slider_bar_horizontal"] = const_1196;
         param1["scrollbar_slider_bar_vertical"] = const_1360;
         param1["scrollbar_slider_track_horizontal"] = const_1318;
         param1["scrollbar_slider_track_vertical"] = const_1307;
         param1["scrollable_itemlist"] = const_1852;
         param1["scrollable_itemlist_vertical"] = const_636;
         param1["scrollable_itemlist_horizontal"] = const_1376;
         param1["selector"] = const_734;
         param1["selector_list"] = const_813;
         param1["submenu"] = const_1163;
         param1["tab_button"] = const_763;
         param1["tab_container_button"] = const_1328;
         param1["tab_context"] = const_446;
         param1["tab_content"] = const_1354;
         param1["tab_selector"] = const_970;
         param1["text"] = const_963;
         param1["input"] = const_842;
         param1["toolbar"] = const_1974;
         param1["tooltip"] = const_410;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
