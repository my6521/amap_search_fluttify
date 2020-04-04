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

class AMapAddressComponent extends AMapSearchObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapAddressComponent';

  
  //endregion

  //region creators
  static Future<AMapAddressComponent> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::createAMapAddressComponent');
    final object = AMapAddressComponent()..refId = refId..tag__ = 'amap_search_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<AMapAddressComponent>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('ObjectFactory::create_batchAMapAddressComponent', {'length': length});
  
    final List<AMapAddressComponent> typedResult = resultBatch.map((result) => AMapAddressComponent()..refId = result..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_country() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_country", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_province() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_province", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_city() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_city", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_citycode() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_citycode", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_district() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_district", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_adcode() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_adcode", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_township() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_township", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_towncode() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_towncode", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_neighborhood() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_neighborhood", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_building() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_building", {'refId': refId});
  
    return __result__;
  }
  
  Future<AMapStreetNumber> get_streetNumber() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_streetNumber", {'refId': refId});
    kNativeObjectPool.add(AMapStreetNumber()..refId = __result__..tag__ = 'amap_search_fluttify');
    return AMapStreetNumber()..refId = __result__..tag__ = 'amap_search_fluttify';
  }
  
  Future<List<AMapBusinessArea>> get_businessAreas() async {
    final __result__ = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_businessAreas", {'refId': refId});
    kNativeObjectPool.addAll((__result__ as List).cast<int>().map((__it__) => AMapBusinessArea()..refId = __it__..tag__ = 'amap_search_fluttify').toList());
    return (__result__ as List).cast<int>().map((__it__) => AMapBusinessArea()..refId = __it__..tag__ = 'amap_search_fluttify').toList();
  }
  
  //endregion

  //region setters
  Future<void> set_country(String country) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_country', {'refId': refId, "country": country});
  
  
  }
  
  Future<void> set_province(String province) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_province', {'refId': refId, "province": province});
  
  
  }
  
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_city', {'refId': refId, "city": city});
  
  
  }
  
  Future<void> set_citycode(String citycode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_citycode', {'refId': refId, "citycode": citycode});
  
  
  }
  
  Future<void> set_district(String district) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_district', {'refId': refId, "district": district});
  
  
  }
  
  Future<void> set_adcode(String adcode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_adcode', {'refId': refId, "adcode": adcode});
  
  
  }
  
  Future<void> set_township(String township) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_township', {'refId': refId, "township": township});
  
  
  }
  
  Future<void> set_towncode(String towncode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_towncode', {'refId': refId, "towncode": towncode});
  
  
  }
  
  Future<void> set_neighborhood(String neighborhood) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_neighborhood', {'refId': refId, "neighborhood": neighborhood});
  
  
  }
  
  Future<void> set_building(String building) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_building', {'refId': refId, "building": building});
  
  
  }
  
  Future<void> set_streetNumber(AMapStreetNumber streetNumber) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_streetNumber', {'refId': refId, "streetNumber": streetNumber.refId});
  
  
  }
  
  Future<void> set_businessAreas(List<AMapBusinessArea> businessAreas) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_businessAreas', {'refId': refId, "businessAreas": businessAreas.map((it) => it.refId).toList()});
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}

extension AMapAddressComponent_Batch on List<AMapAddressComponent> {
  //region getters
  Future<List<String>> get_country_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_country_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_province_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_province_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_city_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_city_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_citycode_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_citycode_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_district_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_district_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_adcode_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_adcode_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_township_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_township_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_towncode_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_towncode_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_neighborhood_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_neighborhood_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_building_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_building_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<AMapStreetNumber>> get_streetNumber_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_streetNumber_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapStreetNumber()..refId = __result__..tag__ = 'amap_search_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<List<AMapBusinessArea>>> get_businessAreas_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapAddressComponent::get_businessAreas_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => (__result__ as List).cast<int>().map((__it__) => AMapBusinessArea()..refId = __it__..tag__ = 'amap_search_fluttify').toList()).toList();
    kNativeObjectPool.addAll(typedResult.expand((e) => e));
    return typedResult;
  }
  
  //endregion

  //region setters
  Future<void> set_country_batch(List<String> country) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_country_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "country": country[__i__]}]);
  
  
  }
  
  Future<void> set_province_batch(List<String> province) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_province_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "province": province[__i__]}]);
  
  
  }
  
  Future<void> set_city_batch(List<String> city) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_city_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "city": city[__i__]}]);
  
  
  }
  
  Future<void> set_citycode_batch(List<String> citycode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_citycode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "citycode": citycode[__i__]}]);
  
  
  }
  
  Future<void> set_district_batch(List<String> district) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_district_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "district": district[__i__]}]);
  
  
  }
  
  Future<void> set_adcode_batch(List<String> adcode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_adcode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "adcode": adcode[__i__]}]);
  
  
  }
  
  Future<void> set_township_batch(List<String> township) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_township_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "township": township[__i__]}]);
  
  
  }
  
  Future<void> set_towncode_batch(List<String> towncode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_towncode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "towncode": towncode[__i__]}]);
  
  
  }
  
  Future<void> set_neighborhood_batch(List<String> neighborhood) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_neighborhood_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "neighborhood": neighborhood[__i__]}]);
  
  
  }
  
  Future<void> set_building_batch(List<String> building) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_building_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "building": building[__i__]}]);
  
  
  }
  
  Future<void> set_streetNumber_batch(List<AMapStreetNumber> streetNumber) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_streetNumber_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "streetNumber": streetNumber[__i__].refId}]);
  
  
  }
  
  Future<void> set_businessAreas_batch(List<List<AMapBusinessArea>> businessAreas) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapAddressComponent::set_businessAreas_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'refId': this[__i__].refId, "businessAreas": businessAreas[__i__].map((it) => it.refId).toList()}]);
  
  
  }
  
  //endregion

  //region methods
  
  //endregion
}