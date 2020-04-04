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

class AMapCloudImage extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapCloudImage';

  
  //endregion

  //region creators
  static Future<AMapCloudImage> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapCloudImage');
    final object = AMapCloudImage()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapCloudImage>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapCloudImage', {'length': length});
  
    final List<AMapCloudImage> typedResult = resultBatch.map((result) => AMapCloudImage()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_uid() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_uid", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_preurl() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_preurl", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_url() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_url", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_uid(String uid) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_uid', {'refId': refId, "uid": uid});
  
  
  }
  
  Future<void> set_preurl(String preurl) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_preurl', {'refId': refId, "preurl": preurl});
  
  
  }
  
  Future<void> set_url(String url) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_url', {'refId': refId, "url": url});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapCloudImage_Batch on List<AMapCloudImage> {
  //region getters
  Future<List<String>> get_uid_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_uid_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_preurl_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_preurl_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_url_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_url_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_uid_batch(List<String> uid) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_uid_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "uid": uid[__i__]}]);
  
  
  }
  
  Future<void> set_preurl_batch(List<String> preurl) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_preurl_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "preurl": preurl[__i__]}]);
  
  
  }
  
  Future<void> set_url_batch(List<String> url) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_url_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "url": url[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}