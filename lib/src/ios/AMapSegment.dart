import 'dart:typed_data';

import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapSegment extends AMapSearchObject  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<AMapWalking> get_walking() async {
    final result = await _channel.invokeMethod("AMapSegment::get_walking", {'refId': refId});
    return result;
  }
  
  Future<AMapTaxi> get_taxi() async {
    final result = await _channel.invokeMethod("AMapSegment::get_taxi", {'refId': refId});
    return result;
  }
  
  Future<AMapRailway> get_railway() async {
    final result = await _channel.invokeMethod("AMapSegment::get_railway", {'refId': refId});
    return result;
  }
  
  Future<String> get_enterName() async {
    final result = await _channel.invokeMethod("AMapSegment::get_enterName", {'refId': refId});
    return result;
  }
  
  Future<AMapGeoPoint> get_enterLocation() async {
    final result = await _channel.invokeMethod("AMapSegment::get_enterLocation", {'refId': refId});
    return result;
  }
  
  Future<String> get_exitName() async {
    final result = await _channel.invokeMethod("AMapSegment::get_exitName", {'refId': refId});
    return result;
  }
  
  Future<AMapGeoPoint> get_exitLocation() async {
    final result = await _channel.invokeMethod("AMapSegment::get_exitLocation", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_walking(AMapWalking walking) async {
    await _channel.invokeMethod('AMapSegment::set_walking', {'refId': refId, "walking": walking.refId});
  
  
  }
  
  Future<void> set_taxi(AMapTaxi taxi) async {
    await _channel.invokeMethod('AMapSegment::set_taxi', {'refId': refId, "taxi": taxi.refId});
  
  
  }
  
  Future<void> set_railway(AMapRailway railway) async {
    await _channel.invokeMethod('AMapSegment::set_railway', {'refId': refId, "railway": railway.refId});
  
  
  }
  
  Future<void> set_enterName(String enterName) async {
    await _channel.invokeMethod('AMapSegment::set_enterName', {'refId': refId, "enterName": enterName});
  
  
  }
  
  Future<void> set_enterLocation(AMapGeoPoint enterLocation) async {
    await _channel.invokeMethod('AMapSegment::set_enterLocation', {'refId': refId, "enterLocation": enterLocation.refId});
  
  
  }
  
  Future<void> set_exitName(String exitName) async {
    await _channel.invokeMethod('AMapSegment::set_exitName', {'refId': refId, "exitName": exitName});
  
  
  }
  
  Future<void> set_exitLocation(AMapGeoPoint exitLocation) async {
    await _channel.invokeMethod('AMapSegment::set_exitLocation', {'refId': refId, "exitLocation": exitLocation.refId});
  
  
  }
  

  // 生成方法们
  
}