import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_services_interfaces_IGeocodeSearch on java_lang_Object {
  

  

  @mustCallSuper
  Future<com_amap_api_services_geocoder_RegeocodeAddress> getFromLocation(com_amap_api_services_geocoder_RegeocodeQuery var1) {
  
    debugPrint('getFromLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_services_geocoder_GeocodeAddress>> getFromLocationName(com_amap_api_services_geocoder_GeocodeQuery var1) {
  
    debugPrint('getFromLocationName::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setOnGeocodeSearchListener(com_amap_api_services_geocoder_GeocodeSearch_OnGeocodeSearchListener var1) {
  
    debugPrint('setOnGeocodeSearchListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> getFromLocationAsyn(com_amap_api_services_geocoder_RegeocodeQuery var1) {
  
    debugPrint('getFromLocationAsyn::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> getFromLocationNameAsyn(com_amap_api_services_geocoder_GeocodeQuery var1) {
  
    debugPrint('getFromLocationNameAsyn::kNativeObjectPool: $kNativeObjectPool');
  }
  
}