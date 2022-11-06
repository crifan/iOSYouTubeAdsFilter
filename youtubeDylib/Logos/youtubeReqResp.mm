#line 1 "/Users/crifan/dev/dev_root/crifan/iOSYouTubeAdsFilter/youtubeDylib/Logos/youtubeReqResp.xm"





#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"







#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class YTPlaybackRequestFactory; @class YTAccountScopedInnerTubeRequestFactory; @class NSHTTPURLResponse; @class YTPlayerService; @class GPBMessage; @class YTIInnerTubeContext; @class YTPlaybackDataLoader; @class MLOnesieRequestFactory; @class HAMDataLoadRequest; @class YTPlayerRequestFactory; @class NSURLRequest; @class YTPlayerBytesSlotFulfillmentAdapter; @class YTAdClientMetadata; @class YTAdClientMetadataAbstractProvider; @class NSMutableURLRequest; @class YTAdBreakMetadataProvider; 
static NSURLRequest* (*_logos_meta_orig$_ungrouped$NSURLRequest$requestWithURL$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURL *); static NSURLRequest* _logos_meta_method$_ungrouped$NSURLRequest$requestWithURL$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURL *); static NSURLRequest* (*_logos_orig$_ungrouped$NSURLRequest$initWithURL$)(_LOGOS_SELF_TYPE_NORMAL NSURLRequest* _LOGOS_SELF_CONST, SEL, NSURL *); static NSURLRequest* _logos_method$_ungrouped$NSURLRequest$initWithURL$(_LOGOS_SELF_TYPE_NORMAL NSURLRequest* _LOGOS_SELF_CONST, SEL, NSURL *); static NSURLRequest* (*_logos_meta_orig$_ungrouped$NSURLRequest$requestWithURL$cachePolicy$timeoutInterval$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURL *, NSURLRequestCachePolicy, NSTimeInterval); static NSURLRequest* _logos_meta_method$_ungrouped$NSURLRequest$requestWithURL$cachePolicy$timeoutInterval$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSURL *, NSURLRequestCachePolicy, NSTimeInterval); static NSURLRequest* (*_logos_orig$_ungrouped$NSURLRequest$initWithURL$cachePolicy$timeoutInterval$)(_LOGOS_SELF_TYPE_NORMAL NSURLRequest* _LOGOS_SELF_CONST, SEL, NSURL *, NSURLRequestCachePolicy, NSTimeInterval); static NSURLRequest* _logos_method$_ungrouped$NSURLRequest$initWithURL$cachePolicy$timeoutInterval$(_LOGOS_SELF_TYPE_NORMAL NSURLRequest* _LOGOS_SELF_CONST, SEL, NSURL *, NSURLRequestCachePolicy, NSTimeInterval); static void (*_logos_orig$_ungrouped$NSMutableURLRequest$setHTTPBody$)(_LOGOS_SELF_TYPE_NORMAL NSMutableURLRequest* _LOGOS_SELF_CONST, SEL, NSData*); static void _logos_method$_ungrouped$NSMutableURLRequest$setHTTPBody$(_LOGOS_SELF_TYPE_NORMAL NSMutableURLRequest* _LOGOS_SELF_CONST, SEL, NSData*); static NSHTTPURLResponse* (*_logos_orig$_ungrouped$NSHTTPURLResponse$initWithURL$statusCode$HTTPVersion$headerFields$)(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST, SEL, NSURL *, NSInteger, NSString *, NSDictionary<NSString *,NSString *> *); static NSHTTPURLResponse* _logos_method$_ungrouped$NSHTTPURLResponse$initWithURL$statusCode$HTTPVersion$headerFields$(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST, SEL, NSURL *, NSInteger, NSString *, NSDictionary<NSString *,NSString *> *); static NSDictionary * (*_logos_orig$_ungrouped$NSHTTPURLResponse$allHeaderFields)(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST, SEL); static NSDictionary * _logos_method$_ungrouped$NSHTTPURLResponse$allHeaderFields(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST, SEL); static NSInteger (*_logos_orig$_ungrouped$NSHTTPURLResponse$statusCode)(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST, SEL); static NSInteger _logos_method$_ungrouped$NSHTTPURLResponse$statusCode(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST, SEL); static HAMDataLoadRequest* (*_logos_orig$_ungrouped$HAMDataLoadRequest$initWithRangedURL$timeoutInterval$HTTPMethod$HTTPContentType$HTTPBody$idempotent$)(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest*, SEL, id, double, NSString*, NSString*, id, _Bool) _LOGOS_RETURN_RETAINED; static HAMDataLoadRequest* _logos_method$_ungrouped$HAMDataLoadRequest$initWithRangedURL$timeoutInterval$HTTPMethod$HTTPContentType$HTTPBody$idempotent$(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest*, SEL, id, double, NSString*, NSString*, id, _Bool) _LOGOS_RETURN_RETAINED; static HAMDataLoadRequest* (*_logos_orig$_ungrouped$HAMDataLoadRequest$initWithRangedURL$)(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest*, SEL, id) _LOGOS_RETURN_RETAINED; static HAMDataLoadRequest* _logos_method$_ungrouped$HAMDataLoadRequest$initWithRangedURL$(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest*, SEL, id) _LOGOS_RETURN_RETAINED; static HAMDataLoadRequest* (*_logos_orig$_ungrouped$HAMDataLoadRequest$initWithURL$)(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest*, SEL, id) _LOGOS_RETURN_RETAINED; static HAMDataLoadRequest* _logos_method$_ungrouped$HAMDataLoadRequest$initWithURL$(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest*, SEL, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$dataLoader$context$cryptor$requestNumber$error$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieRequestFactory* _LOGOS_SELF_CONST, SEL, id, id, id, id, long long, id *); static id _logos_method$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$dataLoader$context$cryptor$requestNumber$error$(_LOGOS_SELF_TYPE_NORMAL MLOnesieRequestFactory* _LOGOS_SELF_CONST, SEL, id, id, id, id, long long, id *); static void (*_logos_orig$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$authorization$dataLoader$context$cryptor$requestNumber$completionHandler$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieRequestFactory* _LOGOS_SELF_CONST, SEL, id, id, id, id, id, long long, id); static void _logos_method$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$authorization$dataLoader$context$cryptor$requestNumber$completionHandler$(_LOGOS_SELF_TYPE_NORMAL MLOnesieRequestFactory* _LOGOS_SELF_CONST, SEL, id, id, id, id, id, long long, id); static id (*_logos_orig$_ungrouped$YTIInnerTubeContext$data)(_LOGOS_SELF_TYPE_NORMAL YTIInnerTubeContext* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$YTIInnerTubeContext$data(_LOGOS_SELF_TYPE_NORMAL YTIInnerTubeContext* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$YTIInnerTubeContext$descriptor)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$YTIInnerTubeContext$descriptor(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static YTIClientInfo* (*_logos_orig$_ungrouped$YTIInnerTubeContext$remoteClient)(_LOGOS_SELF_TYPE_NORMAL YTIInnerTubeContext* _LOGOS_SELF_CONST, SEL); static YTIClientInfo* _logos_method$_ungrouped$YTIInnerTubeContext$remoteClient(_LOGOS_SELF_TYPE_NORMAL YTIInnerTubeContext* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTPlayerService$makePlaybackRequest$responseBlock$errorBlock$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerService* _LOGOS_SELF_CONST, SEL, id, id, id); static id _logos_method$_ungrouped$YTPlayerService$makePlaybackRequest$responseBlock$errorBlock$(_LOGOS_SELF_TYPE_NORMAL YTPlayerService* _LOGOS_SELF_CONST, SEL, id, id, id); static id (*_logos_orig$_ungrouped$YTPlayerRequestFactory$requestForPlayerWithPlayerRequest$URLRequestProperties$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerRequestFactory* _LOGOS_SELF_CONST, SEL, id, id); static id _logos_method$_ungrouped$YTPlayerRequestFactory$requestForPlayerWithPlayerRequest$URLRequestProperties$(_LOGOS_SELF_TYPE_NORMAL YTPlayerRequestFactory* _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_orig$_ungrouped$YTPlayerRequestFactory$innerTubeRequestForPlayerWithVideoID$playlistID$playlistIndex$playbackContext$forOffline$clickTrackingParams$playerParams$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerRequestFactory* _LOGOS_SELF_CONST, SEL, id, id, unsigned long long, id, _Bool, id, id); static id _logos_method$_ungrouped$YTPlayerRequestFactory$innerTubeRequestForPlayerWithVideoID$playlistID$playlistIndex$playbackContext$forOffline$clickTrackingParams$playerParams$(_LOGOS_SELF_TYPE_NORMAL YTPlayerRequestFactory* _LOGOS_SELF_CONST, SEL, id, id, unsigned long long, id, _Bool, id, id); static id (*_logos_orig$_ungrouped$YTPlaybackDataLoader$onlinePromise)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackDataLoader* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$YTPlaybackDataLoader$onlinePromise(_LOGOS_SELF_TYPE_NORMAL YTPlaybackDataLoader* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTPlaybackDataLoader$createPlaybackRequest)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackDataLoader* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$YTPlaybackDataLoader$createPlaybackRequest(_LOGOS_SELF_TYPE_NORMAL YTPlaybackDataLoader* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTPlaybackRequestFactory$playbackRequestForPlayerTransition$visibility$viewportSizeProvider$mediaStickySettings$prefetchContext$)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackRequestFactory* _LOGOS_SELF_CONST, SEL, id, int, id, id, id); static id _logos_method$_ungrouped$YTPlaybackRequestFactory$playbackRequestForPlayerTransition$visibility$viewportSizeProvider$mediaStickySettings$prefetchContext$(_LOGOS_SELF_TYPE_NORMAL YTPlaybackRequestFactory* _LOGOS_SELF_CONST, SEL, id, int, id, id, id); static id (*_logos_orig$_ungrouped$GPBMessage$data)(_LOGOS_SELF_TYPE_NORMAL GPBMessage* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GPBMessage$data(_LOGOS_SELF_TYPE_NORMAL GPBMessage* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTAccountScopedInnerTubeRequestFactory$requestForProtoRequest$withService$needsClickTrackingParams$)(_LOGOS_SELF_TYPE_NORMAL YTAccountScopedInnerTubeRequestFactory* _LOGOS_SELF_CONST, SEL, id, long long, _Bool); static id _logos_method$_ungrouped$YTAccountScopedInnerTubeRequestFactory$requestForProtoRequest$withService$needsClickTrackingParams$(_LOGOS_SELF_TYPE_NORMAL YTAccountScopedInnerTubeRequestFactory* _LOGOS_SELF_CONST, SEL, id, long long, _Bool); static void (*_logos_orig$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter$fillSlot)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBytesSlotFulfillmentAdapter* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter$fillSlot(_LOGOS_SELF_TYPE_NORMAL YTPlayerBytesSlotFulfillmentAdapter* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$YTAdBreakMetadataProvider$dataFromMetadata$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$YTAdBreakMetadataProvider$dataFromMetadata$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id (*_logos_meta_orig$_ungrouped$YTAdClientMetadataAbstractProvider$tagName)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$YTAdClientMetadataAbstractProvider$tagName(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTAdClientMetadata$metadataProviderForProviderName$)(_LOGOS_SELF_TYPE_NORMAL YTAdClientMetadata* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$YTAdClientMetadata$metadataProviderForProviderName$(_LOGOS_SELF_TYPE_NORMAL YTAdClientMetadata* _LOGOS_SELF_CONST, SEL, id); 

#line 17 "/Users/crifan/dev/dev_root/crifan/iOSYouTubeAdsFilter/youtubeDylib/Logos/youtubeReqResp.xm"


static NSURLRequest* _logos_meta_method$_ungrouped$NSURLRequest$requestWithURL$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * URL){
    NSURLRequest* rwu =  _logos_meta_orig$_ungrouped$NSURLRequest$requestWithURL$(self, _cmd, URL);

    if (isYoutubeAdsVideo_current(URL)){
        iosLogInfo("isYoutubeAdsVideo_current: %@ -> rwu=%@", URL, rwu);
        gNoUse = 1;
    }

    return rwu;
}

static NSURLRequest* _logos_method$_ungrouped$NSURLRequest$initWithURL$(_LOGOS_SELF_TYPE_NORMAL NSURLRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * URL){
    NSURLRequest* iwu =  _logos_orig$_ungrouped$NSURLRequest$initWithURL$(self, _cmd, URL);

    if (isYoutubeAdsVideo_current(URL)){
        iosLogInfo("isYoutubeAdsVideo_current: %@ -> iwu=%@", URL, iwu);
        gNoUse = 1;
    }

    return iwu;
}

static NSURLRequest* _logos_meta_method$_ungrouped$NSURLRequest$requestWithURL$cachePolicy$timeoutInterval$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * URL, NSURLRequestCachePolicy cachePolicy, NSTimeInterval timeoutInterval){
    NSURLRequest* rwu_uct =  _logos_meta_orig$_ungrouped$NSURLRequest$requestWithURL$cachePolicy$timeoutInterval$(self, _cmd, URL, cachePolicy, timeoutInterval);

    iosLogInfo("URL=%@,cachePolicy=%lu,timeoutInterval=%f -> rwu_uct=%@", URL, (unsigned long)cachePolicy, timeoutInterval, rwu_uct);
    if (is1SecondVideo(URL)){
        iosLogInfo("URL=%@", URL);
        gNoUse = 1;
    }

    if (isYoutubeAdsVideo_current(URL)){
        gNoUse = 1;
    }

    return rwu_uct;
}

static NSURLRequest* _logos_method$_ungrouped$NSURLRequest$initWithURL$cachePolicy$timeoutInterval$(_LOGOS_SELF_TYPE_NORMAL NSURLRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * URL, NSURLRequestCachePolicy cachePolicy, NSTimeInterval timeoutInterval){
    NSURLRequest* iwu_uct =  _logos_orig$_ungrouped$NSURLRequest$initWithURL$cachePolicy$timeoutInterval$(self, _cmd, URL, cachePolicy, timeoutInterval);

    if (isYoutubeAdsVideo_current(URL)){
        iosLogInfo("isYoutubeAdsVideo_current: URL=%@,cachePolicy=%lu,timeoutInterval=%f -> iwu_uct=%@", URL, (unsigned long)cachePolicy, timeoutInterval, iwu_uct);
        gNoUse = 1;
    }

    return iwu_uct;
}










static void _logos_method$_ungrouped$NSMutableURLRequest$setHTTPBody$(_LOGOS_SELF_TYPE_NORMAL NSMutableURLRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSData* newHttpBodyData) {
    NSURL *reqUrl = [self URL];
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$NSMutableURLRequest$setHTTPBody$(self, _cmd, newHttpBodyData);
}












static NSHTTPURLResponse* _logos_method$_ungrouped$NSHTTPURLResponse$initWithURL$statusCode$HTTPVersion$headerFields$(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * url, NSInteger statusCode, NSString * HTTPVersion, NSDictionary<NSString *,NSString *> * headerFields){
    NSHTTPURLResponse* newUrlResp =  _logos_orig$_ungrouped$NSHTTPURLResponse$initWithURL$statusCode$HTTPVersion$headerFields$(self, _cmd, url, statusCode, HTTPVersion, headerFields);

    if (is1SecondVideo(url)){
        iosLogInfo("url=%@", url);
        gNoUse = 1;
    }

    if (isYoutubeAdsVideo_current(url)){
        iosLogInfo("isYoutubeAdsVideo_current: url=%@,statusCode=%ld,HTTPVersion=%@,headerFields=%@ -> newUrlResp=%@", url, statusCode, HTTPVersion, headerFields, newUrlResp);
        gNoUse = 1;

        if (isYoutubeAdsVideo_ctierA(url)){
            iosLogInfo("isYoutubeAdsVideo_ctierA: url=%@,statusCode=%ld,HTTPVersion=%@,headerFields=%@ -> newUrlResp=%@", url, statusCode, HTTPVersion, headerFields, newUrlResp);
            gNoUse = 1;
        }
    } else {
        
        iosLogInfo("url=%@", url);
        gNoUse = 1;
    }

    return newUrlResp;
}

static NSDictionary * _logos_method$_ungrouped$NSHTTPURLResponse$allHeaderFields(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSURL* curUrl = [self URL];
    if (isYoutubeAdsVideo_current(curUrl)){

        gNoUse = 1;
    }

    NSDictionary* allHeader = _logos_orig$_ungrouped$NSHTTPURLResponse$allHeaderFields(self, _cmd);
    iosLogInfo("curUrl=%@ : allHeader=%@", curUrl, allHeader);
    return allHeader;
}

static NSInteger _logos_method$_ungrouped$NSHTTPURLResponse$statusCode(_LOGOS_SELF_TYPE_NORMAL NSHTTPURLResponse* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSURL* curUrl = [self URL];
    if (isYoutubeAdsVideo_current(curUrl)){

        gNoUse = 1;
    }

    NSInteger respStatusCode = _logos_orig$_ungrouped$NSHTTPURLResponse$statusCode(self, _cmd);
    iosLogInfo("respStatusCode=%ld", respStatusCode);
    return respStatusCode;
}










static HAMDataLoadRequest* _logos_method$_ungrouped$HAMDataLoadRequest$initWithRangedURL$timeoutInterval$HTTPMethod$HTTPContentType$HTTPBody$idempotent$(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest* __unused self, SEL __unused _cmd, id rangeUrl, double timeoutInterval, NSString* HTTPMethod, NSString* HTTPContentType, id HTTPBody, _Bool idempotent) _LOGOS_RETURN_RETAINED{
    iosLogInfo("rangeUrl=%@,timeoutInterval=%f,HTTPMethod=%@,HTTPContentType=%@,HTTPBody=%@,idempotent=%s", rangeUrl, timeoutInterval, HTTPMethod, HTTPContentType, HTTPBody, boolToStr(idempotent));
    gNoUse = 1;
    id newDataLoadReq = _logos_orig$_ungrouped$HAMDataLoadRequest$initWithRangedURL$timeoutInterval$HTTPMethod$HTTPContentType$HTTPBody$idempotent$(self, _cmd, rangeUrl, timeoutInterval, HTTPMethod, HTTPContentType, HTTPBody, idempotent);
    return newDataLoadReq;
}

static HAMDataLoadRequest* _logos_method$_ungrouped$HAMDataLoadRequest$initWithRangedURL$(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest* __unused self, SEL __unused _cmd, id rangeUrl) _LOGOS_RETURN_RETAINED{
    iosLogInfo("rangeUrl=%@", rangeUrl);
    gNoUse = 1;
    id newDataLoadReq = _logos_orig$_ungrouped$HAMDataLoadRequest$initWithRangedURL$(self, _cmd, rangeUrl);
    return newDataLoadReq;
}

static HAMDataLoadRequest* _logos_method$_ungrouped$HAMDataLoadRequest$initWithURL$(_LOGOS_SELF_TYPE_INIT HAMDataLoadRequest* __unused self, SEL __unused _cmd, id url) _LOGOS_RETURN_RETAINED{
    iosLogInfo("url=%@", url);
    gNoUse = 1;
    id newDataLoadReq = _logos_orig$_ungrouped$HAMDataLoadRequest$initWithURL$(self, _cmd, url);
    return newDataLoadReq;
}









static id _logos_method$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$dataLoader$context$cryptor$requestNumber$error$(_LOGOS_SELF_TYPE_NORMAL MLOnesieRequestFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id request, id dataLoader, id context, id cryptor, long long requestNumber, id * error){
    iosLogInfo("request=%@,dataLoader=%@,context=%@,cryptor=%@,requestNumber=%lld,error=%p", request, dataLoader, context, cryptor, requestNumber, error);
    gNoUse = 1;
    id newReqFactory = _logos_orig$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$dataLoader$context$cryptor$requestNumber$error$(self, _cmd, request, dataLoader, context, cryptor, requestNumber, error);
    iosLogInfo("-> newReqFactory=%@", newReqFactory);
    return newReqFactory;
}

static void _logos_method$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$authorization$dataLoader$context$cryptor$requestNumber$completionHandler$(_LOGOS_SELF_TYPE_NORMAL MLOnesieRequestFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id request, id authorization, id dataLoader, id context, id cryptor, long long requestNumber, id completionHandler){
    iosLogInfo("request=%@,authorization=%@,dataLoader=%@,context=%@,cryptor=%@,requestNumber=%lld,completionHandler=%@", request, authorization, dataLoader, context, cryptor, requestNumber, completionHandler);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$authorization$dataLoader$context$cryptor$requestNumber$completionHandler$(self, _cmd, request, authorization, dataLoader, context, cryptor, requestNumber, completionHandler);
}









static id _logos_method$_ungrouped$YTIInnerTubeContext$data(_LOGOS_SELF_TYPE_NORMAL YTIInnerTubeContext* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id ctxData = _logos_orig$_ungrouped$YTIInnerTubeContext$data(self, _cmd);
    iosLogInfo("ctxData=%@", ctxData);
    return ctxData;
}

static id _logos_meta_method$_ungrouped$YTIInnerTubeContext$descriptor(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    gNoUse = 1;
    id curDesc = _logos_meta_orig$_ungrouped$YTIInnerTubeContext$descriptor(self, _cmd);
    iosLogInfo("curDesc=%@", curDesc);
    return curDesc;
}

static YTIClientInfo* _logos_method$_ungrouped$YTIInnerTubeContext$remoteClient(_LOGOS_SELF_TYPE_NORMAL YTIInnerTubeContext* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    gNoUse = 1;
    YTIClientInfo* newClientInfo = _logos_orig$_ungrouped$YTIInnerTubeContext$remoteClient(self, _cmd);
    iosLogInfo("newClientInfo=%@", newClientInfo);
    return newClientInfo;
}










static id _logos_method$_ungrouped$YTPlayerService$makePlaybackRequest$responseBlock$errorBlock$(_LOGOS_SELF_TYPE_NORMAL YTPlayerService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id playbackRequest, id responseBlock, id errorBlock){
    iosLogInfo("playbackRequest=%@,responseBlock=%@,errorBlock=%@", playbackRequest, responseBlock, errorBlock);
    gNoUse = 1;
    id newPlayService = _logos_orig$_ungrouped$YTPlayerService$makePlaybackRequest$responseBlock$errorBlock$(self, _cmd, playbackRequest, responseBlock, errorBlock);
    iosLogInfo("-> newPlayService=%@", newPlayService);
    return newPlayService;
}









static id _logos_method$_ungrouped$YTPlayerRequestFactory$requestForPlayerWithPlayerRequest$URLRequestProperties$(_LOGOS_SELF_TYPE_NORMAL YTPlayerRequestFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id playerRequest, id URLRequestProperties){
    iosLogInfo("playerRequest=%@,URLRequestProperties=%@", playerRequest, URLRequestProperties);
    gNoUse = 1;
    id newReqFactory = _logos_orig$_ungrouped$YTPlayerRequestFactory$requestForPlayerWithPlayerRequest$URLRequestProperties$(self, _cmd, playerRequest, URLRequestProperties);
    iosLogInfo("-> newReqFactory=%@", newReqFactory);
    return newReqFactory;
}

static id _logos_method$_ungrouped$YTPlayerRequestFactory$innerTubeRequestForPlayerWithVideoID$playlistID$playlistIndex$playbackContext$forOffline$clickTrackingParams$playerParams$(_LOGOS_SELF_TYPE_NORMAL YTPlayerRequestFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id videoID, id playlistID, unsigned long long playlistIndex, id playbackContext, _Bool forOffline, id clickTrackingParams, id playerParams){
    iosLogInfo("videoID=%@,playlistID=%@,playlistIndex=%lld,playbackContext=%@,forOffline=%s,clickTrackingParams=%@,playerParams=%@", videoID, playlistID, playlistIndex, playbackContext, boolToStr(forOffline), clickTrackingParams, playerParams);
    gNoUse = 1;
    id newPlayerReqFactory = _logos_orig$_ungrouped$YTPlayerRequestFactory$innerTubeRequestForPlayerWithVideoID$playlistID$playlistIndex$playbackContext$forOffline$clickTrackingParams$playerParams$(self, _cmd, videoID, playlistID, playlistIndex, playbackContext, forOffline, clickTrackingParams, playerParams);
    iosLogInfo("-> newPlayerReqFactory=%@", newPlayerReqFactory);
    return newPlayerReqFactory;
}









static id _logos_method$_ungrouped$YTPlaybackDataLoader$onlinePromise(_LOGOS_SELF_TYPE_NORMAL YTPlaybackDataLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    gNoUse = 1;
    id newPromise = _logos_orig$_ungrouped$YTPlaybackDataLoader$onlinePromise(self, _cmd);
    iosLogInfo("-> newPromise=%@", newPromise);
    return newPromise;
}

static id _logos_method$_ungrouped$YTPlaybackDataLoader$createPlaybackRequest(_LOGOS_SELF_TYPE_NORMAL YTPlaybackDataLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    gNoUse = 1;
    id newReq = _logos_orig$_ungrouped$YTPlaybackDataLoader$createPlaybackRequest(self, _cmd);
    iosLogInfo("-> newReq=%@", newReq);
    return newReq;
}









static id _logos_method$_ungrouped$YTPlaybackRequestFactory$playbackRequestForPlayerTransition$visibility$viewportSizeProvider$mediaStickySettings$prefetchContext$(_LOGOS_SELF_TYPE_NORMAL YTPlaybackRequestFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id playerTransition, int visibility, id viewportSizeProvider, id mediaStickySettings, id prefetchContext){
    iosLogInfo("playerTransition=%@,visibility=%d,viewportSizeProvider=%@,mediaStickySettings=%@,prefetchContext=%@", playerTransition, visibility, viewportSizeProvider, mediaStickySettings, prefetchContext);
    gNoUse = 1;
    id newPlaybackReqFactory = _logos_orig$_ungrouped$YTPlaybackRequestFactory$playbackRequestForPlayerTransition$visibility$viewportSizeProvider$mediaStickySettings$prefetchContext$(self, _cmd, playerTransition, visibility, viewportSizeProvider, mediaStickySettings, prefetchContext);
    iosLogInfo("-> newPlaybackReqFactory=%@", newPlaybackReqFactory);
    return newPlaybackReqFactory;
}










static id _logos_method$_ungrouped$GPBMessage$data(_LOGOS_SELF_TYPE_NORMAL GPBMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    gNoUse = 1;
    id neGpbwData = _logos_orig$_ungrouped$GPBMessage$data(self, _cmd);
    iosLogInfo("-> neGpbwData=%@", neGpbwData);
    return neGpbwData;
}









static id _logos_method$_ungrouped$YTAccountScopedInnerTubeRequestFactory$requestForProtoRequest$withService$needsClickTrackingParams$(_LOGOS_SELF_TYPE_NORMAL YTAccountScopedInnerTubeRequestFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id protoRequest, long long serviceNumber, _Bool needsClickTrackingParams){
    iosLogInfo("protoRequest=%@,serviceNumber=%lld,needsClickTrackingParams=%s", protoRequest, serviceNumber, boolToStr(needsClickTrackingParams));
    if (ServiceNumber_AdBreak == serviceNumber){
        iosLogInfo("is ServiceNumber_AdBreak: %lld", serviceNumber);
        gNoUse = 1;
    }

    id newRequest = _logos_orig$_ungrouped$YTAccountScopedInnerTubeRequestFactory$requestForProtoRequest$withService$needsClickTrackingParams$(self, _cmd, protoRequest, serviceNumber, needsClickTrackingParams);
    return newRequest;
}










static void _logos_method$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter$fillSlot(_LOGOS_SELF_TYPE_NORMAL YTPlayerBytesSlotFulfillmentAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter$fillSlot(self, _cmd);
}









static id _logos_meta_method$_ungrouped$YTAdBreakMetadataProvider$dataFromMetadata$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id metadata){
    id data = _logos_meta_orig$_ungrouped$YTAdBreakMetadataProvider$dataFromMetadata$(self, _cmd, metadata);
    iosLogInfo("metadata=%@ -> data=%@", metadata, data);
    return data;
}









static id _logos_meta_method$_ungrouped$YTAdClientMetadataAbstractProvider$tagName(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id curTagName = _logos_meta_orig$_ungrouped$YTAdClientMetadataAbstractProvider$tagName(self, _cmd);
    iosLogInfo("curTagName=%@", curTagName);
    return curTagName;
}









static id _logos_method$_ungrouped$YTAdClientMetadata$metadataProviderForProviderName$(_LOGOS_SELF_TYPE_NORMAL YTAdClientMetadata* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id providerName){
    id metadataProvider = _logos_orig$_ungrouped$YTAdClientMetadata$metadataProviderForProviderName$(self, _cmd, providerName);
    iosLogInfo("providerName=%@ -> metadataProvider=%@", providerName, metadataProvider);
    return metadataProvider;
}






static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NSURLRequest = objc_getClass("NSURLRequest"); Class _logos_metaclass$_ungrouped$NSURLRequest = object_getClass(_logos_class$_ungrouped$NSURLRequest); { MSHookMessageEx(_logos_metaclass$_ungrouped$NSURLRequest, @selector(requestWithURL:), (IMP)&_logos_meta_method$_ungrouped$NSURLRequest$requestWithURL$, (IMP*)&_logos_meta_orig$_ungrouped$NSURLRequest$requestWithURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSURLRequest, @selector(initWithURL:), (IMP)&_logos_method$_ungrouped$NSURLRequest$initWithURL$, (IMP*)&_logos_orig$_ungrouped$NSURLRequest$initWithURL$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$NSURLRequest, @selector(requestWithURL:cachePolicy:timeoutInterval:), (IMP)&_logos_meta_method$_ungrouped$NSURLRequest$requestWithURL$cachePolicy$timeoutInterval$, (IMP*)&_logos_meta_orig$_ungrouped$NSURLRequest$requestWithURL$cachePolicy$timeoutInterval$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSURLRequest, @selector(initWithURL:cachePolicy:timeoutInterval:), (IMP)&_logos_method$_ungrouped$NSURLRequest$initWithURL$cachePolicy$timeoutInterval$, (IMP*)&_logos_orig$_ungrouped$NSURLRequest$initWithURL$cachePolicy$timeoutInterval$);}Class _logos_class$_ungrouped$NSMutableURLRequest = objc_getClass("NSMutableURLRequest"); { MSHookMessageEx(_logos_class$_ungrouped$NSMutableURLRequest, @selector(setHTTPBody:), (IMP)&_logos_method$_ungrouped$NSMutableURLRequest$setHTTPBody$, (IMP*)&_logos_orig$_ungrouped$NSMutableURLRequest$setHTTPBody$);}Class _logos_class$_ungrouped$NSHTTPURLResponse = objc_getClass("NSHTTPURLResponse"); { MSHookMessageEx(_logos_class$_ungrouped$NSHTTPURLResponse, @selector(initWithURL:statusCode:HTTPVersion:headerFields:), (IMP)&_logos_method$_ungrouped$NSHTTPURLResponse$initWithURL$statusCode$HTTPVersion$headerFields$, (IMP*)&_logos_orig$_ungrouped$NSHTTPURLResponse$initWithURL$statusCode$HTTPVersion$headerFields$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSHTTPURLResponse, @selector(allHeaderFields), (IMP)&_logos_method$_ungrouped$NSHTTPURLResponse$allHeaderFields, (IMP*)&_logos_orig$_ungrouped$NSHTTPURLResponse$allHeaderFields);}{ MSHookMessageEx(_logos_class$_ungrouped$NSHTTPURLResponse, @selector(statusCode), (IMP)&_logos_method$_ungrouped$NSHTTPURLResponse$statusCode, (IMP*)&_logos_orig$_ungrouped$NSHTTPURLResponse$statusCode);}Class _logos_class$_ungrouped$HAMDataLoadRequest = objc_getClass("HAMDataLoadRequest"); { MSHookMessageEx(_logos_class$_ungrouped$HAMDataLoadRequest, @selector(initWithRangedURL:timeoutInterval:HTTPMethod:HTTPContentType:HTTPBody:idempotent:), (IMP)&_logos_method$_ungrouped$HAMDataLoadRequest$initWithRangedURL$timeoutInterval$HTTPMethod$HTTPContentType$HTTPBody$idempotent$, (IMP*)&_logos_orig$_ungrouped$HAMDataLoadRequest$initWithRangedURL$timeoutInterval$HTTPMethod$HTTPContentType$HTTPBody$idempotent$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMDataLoadRequest, @selector(initWithRangedURL:), (IMP)&_logos_method$_ungrouped$HAMDataLoadRequest$initWithRangedURL$, (IMP*)&_logos_orig$_ungrouped$HAMDataLoadRequest$initWithRangedURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMDataLoadRequest, @selector(initWithURL:), (IMP)&_logos_method$_ungrouped$HAMDataLoadRequest$initWithURL$, (IMP*)&_logos_orig$_ungrouped$HAMDataLoadRequest$initWithURL$);}Class _logos_class$_ungrouped$MLOnesieRequestFactory = objc_getClass("MLOnesieRequestFactory"); { MSHookMessageEx(_logos_class$_ungrouped$MLOnesieRequestFactory, @selector(onesieRequestForPlayerRequest:dataLoader:context:cryptor:requestNumber:error:), (IMP)&_logos_method$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$dataLoader$context$cryptor$requestNumber$error$, (IMP*)&_logos_orig$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$dataLoader$context$cryptor$requestNumber$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieRequestFactory, @selector(onesieRequestForPlayerRequest:authorization:dataLoader:context:cryptor:requestNumber:completionHandler:), (IMP)&_logos_method$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$authorization$dataLoader$context$cryptor$requestNumber$completionHandler$, (IMP*)&_logos_orig$_ungrouped$MLOnesieRequestFactory$onesieRequestForPlayerRequest$authorization$dataLoader$context$cryptor$requestNumber$completionHandler$);}Class _logos_class$_ungrouped$YTIInnerTubeContext = objc_getClass("YTIInnerTubeContext"); Class _logos_metaclass$_ungrouped$YTIInnerTubeContext = object_getClass(_logos_class$_ungrouped$YTIInnerTubeContext); { MSHookMessageEx(_logos_class$_ungrouped$YTIInnerTubeContext, @selector(data), (IMP)&_logos_method$_ungrouped$YTIInnerTubeContext$data, (IMP*)&_logos_orig$_ungrouped$YTIInnerTubeContext$data);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$YTIInnerTubeContext, @selector(descriptor), (IMP)&_logos_meta_method$_ungrouped$YTIInnerTubeContext$descriptor, (IMP*)&_logos_meta_orig$_ungrouped$YTIInnerTubeContext$descriptor);}{ MSHookMessageEx(_logos_class$_ungrouped$YTIInnerTubeContext, @selector(remoteClient), (IMP)&_logos_method$_ungrouped$YTIInnerTubeContext$remoteClient, (IMP*)&_logos_orig$_ungrouped$YTIInnerTubeContext$remoteClient);}Class _logos_class$_ungrouped$YTPlayerService = objc_getClass("YTPlayerService"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlayerService, @selector(makePlaybackRequest:responseBlock:errorBlock:), (IMP)&_logos_method$_ungrouped$YTPlayerService$makePlaybackRequest$responseBlock$errorBlock$, (IMP*)&_logos_orig$_ungrouped$YTPlayerService$makePlaybackRequest$responseBlock$errorBlock$);}Class _logos_class$_ungrouped$YTPlayerRequestFactory = objc_getClass("YTPlayerRequestFactory"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlayerRequestFactory, @selector(requestForPlayerWithPlayerRequest:URLRequestProperties:), (IMP)&_logos_method$_ungrouped$YTPlayerRequestFactory$requestForPlayerWithPlayerRequest$URLRequestProperties$, (IMP*)&_logos_orig$_ungrouped$YTPlayerRequestFactory$requestForPlayerWithPlayerRequest$URLRequestProperties$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerRequestFactory, @selector(innerTubeRequestForPlayerWithVideoID:playlistID:playlistIndex:playbackContext:forOffline:clickTrackingParams:playerParams:), (IMP)&_logos_method$_ungrouped$YTPlayerRequestFactory$innerTubeRequestForPlayerWithVideoID$playlistID$playlistIndex$playbackContext$forOffline$clickTrackingParams$playerParams$, (IMP*)&_logos_orig$_ungrouped$YTPlayerRequestFactory$innerTubeRequestForPlayerWithVideoID$playlistID$playlistIndex$playbackContext$forOffline$clickTrackingParams$playerParams$);}Class _logos_class$_ungrouped$YTPlaybackDataLoader = objc_getClass("YTPlaybackDataLoader"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlaybackDataLoader, @selector(onlinePromise), (IMP)&_logos_method$_ungrouped$YTPlaybackDataLoader$onlinePromise, (IMP*)&_logos_orig$_ungrouped$YTPlaybackDataLoader$onlinePromise);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlaybackDataLoader, @selector(createPlaybackRequest), (IMP)&_logos_method$_ungrouped$YTPlaybackDataLoader$createPlaybackRequest, (IMP*)&_logos_orig$_ungrouped$YTPlaybackDataLoader$createPlaybackRequest);}Class _logos_class$_ungrouped$YTPlaybackRequestFactory = objc_getClass("YTPlaybackRequestFactory"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlaybackRequestFactory, @selector(playbackRequestForPlayerTransition:visibility:viewportSizeProvider:mediaStickySettings:prefetchContext:), (IMP)&_logos_method$_ungrouped$YTPlaybackRequestFactory$playbackRequestForPlayerTransition$visibility$viewportSizeProvider$mediaStickySettings$prefetchContext$, (IMP*)&_logos_orig$_ungrouped$YTPlaybackRequestFactory$playbackRequestForPlayerTransition$visibility$viewportSizeProvider$mediaStickySettings$prefetchContext$);}Class _logos_class$_ungrouped$GPBMessage = objc_getClass("GPBMessage"); { MSHookMessageEx(_logos_class$_ungrouped$GPBMessage, @selector(data), (IMP)&_logos_method$_ungrouped$GPBMessage$data, (IMP*)&_logos_orig$_ungrouped$GPBMessage$data);}Class _logos_class$_ungrouped$YTAccountScopedInnerTubeRequestFactory = objc_getClass("YTAccountScopedInnerTubeRequestFactory"); { MSHookMessageEx(_logos_class$_ungrouped$YTAccountScopedInnerTubeRequestFactory, @selector(requestForProtoRequest:withService:needsClickTrackingParams:), (IMP)&_logos_method$_ungrouped$YTAccountScopedInnerTubeRequestFactory$requestForProtoRequest$withService$needsClickTrackingParams$, (IMP*)&_logos_orig$_ungrouped$YTAccountScopedInnerTubeRequestFactory$requestForProtoRequest$withService$needsClickTrackingParams$);}Class _logos_class$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter = objc_getClass("YTPlayerBytesSlotFulfillmentAdapter"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter, @selector(fillSlot), (IMP)&_logos_method$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter$fillSlot, (IMP*)&_logos_orig$_ungrouped$YTPlayerBytesSlotFulfillmentAdapter$fillSlot);}Class _logos_class$_ungrouped$YTAdBreakMetadataProvider = objc_getClass("YTAdBreakMetadataProvider"); Class _logos_metaclass$_ungrouped$YTAdBreakMetadataProvider = object_getClass(_logos_class$_ungrouped$YTAdBreakMetadataProvider); { MSHookMessageEx(_logos_metaclass$_ungrouped$YTAdBreakMetadataProvider, @selector(dataFromMetadata:), (IMP)&_logos_meta_method$_ungrouped$YTAdBreakMetadataProvider$dataFromMetadata$, (IMP*)&_logos_meta_orig$_ungrouped$YTAdBreakMetadataProvider$dataFromMetadata$);}Class _logos_class$_ungrouped$YTAdClientMetadataAbstractProvider = objc_getClass("YTAdClientMetadataAbstractProvider"); Class _logos_metaclass$_ungrouped$YTAdClientMetadataAbstractProvider = object_getClass(_logos_class$_ungrouped$YTAdClientMetadataAbstractProvider); { MSHookMessageEx(_logos_metaclass$_ungrouped$YTAdClientMetadataAbstractProvider, @selector(tagName), (IMP)&_logos_meta_method$_ungrouped$YTAdClientMetadataAbstractProvider$tagName, (IMP*)&_logos_meta_orig$_ungrouped$YTAdClientMetadataAbstractProvider$tagName);}Class _logos_class$_ungrouped$YTAdClientMetadata = objc_getClass("YTAdClientMetadata"); { MSHookMessageEx(_logos_class$_ungrouped$YTAdClientMetadata, @selector(metadataProviderForProviderName:), (IMP)&_logos_method$_ungrouped$YTAdClientMetadata$metadataProviderForProviderName$, (IMP*)&_logos_orig$_ungrouped$YTAdClientMetadata$metadataProviderForProviderName$);}} }
#line 404 "/Users/crifan/dev/dev_root/crifan/iOSYouTubeAdsFilter/youtubeDylib/Logos/youtubeReqResp.xm"
