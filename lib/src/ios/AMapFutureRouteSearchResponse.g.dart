import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapFutureRouteSearchResponse extends AMapSearchObject  {
  // 生成getters
  Future<List<AMapPath>> get_paths() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapFutureRouteSearchResponse::get_paths", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => AMapPath()..refId = it).toList());
    return (result as List).cast<int>().map((it) => AMapPath()..refId = it).toList();
  }
  
  Future<List<AMapFutureTimeInfo>> get_timeInfos() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapFutureRouteSearchResponse::get_timeInfos", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => AMapFutureTimeInfo()..refId = it).toList());
    return (result as List).cast<int>().map((it) => AMapFutureTimeInfo()..refId = it).toList();
  }
  

  // 生成setters
  Future<void> set_paths(List<AMapPath> paths) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapFutureRouteSearchResponse::set_paths', {'refId': refId, "paths": paths.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_timeInfos(List<AMapFutureTimeInfo> timeInfos) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapFutureRouteSearchResponse::set_timeInfos', {'refId': refId, "timeInfos": timeInfos.map((it) => it.refId).toList()});
  
  
  }
  

  // 生成方法们
  
}