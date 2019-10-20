import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_services_interfaces_IInputtipsSearch on java_lang_Object {
  

  

  @mustCallSuper
  Future<com_amap_api_services_help_InputtipsQuery> getQuery() {
  
    debugPrint('getQuery::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setQuery(com_amap_api_services_help_InputtipsQuery var1) {
  
    debugPrint('setQuery::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setInputtipsListener(com_amap_api_services_help_Inputtips_InputtipsListener var1) {
  
    debugPrint('setInputtipsListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> requestInputtipsAsyn() {
  
    debugPrint('requestInputtipsAsyn::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_services_help_Tip>> requestInputtips() {
  
    debugPrint('requestInputtips::kNativeObjectPool: $kNativeObjectPool');
  }
  
}