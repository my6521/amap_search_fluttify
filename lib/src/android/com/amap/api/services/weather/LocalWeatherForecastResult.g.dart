// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_amap_api_services_weather_LocalWeatherForecastResult extends java_lang_Object  {
  

  // generate getters
  

  // generate setters
  

  // generate methods
  static Future<com_amap_api_services_weather_LocalWeatherForecastResult> createPagedResult(com_amap_api_services_weather_WeatherSearchQuery var0, com_amap_api_services_weather_LocalWeatherForecast var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.weather.LocalWeatherForecastResult::createPagedResult([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.weather.LocalWeatherForecastResult::createPagedResult', {"var0": var0.refId, "var1": var1.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_weather_LocalWeatherForecastResult()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_weather_LocalWeatherForecastResult()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_services_weather_WeatherSearchQuery> getWeatherForecastQuery() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.weather.LocalWeatherForecastResult@$refId::getWeatherForecastQuery([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.weather.LocalWeatherForecastResult::getWeatherForecastQuery', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_weather_WeatherSearchQuery()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_weather_WeatherSearchQuery()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_services_weather_LocalWeatherForecast> getForecastResult() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.amap.api.services.weather.LocalWeatherForecastResult@$refId::getForecastResult([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.weather.LocalWeatherForecastResult::getForecastResult', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_weather_LocalWeatherForecast()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_weather_LocalWeatherForecast()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
}