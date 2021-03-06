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

class AMapStep extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapStep';

  
  //endregion

  //region creators
  static Future<AMapStep> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapStep');
    final object = AMapStep()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapStep>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapStep', {'length': length});
  
    final List<AMapStep> typedResult = resultBatch.map((result) => AMapStep()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_instruction() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_instruction", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_orientation() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_orientation", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_road() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_road", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_distance() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_distance", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_duration() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_duration", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_polyline() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_polyline", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_action() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_action", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_assistantAction() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_assistantAction", {'refId': refId});
  
    return __result__;
  }
  
  Future<double> get_tolls() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tolls", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_tollDistance() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tollDistance", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_tollRoad() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tollRoad", {'refId': refId});
  
    return __result__;
  }
  
  Future<List<AMapCity>> get_cities() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_cities", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => AMapCity()..refId = __it__..tag__ = 'amap_search_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => AMapCity()..refId = __it__..tag__ = 'amap_search_fluttify').toList();
  }
  
  Future<List<AMapTMC>> get_tmcs() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tmcs", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => AMapTMC()..refId = __it__..tag__ = 'amap_search_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => AMapTMC()..refId = __it__..tag__ = 'amap_search_fluttify').toList();
  }
  
  //endregion

  //region setters
  Future<void> set_instruction(String instruction) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_instruction', {'refId': refId, "instruction": instruction});
  
  
  }
  
  Future<void> set_orientation(String orientation) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_orientation', {'refId': refId, "orientation": orientation});
  
  
  }
  
  Future<void> set_road(String road) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_road', {'refId': refId, "road": road});
  
  
  }
  
  Future<void> set_distance(int distance) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_distance', {'refId': refId, "distance": distance});
  
  
  }
  
  Future<void> set_duration(int duration) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_duration', {'refId': refId, "duration": duration});
  
  
  }
  
  Future<void> set_polyline(String polyline) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_polyline', {'refId': refId, "polyline": polyline});
  
  
  }
  
  Future<void> set_action(String action) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_action', {'refId': refId, "action": action});
  
  
  }
  
  Future<void> set_assistantAction(String assistantAction) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_assistantAction', {'refId': refId, "assistantAction": assistantAction});
  
  
  }
  
  Future<void> set_tolls(double tolls) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tolls', {'refId': refId, "tolls": tolls});
  
  
  }
  
  Future<void> set_tollDistance(int tollDistance) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tollDistance', {'refId': refId, "tollDistance": tollDistance});
  
  
  }
  
  Future<void> set_tollRoad(String tollRoad) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tollRoad', {'refId': refId, "tollRoad": tollRoad});
  
  
  }
  
  Future<void> set_cities(List<AMapCity> cities) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_cities', {'refId': refId, "cities": cities.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_tmcs(List<AMapTMC> tmcs) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tmcs', {'refId': refId, "tmcs": tmcs.map((it) => it.refId).toList()});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapStep_Batch on List<AMapStep> {
  //region getters
  Future<List<String>> get_instruction_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_instruction_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_orientation_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_orientation_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_road_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_road_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_distance_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_distance_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_duration_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_duration_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_polyline_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_polyline_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_action_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_action_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_assistantAction_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_assistantAction_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<double>> get_tolls_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tolls_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_tollDistance_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tollDistance_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_tollRoad_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tollRoad_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<List<AMapCity>>> get_cities_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_cities_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => AMapCity()..refId = __it__..tag__ = 'amap_search_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  Future<List<List<AMapTMC>>> get_tmcs_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapStep::get_tmcs_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => AMapTMC()..refId = __it__..tag__ = 'amap_search_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_instruction_batch(List<String> instruction) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_instruction_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "instruction": instruction[__i__]}]);
  
  
  }
  
  Future<void> set_orientation_batch(List<String> orientation) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_orientation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "orientation": orientation[__i__]}]);
  
  
  }
  
  Future<void> set_road_batch(List<String> road) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_road_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "road": road[__i__]}]);
  
  
  }
  
  Future<void> set_distance_batch(List<int> distance) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_distance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "distance": distance[__i__]}]);
  
  
  }
  
  Future<void> set_duration_batch(List<int> duration) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_duration_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "duration": duration[__i__]}]);
  
  
  }
  
  Future<void> set_polyline_batch(List<String> polyline) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_polyline_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "polyline": polyline[__i__]}]);
  
  
  }
  
  Future<void> set_action_batch(List<String> action) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_action_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "action": action[__i__]}]);
  
  
  }
  
  Future<void> set_assistantAction_batch(List<String> assistantAction) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_assistantAction_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "assistantAction": assistantAction[__i__]}]);
  
  
  }
  
  Future<void> set_tolls_batch(List<double> tolls) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tolls_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "tolls": tolls[__i__]}]);
  
  
  }
  
  Future<void> set_tollDistance_batch(List<int> tollDistance) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tollDistance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "tollDistance": tollDistance[__i__]}]);
  
  
  }
  
  Future<void> set_tollRoad_batch(List<String> tollRoad) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tollRoad_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "tollRoad": tollRoad[__i__]}]);
  
  
  }
  
  Future<void> set_cities_batch(List<List<AMapCity>> cities) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_cities_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "cities": cities[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  Future<void> set_tmcs_batch(List<List<AMapTMC>> tmcs) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapStep::set_tmcs_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "tmcs": tmcs[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}