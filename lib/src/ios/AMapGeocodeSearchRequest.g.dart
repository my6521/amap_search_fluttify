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

class AMapGeocodeSearchRequest extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapGeocodeSearchRequest';

  
  //endregion

  //region creators
  static Future<AMapGeocodeSearchRequest> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapGeocodeSearchRequest');
    final object = AMapGeocodeSearchRequest()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapGeocodeSearchRequest>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapGeocodeSearchRequest', {'length': length});
  
    final List<AMapGeocodeSearchRequest> typedResult = resultBatch.map((result) => AMapGeocodeSearchRequest()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_address() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapGeocodeSearchRequest::get_address", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_city() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapGeocodeSearchRequest::get_city", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_address(String address) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapGeocodeSearchRequest::set_address', {'refId': refId, "address": address});
  
  
  }
  
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapGeocodeSearchRequest::set_city', {'refId': refId, "city": city});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapGeocodeSearchRequest_Batch on List<AMapGeocodeSearchRequest> {
  //region getters
  Future<List<String>> get_address_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapGeocodeSearchRequest::get_address_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_city_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapGeocodeSearchRequest::get_city_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_address_batch(List<String> address) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapGeocodeSearchRequest::set_address_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "address": address[__i__]}]);
  
  
  }
  
  Future<void> set_city_batch(List<String> city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapGeocodeSearchRequest::set_city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "city": city[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}