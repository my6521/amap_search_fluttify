import 'dart:typed_data';

import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class com_amap_api_services_geocoder_RegeocodeAddress extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
   Future<String> getFormatAddress() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getFormatAddress([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getFormatAddress', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setFormatAddress(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setFormatAddress([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setFormatAddress', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getProvince() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getProvince([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getProvince', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setProvince(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setProvince([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setProvince', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getCity() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getCity([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getCity', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setCity(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setCity([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setCity', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getCityCode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getCityCode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getCityCode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setCityCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setCityCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setCityCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getAdCode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getAdCode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getAdCode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setAdCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setAdCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setAdCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getDistrict() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getDistrict([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getDistrict', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setDistrict(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setDistrict([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setDistrict', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getTownship() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getTownship([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getTownship', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setTownship(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setTownship([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setTownship', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getNeighborhood() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getNeighborhood([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getNeighborhood', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setNeighborhood(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setNeighborhood([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setNeighborhood', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getBuilding() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getBuilding([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getBuilding', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setBuilding(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setBuilding([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setBuilding', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<com_amap_api_services_geocoder_StreetNumber> getStreetNumber() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getStreetNumber([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getStreetNumber', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return com_amap_api_services_geocoder_StreetNumber()..refId = result;
  }
  
   Future<void> setStreetNumber(com_amap_api_services_geocoder_StreetNumber var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setStreetNumber([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setStreetNumber', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setRoads(List<com_amap_api_services_geocoder_RegeocodeRoad> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setRoads([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setRoads', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setPois(List<com_amap_api_services_core_PoiItem> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setPois([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setPois', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setCrossroads(List<com_amap_api_services_road_Crossroad> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setCrossroads([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setCrossroads', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setBusinessAreas(List<com_amap_api_services_geocoder_BusinessArea> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setBusinessAreas([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setBusinessAreas', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setAois(List<com_amap_api_services_geocoder_AoiItem> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setAois([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setAois', {"var1": var1.map((it) => it.refId).toList(), "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getTowncode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getTowncode([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getTowncode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setTowncode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setTowncode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setTowncode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<void> setCountry(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::setCountry([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::setCountry', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> getCountry() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.services.geocoder.RegeocodeAddress@$refId::getCountry([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.services.geocoder.RegeocodeAddress::getCountry', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
}