import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_services_route_RouteSearch_OnRoutePlanSearchListener on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> onDriveRoutePlanSearched(com_amap_api_services_route_DriveRoutePlanResult var1, int var2) {
    kNativeObjectPool.add(var1);
    debugPrint('onDriveRoutePlanSearched::kNativeObjectPool: $kNativeObjectPool');
  }
  
}