import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_services_nearby_NearbySearchResult extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<List<com_amap_api_services_nearby_NearbyInfo>> getNearbyInfoList() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.nearby.NearbySearchResult@$refId::getNearbyInfoList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.nearby.NearbySearchResult::getNearbyInfoList', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_services_nearby_NearbyInfo()..refId = it).toList());
      return (result as List).cast<int>().map((it) => com_amap_api_services_nearby_NearbyInfo()..refId = it).toList();
    }
  }
  
  Future<int> getTotalNum() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.nearby.NearbySearchResult@$refId::getTotalNum([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.nearby.NearbySearchResult::getTotalNum', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setNearbyInfoList(List<com_amap_api_services_nearby_NearbyInfo> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.nearby.NearbySearchResult@$refId::setNearbyInfoList([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.nearby.NearbySearchResult::setNearbyInfoList', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}