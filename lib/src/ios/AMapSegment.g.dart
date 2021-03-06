// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';

class AMapSegment extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapSegment';

  
  //endregion

  //region creators
  static Future<AMapSegment> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapSegment');
    final object = AMapSegment()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapSegment>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapSegment', {'length': length});
  
    final List<AMapSegment> typedResult = resultBatch.map((result) => AMapSegment()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<AMapWalking> get_walking() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_walking", {'refId': refId});
    kNativeObjectPool.add(AMapWalking()..refId = __result__..tag__ = 'amap_search_fluttify');
    return AMapWalking()..refId = __result__..tag__ = 'amap_search_fluttify';
  }
  
  Future<List<AMapBusLine>> get_buslines() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_buslines", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => AMapBusLine()..refId = __it__..tag__ = 'amap_search_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => AMapBusLine()..refId = __it__..tag__ = 'amap_search_fluttify').toList();
  }
  
  Future<AMapTaxi> get_taxi() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_taxi", {'refId': refId});
    kNativeObjectPool.add(AMapTaxi()..refId = __result__..tag__ = 'amap_search_fluttify');
    return AMapTaxi()..refId = __result__..tag__ = 'amap_search_fluttify';
  }
  
  Future<AMapRailway> get_railway() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_railway", {'refId': refId});
    kNativeObjectPool.add(AMapRailway()..refId = __result__..tag__ = 'amap_search_fluttify');
    return AMapRailway()..refId = __result__..tag__ = 'amap_search_fluttify';
  }
  
  Future<String> get_enterName() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_enterName", {'refId': refId});
  
    return __result__;
  }
  
  Future<AMapGeoPoint> get_enterLocation() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_enterLocation", {'refId': refId});
    kNativeObjectPool.add(AMapGeoPoint()..refId = __result__..tag__ = 'amap_search_fluttify');
    return AMapGeoPoint()..refId = __result__..tag__ = 'amap_search_fluttify';
  }
  
  Future<String> get_exitName() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_exitName", {'refId': refId});
  
    return __result__;
  }
  
  Future<AMapGeoPoint> get_exitLocation() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_exitLocation", {'refId': refId});
    kNativeObjectPool.add(AMapGeoPoint()..refId = __result__..tag__ = 'amap_search_fluttify');
    return AMapGeoPoint()..refId = __result__..tag__ = 'amap_search_fluttify';
  }
  
  //endregion

  //region setters
  Future<void> set_walking(AMapWalking walking) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_walking', {'refId': refId, "walking": walking.refId});
  
  
  }
  
  Future<void> set_buslines(List<AMapBusLine> buslines) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_buslines', {'refId': refId, "buslines": buslines.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_taxi(AMapTaxi taxi) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_taxi', {'refId': refId, "taxi": taxi.refId});
  
  
  }
  
  Future<void> set_railway(AMapRailway railway) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_railway', {'refId': refId, "railway": railway.refId});
  
  
  }
  
  Future<void> set_enterName(String enterName) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_enterName', {'refId': refId, "enterName": enterName});
  
  
  }
  
  Future<void> set_enterLocation(AMapGeoPoint enterLocation) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_enterLocation', {'refId': refId, "enterLocation": enterLocation.refId});
  
  
  }
  
  Future<void> set_exitName(String exitName) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_exitName', {'refId': refId, "exitName": exitName});
  
  
  }
  
  Future<void> set_exitLocation(AMapGeoPoint exitLocation) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_exitLocation', {'refId': refId, "exitLocation": exitLocation.refId});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapSegment_Batch on List<AMapSegment> {
  //region getters
  Future<List<AMapWalking>> get_walking_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_walking_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapWalking()..refId = __result__..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<List<AMapBusLine>>> get_buslines_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_buslines_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => AMapBusLine()..refId = __it__..tag__ = 'amap_search_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  Future<List<AMapTaxi>> get_taxi_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_taxi_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapTaxi()..refId = __result__..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<AMapRailway>> get_railway_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_railway_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapRailway()..refId = __result__..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_enterName_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_enterName_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<AMapGeoPoint>> get_enterLocation_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_enterLocation_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapGeoPoint()..refId = __result__..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_exitName_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_exitName_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<AMapGeoPoint>> get_exitLocation_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSegment::get_exitLocation_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapGeoPoint()..refId = __result__..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_walking_batch(List<AMapWalking> walking) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_walking_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "walking": walking[__i__].refId}]);
  
  
  }
  
  Future<void> set_buslines_batch(List<List<AMapBusLine>> buslines) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_buslines_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "buslines": buslines[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  Future<void> set_taxi_batch(List<AMapTaxi> taxi) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_taxi_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "taxi": taxi[__i__].refId}]);
  
  
  }
  
  Future<void> set_railway_batch(List<AMapRailway> railway) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_railway_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "railway": railway[__i__].refId}]);
  
  
  }
  
  Future<void> set_enterName_batch(List<String> enterName) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_enterName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "enterName": enterName[__i__]}]);
  
  
  }
  
  Future<void> set_enterLocation_batch(List<AMapGeoPoint> enterLocation) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_enterLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "enterLocation": enterLocation[__i__].refId}]);
  
  
  }
  
  Future<void> set_exitName_batch(List<String> exitName) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_exitName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "exitName": exitName[__i__]}]);
  
  
  }
  
  Future<void> set_exitLocation_batch(List<AMapGeoPoint> exitLocation) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSegment::set_exitLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "exitLocation": exitLocation[__i__].refId}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}