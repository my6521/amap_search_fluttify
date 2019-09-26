import 'dart:typed_data';

import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class com_amap_api_fence_DistrictItem extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
   Future<String> getCitycode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getCitycode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::getCitycode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setCitycode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setCitycode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::setCitycode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getAdcode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getAdcode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::getAdcode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setAdcode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setAdcode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::setAdcode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setPolyline(List<com_amap_api_location_DPoint> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setPolyline([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::setPolyline', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getDistrictName() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getDistrictName([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::getDistrictName', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setDistrictName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setDistrictName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::setDistrictName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
  static Future<com_amap_api_fence_DistrictItem> getCreator() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.DistrictItem::getCreator([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.fence.DistrictItem::getCreator', );
  
  
    // 接受原生回调
  
  
    // 返回值
    return com_amap_api_fence_DistrictItem()..refId = result;
  }
  
}