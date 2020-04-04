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

class AMapRailwaySpace extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapRailwaySpace';

  
  //endregion

  //region creators
  static Future<AMapRailwaySpace> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapRailwaySpace');
    final object = AMapRailwaySpace()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapRailwaySpace>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapRailwaySpace', {'length': length});
  
    final List<AMapRailwaySpace> typedResult = resultBatch.map((result) => AMapRailwaySpace()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_code() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRailwaySpace::get_code", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_cost() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRailwaySpace::get_cost", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_code(String code) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRailwaySpace::set_code', {'refId': refId, "code": code});
  
  
  }
  
  Future<void> set_cost(double cost) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRailwaySpace::set_cost', {'refId': refId, "cost": cost});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapRailwaySpace_Batch on List<AMapRailwaySpace> {
  //region getters
  Future<List<String>> get_code_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRailwaySpace::get_code_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_cost_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRailwaySpace::get_cost_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_code_batch(List<String> code) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRailwaySpace::set_code_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "code": code[__i__]}]);
  
  
  }
  
  Future<void> set_cost_batch(List<double> cost) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRailwaySpace::set_cost_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "cost": cost[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}