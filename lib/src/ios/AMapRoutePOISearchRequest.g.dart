import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapRoutePOISearchRequest extends AMapSearchObject  {
  // 生成getters
  Future<AMapGeoPoint> get_origin() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_origin", {'refId': refId});
    kNativeObjectPool.add(AMapGeoPoint()..refId = result);
    return AMapGeoPoint()..refId = result;
  }
  
  Future<AMapGeoPoint> get_destination() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_destination", {'refId': refId});
    kNativeObjectPool.add(AMapGeoPoint()..refId = result);
    return AMapGeoPoint()..refId = result;
  }
  
  Future<AMapRoutePOISearchType> get_searchType() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_searchType", {'refId': refId});
  
    return AMapRoutePOISearchType.values[result];
  }
  
  Future<int> get_strategy() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_strategy", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_range() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_range", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_polylineStr() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_polylineStr", {'refId': refId});
  
    return result;
  }
  
  Future<List<AMapGeoPoint>> get_polyline() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoutePOISearchRequest::get_polyline", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => AMapGeoPoint()..refId = it).toList());
    return (result as List).cast<int>().map((it) => AMapGeoPoint()..refId = it).toList();
  }
  

  // 生成setters
  Future<void> set_origin(AMapGeoPoint origin) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_origin', {'refId': refId, "origin": origin.refId});
  
  
  }
  
  Future<void> set_destination(AMapGeoPoint destination) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_destination', {'refId': refId, "destination": destination.refId});
  
  
  }
  
  Future<void> set_searchType(AMapRoutePOISearchType searchType) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_searchType', {'refId': refId, "searchType": searchType.index});
  
  
  }
  
  Future<void> set_strategy(int strategy) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_strategy', {'refId': refId, "strategy": strategy});
  
  
  }
  
  Future<void> set_range(int range) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_range', {'refId': refId, "range": range});
  
  
  }
  
  Future<void> set_polylineStr(String polylineStr) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_polylineStr', {'refId': refId, "polylineStr": polylineStr});
  
  
  }
  
  Future<void> set_polyline(List<AMapGeoPoint> polyline) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoutePOISearchRequest::set_polyline', {'refId': refId, "polyline": polyline.map((it) => it.refId).toList()});
  
  
  }
  

  // 生成方法们
  
}