import 'dart:typed_data';

import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapPOIPolygonSearchRequest extends AMapPOISearchBaseRequest  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<String> get_keywords() async {
    final result = await _channel.invokeMethod("AMapPOIPolygonSearchRequest::get_keywords", {'refId': refId});
    return result;
  }
  
  Future<AMapGeoPolygon> get_polygon() async {
    final result = await _channel.invokeMethod("AMapPOIPolygonSearchRequest::get_polygon", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_keywords(String keywords) async {
    await _channel.invokeMethod('AMapPOIPolygonSearchRequest::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_polygon(AMapGeoPolygon polygon) async {
    await _channel.invokeMethod('AMapPOIPolygonSearchRequest::set_polygon', {'refId': refId, "polygon": polygon.refId});
  
  
  }
  

  // 生成方法们
  
}