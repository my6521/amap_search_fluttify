#import "AmapSearchFluttifyPlugin.h"

typedef void (^Handler)(NSObject <FlutterPluginRegistrar> *, NSDictionary<NSString *, NSObject *> *, FlutterResult);

NSMutableDictionary<NSNumber *, NSObject *> *REF_MAP;

@implementation AmapSearchFluttifyPlugin {
  NSObject <FlutterPluginRegistrar> * _registrar;
  NSDictionary<NSString *, Handler> *_handlerMap;
}

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    // 处理方法们
    _handlerMap = @{
      @"AMapURLSearch::getLatestAMapApp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::getLatestAMapApp(暂未实现参数打印)");
      
          // 开始调用
          [AMapURLSearch getLatestAMapApp ];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapURLSearch::openAMapNavigation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNaviConfig* config = (AMapNaviConfig*) REF_MAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapNavigation(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapNavigation: config];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapURLSearch::openAMapRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteConfig* config = (AMapRouteConfig*) REF_MAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapRouteSearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapRouteSearch: config];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapURLSearch::openAMapPOISearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIConfig* config = (AMapPOIConfig*) REF_MAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapPOISearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapPOISearch: config];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapServices::sharedServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapServices::sharedServices(暂未实现参数打印)");
      
          // 开始调用
          AMapServices* result = [AMapServices sharedServices];
      
          // 调用结果
          NSInteger returnRefId = [result hash];
          REF_MAP[@(returnRefId)] = result;
      
          methodResult(@(returnRefId));
      },
      @"AMapSearchObject::formattedDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchObject * ref = (AMapSearchObject *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchObject@%@::formattedDescription(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSString* result = [ref formattedDescription];
      
          // 调用结果
          methodResult(result);
      },
      @"AMapGeoPoint::locationWithLatitudeLongitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat lat = [args[@"lat"] floatValue];
          // jsonable参数
          CGFloat lon = [args[@"lon"] floatValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoPoint::locationWithLatitude(暂未实现参数打印)");
      
          // 开始调用
          AMapGeoPoint* result = [AMapGeoPoint locationWithLatitude: lat longitude: lon];
      
          // 调用结果
          NSInteger returnRefId = [result hash];
          REF_MAP[@(returnRefId)] = result;
      
          methodResult(@(returnRefId));
      },
      @"AMapNearbySearchManagerDelegate::nearbyInfoForUploading": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNearbySearchManager* manager = (AMapNearbySearchManager*) REF_MAP[@([args[@"manager"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapNearbySearchManagerDelegate> ref = (id<AMapNearbySearchManagerDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapNearbySearchManagerDelegate@%@::nearbyInfoForUploading(暂未实现参数打印)", @(refId));
      
          // 开始调用
          AMapNearbyUploadInfo* result = [ref nearbyInfoForUploading: manager];
      
          // 调用结果
          NSInteger returnRefId = [result hash];
          REF_MAP[@(returnRefId)] = result;
      
          methodResult(@(returnRefId));
      },
      @"AMapNearbySearchManagerDelegate::onNearbyInfoUploadedWithError": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          NSError* error = (NSError*) REF_MAP[@([args[@"error"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapNearbySearchManagerDelegate> ref = (id<AMapNearbySearchManagerDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapNearbySearchManagerDelegate@%@::onNearbyInfoUploadedWithError(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onNearbyInfoUploadedWithError : error];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapNearbySearchManagerDelegate::onUserInfoClearedWithError": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          NSError* error = (NSError*) REF_MAP[@([args[@"error"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapNearbySearchManagerDelegate> ref = (id<AMapNearbySearchManagerDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapNearbySearchManagerDelegate@%@::onUserInfoClearedWithError(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onUserInfoClearedWithError : error];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::init": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::init(暂未实现参数打印)", @(refId));
      
          // 开始调用
          AMapSearchAPI* result = [ref init];
      
          // 调用结果
          NSInteger returnRefId = [result hash];
          REF_MAP[@(returnRefId)] = result;
      
          methodResult(@(returnRefId));
      },
      @"AMapSearchAPI::cancelAllRequests": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::cancelAllRequests(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref cancelAllRequests ];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIIDSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIIDSearchRequest* request = (AMapPOIIDSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIIDSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIIDSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIKeywordsSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIKeywordsSearchRequest* request = (AMapPOIKeywordsSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIKeywordsSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIKeywordsSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIAroundSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIAroundSearchRequest* request = (AMapPOIAroundSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIAroundSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIAroundSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIPolygonSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIPolygonSearchRequest* request = (AMapPOIPolygonSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIPolygonSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIPolygonSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRoutePOISearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoutePOISearchRequest* request = (AMapRoutePOISearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRoutePOISearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRoutePOISearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapGeocodeSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapGeocodeSearchRequest* request = (AMapGeocodeSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapGeocodeSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapGeocodeSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapReGoecodeSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapReGeocodeSearchRequest* request = (AMapReGeocodeSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapReGoecodeSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapReGoecodeSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapInputTipsSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapInputTipsSearchRequest* request = (AMapInputTipsSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapInputTipsSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapInputTipsSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapBusStopSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusStopSearchRequest* request = (AMapBusStopSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapBusStopSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapBusStopSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapBusLineIDSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusLineIDSearchRequest* request = (AMapBusLineIDSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapBusLineIDSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapBusLineIDSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapBusLineNameSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusLineNameSearchRequest* request = (AMapBusLineNameSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapBusLineNameSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapBusLineNameSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapDistrictSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistrictSearchRequest* request = (AMapDistrictSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapDistrictSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapDistrictSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapDrivingRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDrivingRouteSearchRequest* request = (AMapDrivingRouteSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapDrivingRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapDrivingRouteSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapWalkingRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapWalkingRouteSearchRequest* request = (AMapWalkingRouteSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapWalkingRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapWalkingRouteSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapTransitRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapTransitRouteSearchRequest* request = (AMapTransitRouteSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapTransitRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapTransitRouteSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRidingRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRidingRouteSearchRequest* request = (AMapRidingRouteSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRidingRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRidingRouteSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapTruckRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapTruckRouteSearchRequest* request = (AMapTruckRouteSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapTruckRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapTruckRouteSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapFutureRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapFutureRouteSearchRequest* request = (AMapFutureRouteSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapFutureRouteSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapFutureRouteSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapWeatherSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapWeatherSearchRequest* request = (AMapWeatherSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapWeatherSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapWeatherSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRoadTrafficSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoadTrafficSearchRequest* request = (AMapRoadTrafficSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRoadTrafficSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRoadTrafficSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRoadTrafficCircleSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoadTrafficCircleSearchRequest* request = (AMapRoadTrafficCircleSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRoadTrafficCircleSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRoadTrafficCircleSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapDistanceSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistanceSearchRequest* request = (AMapDistanceSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapDistanceSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapDistanceSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapNearbySearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNearbySearchRequest* request = (AMapNearbySearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapNearbySearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapNearbySearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOIAroundSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOIAroundSearchRequest* request = (AMapCloudPOIAroundSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOIAroundSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOIAroundSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOIPolygonSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOIPolygonSearchRequest* request = (AMapCloudPOIPolygonSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOIPolygonSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOIPolygonSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOIIDSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOIIDSearchRequest* request = (AMapCloudPOIIDSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOIIDSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOIIDSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapCloudPOILocalSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudPOILocalSearchRequest* request = (AMapCloudPOILocalSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapCloudPOILocalSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapCloudPOILocalSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapLocationShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapLocationShareSearchRequest* request = (AMapLocationShareSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapLocationShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapLocationShareSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapPOIShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIShareSearchRequest* request = (AMapPOIShareSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapPOIShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapPOIShareSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapRouteShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteShareSearchRequest* request = (AMapRouteShareSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapRouteShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapRouteShareSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchAPI::AMapNavigationShareSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNavigationShareSearchRequest* request = (AMapNavigationShareSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchAPI@%@::AMapNavigationShareSearch(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref AMapNavigationShareSearch : request];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onPOISearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOISearchBaseRequest* request = (AMapPOISearchBaseRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapPOISearchResponse* response = (AMapPOISearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onPOISearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onPOISearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onRoutePOISearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoutePOISearchRequest* request = (AMapRoutePOISearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapRoutePOISearchResponse* response = (AMapRoutePOISearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onRoutePOISearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onRoutePOISearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onGeocodeSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapGeocodeSearchRequest* request = (AMapGeocodeSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapGeocodeSearchResponse* response = (AMapGeocodeSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onGeocodeSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onGeocodeSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onReGeocodeSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapReGeocodeSearchRequest* request = (AMapReGeocodeSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapReGeocodeSearchResponse* response = (AMapReGeocodeSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onReGeocodeSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onReGeocodeSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onInputTipsSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapInputTipsSearchRequest* request = (AMapInputTipsSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapInputTipsSearchResponse* response = (AMapInputTipsSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onInputTipsSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onInputTipsSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onBusStopSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusStopSearchRequest* request = (AMapBusStopSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapBusStopSearchResponse* response = (AMapBusStopSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onBusStopSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onBusStopSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onBusLineSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapBusLineBaseSearchRequest* request = (AMapBusLineBaseSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapBusLineSearchResponse* response = (AMapBusLineSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onBusLineSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onBusLineSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onDistrictSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistrictSearchRequest* request = (AMapDistrictSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapDistrictSearchResponse* response = (AMapDistrictSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onDistrictSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onDistrictSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onRouteSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteSearchBaseRequest* request = (AMapRouteSearchBaseRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapRouteSearchResponse* response = (AMapRouteSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onRouteSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onRouteSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onFutureRouteSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteSearchBaseRequest* request = (AMapRouteSearchBaseRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapFutureRouteSearchResponse* response = (AMapFutureRouteSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onFutureRouteSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onFutureRouteSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onDistanceSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapDistanceSearchRequest* request = (AMapDistanceSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapDistanceSearchResponse* response = (AMapDistanceSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onDistanceSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onDistanceSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onWeatherSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapWeatherSearchRequest* request = (AMapWeatherSearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapWeatherSearchResponse* response = (AMapWeatherSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onWeatherSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onWeatherSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onRoadTrafficSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRoadTrafficSearchBaseRequest* request = (AMapRoadTrafficSearchBaseRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapRoadTrafficSearchResponse* response = (AMapRoadTrafficSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onRoadTrafficSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onRoadTrafficSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onNearbySearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNearbySearchRequest* request = (AMapNearbySearchRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapNearbySearchResponse* response = (AMapNearbySearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onNearbySearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onNearbySearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onCloudSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapCloudSearchBaseRequest* request = (AMapCloudSearchBaseRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapCloudPOISearchResponse* response = (AMapCloudPOISearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onCloudSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onCloudSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapSearchDelegate::onShareSearchDoneResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapShareSearchBaseRequest* request = (AMapShareSearchBaseRequest*) REF_MAP[@([args[@"request"] integerValue])];
          // 引用参数
          AMapShareSearchResponse* response = (AMapShareSearchResponse*) REF_MAP[@([args[@"response"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<AMapSearchDelegate> ref = (id<AMapSearchDelegate>) REF_MAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapSearchDelegate@%@::onShareSearchDone(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref onShareSearchDone : request response: response];
      
          // 调用结果
          methodResult(@"success");
      },
      @"AMapNaviConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.appScheme.hash));
      },
      
      @"AMapNaviConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.appName.hash));
      },
      
      @"AMapNaviConfig::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
          NSLog(@"AMapNaviConfig::get_destination:结构体getter暂时不支持");
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapNaviConfig::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapRouteConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.appScheme.hash));
      },
      
      @"AMapRouteConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.appName.hash));
      },
      
      @"AMapRouteConfig::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          NSLog(@"AMapRouteConfig::get_startCoordinate:结构体getter暂时不支持");
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          NSLog(@"AMapRouteConfig::get_destinationCoordinate:结构体getter暂时不支持");
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_drivingStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.drivingStrategy));
      },
      
      @"AMapRouteConfig::get_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_transitStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.transitStrategy));
      },
      
      @"AMapRouteConfig::get_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_routeType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.routeType));
      },
      
      @"AMapPOIConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.appScheme.hash));
      },
      
      @"AMapPOIConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.appName.hash));
      },
      
      @"AMapPOIConfig::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapPOIConfig::get_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate:结构体getter暂时不支持");
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapPOIConfig::get_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate:结构体getter暂时不支持");
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapServices::get_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_apiKey");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.apiKey.hash));
      },
      
      @"AMapServices::get_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_enableHTTPS");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.enableHTTPS));
      },
      
      @"AMapServices::get_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_crashReportEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.crashReportEnabled));
      },
      
      @"AMapServices::get_identifier": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_identifier");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.identifier.hash));
      },
      
      @"AMapPOISearchBaseRequest::get_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_types");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.types.hash));
      },
      
      @"AMapPOISearchBaseRequest::get_sortrule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_sortrule");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.sortrule));
      },
      
      @"AMapPOISearchBaseRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.offset));
      },
      
      @"AMapPOISearchBaseRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.page));
      },
      
      @"AMapPOISearchBaseRequest::get_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_building");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.building.hash));
      },
      
      @"AMapPOISearchBaseRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireExtension));
      },
      
      @"AMapPOISearchBaseRequest::get_requireSubPOIs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::get_requireSubPOIs");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireSubPOIs));
      },
      
      @"AMapPOIIDSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIIDSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIIDSearchRequest * ref = (AMapPOIIDSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapPOIKeywordsSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapPOIKeywordsSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapPOIKeywordsSearchRequest::get_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_cityLimit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cityLimit));
      },
      
      @"AMapPOIKeywordsSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapPOIAroundSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapPOIAroundSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapPOIAroundSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.radius));
      },
      
      @"AMapPOIAroundSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapPOIPolygonSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapPOIPolygonSearchRequest::get_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::get_polygon");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polygon.hash));
      },
      
      @"AMapPOISearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapPOISearchResponse::get_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::get_suggestion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.suggestion.hash));
      },
      
      @"AMapRoutePOISearchRequest::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origin.hash));
      },
      
      @"AMapRoutePOISearchRequest::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destination.hash));
      },
      
      @"AMapRoutePOISearchRequest::get_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_searchType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.searchType));
      },
      
      @"AMapRoutePOISearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapRoutePOISearchRequest::get_range": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_range");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.range));
      },
      
      @"AMapRoutePOISearchRequest::get_polylineStr": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::get_polylineStr");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polylineStr.hash));
      },
      
      @"AMapRoutePOISearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchResponse * ref = (AMapRoutePOISearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapInputTipsSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapInputTipsSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapInputTipsSearchRequest::get_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_types");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.types.hash));
      },
      
      @"AMapInputTipsSearchRequest::get_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_cityLimit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cityLimit));
      },
      
      @"AMapInputTipsSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapInputTipsSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchResponse * ref = (AMapInputTipsSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapGeocodeSearchRequest::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.address.hash));
      },
      
      @"AMapGeocodeSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapGeocodeSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchResponse * ref = (AMapGeocodeSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapReGeocodeSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireExtension));
      },
      
      @"AMapReGeocodeSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapReGeocodeSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.radius));
      },
      
      @"AMapReGeocodeSearchRequest::get_poitype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::get_poitype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.poitype.hash));
      },
      
      @"AMapReGeocodeSearchResponse::get_regeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchResponse::get_regeocode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchResponse * ref = (AMapReGeocodeSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.regeocode.hash));
      },
      
      @"AMapBusStopSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapBusStopSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapBusStopSearchRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.offset));
      },
      
      @"AMapBusStopSearchRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.page));
      },
      
      @"AMapBusStopSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapBusStopSearchResponse::get_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::get_suggestion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.suggestion.hash));
      },
      
      @"AMapBusLineBaseSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapBusLineBaseSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireExtension));
      },
      
      @"AMapBusLineBaseSearchRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.offset));
      },
      
      @"AMapBusLineBaseSearchRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.page));
      },
      
      @"AMapBusLineNameSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineNameSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineNameSearchRequest * ref = (AMapBusLineNameSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapBusLineIDSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineIDSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineIDSearchRequest * ref = (AMapBusLineIDSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapBusLineSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapBusLineSearchResponse::get_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::get_suggestion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.suggestion.hash));
      },
      
      @"AMapDistrictSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchRequest * ref = (AMapDistrictSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapDistrictSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchResponse * ref = (AMapDistrictSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapRouteSearchBaseRequest::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origin.hash));
      },
      
      @"AMapRouteSearchBaseRequest::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destination.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapDrivingRouteSearchRequest::get_avoidroad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_avoidroad");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.avoidroad.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_originId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.originId.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_destinationId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationId.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_origintype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origintype.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_destinationtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationtype.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireExtension));
      },
      
      @"AMapDrivingRouteSearchRequest::get_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_plateProvince");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.plateProvince.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_plateNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.plateNumber.hash));
      },
      
      @"AMapDrivingRouteSearchRequest::get_ferry": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_ferry");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.ferry));
      },
      
      @"AMapDrivingRouteSearchRequest::get_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::get_cartype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cartype));
      },
      
      @"AMapWalkingRouteSearchRequest::get_multipath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalkingRouteSearchRequest::get_multipath");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalkingRouteSearchRequest * ref = (AMapWalkingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.multipath));
      },
      
      @"AMapTransitRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapTransitRouteSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapTransitRouteSearchRequest::get_destinationCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_destinationCity");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationCity.hash));
      },
      
      @"AMapTransitRouteSearchRequest::get_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_nightflag");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.nightflag));
      },
      
      @"AMapTransitRouteSearchRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireExtension));
      },
      
      @"AMapRidingRouteSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRidingRouteSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRidingRouteSearchRequest * ref = (AMapRidingRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type));
      },
      
      @"AMapRouteSearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapRouteSearchResponse::get_route": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::get_route");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.route.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapTruckRouteSearchRequest::get_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_originId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.originId.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_destinationId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationId.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_origintype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origintype.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_destinationtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationtype.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_plateProvince");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.plateProvince.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_plateNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.plateNumber.hash));
      },
      
      @"AMapTruckRouteSearchRequest::get_size": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_size");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.size));
      },
      
      @"AMapTruckRouteSearchRequest::get_height": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_height");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.height));
      },
      
      @"AMapTruckRouteSearchRequest::get_width": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_width");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.width));
      },
      
      @"AMapTruckRouteSearchRequest::get_load": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_load");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.load));
      },
      
      @"AMapTruckRouteSearchRequest::get_weight": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_weight");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.weight));
      },
      
      @"AMapTruckRouteSearchRequest::get_axis": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::get_axis");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.axis));
      },
      
      @"AMapDistanceSearchRequest::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destination.hash));
      },
      
      @"AMapDistanceSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type));
      },
      
      @"AMapWeatherSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapWeatherSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type));
      },
      
      @"AMapRoadTrafficSearchBaseRequest::get_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::get_level");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.level));
      },
      
      @"AMapRoadTrafficSearchBaseRequest::get_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::get_requireExtension");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.requireExtension));
      },
      
      @"AMapRoadTrafficSearchRequest::get_roadName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::get_roadName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.roadName.hash));
      },
      
      @"AMapRoadTrafficSearchRequest::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapRoadTrafficCircleSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapRoadTrafficCircleSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.radius));
      },
      
      @"AMapRoadTrafficSearchResponse::get_trafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchResponse::get_trafficInfo");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchResponse * ref = (AMapRoadTrafficSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.trafficInfo.hash));
      },
      
      @"AMapNearbySearchRequest::get_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_center");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.center.hash));
      },
      
      @"AMapNearbySearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.radius));
      },
      
      @"AMapNearbySearchRequest::get_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_searchType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.searchType));
      },
      
      @"AMapNearbySearchRequest::get_timeRange": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_timeRange");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.timeRange));
      },
      
      @"AMapNearbySearchRequest::get_limit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::get_limit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.limit));
      },
      
      @"AMapNearbySearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchResponse * ref = (AMapNearbySearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapCloudSearchBaseRequest::get_tableID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_tableID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tableID.hash));
      },
      
      @"AMapCloudSearchBaseRequest::get_sortFields": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_sortFields");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.sortFields.hash));
      },
      
      @"AMapCloudSearchBaseRequest::get_sortType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_sortType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.sortType));
      },
      
      @"AMapCloudSearchBaseRequest::get_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_offset");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.offset));
      },
      
      @"AMapCloudSearchBaseRequest::get_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::get_page");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.page));
      },
      
      @"AMapCloudPOIAroundSearchRequest::get_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::get_center");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.center.hash));
      },
      
      @"AMapCloudPOIAroundSearchRequest::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.radius));
      },
      
      @"AMapCloudPOIAroundSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapCloudPOIPolygonSearchRequest::get_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::get_polygon");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polygon.hash));
      },
      
      @"AMapCloudPOIPolygonSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapCloudPOIIDSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIIDSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIIDSearchRequest * ref = (AMapCloudPOIIDSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid));
      },
      
      @"AMapCloudPOILocalSearchRequest::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.keywords.hash));
      },
      
      @"AMapCloudPOILocalSearchRequest::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapCloudPOISearchResponse::get_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOISearchResponse::get_count");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOISearchResponse * ref = (AMapCloudPOISearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.count));
      },
      
      @"AMapLocationShareSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapLocationShareSearchRequest::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapPOIShareSearchRequest::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapPOIShareSearchRequest::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapPOIShareSearchRequest::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapPOIShareSearchRequest::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.address.hash));
      },
      
      @"AMapRouteShareSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapRouteShareSearchRequest::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type));
      },
      
      @"AMapRouteShareSearchRequest::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.startCoordinate.hash));
      },
      
      @"AMapRouteShareSearchRequest::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationCoordinate.hash));
      },
      
      @"AMapRouteShareSearchRequest::get_startName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_startName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.startName.hash));
      },
      
      @"AMapRouteShareSearchRequest::get_destinationName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::get_destinationName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationName.hash));
      },
      
      @"AMapNavigationShareSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapNavigationShareSearchRequest::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.startCoordinate.hash));
      },
      
      @"AMapNavigationShareSearchRequest::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationCoordinate.hash));
      },
      
      @"AMapShareSearchResponse::get_shareURL": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapShareSearchResponse::get_shareURL");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapShareSearchResponse * ref = (AMapShareSearchResponse *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.shareURL.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_beginTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_beginTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.beginTime.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_interval": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_interval");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.interval));
      },
      
      @"AMapFutureRouteSearchRequest::get_timeCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_timeCount");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.timeCount));
      },
      
      @"AMapFutureRouteSearchRequest::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy));
      },
      
      @"AMapFutureRouteSearchRequest::get_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_originId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.originId.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_destinationId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationId.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_origintype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origintype.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_destinationtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destinationtype.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_parentId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_parentId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.parentId.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_plateProvince");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.plateProvince.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_plateNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.plateNumber.hash));
      },
      
      @"AMapFutureRouteSearchRequest::get_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::get_cartype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cartype));
      },
      
      @"AMapGeoPoint::get_latitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::get_latitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.latitude));
      },
      
      @"AMapGeoPoint::get_longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::get_longitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.longitude));
      },
      
      @"AMapCity::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapCity::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapCity::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapCity::get_num": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::get_num");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.num));
      },
      
      @"AMapTip::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapTip::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapTip::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapTip::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.district.hash));
      },
      
      @"AMapTip::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.address.hash));
      },
      
      @"AMapTip::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapTip::get_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::get_typecode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.typecode.hash));
      },
      
      @"AMapImage::get_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::get_title");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.title.hash));
      },
      
      @"AMapImage::get_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::get_url");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.url.hash));
      },
      
      @"AMapPOIExtension::get_rating": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::get_rating");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.rating));
      },
      
      @"AMapPOIExtension::get_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::get_cost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cost));
      },
      
      @"AMapPOIExtension::get_openTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::get_openTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.openTime.hash));
      },
      
      @"AMapIndoorData::get_floor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::get_floor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.floor));
      },
      
      @"AMapIndoorData::get_floorName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::get_floorName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.floorName.hash));
      },
      
      @"AMapIndoorData::get_pid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::get_pid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.pid.hash));
      },
      
      @"AMapSubPOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapSubPOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapSubPOI::get_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_sname");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.sname.hash));
      },
      
      @"AMapSubPOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapSubPOI::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.address.hash));
      },
      
      @"AMapSubPOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapSubPOI::get_subtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::get_subtype");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.subtype.hash));
      },
      
      @"AMapRoutePOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapRoutePOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapRoutePOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapRoutePOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapRoutePOI::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapPOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapPOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapPOI::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type.hash));
      },
      
      @"AMapPOI::get_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_typecode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.typecode.hash));
      },
      
      @"AMapPOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapPOI::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.address.hash));
      },
      
      @"AMapPOI::get_tel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_tel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tel.hash));
      },
      
      @"AMapPOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapPOI::get_parkingType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_parkingType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.parkingType.hash));
      },
      
      @"AMapPOI::get_shopID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_shopID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.shopID.hash));
      },
      
      @"AMapPOI::get_postcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_postcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.postcode.hash));
      },
      
      @"AMapPOI::get_website": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_website");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.website.hash));
      },
      
      @"AMapPOI::get_email": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_email");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.email.hash));
      },
      
      @"AMapPOI::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.province.hash));
      },
      
      @"AMapPOI::get_pcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_pcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.pcode.hash));
      },
      
      @"AMapPOI::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapPOI::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapPOI::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.district.hash));
      },
      
      @"AMapPOI::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapPOI::get_gridcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_gridcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.gridcode.hash));
      },
      
      @"AMapPOI::get_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_enterLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.enterLocation.hash));
      },
      
      @"AMapPOI::get_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_exitLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.exitLocation.hash));
      },
      
      @"AMapPOI::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.direction.hash));
      },
      
      @"AMapPOI::get_hasIndoorMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_hasIndoorMap");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.hasIndoorMap));
      },
      
      @"AMapPOI::get_businessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_businessArea");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.businessArea.hash));
      },
      
      @"AMapPOI::get_indoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_indoorData");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.indoorData.hash));
      },
      
      @"AMapPOI::get_extensionInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::get_extensionInfo");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.extensionInfo.hash));
      },
      
      @"AMapAOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapAOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapAOI::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapAOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapAOI::get_area": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::get_area");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.area));
      },
      
      @"AMapRoad::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapRoad::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapRoad::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapRoad::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.direction.hash));
      },
      
      @"AMapRoad::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapRoadInter::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapRoadInter::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.direction.hash));
      },
      
      @"AMapRoadInter::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapRoadInter::get_firstId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_firstId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.firstId.hash));
      },
      
      @"AMapRoadInter::get_firstName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_firstName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.firstName.hash));
      },
      
      @"AMapRoadInter::get_secondId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_secondId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.secondId.hash));
      },
      
      @"AMapRoadInter::get_secondName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::get_secondName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.secondName.hash));
      },
      
      @"AMapStreetNumber::get_street": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_street");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.street.hash));
      },
      
      @"AMapStreetNumber::get_number": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_number");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.number.hash));
      },
      
      @"AMapStreetNumber::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapStreetNumber::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapStreetNumber::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.direction.hash));
      },
      
      @"AMapBusinessArea::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapBusinessArea::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapAddressComponent::get_country": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_country");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.country.hash));
      },
      
      @"AMapAddressComponent::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.province.hash));
      },
      
      @"AMapAddressComponent::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapAddressComponent::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapAddressComponent::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.district.hash));
      },
      
      @"AMapAddressComponent::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapAddressComponent::get_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_township");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.township.hash));
      },
      
      @"AMapAddressComponent::get_towncode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_towncode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.towncode.hash));
      },
      
      @"AMapAddressComponent::get_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_neighborhood");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.neighborhood.hash));
      },
      
      @"AMapAddressComponent::get_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_building");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.building.hash));
      },
      
      @"AMapAddressComponent::get_streetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::get_streetNumber");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.streetNumber.hash));
      },
      
      @"AMapReGeocode::get_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_formattedAddress");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.formattedAddress.hash));
      },
      
      @"AMapReGeocode::get_addressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::get_addressComponent");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.addressComponent.hash));
      },
      
      @"AMapGeocode::get_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_formattedAddress");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.formattedAddress.hash));
      },
      
      @"AMapGeocode::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.province.hash));
      },
      
      @"AMapGeocode::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapGeocode::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapGeocode::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.district.hash));
      },
      
      @"AMapGeocode::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapGeocode::get_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_township");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.township.hash));
      },
      
      @"AMapGeocode::get_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_neighborhood");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.neighborhood.hash));
      },
      
      @"AMapGeocode::get_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_building");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.building.hash));
      },
      
      @"AMapGeocode::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapGeocode::get_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::get_level");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.level.hash));
      },
      
      @"AMapBusStop::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapBusStop::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapBusStop::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapBusStop::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapBusStop::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapBusStop::get_sequence": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::get_sequence");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.sequence.hash));
      },
      
      @"AMapBusLine::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapBusLine::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type.hash));
      },
      
      @"AMapBusLine::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapBusLine::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polyline.hash));
      },
      
      @"AMapBusLine::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapBusLine::get_startStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_startStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.startStop.hash));
      },
      
      @"AMapBusLine::get_endStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_endStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.endStop.hash));
      },
      
      @"AMapBusLine::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapBusLine::get_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_startTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.startTime.hash));
      },
      
      @"AMapBusLine::get_endTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_endTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.endTime.hash));
      },
      
      @"AMapBusLine::get_company": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_company");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.company.hash));
      },
      
      @"AMapBusLine::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapBusLine::get_basicPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_basicPrice");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.basicPrice));
      },
      
      @"AMapBusLine::get_totalPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_totalPrice");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.totalPrice));
      },
      
      @"AMapBusLine::get_bounds": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_bounds");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.bounds.hash));
      },
      
      @"AMapBusLine::get_departureStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_departureStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.departureStop.hash));
      },
      
      @"AMapBusLine::get_arrivalStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_arrivalStop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.arrivalStop.hash));
      },
      
      @"AMapBusLine::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapDistrict::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapDistrict::get_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_citycode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.citycode.hash));
      },
      
      @"AMapDistrict::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapDistrict::get_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_level");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.level.hash));
      },
      
      @"AMapDistrict::get_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::get_center");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.center.hash));
      },
      
      @"AMapTMC::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapTMC::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.status.hash));
      },
      
      @"AMapTMC::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polyline.hash));
      },
      
      @"AMapStep::get_instruction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_instruction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.instruction.hash));
      },
      
      @"AMapStep::get_orientation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_orientation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.orientation.hash));
      },
      
      @"AMapStep::get_road": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_road");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.road.hash));
      },
      
      @"AMapStep::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapStep::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapStep::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polyline.hash));
      },
      
      @"AMapStep::get_action": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_action");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.action.hash));
      },
      
      @"AMapStep::get_assistantAction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_assistantAction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.assistantAction.hash));
      },
      
      @"AMapStep::get_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tolls");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tolls));
      },
      
      @"AMapStep::get_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tollDistance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tollDistance));
      },
      
      @"AMapStep::get_tollRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::get_tollRoad");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tollRoad.hash));
      },
      
      @"AMapPath::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapPath::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapPath::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.strategy.hash));
      },
      
      @"AMapPath::get_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_tolls");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tolls));
      },
      
      @"AMapPath::get_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_tollDistance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tollDistance));
      },
      
      @"AMapPath::get_totalTrafficLights": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_totalTrafficLights");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.totalTrafficLights));
      },
      
      @"AMapPath::get_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::get_restriction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.restriction));
      },
      
      @"AMapFutureTimeInfoElement::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapFutureTimeInfoElement::get_pathindex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_pathindex");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.pathindex));
      },
      
      @"AMapFutureTimeInfoElement::get_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::get_restriction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.restriction));
      },
      
      @"AMapFutureTimeInfo::get_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfo::get_startTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfo * ref = (AMapFutureTimeInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.startTime.hash));
      },
      
      @"AMapWalking::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origin.hash));
      },
      
      @"AMapWalking::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destination.hash));
      },
      
      @"AMapWalking::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapWalking::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapTaxi::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origin.hash));
      },
      
      @"AMapTaxi::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destination.hash));
      },
      
      @"AMapTaxi::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapTaxi::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapTaxi::get_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_sname");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.sname.hash));
      },
      
      @"AMapTaxi::get_tname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::get_tname");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.tname.hash));
      },
      
      @"AMapRailwayStation::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapRailwayStation::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapRailwayStation::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapRailwayStation::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapRailwayStation::get_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_time");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.time.hash));
      },
      
      @"AMapRailwayStation::get_wait": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_wait");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.wait));
      },
      
      @"AMapRailwayStation::get_isStart": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_isStart");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.isStart));
      },
      
      @"AMapRailwayStation::get_isEnd": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::get_isEnd");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.isEnd));
      },
      
      @"AMapRailwaySpace::get_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::get_code");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.code.hash));
      },
      
      @"AMapRailwaySpace::get_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::get_cost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cost));
      },
      
      @"AMapRailway::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapRailway::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapRailway::get_trip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_trip");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.trip.hash));
      },
      
      @"AMapRailway::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.type.hash));
      },
      
      @"AMapRailway::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapRailway::get_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_time");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.time));
      },
      
      @"AMapRailway::get_departureStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_departureStation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.departureStation.hash));
      },
      
      @"AMapRailway::get_arrivalStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::get_arrivalStation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.arrivalStation.hash));
      },
      
      @"AMapSegment::get_walking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_walking");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.walking.hash));
      },
      
      @"AMapSegment::get_taxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_taxi");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.taxi.hash));
      },
      
      @"AMapSegment::get_railway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_railway");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.railway.hash));
      },
      
      @"AMapSegment::get_enterName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_enterName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.enterName.hash));
      },
      
      @"AMapSegment::get_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_enterLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.enterLocation.hash));
      },
      
      @"AMapSegment::get_exitName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_exitName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.exitName.hash));
      },
      
      @"AMapSegment::get_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::get_exitLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.exitLocation.hash));
      },
      
      @"AMapTransit::get_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_cost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.cost));
      },
      
      @"AMapTransit::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapTransit::get_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_nightflag");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.nightflag));
      },
      
      @"AMapTransit::get_walkingDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_walkingDistance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.walkingDistance));
      },
      
      @"AMapTransit::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapRoute::get_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_origin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.origin.hash));
      },
      
      @"AMapRoute::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destination.hash));
      },
      
      @"AMapRoute::get_taxiCost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::get_taxiCost");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.taxiCost));
      },
      
      @"AMapDistanceResult::get_originID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_originID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.originID));
      },
      
      @"AMapDistanceResult::get_destID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_destID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.destID));
      },
      
      @"AMapDistanceResult::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapDistanceResult::get_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_duration");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.duration));
      },
      
      @"AMapDistanceResult::get_info": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_info");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.info.hash));
      },
      
      @"AMapDistanceResult::get_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::get_code");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.code));
      },
      
      @"AMapLocalWeatherLive::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapLocalWeatherLive::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.province.hash));
      },
      
      @"AMapLocalWeatherLive::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapLocalWeatherLive::get_weather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_weather");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.weather.hash));
      },
      
      @"AMapLocalWeatherLive::get_temperature": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_temperature");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.temperature.hash));
      },
      
      @"AMapLocalWeatherLive::get_windDirection": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_windDirection");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.windDirection.hash));
      },
      
      @"AMapLocalWeatherLive::get_windPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_windPower");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.windPower.hash));
      },
      
      @"AMapLocalWeatherLive::get_humidity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_humidity");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.humidity.hash));
      },
      
      @"AMapLocalWeatherLive::get_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::get_reportTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.reportTime.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_date": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_date");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.date.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_week": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_week");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.week.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_dayWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayWeather");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.dayWeather.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_nightWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightWeather");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.nightWeather.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_dayTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayTemp");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.dayTemp.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_nightTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightTemp");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.nightTemp.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_dayWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayWind");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.dayWind.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_nightWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightWind");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.nightWind.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_dayPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_dayPower");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.dayPower.hash));
      },
      
      @"AMapLocalDayWeatherForecast::get_nightPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::get_nightPower");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.nightPower.hash));
      },
      
      @"AMapLocalWeatherForecast::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.adcode.hash));
      },
      
      @"AMapLocalWeatherForecast::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.province.hash));
      },
      
      @"AMapLocalWeatherForecast::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.city.hash));
      },
      
      @"AMapLocalWeatherForecast::get_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::get_reportTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.reportTime.hash));
      },
      
      @"AMapNearbyUserInfo::get_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::get_userID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.userID.hash));
      },
      
      @"AMapNearbyUserInfo::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapNearbyUserInfo::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapTrafficEvaluation::get_evaluationDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_evaluationDescription");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.evaluationDescription.hash));
      },
      
      @"AMapTrafficEvaluation::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.status));
      },
      
      @"AMapTrafficEvaluation::get_expedite": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_expedite");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.expedite.hash));
      },
      
      @"AMapTrafficEvaluation::get_congested": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_congested");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.congested.hash));
      },
      
      @"AMapTrafficEvaluation::get_blocked": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_blocked");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.blocked.hash));
      },
      
      @"AMapTrafficEvaluation::get_unknown": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::get_unknown");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.unknown.hash));
      },
      
      @"AMapTrafficRoad::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapTrafficRoad::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.status));
      },
      
      @"AMapTrafficRoad::get_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_direction");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.direction.hash));
      },
      
      @"AMapTrafficRoad::get_angle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_angle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.angle));
      },
      
      @"AMapTrafficRoad::get_speed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_speed");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.speed));
      },
      
      @"AMapTrafficRoad::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.polyline.hash));
      },
      
      @"AMapTrafficInfo::get_statusDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::get_statusDescription");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.statusDescription.hash));
      },
      
      @"AMapTrafficInfo::get_evaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::get_evaluation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.evaluation.hash));
      },
      
      @"AMapCloudImage::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid.hash));
      },
      
      @"AMapCloudImage::get_preurl": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::get_preurl");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.preurl.hash));
      },
      
      @"AMapCloudImage::get_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::get_url");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.url.hash));
      },
      
      @"AMapCloudPOI::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.uid));
      },
      
      @"AMapCloudPOI::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.name.hash));
      },
      
      @"AMapCloudPOI::get_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_location");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.location.hash));
      },
      
      @"AMapCloudPOI::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.address.hash));
      },
      
      @"AMapCloudPOI::get_createTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_createTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.createTime.hash));
      },
      
      @"AMapCloudPOI::get_updateTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_updateTime");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.updateTime.hash));
      },
      
      @"AMapCloudPOI::get_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::get_distance");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.distance));
      },
      
      @"AMapNearbyUploadInfo::get_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::get_userID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.userID.hash));
      },
      
      @"AMapNearbyUploadInfo::get_coordinateType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::get_coordinateType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.coordinateType));
      },
      
      @"AMapNearbyUploadInfo::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) REF_MAP[@(refId)];
      
          NSLog(@"AMapNearbyUploadInfo::get_coordinate:结构体getter暂时不支持");
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapSearchAPI::get_delegate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::get_delegate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.delegate.hash));
      },
      
      @"AMapSearchAPI::get_timeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::get_timeout");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.timeout));
      },
      
      @"AMapSearchAPI::get_language": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::get_language");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
      
      
          methodResult(@(ref.language));
      },
      
      @"AMapNaviConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString * appScheme = (NSString *) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString * appName = (NSString *) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_destination");
      
          // 参数
          // 结构体参数
          NSValue* destinationValue = (NSValue*) REF_MAP[@([args[@"destination"] integerValue])];
          CLLocationCoordinate2D destination;
          [destinationValue getValue:&destination];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_strategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy strategy = (AMapDrivingStrategy) [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig * ref = (AMapNaviConfig *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString * appScheme = (NSString *) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString * appName = (NSString *) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_startCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* startCoordinateValue = (NSValue*) REF_MAP[@([args[@"startCoordinate"] integerValue])];
          CLLocationCoordinate2D startCoordinate;
          [startCoordinateValue getValue:&startCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_destinationCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* destinationCoordinateValue = (NSValue*) REF_MAP[@([args[@"destinationCoordinate"] integerValue])];
          CLLocationCoordinate2D destinationCoordinate;
          [destinationCoordinateValue getValue:&destinationCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_drivingStrategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy drivingStrategy = (AMapDrivingStrategy) [args[@"drivingStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.drivingStrategy = drivingStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_transitStrategy");
      
          // 参数
          // 枚举参数
          AMapTransitStrategy transitStrategy = (AMapTransitStrategy) [args[@"transitStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.transitStrategy = transitStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_routeType");
      
          // 参数
          // 枚举参数
          AMapRouteSearchType routeType = (AMapRouteSearchType) [args[@"routeType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig * ref = (AMapRouteConfig *) REF_MAP[@(refId)];
      
          ref.routeType = routeType;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString * appScheme = (NSString *) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString * appName = (NSString *) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_leftTopCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* leftTopCoordinateValue = (NSValue*) REF_MAP[@([args[@"leftTopCoordinate"] integerValue])];
          CLLocationCoordinate2D leftTopCoordinate;
          [leftTopCoordinateValue getValue:&leftTopCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          ref.leftTopCoordinate = leftTopCoordinate;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_rightBottomCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* rightBottomCoordinateValue = (NSValue*) REF_MAP[@([args[@"rightBottomCoordinate"] integerValue])];
          CLLocationCoordinate2D rightBottomCoordinate;
          [rightBottomCoordinateValue getValue:&rightBottomCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig * ref = (AMapPOIConfig *) REF_MAP[@(refId)];
      
          ref.rightBottomCoordinate = rightBottomCoordinate;
          methodResult(@"success");
      },
      
      @"AMapServices::set_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_apiKey");
      
          // 参数
          // jsonable参数
          NSString * apiKey = (NSString *) args[@"apiKey"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
          ref.apiKey = apiKey;
          methodResult(@"success");
      },
      
      @"AMapServices::set_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_enableHTTPS");
      
          // 参数
          // jsonable参数
          BOOL enableHTTPS = [args[@"enableHTTPS"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
          ref.enableHTTPS = enableHTTPS;
          methodResult(@"success");
      },
      
      @"AMapServices::set_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_crashReportEnabled");
      
          // 参数
          // jsonable参数
          BOOL crashReportEnabled = [args[@"crashReportEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices * ref = (AMapServices *) REF_MAP[@(refId)];
      
          ref.crashReportEnabled = crashReportEnabled;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_types");
      
          // 参数
          // jsonable参数
          NSString * types = (NSString *) args[@"types"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.types = types;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_sortrule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_sortrule");
      
          // 参数
          // jsonable参数
          NSInteger sortrule = [args[@"sortrule"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.sortrule = sortrule;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_building");
      
          // 参数
          // jsonable参数
          NSString * building = (NSString *) args[@"building"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.building = building;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapPOISearchBaseRequest::set_requireSubPOIs": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchBaseRequest::set_requireSubPOIs");
      
          // 参数
          // jsonable参数
          BOOL requireSubPOIs = [args[@"requireSubPOIs"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchBaseRequest * ref = (AMapPOISearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.requireSubPOIs = requireSubPOIs;
          methodResult(@"success");
      },
      
      @"AMapPOIIDSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIIDSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIIDSearchRequest * ref = (AMapPOIIDSearchRequest *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_cityLimit");
      
          // 参数
          // jsonable参数
          BOOL cityLimit = [args[@"cityLimit"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
          ref.cityLimit = cityLimit;
          methodResult(@"success");
      },
      
      @"AMapPOIKeywordsSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIKeywordsSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIKeywordsSearchRequest * ref = (AMapPOIKeywordsSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapPOIAroundSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIAroundSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIAroundSearchRequest * ref = (AMapPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapPOIPolygonSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIPolygonSearchRequest::set_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIPolygonSearchRequest::set_polygon");
      
          // 参数
          // 引用参数
          AMapGeoPolygon * polygon = (AMapGeoPolygon *) REF_MAP[@([args[@"polygon"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIPolygonSearchRequest * ref = (AMapPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
          ref.polygon = polygon;
          methodResult(@"success");
      },
      
      @"AMapPOISearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapPOISearchResponse::set_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOISearchResponse::set_suggestion");
      
          // 参数
          // 引用参数
          AMapSuggestion * suggestion = (AMapSuggestion *) REF_MAP[@([args[@"suggestion"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOISearchResponse * ref = (AMapPOISearchResponse *) REF_MAP[@(refId)];
      
          ref.suggestion = suggestion;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) REF_MAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) REF_MAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_searchType");
      
          // 参数
          // 枚举参数
          AMapRoutePOISearchType searchType = (AMapRoutePOISearchType) [args[@"searchType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
          ref.searchType = searchType;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_range": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_range");
      
          // 参数
          // jsonable参数
          NSInteger range = [args[@"range"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
          ref.range = range;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchRequest::set_polylineStr": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchRequest::set_polylineStr");
      
          // 参数
          // jsonable参数
          NSString * polylineStr = (NSString *) args[@"polylineStr"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchRequest * ref = (AMapRoutePOISearchRequest *) REF_MAP[@(refId)];
      
          ref.polylineStr = polylineStr;
          methodResult(@"success");
      },
      
      @"AMapRoutePOISearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOISearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOISearchResponse * ref = (AMapRoutePOISearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_types": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_types");
      
          // 参数
          // jsonable参数
          NSString * types = (NSString *) args[@"types"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
          ref.types = types;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_cityLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_cityLimit");
      
          // 参数
          // jsonable参数
          BOOL cityLimit = [args[@"cityLimit"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
          ref.cityLimit = cityLimit;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchRequest::set_location");
      
          // 参数
          // jsonable参数
          NSString * location = (NSString *) args[@"location"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchRequest * ref = (AMapInputTipsSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapInputTipsSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapInputTipsSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapInputTipsSearchResponse * ref = (AMapInputTipsSearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapGeocodeSearchRequest::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) REF_MAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapGeocodeSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchRequest * ref = (AMapGeocodeSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapGeocodeSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocodeSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocodeSearchResponse * ref = (AMapGeocodeSearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchRequest::set_poitype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchRequest::set_poitype");
      
          // 参数
          // jsonable参数
          NSString * poitype = (NSString *) args[@"poitype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchRequest * ref = (AMapReGeocodeSearchRequest *) REF_MAP[@(refId)];
      
          ref.poitype = poitype;
          methodResult(@"success");
      },
      
      @"AMapReGeocodeSearchResponse::set_regeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocodeSearchResponse::set_regeocode");
      
          // 参数
          // 引用参数
          AMapReGeocode * regeocode = (AMapReGeocode *) REF_MAP[@([args[@"regeocode"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocodeSearchResponse * ref = (AMapReGeocodeSearchResponse *) REF_MAP[@(refId)];
      
          ref.regeocode = regeocode;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchRequest * ref = (AMapBusStopSearchRequest *) REF_MAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapBusStopSearchResponse::set_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStopSearchResponse::set_suggestion");
      
          // 参数
          // 引用参数
          AMapSuggestion * suggestion = (AMapSuggestion *) REF_MAP[@([args[@"suggestion"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStopSearchResponse * ref = (AMapBusStopSearchResponse *) REF_MAP[@(refId)];
      
          ref.suggestion = suggestion;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapBusLineBaseSearchRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineBaseSearchRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineBaseSearchRequest * ref = (AMapBusLineBaseSearchRequest *) REF_MAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapBusLineNameSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineNameSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineNameSearchRequest * ref = (AMapBusLineNameSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapBusLineIDSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineIDSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineIDSearchRequest * ref = (AMapBusLineIDSearchRequest *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapBusLineSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapBusLineSearchResponse::set_suggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLineSearchResponse::set_suggestion");
      
          // 参数
          // 引用参数
          AMapSuggestion * suggestion = (AMapSuggestion *) REF_MAP[@([args[@"suggestion"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLineSearchResponse * ref = (AMapBusLineSearchResponse *) REF_MAP[@(refId)];
      
          ref.suggestion = suggestion;
          methodResult(@"success");
      },
      
      @"AMapDistrictSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchRequest * ref = (AMapDistrictSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapDistrictSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrictSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrictSearchResponse * ref = (AMapDistrictSearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchBaseRequest::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) REF_MAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchBaseRequest::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchBaseRequest::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) REF_MAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchBaseRequest * ref = (AMapRouteSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_avoidroad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_avoidroad");
      
          // 参数
          // jsonable参数
          NSString * avoidroad = (NSString *) args[@"avoidroad"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.avoidroad = avoidroad;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_originId");
      
          // 参数
          // jsonable参数
          NSString * originId = (NSString *) args[@"originId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.originId = originId;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_destinationId");
      
          // 参数
          // jsonable参数
          NSString * destinationId = (NSString *) args[@"destinationId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationId = destinationId;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_origintype");
      
          // 参数
          // jsonable参数
          NSString * origintype = (NSString *) args[@"origintype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.origintype = origintype;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_destinationtype");
      
          // 参数
          // jsonable参数
          NSString * destinationtype = (NSString *) args[@"destinationtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationtype = destinationtype;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_plateProvince");
      
          // 参数
          // jsonable参数
          NSString * plateProvince = (NSString *) args[@"plateProvince"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.plateProvince = plateProvince;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_plateNumber");
      
          // 参数
          // jsonable参数
          NSString * plateNumber = (NSString *) args[@"plateNumber"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.plateNumber = plateNumber;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_ferry": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_ferry");
      
          // 参数
          // jsonable参数
          NSInteger ferry = [args[@"ferry"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.ferry = ferry;
          methodResult(@"success");
      },
      
      @"AMapDrivingRouteSearchRequest::set_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDrivingRouteSearchRequest::set_cartype");
      
          // 参数
          // jsonable参数
          NSInteger cartype = [args[@"cartype"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDrivingRouteSearchRequest * ref = (AMapDrivingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.cartype = cartype;
          methodResult(@"success");
      },
      
      @"AMapWalkingRouteSearchRequest::set_multipath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalkingRouteSearchRequest::set_multipath");
      
          // 参数
          // jsonable参数
          NSInteger multipath = [args[@"multipath"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalkingRouteSearchRequest * ref = (AMapWalkingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.multipath = multipath;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_destinationCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_destinationCity");
      
          // 参数
          // jsonable参数
          NSString * destinationCity = (NSString *) args[@"destinationCity"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationCity = destinationCity;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_nightflag");
      
          // 参数
          // jsonable参数
          BOOL nightflag = [args[@"nightflag"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.nightflag = nightflag;
          methodResult(@"success");
      },
      
      @"AMapTransitRouteSearchRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransitRouteSearchRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransitRouteSearchRequest * ref = (AMapTransitRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapRidingRouteSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRidingRouteSearchRequest::set_type");
      
          // 参数
          // jsonable参数
          NSInteger type = [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRidingRouteSearchRequest * ref = (AMapRidingRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapRouteSearchResponse::set_route": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteSearchResponse::set_route");
      
          // 参数
          // 引用参数
          AMapRoute * route = (AMapRoute *) REF_MAP[@([args[@"route"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteSearchResponse * ref = (AMapRouteSearchResponse *) REF_MAP[@(refId)];
      
          ref.route = route;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_originId");
      
          // 参数
          // jsonable参数
          NSString * originId = (NSString *) args[@"originId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.originId = originId;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_destinationId");
      
          // 参数
          // jsonable参数
          NSString * destinationId = (NSString *) args[@"destinationId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationId = destinationId;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_origintype");
      
          // 参数
          // jsonable参数
          NSString * origintype = (NSString *) args[@"origintype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.origintype = origintype;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_destinationtype");
      
          // 参数
          // jsonable参数
          NSString * destinationtype = (NSString *) args[@"destinationtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationtype = destinationtype;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_plateProvince");
      
          // 参数
          // jsonable参数
          NSString * plateProvince = (NSString *) args[@"plateProvince"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.plateProvince = plateProvince;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_plateNumber");
      
          // 参数
          // jsonable参数
          NSString * plateNumber = (NSString *) args[@"plateNumber"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.plateNumber = plateNumber;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_size": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_size");
      
          // 参数
          // 枚举参数
          AMapTruckSizeType size = (AMapTruckSizeType) [args[@"size"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.size = size;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_height": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_height");
      
          // 参数
          // jsonable参数
          CGFloat height = [args[@"height"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.height = height;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_width": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_width");
      
          // 参数
          // jsonable参数
          CGFloat width = [args[@"width"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.width = width;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_load": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_load");
      
          // 参数
          // jsonable参数
          CGFloat load = [args[@"load"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.load = load;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_weight": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_weight");
      
          // 参数
          // jsonable参数
          CGFloat weight = [args[@"weight"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.weight = weight;
          methodResult(@"success");
      },
      
      @"AMapTruckRouteSearchRequest::set_axis": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTruckRouteSearchRequest::set_axis");
      
          // 参数
          // jsonable参数
          NSInteger axis = [args[@"axis"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTruckRouteSearchRequest * ref = (AMapTruckRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.axis = axis;
          methodResult(@"success");
      },
      
      @"AMapDistanceSearchRequest::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) REF_MAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapDistanceSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceSearchRequest::set_type");
      
          // 参数
          // jsonable参数
          NSInteger type = [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceSearchRequest * ref = (AMapDistanceSearchRequest *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapWeatherSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapWeatherSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWeatherSearchRequest::set_type");
      
          // 参数
          // 枚举参数
          AMapWeatherType type = (AMapWeatherType) [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWeatherSearchRequest * ref = (AMapWeatherSearchRequest *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchBaseRequest::set_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::set_level");
      
          // 参数
          // jsonable参数
          NSInteger level = [args[@"level"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.level = level;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchBaseRequest::set_requireExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchBaseRequest::set_requireExtension");
      
          // 参数
          // jsonable参数
          BOOL requireExtension = [args[@"requireExtension"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchBaseRequest * ref = (AMapRoadTrafficSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.requireExtension = requireExtension;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchRequest::set_roadName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::set_roadName");
      
          // 参数
          // jsonable参数
          NSString * roadName = (NSString *) args[@"roadName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) REF_MAP[@(refId)];
      
          ref.roadName = roadName;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchRequest::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchRequest::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchRequest * ref = (AMapRoadTrafficSearchRequest *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficCircleSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficCircleSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficCircleSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficCircleSearchRequest * ref = (AMapRoadTrafficCircleSearchRequest *) REF_MAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapRoadTrafficSearchResponse::set_trafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadTrafficSearchResponse::set_trafficInfo");
      
          // 参数
          // 引用参数
          AMapTrafficInfo * trafficInfo = (AMapTrafficInfo *) REF_MAP[@([args[@"trafficInfo"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadTrafficSearchResponse * ref = (AMapRoadTrafficSearchResponse *) REF_MAP[@(refId)];
      
          ref.trafficInfo = trafficInfo;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_center");
      
          // 参数
          // 引用参数
          AMapGeoPoint * center = (AMapGeoPoint *) REF_MAP[@([args[@"center"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
          ref.center = center;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_searchType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_searchType");
      
          // 参数
          // 枚举参数
          AMapNearbySearchType searchType = (AMapNearbySearchType) [args[@"searchType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
          ref.searchType = searchType;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_timeRange": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_timeRange");
      
          // 参数
          // jsonable参数
          NSInteger timeRange = [args[@"timeRange"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
          ref.timeRange = timeRange;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchRequest::set_limit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchRequest::set_limit");
      
          // 参数
          // jsonable参数
          NSInteger limit = [args[@"limit"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchRequest * ref = (AMapNearbySearchRequest *) REF_MAP[@(refId)];
      
          ref.limit = limit;
          methodResult(@"success");
      },
      
      @"AMapNearbySearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbySearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbySearchResponse * ref = (AMapNearbySearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_tableID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_tableID");
      
          // 参数
          // jsonable参数
          NSString * tableID = (NSString *) args[@"tableID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.tableID = tableID;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_sortFields": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_sortFields");
      
          // 参数
          // jsonable参数
          NSString * sortFields = (NSString *) args[@"sortFields"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.sortFields = sortFields;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_sortType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_sortType");
      
          // 参数
          // 枚举参数
          AMapCloudSortType sortType = (AMapCloudSortType) [args[@"sortType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.sortType = sortType;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_offset": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_offset");
      
          // 参数
          // jsonable参数
          NSInteger offset = [args[@"offset"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.offset = offset;
          methodResult(@"success");
      },
      
      @"AMapCloudSearchBaseRequest::set_page": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudSearchBaseRequest::set_page");
      
          // 参数
          // jsonable参数
          NSInteger page = [args[@"page"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudSearchBaseRequest * ref = (AMapCloudSearchBaseRequest *) REF_MAP[@(refId)];
      
          ref.page = page;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIAroundSearchRequest::set_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::set_center");
      
          // 参数
          // 引用参数
          AMapGeoPoint * center = (AMapGeoPoint *) REF_MAP[@([args[@"center"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.center = center;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIAroundSearchRequest::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIAroundSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIAroundSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIAroundSearchRequest * ref = (AMapCloudPOIAroundSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIPolygonSearchRequest::set_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::set_polygon");
      
          // 参数
          // 引用参数
          AMapGeoPolygon * polygon = (AMapGeoPolygon *) REF_MAP[@([args[@"polygon"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
          ref.polygon = polygon;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIPolygonSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIPolygonSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIPolygonSearchRequest * ref = (AMapCloudPOIPolygonSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapCloudPOIIDSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOIIDSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSInteger uid = [args[@"uid"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOIIDSearchRequest * ref = (AMapCloudPOIIDSearchRequest *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapCloudPOILocalSearchRequest::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::set_keywords");
      
          // 参数
          // jsonable参数
          NSString * keywords = (NSString *) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) REF_MAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapCloudPOILocalSearchRequest::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOILocalSearchRequest::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOILocalSearchRequest * ref = (AMapCloudPOILocalSearchRequest *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapCloudPOISearchResponse::set_count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOISearchResponse::set_count");
      
          // 参数
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOISearchResponse * ref = (AMapCloudPOISearchResponse *) REF_MAP[@(refId)];
      
          ref.count = count;
          methodResult(@"success");
      },
      
      @"AMapLocationShareSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapLocationShareSearchRequest::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationShareSearchRequest::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationShareSearchRequest * ref = (AMapLocationShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapPOIShareSearchRequest::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIShareSearchRequest::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIShareSearchRequest * ref = (AMapPOIShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_type");
      
          // 参数
          // jsonable参数
          NSInteger type = [args[@"type"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_startCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * startCoordinate = (AMapGeoPoint *) REF_MAP[@([args[@"startCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_destinationCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destinationCoordinate = (AMapGeoPoint *) REF_MAP[@([args[@"destinationCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_startName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_startName");
      
          // 参数
          // jsonable参数
          NSString * startName = (NSString *) args[@"startName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.startName = startName;
          methodResult(@"success");
      },
      
      @"AMapRouteShareSearchRequest::set_destinationName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteShareSearchRequest::set_destinationName");
      
          // 参数
          // jsonable参数
          NSString * destinationName = (NSString *) args[@"destinationName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteShareSearchRequest * ref = (AMapRouteShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationName = destinationName;
          methodResult(@"success");
      },
      
      @"AMapNavigationShareSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapNavigationShareSearchRequest::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::set_startCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * startCoordinate = (AMapGeoPoint *) REF_MAP[@([args[@"startCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapNavigationShareSearchRequest::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNavigationShareSearchRequest::set_destinationCoordinate");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destinationCoordinate = (AMapGeoPoint *) REF_MAP[@([args[@"destinationCoordinate"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNavigationShareSearchRequest * ref = (AMapNavigationShareSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapShareSearchResponse::set_shareURL": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapShareSearchResponse::set_shareURL");
      
          // 参数
          // jsonable参数
          NSString * shareURL = (NSString *) args[@"shareURL"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapShareSearchResponse * ref = (AMapShareSearchResponse *) REF_MAP[@(refId)];
      
          ref.shareURL = shareURL;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_beginTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_beginTime");
      
          // 参数
          // jsonable参数
          NSString * beginTime = (NSString *) args[@"beginTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.beginTime = beginTime;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_interval": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_interval");
      
          // 参数
          // jsonable参数
          NSInteger interval = [args[@"interval"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.interval = interval;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_timeCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_timeCount");
      
          // 参数
          // jsonable参数
          NSInteger timeCount = [args[@"timeCount"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.timeCount = timeCount;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_strategy");
      
          // 参数
          // jsonable参数
          NSInteger strategy = [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_originId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_originId");
      
          // 参数
          // jsonable参数
          NSString * originId = (NSString *) args[@"originId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.originId = originId;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_destinationId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_destinationId");
      
          // 参数
          // jsonable参数
          NSString * destinationId = (NSString *) args[@"destinationId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationId = destinationId;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_origintype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_origintype");
      
          // 参数
          // jsonable参数
          NSString * origintype = (NSString *) args[@"origintype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.origintype = origintype;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_destinationtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_destinationtype");
      
          // 参数
          // jsonable参数
          NSString * destinationtype = (NSString *) args[@"destinationtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.destinationtype = destinationtype;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_parentId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_parentId");
      
          // 参数
          // jsonable参数
          NSString * parentId = (NSString *) args[@"parentId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.parentId = parentId;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_plateProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_plateProvince");
      
          // 参数
          // jsonable参数
          NSString * plateProvince = (NSString *) args[@"plateProvince"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.plateProvince = plateProvince;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_plateNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_plateNumber");
      
          // 参数
          // jsonable参数
          NSString * plateNumber = (NSString *) args[@"plateNumber"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.plateNumber = plateNumber;
          methodResult(@"success");
      },
      
      @"AMapFutureRouteSearchRequest::set_cartype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureRouteSearchRequest::set_cartype");
      
          // 参数
          // jsonable参数
          NSInteger cartype = [args[@"cartype"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureRouteSearchRequest * ref = (AMapFutureRouteSearchRequest *) REF_MAP[@(refId)];
      
          ref.cartype = cartype;
          methodResult(@"success");
      },
      
      @"AMapGeoPoint::set_latitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::set_latitude");
      
          // 参数
          // jsonable参数
          CGFloat latitude = [args[@"latitude"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) REF_MAP[@(refId)];
      
          ref.latitude = latitude;
          methodResult(@"success");
      },
      
      @"AMapGeoPoint::set_longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoPoint::set_longitude");
      
          // 参数
          // jsonable参数
          CGFloat longitude = [args[@"longitude"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoPoint * ref = (AMapGeoPoint *) REF_MAP[@(refId)];
      
          ref.longitude = longitude;
          methodResult(@"success");
      },
      
      @"AMapCity::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapCity::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapCity::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapCity::set_num": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCity::set_num");
      
          // 参数
          // jsonable参数
          NSInteger num = [args[@"num"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCity * ref = (AMapCity *) REF_MAP[@(refId)];
      
          ref.num = num;
          methodResult(@"success");
      },
      
      @"AMapTip::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapTip::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapTip::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapTip::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapTip::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapTip::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapTip::set_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTip::set_typecode");
      
          // 参数
          // jsonable参数
          NSString * typecode = (NSString *) args[@"typecode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTip * ref = (AMapTip *) REF_MAP[@(refId)];
      
          ref.typecode = typecode;
          methodResult(@"success");
      },
      
      @"AMapImage::set_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::set_title");
      
          // 参数
          // jsonable参数
          NSString * title = (NSString *) args[@"title"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) REF_MAP[@(refId)];
      
          ref.title = title;
          methodResult(@"success");
      },
      
      @"AMapImage::set_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapImage::set_url");
      
          // 参数
          // jsonable参数
          NSString * url = (NSString *) args[@"url"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapImage * ref = (AMapImage *) REF_MAP[@(refId)];
      
          ref.url = url;
          methodResult(@"success");
      },
      
      @"AMapPOIExtension::set_rating": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::set_rating");
      
          // 参数
          // jsonable参数
          CGFloat rating = [args[@"rating"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) REF_MAP[@(refId)];
      
          ref.rating = rating;
          methodResult(@"success");
      },
      
      @"AMapPOIExtension::set_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::set_cost");
      
          // 参数
          // jsonable参数
          CGFloat cost = [args[@"cost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) REF_MAP[@(refId)];
      
          ref.cost = cost;
          methodResult(@"success");
      },
      
      @"AMapPOIExtension::set_openTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIExtension::set_openTime");
      
          // 参数
          // jsonable参数
          NSString * openTime = (NSString *) args[@"openTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIExtension * ref = (AMapPOIExtension *) REF_MAP[@(refId)];
      
          ref.openTime = openTime;
          methodResult(@"success");
      },
      
      @"AMapIndoorData::set_floor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::set_floor");
      
          // 参数
          // jsonable参数
          NSInteger floor = [args[@"floor"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) REF_MAP[@(refId)];
      
          ref.floor = floor;
          methodResult(@"success");
      },
      
      @"AMapIndoorData::set_floorName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::set_floorName");
      
          // 参数
          // jsonable参数
          NSString * floorName = (NSString *) args[@"floorName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) REF_MAP[@(refId)];
      
          ref.floorName = floorName;
          methodResult(@"success");
      },
      
      @"AMapIndoorData::set_pid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapIndoorData::set_pid");
      
          // 参数
          // jsonable参数
          NSString * pid = (NSString *) args[@"pid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapIndoorData * ref = (AMapIndoorData *) REF_MAP[@(refId)];
      
          ref.pid = pid;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_sname");
      
          // 参数
          // jsonable参数
          NSString * sname = (NSString *) args[@"sname"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.sname = sname;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapSubPOI::set_subtype": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSubPOI::set_subtype");
      
          // 参数
          // jsonable参数
          NSString * subtype = (NSString *) args[@"subtype"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSubPOI * ref = (AMapSubPOI *) REF_MAP[@(refId)];
      
          ref.subtype = subtype;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoutePOI::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoutePOI::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoutePOI * ref = (AMapRoutePOI *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_type");
      
          // 参数
          // jsonable参数
          NSString * type = (NSString *) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_typecode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_typecode");
      
          // 参数
          // jsonable参数
          NSString * typecode = (NSString *) args[@"typecode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.typecode = typecode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_tel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_tel");
      
          // 参数
          // jsonable参数
          NSString * tel = (NSString *) args[@"tel"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.tel = tel;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_parkingType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_parkingType");
      
          // 参数
          // jsonable参数
          NSString * parkingType = (NSString *) args[@"parkingType"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.parkingType = parkingType;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_shopID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_shopID");
      
          // 参数
          // jsonable参数
          NSString * shopID = (NSString *) args[@"shopID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.shopID = shopID;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_postcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_postcode");
      
          // 参数
          // jsonable参数
          NSString * postcode = (NSString *) args[@"postcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.postcode = postcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_website": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_website");
      
          // 参数
          // jsonable参数
          NSString * website = (NSString *) args[@"website"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.website = website;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_email": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_email");
      
          // 参数
          // jsonable参数
          NSString * email = (NSString *) args[@"email"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.email = email;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_pcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_pcode");
      
          // 参数
          // jsonable参数
          NSString * pcode = (NSString *) args[@"pcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.pcode = pcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_gridcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_gridcode");
      
          // 参数
          // jsonable参数
          NSString * gridcode = (NSString *) args[@"gridcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.gridcode = gridcode;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_enterLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * enterLocation = (AMapGeoPoint *) REF_MAP[@([args[@"enterLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.enterLocation = enterLocation;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_exitLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * exitLocation = (AMapGeoPoint *) REF_MAP[@([args[@"exitLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.exitLocation = exitLocation;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_hasIndoorMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_hasIndoorMap");
      
          // 参数
          // jsonable参数
          BOOL hasIndoorMap = [args[@"hasIndoorMap"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.hasIndoorMap = hasIndoorMap;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_businessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_businessArea");
      
          // 参数
          // jsonable参数
          NSString * businessArea = (NSString *) args[@"businessArea"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.businessArea = businessArea;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_indoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_indoorData");
      
          // 参数
          // 引用参数
          AMapIndoorData * indoorData = (AMapIndoorData *) REF_MAP[@([args[@"indoorData"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.indoorData = indoorData;
          methodResult(@"success");
      },
      
      @"AMapPOI::set_extensionInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOI::set_extensionInfo");
      
          // 参数
          // 引用参数
          AMapPOIExtension * extensionInfo = (AMapPOIExtension *) REF_MAP[@([args[@"extensionInfo"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOI * ref = (AMapPOI *) REF_MAP[@(refId)];
      
          ref.extensionInfo = extensionInfo;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapAOI::set_area": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAOI::set_area");
      
          // 参数
          // jsonable参数
          CGFloat area = [args[@"area"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAOI * ref = (AMapAOI *) REF_MAP[@(refId)];
      
          ref.area = area;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapRoad::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoad::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoad * ref = (AMapRoad *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_firstId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_firstId");
      
          // 参数
          // jsonable参数
          NSString * firstId = (NSString *) args[@"firstId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.firstId = firstId;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_firstName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_firstName");
      
          // 参数
          // jsonable参数
          NSString * firstName = (NSString *) args[@"firstName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.firstName = firstName;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_secondId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_secondId");
      
          // 参数
          // jsonable参数
          NSString * secondId = (NSString *) args[@"secondId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.secondId = secondId;
          methodResult(@"success");
      },
      
      @"AMapRoadInter::set_secondName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoadInter::set_secondName");
      
          // 参数
          // jsonable参数
          NSString * secondName = (NSString *) args[@"secondName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoadInter * ref = (AMapRoadInter *) REF_MAP[@(refId)];
      
          ref.secondName = secondName;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_street": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_street");
      
          // 参数
          // jsonable参数
          NSString * street = (NSString *) args[@"street"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
          ref.street = street;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_number": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_number");
      
          // 参数
          // jsonable参数
          NSString * number = (NSString *) args[@"number"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
          ref.number = number;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapStreetNumber::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStreetNumber::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStreetNumber * ref = (AMapStreetNumber *) REF_MAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapBusinessArea::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapBusinessArea::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusinessArea::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusinessArea * ref = (AMapBusinessArea *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_country": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_country");
      
          // 参数
          // jsonable参数
          NSString * country = (NSString *) args[@"country"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.country = country;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_township");
      
          // 参数
          // jsonable参数
          NSString * township = (NSString *) args[@"township"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.township = township;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_towncode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_towncode");
      
          // 参数
          // jsonable参数
          NSString * towncode = (NSString *) args[@"towncode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.towncode = towncode;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_neighborhood");
      
          // 参数
          // jsonable参数
          NSString * neighborhood = (NSString *) args[@"neighborhood"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.neighborhood = neighborhood;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_building");
      
          // 参数
          // jsonable参数
          NSString * building = (NSString *) args[@"building"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.building = building;
          methodResult(@"success");
      },
      
      @"AMapAddressComponent::set_streetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapAddressComponent::set_streetNumber");
      
          // 参数
          // 引用参数
          AMapStreetNumber * streetNumber = (AMapStreetNumber *) REF_MAP[@([args[@"streetNumber"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapAddressComponent * ref = (AMapAddressComponent *) REF_MAP[@(refId)];
      
          ref.streetNumber = streetNumber;
          methodResult(@"success");
      },
      
      @"AMapReGeocode::set_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::set_formattedAddress");
      
          // 参数
          // jsonable参数
          NSString * formattedAddress = (NSString *) args[@"formattedAddress"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) REF_MAP[@(refId)];
      
          ref.formattedAddress = formattedAddress;
          methodResult(@"success");
      },
      
      @"AMapReGeocode::set_addressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapReGeocode::set_addressComponent");
      
          // 参数
          // 引用参数
          AMapAddressComponent * addressComponent = (AMapAddressComponent *) REF_MAP[@([args[@"addressComponent"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapReGeocode * ref = (AMapReGeocode *) REF_MAP[@(refId)];
      
          ref.addressComponent = addressComponent;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_formattedAddress");
      
          // 参数
          // jsonable参数
          NSString * formattedAddress = (NSString *) args[@"formattedAddress"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.formattedAddress = formattedAddress;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_district");
      
          // 参数
          // jsonable参数
          NSString * district = (NSString *) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_township": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_township");
      
          // 参数
          // jsonable参数
          NSString * township = (NSString *) args[@"township"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.township = township;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_neighborhood": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_neighborhood");
      
          // 参数
          // jsonable参数
          NSString * neighborhood = (NSString *) args[@"neighborhood"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.neighborhood = neighborhood;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_building": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_building");
      
          // 参数
          // jsonable参数
          NSString * building = (NSString *) args[@"building"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.building = building;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapGeocode::set_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeocode::set_level");
      
          // 参数
          // jsonable参数
          NSString * level = (NSString *) args[@"level"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeocode * ref = (AMapGeocode *) REF_MAP[@(refId)];
      
          ref.level = level;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapBusStop::set_sequence": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusStop::set_sequence");
      
          // 参数
          // jsonable参数
          NSString * sequence = (NSString *) args[@"sequence"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusStop * ref = (AMapBusStop *) REF_MAP[@(refId)];
      
          ref.sequence = sequence;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_type");
      
          // 参数
          // jsonable参数
          NSString * type = (NSString *) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_startStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_startStop");
      
          // 参数
          // jsonable参数
          NSString * startStop = (NSString *) args[@"startStop"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.startStop = startStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_endStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_endStop");
      
          // 参数
          // jsonable参数
          NSString * endStop = (NSString *) args[@"endStop"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.endStop = endStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_startTime");
      
          // 参数
          // jsonable参数
          NSString * startTime = (NSString *) args[@"startTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.startTime = startTime;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_endTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_endTime");
      
          // 参数
          // jsonable参数
          NSString * endTime = (NSString *) args[@"endTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.endTime = endTime;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_company": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_company");
      
          // 参数
          // jsonable参数
          NSString * company = (NSString *) args[@"company"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.company = company;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_distance");
      
          // 参数
          // jsonable参数
          CGFloat distance = [args[@"distance"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_basicPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_basicPrice");
      
          // 参数
          // jsonable参数
          CGFloat basicPrice = [args[@"basicPrice"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.basicPrice = basicPrice;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_totalPrice": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_totalPrice");
      
          // 参数
          // jsonable参数
          CGFloat totalPrice = [args[@"totalPrice"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.totalPrice = totalPrice;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_bounds": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_bounds");
      
          // 参数
          // 引用参数
          AMapGeoPolygon * bounds = (AMapGeoPolygon *) REF_MAP[@([args[@"bounds"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.bounds = bounds;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_departureStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_departureStop");
      
          // 参数
          // 引用参数
          AMapBusStop * departureStop = (AMapBusStop *) REF_MAP[@([args[@"departureStop"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.departureStop = departureStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_arrivalStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_arrivalStop");
      
          // 参数
          // 引用参数
          AMapBusStop * arrivalStop = (AMapBusStop *) REF_MAP[@([args[@"arrivalStop"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.arrivalStop = arrivalStop;
          methodResult(@"success");
      },
      
      @"AMapBusLine::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapBusLine::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapBusLine * ref = (AMapBusLine *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_citycode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_citycode");
      
          // 参数
          // jsonable参数
          NSString * citycode = (NSString *) args[@"citycode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
          ref.citycode = citycode;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_level": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_level");
      
          // 参数
          // jsonable参数
          NSString * level = (NSString *) args[@"level"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
          ref.level = level;
          methodResult(@"success");
      },
      
      @"AMapDistrict::set_center": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistrict::set_center");
      
          // 参数
          // 引用参数
          AMapGeoPoint * center = (AMapGeoPoint *) REF_MAP[@([args[@"center"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistrict * ref = (AMapDistrict *) REF_MAP[@(refId)];
      
          ref.center = center;
          methodResult(@"success");
      },
      
      @"AMapTMC::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapTMC::set_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::set_status");
      
          // 参数
          // jsonable参数
          NSString * status = (NSString *) args[@"status"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) REF_MAP[@(refId)];
      
          ref.status = status;
          methodResult(@"success");
      },
      
      @"AMapTMC::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTMC::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTMC * ref = (AMapTMC *) REF_MAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapStep::set_instruction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_instruction");
      
          // 参数
          // jsonable参数
          NSString * instruction = (NSString *) args[@"instruction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.instruction = instruction;
          methodResult(@"success");
      },
      
      @"AMapStep::set_orientation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_orientation");
      
          // 参数
          // jsonable参数
          NSString * orientation = (NSString *) args[@"orientation"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.orientation = orientation;
          methodResult(@"success");
      },
      
      @"AMapStep::set_road": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_road");
      
          // 参数
          // jsonable参数
          NSString * road = (NSString *) args[@"road"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.road = road;
          methodResult(@"success");
      },
      
      @"AMapStep::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapStep::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapStep::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapStep::set_action": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_action");
      
          // 参数
          // jsonable参数
          NSString * action = (NSString *) args[@"action"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.action = action;
          methodResult(@"success");
      },
      
      @"AMapStep::set_assistantAction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_assistantAction");
      
          // 参数
          // jsonable参数
          NSString * assistantAction = (NSString *) args[@"assistantAction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.assistantAction = assistantAction;
          methodResult(@"success");
      },
      
      @"AMapStep::set_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_tolls");
      
          // 参数
          // jsonable参数
          CGFloat tolls = [args[@"tolls"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.tolls = tolls;
          methodResult(@"success");
      },
      
      @"AMapStep::set_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_tollDistance");
      
          // 参数
          // jsonable参数
          NSInteger tollDistance = [args[@"tollDistance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.tollDistance = tollDistance;
          methodResult(@"success");
      },
      
      @"AMapStep::set_tollRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapStep::set_tollRoad");
      
          // 参数
          // jsonable参数
          NSString * tollRoad = (NSString *) args[@"tollRoad"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapStep * ref = (AMapStep *) REF_MAP[@(refId)];
      
          ref.tollRoad = tollRoad;
          methodResult(@"success");
      },
      
      @"AMapPath::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapPath::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapPath::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_strategy");
      
          // 参数
          // jsonable参数
          NSString * strategy = (NSString *) args[@"strategy"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapPath::set_tolls": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_tolls");
      
          // 参数
          // jsonable参数
          CGFloat tolls = [args[@"tolls"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.tolls = tolls;
          methodResult(@"success");
      },
      
      @"AMapPath::set_tollDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_tollDistance");
      
          // 参数
          // jsonable参数
          NSInteger tollDistance = [args[@"tollDistance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.tollDistance = tollDistance;
          methodResult(@"success");
      },
      
      @"AMapPath::set_totalTrafficLights": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_totalTrafficLights");
      
          // 参数
          // jsonable参数
          NSInteger totalTrafficLights = [args[@"totalTrafficLights"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.totalTrafficLights = totalTrafficLights;
          methodResult(@"success");
      },
      
      @"AMapPath::set_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPath::set_restriction");
      
          // 参数
          // jsonable参数
          NSInteger restriction = [args[@"restriction"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPath * ref = (AMapPath *) REF_MAP[@(refId)];
      
          ref.restriction = restriction;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfoElement::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfoElement::set_pathindex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::set_pathindex");
      
          // 参数
          // jsonable参数
          NSInteger pathindex = [args[@"pathindex"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) REF_MAP[@(refId)];
      
          ref.pathindex = pathindex;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfoElement::set_restriction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfoElement::set_restriction");
      
          // 参数
          // jsonable参数
          NSInteger restriction = [args[@"restriction"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfoElement * ref = (AMapFutureTimeInfoElement *) REF_MAP[@(refId)];
      
          ref.restriction = restriction;
          methodResult(@"success");
      },
      
      @"AMapFutureTimeInfo::set_startTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapFutureTimeInfo::set_startTime");
      
          // 参数
          // jsonable参数
          NSString * startTime = (NSString *) args[@"startTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapFutureTimeInfo * ref = (AMapFutureTimeInfo *) REF_MAP[@(refId)];
      
          ref.startTime = startTime;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) REF_MAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) REF_MAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapWalking::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapWalking::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapWalking * ref = (AMapWalking *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) REF_MAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) REF_MAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_sname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_sname");
      
          // 参数
          // jsonable参数
          NSString * sname = (NSString *) args[@"sname"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
          ref.sname = sname;
          methodResult(@"success");
      },
      
      @"AMapTaxi::set_tname": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTaxi::set_tname");
      
          // 参数
          // jsonable参数
          NSString * tname = (NSString *) args[@"tname"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTaxi * ref = (AMapTaxi *) REF_MAP[@(refId)];
      
          ref.tname = tname;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_time");
      
          // 参数
          // jsonable参数
          NSString * time = (NSString *) args[@"time"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.time = time;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_wait": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_wait");
      
          // 参数
          // jsonable参数
          NSInteger wait = [args[@"wait"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.wait = wait;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_isStart": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_isStart");
      
          // 参数
          // jsonable参数
          BOOL isStart = [args[@"isStart"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.isStart = isStart;
          methodResult(@"success");
      },
      
      @"AMapRailwayStation::set_isEnd": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwayStation::set_isEnd");
      
          // 参数
          // jsonable参数
          BOOL isEnd = [args[@"isEnd"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwayStation * ref = (AMapRailwayStation *) REF_MAP[@(refId)];
      
          ref.isEnd = isEnd;
          methodResult(@"success");
      },
      
      @"AMapRailwaySpace::set_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::set_code");
      
          // 参数
          // jsonable参数
          NSString * code = (NSString *) args[@"code"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) REF_MAP[@(refId)];
      
          ref.code = code;
          methodResult(@"success");
      },
      
      @"AMapRailwaySpace::set_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailwaySpace::set_cost");
      
          // 参数
          // jsonable参数
          CGFloat cost = [args[@"cost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailwaySpace * ref = (AMapRailwaySpace *) REF_MAP[@(refId)];
      
          ref.cost = cost;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_trip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_trip");
      
          // 参数
          // jsonable参数
          NSString * trip = (NSString *) args[@"trip"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.trip = trip;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_type");
      
          // 参数
          // jsonable参数
          NSString * type = (NSString *) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_time");
      
          // 参数
          // jsonable参数
          NSInteger time = [args[@"time"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.time = time;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_departureStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_departureStation");
      
          // 参数
          // 引用参数
          AMapRailwayStation * departureStation = (AMapRailwayStation *) REF_MAP[@([args[@"departureStation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.departureStation = departureStation;
          methodResult(@"success");
      },
      
      @"AMapRailway::set_arrivalStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRailway::set_arrivalStation");
      
          // 参数
          // 引用参数
          AMapRailwayStation * arrivalStation = (AMapRailwayStation *) REF_MAP[@([args[@"arrivalStation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRailway * ref = (AMapRailway *) REF_MAP[@(refId)];
      
          ref.arrivalStation = arrivalStation;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_walking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_walking");
      
          // 参数
          // 引用参数
          AMapWalking * walking = (AMapWalking *) REF_MAP[@([args[@"walking"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.walking = walking;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_taxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_taxi");
      
          // 参数
          // 引用参数
          AMapTaxi * taxi = (AMapTaxi *) REF_MAP[@([args[@"taxi"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.taxi = taxi;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_railway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_railway");
      
          // 参数
          // 引用参数
          AMapRailway * railway = (AMapRailway *) REF_MAP[@([args[@"railway"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.railway = railway;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_enterName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_enterName");
      
          // 参数
          // jsonable参数
          NSString * enterName = (NSString *) args[@"enterName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.enterName = enterName;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_enterLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_enterLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * enterLocation = (AMapGeoPoint *) REF_MAP[@([args[@"enterLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.enterLocation = enterLocation;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_exitName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_exitName");
      
          // 参数
          // jsonable参数
          NSString * exitName = (NSString *) args[@"exitName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.exitName = exitName;
          methodResult(@"success");
      },
      
      @"AMapSegment::set_exitLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSegment::set_exitLocation");
      
          // 参数
          // 引用参数
          AMapGeoPoint * exitLocation = (AMapGeoPoint *) REF_MAP[@([args[@"exitLocation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSegment * ref = (AMapSegment *) REF_MAP[@(refId)];
      
          ref.exitLocation = exitLocation;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_cost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_cost");
      
          // 参数
          // jsonable参数
          CGFloat cost = [args[@"cost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
          ref.cost = cost;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_nightflag": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_nightflag");
      
          // 参数
          // jsonable参数
          BOOL nightflag = [args[@"nightflag"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
          ref.nightflag = nightflag;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_walkingDistance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_walkingDistance");
      
          // 参数
          // jsonable参数
          NSInteger walkingDistance = [args[@"walkingDistance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
          ref.walkingDistance = walkingDistance;
          methodResult(@"success");
      },
      
      @"AMapTransit::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTransit::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTransit * ref = (AMapTransit *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapRoute::set_origin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::set_origin");
      
          // 参数
          // 引用参数
          AMapGeoPoint * origin = (AMapGeoPoint *) REF_MAP[@([args[@"origin"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) REF_MAP[@(refId)];
      
          ref.origin = origin;
          methodResult(@"success");
      },
      
      @"AMapRoute::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::set_destination");
      
          // 参数
          // 引用参数
          AMapGeoPoint * destination = (AMapGeoPoint *) REF_MAP[@([args[@"destination"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) REF_MAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapRoute::set_taxiCost": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRoute::set_taxiCost");
      
          // 参数
          // jsonable参数
          CGFloat taxiCost = [args[@"taxiCost"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRoute * ref = (AMapRoute *) REF_MAP[@(refId)];
      
          ref.taxiCost = taxiCost;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_originID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_originID");
      
          // 参数
          // jsonable参数
          NSInteger originID = [args[@"originID"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
          ref.originID = originID;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_destID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_destID");
      
          // 参数
          // jsonable参数
          NSInteger destID = [args[@"destID"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
          ref.destID = destID;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_duration");
      
          // 参数
          // jsonable参数
          NSInteger duration = [args[@"duration"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
          ref.duration = duration;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_info": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_info");
      
          // 参数
          // jsonable参数
          NSString * info = (NSString *) args[@"info"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
          ref.info = info;
          methodResult(@"success");
      },
      
      @"AMapDistanceResult::set_code": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapDistanceResult::set_code");
      
          // 参数
          // jsonable参数
          NSInteger code = [args[@"code"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapDistanceResult * ref = (AMapDistanceResult *) REF_MAP[@(refId)];
      
          ref.code = code;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_weather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_weather");
      
          // 参数
          // jsonable参数
          NSString * weather = (NSString *) args[@"weather"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.weather = weather;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_temperature": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_temperature");
      
          // 参数
          // jsonable参数
          NSString * temperature = (NSString *) args[@"temperature"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.temperature = temperature;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_windDirection": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_windDirection");
      
          // 参数
          // jsonable参数
          NSString * windDirection = (NSString *) args[@"windDirection"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.windDirection = windDirection;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_windPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_windPower");
      
          // 参数
          // jsonable参数
          NSString * windPower = (NSString *) args[@"windPower"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.windPower = windPower;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_humidity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_humidity");
      
          // 参数
          // jsonable参数
          NSString * humidity = (NSString *) args[@"humidity"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.humidity = humidity;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherLive::set_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherLive::set_reportTime");
      
          // 参数
          // jsonable参数
          NSString * reportTime = (NSString *) args[@"reportTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherLive * ref = (AMapLocalWeatherLive *) REF_MAP[@(refId)];
      
          ref.reportTime = reportTime;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_date": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_date");
      
          // 参数
          // jsonable参数
          NSString * date = (NSString *) args[@"date"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.date = date;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_week": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_week");
      
          // 参数
          // jsonable参数
          NSString * week = (NSString *) args[@"week"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.week = week;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayWeather");
      
          // 参数
          // jsonable参数
          NSString * dayWeather = (NSString *) args[@"dayWeather"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.dayWeather = dayWeather;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightWeather": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightWeather");
      
          // 参数
          // jsonable参数
          NSString * nightWeather = (NSString *) args[@"nightWeather"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.nightWeather = nightWeather;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayTemp");
      
          // 参数
          // jsonable参数
          NSString * dayTemp = (NSString *) args[@"dayTemp"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.dayTemp = dayTemp;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightTemp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightTemp");
      
          // 参数
          // jsonable参数
          NSString * nightTemp = (NSString *) args[@"nightTemp"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.nightTemp = nightTemp;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayWind");
      
          // 参数
          // jsonable参数
          NSString * dayWind = (NSString *) args[@"dayWind"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.dayWind = dayWind;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightWind": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightWind");
      
          // 参数
          // jsonable参数
          NSString * nightWind = (NSString *) args[@"nightWind"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.nightWind = nightWind;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_dayPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_dayPower");
      
          // 参数
          // jsonable参数
          NSString * dayPower = (NSString *) args[@"dayPower"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.dayPower = dayPower;
          methodResult(@"success");
      },
      
      @"AMapLocalDayWeatherForecast::set_nightPower": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalDayWeatherForecast::set_nightPower");
      
          // 参数
          // jsonable参数
          NSString * nightPower = (NSString *) args[@"nightPower"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalDayWeatherForecast * ref = (AMapLocalDayWeatherForecast *) REF_MAP[@(refId)];
      
          ref.nightPower = nightPower;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_adcode");
      
          // 参数
          // jsonable参数
          NSString * adcode = (NSString *) args[@"adcode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
          ref.adcode = adcode;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_province");
      
          // 参数
          // jsonable参数
          NSString * province = (NSString *) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_city");
      
          // 参数
          // jsonable参数
          NSString * city = (NSString *) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapLocalWeatherForecast::set_reportTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocalWeatherForecast::set_reportTime");
      
          // 参数
          // jsonable参数
          NSString * reportTime = (NSString *) args[@"reportTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocalWeatherForecast * ref = (AMapLocalWeatherForecast *) REF_MAP[@(refId)];
      
          ref.reportTime = reportTime;
          methodResult(@"success");
      },
      
      @"AMapNearbyUserInfo::set_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::set_userID");
      
          // 参数
          // jsonable参数
          NSString * userID = (NSString *) args[@"userID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) REF_MAP[@(refId)];
      
          ref.userID = userID;
          methodResult(@"success");
      },
      
      @"AMapNearbyUserInfo::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapNearbyUserInfo::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUserInfo::set_distance");
      
          // 参数
          // jsonable参数
          CGFloat distance = [args[@"distance"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUserInfo * ref = (AMapNearbyUserInfo *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_evaluationDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_evaluationDescription");
      
          // 参数
          // jsonable参数
          NSString * evaluationDescription = (NSString *) args[@"evaluationDescription"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
          ref.evaluationDescription = evaluationDescription;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_status");
      
          // 参数
          // jsonable参数
          NSInteger status = [args[@"status"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
          ref.status = status;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_expedite": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_expedite");
      
          // 参数
          // jsonable参数
          NSString * expedite = (NSString *) args[@"expedite"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
          ref.expedite = expedite;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_congested": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_congested");
      
          // 参数
          // jsonable参数
          NSString * congested = (NSString *) args[@"congested"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
          ref.congested = congested;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_blocked": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_blocked");
      
          // 参数
          // jsonable参数
          NSString * blocked = (NSString *) args[@"blocked"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
          ref.blocked = blocked;
          methodResult(@"success");
      },
      
      @"AMapTrafficEvaluation::set_unknown": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficEvaluation::set_unknown");
      
          // 参数
          // jsonable参数
          NSString * unknown = (NSString *) args[@"unknown"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficEvaluation * ref = (AMapTrafficEvaluation *) REF_MAP[@(refId)];
      
          ref.unknown = unknown;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_status");
      
          // 参数
          // jsonable参数
          NSInteger status = [args[@"status"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
          ref.status = status;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_direction": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_direction");
      
          // 参数
          // jsonable参数
          NSString * direction = (NSString *) args[@"direction"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
          ref.direction = direction;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_angle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_angle");
      
          // 参数
          // jsonable参数
          float angle = [args[@"angle"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
          ref.angle = angle;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_speed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_speed");
      
          // 参数
          // jsonable参数
          float speed = [args[@"speed"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
          ref.speed = speed;
          methodResult(@"success");
      },
      
      @"AMapTrafficRoad::set_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficRoad::set_polyline");
      
          // 参数
          // jsonable参数
          NSString * polyline = (NSString *) args[@"polyline"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficRoad * ref = (AMapTrafficRoad *) REF_MAP[@(refId)];
      
          ref.polyline = polyline;
          methodResult(@"success");
      },
      
      @"AMapTrafficInfo::set_statusDescription": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::set_statusDescription");
      
          // 参数
          // jsonable参数
          NSString * statusDescription = (NSString *) args[@"statusDescription"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) REF_MAP[@(refId)];
      
          ref.statusDescription = statusDescription;
          methodResult(@"success");
      },
      
      @"AMapTrafficInfo::set_evaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapTrafficInfo::set_evaluation");
      
          // 参数
          // 引用参数
          AMapTrafficEvaluation * evaluation = (AMapTrafficEvaluation *) REF_MAP[@([args[@"evaluation"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapTrafficInfo * ref = (AMapTrafficInfo *) REF_MAP[@(refId)];
      
          ref.evaluation = evaluation;
          methodResult(@"success");
      },
      
      @"AMapCloudImage::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::set_uid");
      
          // 参数
          // jsonable参数
          NSString * uid = (NSString *) args[@"uid"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapCloudImage::set_preurl": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::set_preurl");
      
          // 参数
          // jsonable参数
          NSString * preurl = (NSString *) args[@"preurl"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) REF_MAP[@(refId)];
      
          ref.preurl = preurl;
          methodResult(@"success");
      },
      
      @"AMapCloudImage::set_url": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudImage::set_url");
      
          // 参数
          // jsonable参数
          NSString * url = (NSString *) args[@"url"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudImage * ref = (AMapCloudImage *) REF_MAP[@(refId)];
      
          ref.url = url;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_uid");
      
          // 参数
          // jsonable参数
          NSInteger uid = [args[@"uid"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.uid = uid;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_name");
      
          // 参数
          // jsonable参数
          NSString * name = (NSString *) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_location": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_location");
      
          // 参数
          // 引用参数
          AMapGeoPoint * location = (AMapGeoPoint *) REF_MAP[@([args[@"location"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.location = location;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_address");
      
          // 参数
          // jsonable参数
          NSString * address = (NSString *) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_createTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_createTime");
      
          // 参数
          // jsonable参数
          NSString * createTime = (NSString *) args[@"createTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.createTime = createTime;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_updateTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_updateTime");
      
          // 参数
          // jsonable参数
          NSString * updateTime = (NSString *) args[@"updateTime"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.updateTime = updateTime;
          methodResult(@"success");
      },
      
      @"AMapCloudPOI::set_distance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapCloudPOI::set_distance");
      
          // 参数
          // jsonable参数
          NSInteger distance = [args[@"distance"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapCloudPOI * ref = (AMapCloudPOI *) REF_MAP[@(refId)];
      
          ref.distance = distance;
          methodResult(@"success");
      },
      
      @"AMapNearbyUploadInfo::set_userID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::set_userID");
      
          // 参数
          // jsonable参数
          NSString * userID = (NSString *) args[@"userID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) REF_MAP[@(refId)];
      
          ref.userID = userID;
          methodResult(@"success");
      },
      
      @"AMapNearbyUploadInfo::set_coordinateType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::set_coordinateType");
      
          // 参数
          // 枚举参数
          AMapSearchCoordinateType coordinateType = (AMapSearchCoordinateType) [args[@"coordinateType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) REF_MAP[@(refId)];
      
          ref.coordinateType = coordinateType;
          methodResult(@"success");
      },
      
      @"AMapNearbyUploadInfo::set_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNearbyUploadInfo::set_coordinate");
      
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) REF_MAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNearbyUploadInfo * ref = (AMapNearbyUploadInfo *) REF_MAP[@(refId)];
      
          ref.coordinate = coordinate;
          methodResult(@"success");
      },
      
      @"AMapSearchAPI::set_delegate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::set_delegate");
      
          // 参数
      
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          ref.delegate = self;
          methodResult(@"success");
      },
      
      @"AMapSearchAPI::set_timeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::set_timeout");
      
          // 参数
          // jsonable参数
          NSInteger timeout = [args[@"timeout"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          ref.timeout = timeout;
          methodResult(@"success");
      },
      
      @"AMapSearchAPI::set_language": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapSearchAPI::set_language");
      
          // 参数
          // 枚举参数
          AMapSearchLanguage language = (AMapSearchLanguage) [args[@"language"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapSearchAPI * ref = (AMapSearchAPI *) REF_MAP[@(refId)];
      
          ref.language = language;
          methodResult(@"success");
      },
      
      @"RefClass::isKindOfAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapURLSearch class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNaviConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapServices class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOISearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOISearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIIDSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIKeywordsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIKeywordsSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIAroundSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIPolygonSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOISearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoutePOISearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoutePOISearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoutePOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoutePOISearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapInputTipsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapInputTipsSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapInputTipsSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapInputTipsSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeocodeSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeocodeSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapReGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapReGeocodeSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapReGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapReGeocodeSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusStopSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusStopSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusStopSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusStopSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineBaseSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineBaseSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineNameSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineNameSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineIDSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLineSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLineSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistrictSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistrictSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistrictSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistrictSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDrivingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDrivingRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWalkingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWalkingRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTransitRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTransitRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRidingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRidingRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRidingRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRidingRouteSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTruckRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTruckRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistanceSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistanceSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistanceSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistanceSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWeatherSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWeatherSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWeatherSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWeatherSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficCircleSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficCircleSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadTrafficSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadTrafficSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbySearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbySearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbySearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbySearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOIAroundSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOIPolygonSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOIIDSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOILocalSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOILocalSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOISearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapShareSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapShareSearchBaseRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNavigationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNavigationShareSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapShareSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapShareSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureRouteSearchRequest class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureRouteSearchResponse class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSearchObject": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSearchObject class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeoPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeoPoint class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeoPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeoPolygon class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCity class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSuggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSuggestion class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTip class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapImage class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIExtension class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapIndoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapIndoorData class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSubPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSubPOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoutePOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoutePOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapAOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapAOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoad class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoadInter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoadInter class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapStreetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapStreetNumber class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusinessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusinessArea class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapAddressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapAddressComponent class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapReGeocode class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeocode class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusStop class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapBusLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapBusLine class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistrict": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistrict class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTMC": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTMC class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapStep": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapStep class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPath class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureTimeInfoElement": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureTimeInfoElement class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapFutureTimeInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapFutureTimeInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapWalking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapWalking class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTaxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTaxi class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRailwayStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRailwayStation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRailwaySpace": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRailwaySpace class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRailway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRailway class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSegment": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSegment class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTransit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTransit class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRoute": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRoute class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapDistanceResult": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapDistanceResult class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocalWeatherLive": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocalWeatherLive class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocalDayWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocalDayWeatherForecast class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocalWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocalWeatherForecast class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbyUserInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbyUserInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTrafficEvaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTrafficEvaluation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTrafficRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTrafficRoad class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapTrafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapTrafficInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudImage class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapCloudPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapCloudPOI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbyUploadInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbyUploadInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNearbySearchManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNearbySearchManager class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapSearchAPI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapSearchAPI class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::asAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapURLSearch *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNaviConfig *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRouteConfig *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIConfig *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapServices *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOISearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOISearchBaseRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIIDSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIKeywordsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIKeywordsSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIAroundSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIPolygonSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOISearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoutePOISearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoutePOISearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoutePOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoutePOISearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapInputTipsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapInputTipsSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapInputTipsSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapInputTipsSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapGeocodeSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapGeocodeSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapReGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapReGeocodeSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapReGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapReGeocodeSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusStopSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusStopSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusStopSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusStopSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineBaseSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineBaseSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineNameSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineNameSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineIDSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLineSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusLineSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistrictSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDistrictSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistrictSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDistrictSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRouteSearchBaseRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDrivingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDrivingRouteSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWalkingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapWalkingRouteSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTransitRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTransitRouteSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRidingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRidingRouteSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRouteSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRidingRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRidingRouteSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTruckRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTruckRouteSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistanceSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDistanceSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistanceSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDistanceSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWeatherSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapWeatherSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWeatherSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapWeatherSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficSearchBaseRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficCircleSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficCircleSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadTrafficSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoadTrafficSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbySearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNearbySearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbySearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNearbySearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudSearchBaseRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOIAroundSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOIPolygonSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOIIDSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOILocalSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOILocalSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOISearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapShareSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapShareSearchBaseRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapLocationShareSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIShareSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRouteShareSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNavigationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNavigationShareSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapShareSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapShareSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapFutureRouteSearchRequest *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapFutureRouteSearchResponse *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSearchObject": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapSearchObject *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeoPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapGeoPoint *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeoPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapGeoPolygon *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCity *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSuggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapSuggestion *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTip *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapImage *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOIExtension *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapIndoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapIndoorData *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSubPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapSubPOI *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoutePOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoutePOI *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPOI *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapAOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapAOI *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoad *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoadInter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoadInter *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapStreetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapStreetNumber *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusinessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusinessArea *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapAddressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapAddressComponent *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapReGeocode *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapGeocode *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusStop *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapBusLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapBusLine *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistrict": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDistrict *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTMC": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTMC *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapStep": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapStep *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapPath *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureTimeInfoElement": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapFutureTimeInfoElement *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapFutureTimeInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapFutureTimeInfo *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapWalking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapWalking *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTaxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTaxi *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRailwayStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRailwayStation *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRailwaySpace": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRailwaySpace *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRailway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRailway *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSegment": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapSegment *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTransit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTransit *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRoute": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapRoute *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapDistanceResult": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapDistanceResult *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocalWeatherLive": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapLocalWeatherLive *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocalDayWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapLocalDayWeatherForecast *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocalWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapLocalWeatherForecast *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbyUserInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNearbyUserInfo *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTrafficEvaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTrafficEvaluation *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTrafficRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTrafficRoad *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapTrafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapTrafficInfo *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudImage *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapCloudPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapCloudPOI *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbyUploadInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNearbyUploadInfo *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNearbySearchManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapNearbySearchManager *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapSearchAPI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = REF_MAP[@(refId)];
      
          // 转型
          ref = (AMapSearchAPI *) ref;
          // 放回REF_MAP
          REF_MAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"ObjectFactory::createAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapURLSearch");
      
          AMapURLSearch* ref = [[AMapURLSearch alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNaviConfig");
      
          AMapNaviConfig* ref = [[AMapNaviConfig alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteConfig");
      
          AMapRouteConfig* ref = [[AMapRouteConfig alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIConfig");
      
          AMapPOIConfig* ref = [[AMapPOIConfig alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapServices");
      
          AMapServices* ref = [[AMapServices alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOISearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOISearchBaseRequest");
      
          AMapPOISearchBaseRequest* ref = [[AMapPOISearchBaseRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIIDSearchRequest");
      
          AMapPOIIDSearchRequest* ref = [[AMapPOIIDSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIKeywordsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIKeywordsSearchRequest");
      
          AMapPOIKeywordsSearchRequest* ref = [[AMapPOIKeywordsSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIAroundSearchRequest");
      
          AMapPOIAroundSearchRequest* ref = [[AMapPOIAroundSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIPolygonSearchRequest");
      
          AMapPOIPolygonSearchRequest* ref = [[AMapPOIPolygonSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOISearchResponse");
      
          AMapPOISearchResponse* ref = [[AMapPOISearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoutePOISearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoutePOISearchRequest");
      
          AMapRoutePOISearchRequest* ref = [[AMapRoutePOISearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoutePOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoutePOISearchResponse");
      
          AMapRoutePOISearchResponse* ref = [[AMapRoutePOISearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapInputTipsSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapInputTipsSearchRequest");
      
          AMapInputTipsSearchRequest* ref = [[AMapInputTipsSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapInputTipsSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapInputTipsSearchResponse");
      
          AMapInputTipsSearchResponse* ref = [[AMapInputTipsSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeocodeSearchRequest");
      
          AMapGeocodeSearchRequest* ref = [[AMapGeocodeSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeocodeSearchResponse");
      
          AMapGeocodeSearchResponse* ref = [[AMapGeocodeSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapReGeocodeSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapReGeocodeSearchRequest");
      
          AMapReGeocodeSearchRequest* ref = [[AMapReGeocodeSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapReGeocodeSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapReGeocodeSearchResponse");
      
          AMapReGeocodeSearchResponse* ref = [[AMapReGeocodeSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusStopSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusStopSearchRequest");
      
          AMapBusStopSearchRequest* ref = [[AMapBusStopSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusStopSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusStopSearchResponse");
      
          AMapBusStopSearchResponse* ref = [[AMapBusStopSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineBaseSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineBaseSearchRequest");
      
          AMapBusLineBaseSearchRequest* ref = [[AMapBusLineBaseSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineNameSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineNameSearchRequest");
      
          AMapBusLineNameSearchRequest* ref = [[AMapBusLineNameSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineIDSearchRequest");
      
          AMapBusLineIDSearchRequest* ref = [[AMapBusLineIDSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLineSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLineSearchResponse");
      
          AMapBusLineSearchResponse* ref = [[AMapBusLineSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistrictSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistrictSearchRequest");
      
          AMapDistrictSearchRequest* ref = [[AMapDistrictSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistrictSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistrictSearchResponse");
      
          AMapDistrictSearchResponse* ref = [[AMapDistrictSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteSearchBaseRequest");
      
          AMapRouteSearchBaseRequest* ref = [[AMapRouteSearchBaseRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDrivingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDrivingRouteSearchRequest");
      
          AMapDrivingRouteSearchRequest* ref = [[AMapDrivingRouteSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWalkingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWalkingRouteSearchRequest");
      
          AMapWalkingRouteSearchRequest* ref = [[AMapWalkingRouteSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTransitRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTransitRouteSearchRequest");
      
          AMapTransitRouteSearchRequest* ref = [[AMapTransitRouteSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRidingRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRidingRouteSearchRequest");
      
          AMapRidingRouteSearchRequest* ref = [[AMapRidingRouteSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteSearchResponse");
      
          AMapRouteSearchResponse* ref = [[AMapRouteSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRidingRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRidingRouteSearchResponse");
      
          AMapRidingRouteSearchResponse* ref = [[AMapRidingRouteSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTruckRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTruckRouteSearchRequest");
      
          AMapTruckRouteSearchRequest* ref = [[AMapTruckRouteSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistanceSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistanceSearchRequest");
      
          AMapDistanceSearchRequest* ref = [[AMapDistanceSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistanceSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistanceSearchResponse");
      
          AMapDistanceSearchResponse* ref = [[AMapDistanceSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWeatherSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWeatherSearchRequest");
      
          AMapWeatherSearchRequest* ref = [[AMapWeatherSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWeatherSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWeatherSearchResponse");
      
          AMapWeatherSearchResponse* ref = [[AMapWeatherSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficSearchBaseRequest");
      
          AMapRoadTrafficSearchBaseRequest* ref = [[AMapRoadTrafficSearchBaseRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficSearchRequest");
      
          AMapRoadTrafficSearchRequest* ref = [[AMapRoadTrafficSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficCircleSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficCircleSearchRequest");
      
          AMapRoadTrafficCircleSearchRequest* ref = [[AMapRoadTrafficCircleSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadTrafficSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadTrafficSearchResponse");
      
          AMapRoadTrafficSearchResponse* ref = [[AMapRoadTrafficSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbySearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbySearchRequest");
      
          AMapNearbySearchRequest* ref = [[AMapNearbySearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbySearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbySearchResponse");
      
          AMapNearbySearchResponse* ref = [[AMapNearbySearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudSearchBaseRequest");
      
          AMapCloudSearchBaseRequest* ref = [[AMapCloudSearchBaseRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOIAroundSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOIAroundSearchRequest");
      
          AMapCloudPOIAroundSearchRequest* ref = [[AMapCloudPOIAroundSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOIPolygonSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOIPolygonSearchRequest");
      
          AMapCloudPOIPolygonSearchRequest* ref = [[AMapCloudPOIPolygonSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOIIDSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOIIDSearchRequest");
      
          AMapCloudPOIIDSearchRequest* ref = [[AMapCloudPOIIDSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOILocalSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOILocalSearchRequest");
      
          AMapCloudPOILocalSearchRequest* ref = [[AMapCloudPOILocalSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOISearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOISearchResponse");
      
          AMapCloudPOISearchResponse* ref = [[AMapCloudPOISearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapShareSearchBaseRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapShareSearchBaseRequest");
      
          AMapShareSearchBaseRequest* ref = [[AMapShareSearchBaseRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationShareSearchRequest");
      
          AMapLocationShareSearchRequest* ref = [[AMapLocationShareSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIShareSearchRequest");
      
          AMapPOIShareSearchRequest* ref = [[AMapPOIShareSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteShareSearchRequest");
      
          AMapRouteShareSearchRequest* ref = [[AMapRouteShareSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNavigationShareSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNavigationShareSearchRequest");
      
          AMapNavigationShareSearchRequest* ref = [[AMapNavigationShareSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapShareSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapShareSearchResponse");
      
          AMapShareSearchResponse* ref = [[AMapShareSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureRouteSearchRequest": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureRouteSearchRequest");
      
          AMapFutureRouteSearchRequest* ref = [[AMapFutureRouteSearchRequest alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureRouteSearchResponse": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureRouteSearchResponse");
      
          AMapFutureRouteSearchResponse* ref = [[AMapFutureRouteSearchResponse alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSearchObject": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSearchObject");
      
          AMapSearchObject* ref = [[AMapSearchObject alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeoPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeoPoint");
      
          AMapGeoPoint* ref = [[AMapGeoPoint alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeoPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeoPolygon");
      
          AMapGeoPolygon* ref = [[AMapGeoPolygon alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCity");
      
          AMapCity* ref = [[AMapCity alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSuggestion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSuggestion");
      
          AMapSuggestion* ref = [[AMapSuggestion alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTip": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTip");
      
          AMapTip* ref = [[AMapTip alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapImage");
      
          AMapImage* ref = [[AMapImage alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIExtension": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIExtension");
      
          AMapPOIExtension* ref = [[AMapPOIExtension alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapIndoorData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapIndoorData");
      
          AMapIndoorData* ref = [[AMapIndoorData alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSubPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSubPOI");
      
          AMapSubPOI* ref = [[AMapSubPOI alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoutePOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoutePOI");
      
          AMapRoutePOI* ref = [[AMapRoutePOI alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOI");
      
          AMapPOI* ref = [[AMapPOI alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapAOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapAOI");
      
          AMapAOI* ref = [[AMapAOI alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoad");
      
          AMapRoad* ref = [[AMapRoad alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoadInter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoadInter");
      
          AMapRoadInter* ref = [[AMapRoadInter alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapStreetNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapStreetNumber");
      
          AMapStreetNumber* ref = [[AMapStreetNumber alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusinessArea": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusinessArea");
      
          AMapBusinessArea* ref = [[AMapBusinessArea alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapAddressComponent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapAddressComponent");
      
          AMapAddressComponent* ref = [[AMapAddressComponent alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapReGeocode");
      
          AMapReGeocode* ref = [[AMapReGeocode alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeocode");
      
          AMapGeocode* ref = [[AMapGeocode alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusStop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusStop");
      
          AMapBusStop* ref = [[AMapBusStop alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapBusLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapBusLine");
      
          AMapBusLine* ref = [[AMapBusLine alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistrict": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistrict");
      
          AMapDistrict* ref = [[AMapDistrict alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTMC": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTMC");
      
          AMapTMC* ref = [[AMapTMC alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapStep": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapStep");
      
          AMapStep* ref = [[AMapStep alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPath");
      
          AMapPath* ref = [[AMapPath alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureTimeInfoElement": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureTimeInfoElement");
      
          AMapFutureTimeInfoElement* ref = [[AMapFutureTimeInfoElement alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapFutureTimeInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapFutureTimeInfo");
      
          AMapFutureTimeInfo* ref = [[AMapFutureTimeInfo alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapWalking": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapWalking");
      
          AMapWalking* ref = [[AMapWalking alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTaxi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTaxi");
      
          AMapTaxi* ref = [[AMapTaxi alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRailwayStation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRailwayStation");
      
          AMapRailwayStation* ref = [[AMapRailwayStation alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRailwaySpace": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRailwaySpace");
      
          AMapRailwaySpace* ref = [[AMapRailwaySpace alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRailway": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRailway");
      
          AMapRailway* ref = [[AMapRailway alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSegment": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSegment");
      
          AMapSegment* ref = [[AMapSegment alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTransit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTransit");
      
          AMapTransit* ref = [[AMapTransit alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRoute": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRoute");
      
          AMapRoute* ref = [[AMapRoute alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapDistanceResult": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapDistanceResult");
      
          AMapDistanceResult* ref = [[AMapDistanceResult alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocalWeatherLive": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocalWeatherLive");
      
          AMapLocalWeatherLive* ref = [[AMapLocalWeatherLive alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocalDayWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocalDayWeatherForecast");
      
          AMapLocalDayWeatherForecast* ref = [[AMapLocalDayWeatherForecast alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocalWeatherForecast": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocalWeatherForecast");
      
          AMapLocalWeatherForecast* ref = [[AMapLocalWeatherForecast alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbyUserInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbyUserInfo");
      
          AMapNearbyUserInfo* ref = [[AMapNearbyUserInfo alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTrafficEvaluation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTrafficEvaluation");
      
          AMapTrafficEvaluation* ref = [[AMapTrafficEvaluation alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTrafficRoad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTrafficRoad");
      
          AMapTrafficRoad* ref = [[AMapTrafficRoad alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapTrafficInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapTrafficInfo");
      
          AMapTrafficInfo* ref = [[AMapTrafficInfo alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudImage": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudImage");
      
          AMapCloudImage* ref = [[AMapCloudImage alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapCloudPOI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapCloudPOI");
      
          AMapCloudPOI* ref = [[AMapCloudPOI alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbyUploadInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbyUploadInfo");
      
          AMapNearbyUploadInfo* ref = [[AMapNearbyUploadInfo alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNearbySearchManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNearbySearchManager");
      
          // todo
          AMapNearbySearchManager* ref = [AMapNearbySearchManager alloc];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapSearchAPI": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapSearchAPI");
      
          AMapSearchAPI* ref = [[AMapSearchAPI alloc] init];
          REF_MAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
    };
  }

  return self;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  // 引用Map
  REF_MAP = @{}.mutableCopy;

  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_search_fluttify"
            binaryMessenger:[registrar messenger]];

  [registrar addMethodCallDelegate:[[AmapSearchFluttifyPlugin alloc] initWithFlutterPluginRegistrar:registrar]
                           channel:channel];

  // 注册View
  
}

// Method Handlers
- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
  NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];
  if ([@"ObjectFactory::release" isEqualToString:methodCall.method]) {
    [REF_MAP removeObjectForKey:(NSNumber *) args[@"refId"]];
    methodResult(@"success");
  } else if ([@"ObjectFactory::clearRefMap" isEqualToString:methodCall.method]) {
    [REF_MAP removeAllObjects];
    methodResult(@"success");
  } else if ([@"ObjectFactory::createCLLocationCoordinate2D" isEqualToString:methodCall.method]) {
    CLLocationDegrees latitude = [args[@"latitude"] doubleValue];
    CLLocationDegrees longitude = [args[@"longitude"] doubleValue];

    CLLocationCoordinate2D data = CLLocationCoordinate2DMake(latitude, longitude);

    NSValue* dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];
    REF_MAP[@(dataValue.hash)] = dataValue;

    methodResult(@(dataValue.hash));
  } else {
    if (_handlerMap[methodCall.method] != nil) {
      _handlerMap[methodCall.method](_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }
}

// 委托方法们
- (AMapNearbyUploadInfo*)nearbyInfoForUploading : (AMapNearbySearchManager*)manager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapNearbySearchManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapNearbySearchManagerDelegate::nearbyInfoForUploading");

  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  return nil;
}

- (void)onNearbyInfoUploadedWithError : (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapNearbySearchManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapNearbySearchManagerDelegate::onNearbyInfoUploadedWithError");

  [channel invokeMethod:@"Callback::AMapNearbySearchManagerDelegate::onNearbyInfoUploadedWithError" arguments:@{@"error": @(error.hash)}];
  
}

- (void)onUserInfoClearedWithError : (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapNearbySearchManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapNearbySearchManagerDelegate::onUserInfoClearedWithError");

  [channel invokeMethod:@"Callback::AMapNearbySearchManagerDelegate::onUserInfoClearedWithError" arguments:@{@"error": @(error.hash)}];
  
}

- (void)AMapSearchRequest : (id)request didFailWithError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::AMapSearchRequestDidFailWithError");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::AMapSearchRequestDidFailWithError" arguments:@{@"request": @(((NSObject*) request).hash), @"error": @(error.hash)}];
  
}

- (void)onPOISearchDone : (AMapPOISearchBaseRequest*)request response: (AMapPOISearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onPOISearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onPOISearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onRoutePOISearchDone : (AMapRoutePOISearchRequest*)request response: (AMapRoutePOISearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onRoutePOISearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onRoutePOISearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onGeocodeSearchDone : (AMapGeocodeSearchRequest*)request response: (AMapGeocodeSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onGeocodeSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onGeocodeSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onReGeocodeSearchDone : (AMapReGeocodeSearchRequest*)request response: (AMapReGeocodeSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onReGeocodeSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onReGeocodeSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onInputTipsSearchDone : (AMapInputTipsSearchRequest*)request response: (AMapInputTipsSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onInputTipsSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onInputTipsSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onBusStopSearchDone : (AMapBusStopSearchRequest*)request response: (AMapBusStopSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onBusStopSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onBusStopSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onBusLineSearchDone : (AMapBusLineBaseSearchRequest*)request response: (AMapBusLineSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onBusLineSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onBusLineSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onDistrictSearchDone : (AMapDistrictSearchRequest*)request response: (AMapDistrictSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onDistrictSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onDistrictSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onRouteSearchDone : (AMapRouteSearchBaseRequest*)request response: (AMapRouteSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onRouteSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onRouteSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onFutureRouteSearchDone : (AMapRouteSearchBaseRequest*)request response: (AMapFutureRouteSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onFutureRouteSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onFutureRouteSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onDistanceSearchDone : (AMapDistanceSearchRequest*)request response: (AMapDistanceSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onDistanceSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onDistanceSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onWeatherSearchDone : (AMapWeatherSearchRequest*)request response: (AMapWeatherSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onWeatherSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onWeatherSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onRoadTrafficSearchDone : (AMapRoadTrafficSearchBaseRequest*)request response: (AMapRoadTrafficSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onRoadTrafficSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onRoadTrafficSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onNearbySearchDone : (AMapNearbySearchRequest*)request response: (AMapNearbySearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onNearbySearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onNearbySearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onCloudSearchDone : (AMapCloudSearchBaseRequest*)request response: (AMapCloudPOISearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onCloudSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onCloudSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}

- (void)onShareSearchDone : (AMapShareSearchBaseRequest*)request response: (AMapShareSearchResponse*)response
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapSearchDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapSearchDelegate::onShareSearchDoneResponse");

  [channel invokeMethod:@"Callback::AMapSearchDelegate::onShareSearchDoneResponse" arguments:@{@"request": @(request.hash), @"response": @(response.hash)}];
  
}


@end