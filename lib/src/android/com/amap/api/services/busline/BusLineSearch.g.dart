// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_amap_api_services_busline_BusLineSearch extends java_lang_Object  {
  

  // generate getters
  

  // generate setters
  

  // generate methods
  Future<com_amap_api_services_busline_BusLineResult> searchBusLine() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.busline.BusLineSearch@$refId::searchBusLine([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.busline.BusLineSearch::searchBusLine', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_busline_BusLineResult()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_busline_BusLineResult()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<void> setOnBusLineSearchListener(com_amap_api_services_busline_BusLineSearch_OnBusLineSearchListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.busline.BusLineSearch@$refId::setOnBusLineSearchListener([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.busline.BusLineSearch::setOnBusLineSearchListener', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.amap.api.services.busline.BusLineSearch::setOnBusLineSearchListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.services.busline.BusLineSearch.OnBusLineSearchListener::onBusLineSearched':
              // print log
              if (fluttifyLogEnabled) {
                print('fluttify-dart-callback: onBusLineSearched([\'var2\':$args[var2]])');
              }
        
              // handle the native call
              var1?.onBusLineSearched(com_amap_api_services_busline_BusLineResult()..refId = (args['var1'])..tag = 'amap_search_fluttify', args['var2']);
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> searchBusLineAsyn() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.busline.BusLineSearch@$refId::searchBusLineAsyn([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.busline.BusLineSearch::searchBusLineAsyn', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setQuery(com_amap_api_services_busline_BusLineQuery var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.busline.BusLineSearch@$refId::setQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.busline.BusLineSearch::setQuery', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_services_busline_BusLineQuery> getQuery() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.busline.BusLineSearch@$refId::getQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.busline.BusLineSearch::getQuery', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_busline_BusLineQuery()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_busline_BusLineQuery()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
}