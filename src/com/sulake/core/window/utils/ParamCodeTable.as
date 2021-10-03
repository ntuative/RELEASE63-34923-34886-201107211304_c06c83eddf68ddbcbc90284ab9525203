package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_194;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1251;
         param1["embedded_controller"] = const_1193;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_928;
         param1["mouse_dragging_target"] = const_287;
         param1["mouse_dragging_trigger"] = const_404;
         param1["mouse_scaling_target"] = const_341;
         param1["mouse_scaling_trigger"] = const_527;
         param1["horizontal_mouse_scaling_trigger"] = const_245;
         param1["vertical_mouse_scaling_trigger"] = const_306;
         param1["observe_parent_input_events"] = const_1258;
         param1["optimize_region_to_layout_size"] = const_493;
         param1["parent_window"] = const_1385;
         param1["relative_horizontal_scale_center"] = const_214;
         param1["relative_horizontal_scale_fixed"] = const_148;
         param1["relative_horizontal_scale_move"] = const_458;
         param1["relative_horizontal_scale_strech"] = const_459;
         param1["relative_scale_center"] = const_1405;
         param1["relative_scale_fixed"] = const_1005;
         param1["relative_scale_move"] = const_1305;
         param1["relative_scale_strech"] = const_1301;
         param1["relative_vertical_scale_center"] = const_233;
         param1["relative_vertical_scale_fixed"] = const_149;
         param1["relative_vertical_scale_move"] = const_278;
         param1["relative_vertical_scale_strech"] = const_325;
         param1["on_resize_align_left"] = const_898;
         param1["on_resize_align_right"] = const_549;
         param1["on_resize_align_center"] = const_659;
         param1["on_resize_align_top"] = const_834;
         param1["on_resize_align_bottom"] = const_558;
         param1["on_resize_align_middle"] = const_506;
         param1["on_accommodate_align_left"] = const_1343;
         param1["on_accommodate_align_right"] = const_520;
         param1["on_accommodate_align_center"] = const_964;
         param1["on_accommodate_align_top"] = const_1226;
         param1["on_accommodate_align_bottom"] = const_556;
         param1["on_accommodate_align_middle"] = const_881;
         param1["route_input_events_to_parent"] = const_604;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1313;
         param1["scalable_with_mouse"] = const_1308;
         param1["reflect_horizontal_resize_to_parent"] = const_522;
         param1["reflect_vertical_resize_to_parent"] = const_526;
         param1["reflect_resize_to_parent"] = const_365;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1179;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
