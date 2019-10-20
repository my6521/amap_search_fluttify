import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapReGeocodeSearchResponse extends AMapSearchObject  {
  // 生成getters
  Future<AMapReGeocode> get_regeocode() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapReGeocodeSearchResponse::get_regeocode", {'refId': refId});
    kNativeObjectPool.add(AMapReGeocode()..refId = result);
    return AMapReGeocode()..refId = result;
  }
  

  // 生成setters
  Future<void> set_regeocode(AMapReGeocode regeocode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapReGeocodeSearchResponse::set_regeocode', {'refId': refId, "regeocode": regeocode.refId});
  
  
  }
  

  // 生成方法们
  
}