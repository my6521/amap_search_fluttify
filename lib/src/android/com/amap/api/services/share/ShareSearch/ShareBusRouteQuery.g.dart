import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_services_share_ShareSearch_ShareBusRouteQuery extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<int> getBusMode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.share.ShareSearch.ShareBusRouteQuery@$refId::getBusMode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.share.ShareSearch.ShareBusRouteQuery::getBusMode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_services_share_ShareSearch_ShareFromAndTo> getShareFromAndTo() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.share.ShareSearch.ShareBusRouteQuery@$refId::getShareFromAndTo([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.share.ShareSearch.ShareBusRouteQuery::getShareFromAndTo', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_share_ShareSearch_ShareFromAndTo()..refId = result);
      return com_amap_api_services_share_ShareSearch_ShareFromAndTo()..refId = result;
    }
  }
  
}