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

class AMapBusStopSearchRequest extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapBusStopSearchRequest';

  
  //endregion

  //region creators
  static Future<AMapBusStopSearchRequest> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapBusStopSearchRequest');
    final object = AMapBusStopSearchRequest()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapBusStopSearchRequest>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapBusStopSearchRequest', {'length': length});
  
    final List<AMapBusStopSearchRequest> typedResult = resultBatch.map((result) => AMapBusStopSearchRequest()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_keywords() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_keywords", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_city() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_city", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_offset() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_offset", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_page() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_page", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_keywords(String keywords) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_city', {'refId': refId, "city": city});
  
  
  }
  
  Future<void> set_offset(int offset) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_offset', {'refId': refId, "offset": offset});
  
  
  }
  
  Future<void> set_page(int page) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_page', {'refId': refId, "page": page});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapBusStopSearchRequest_Batch on List<AMapBusStopSearchRequest> {
  //region getters
  Future<List<String>> get_keywords_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_keywords_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_city_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_city_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_offset_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_offset_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_page_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStopSearchRequest::get_page_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_keywords_batch(List<String> keywords) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_keywords_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "keywords": keywords[__i__]}]);
  
  
  }
  
  Future<void> set_city_batch(List<String> city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "city": city[__i__]}]);
  
  
  }
  
  Future<void> set_offset_batch(List<int> offset) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_offset_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "offset": offset[__i__]}]);
  
  
  }
  
  Future<void> set_page_batch(List<int> page) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStopSearchRequest::set_page_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "page": page[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}