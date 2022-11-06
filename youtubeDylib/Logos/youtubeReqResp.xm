/*
 File: youtubeReqResp.xm
 Function: Youtube hook request and response related
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"


/*------------------------------------------------------------------------------
 NSURLRequest
------------------------------------------------------------------------------*/

%hook NSURLRequest

+ (NSURLRequest*)requestWithURL:(NSURL *)URL{
    NSURLRequest* rwu =  %orig;

    if (isYoutubeAdsVideo_current(URL)){
        iosLogInfo("isYoutubeAdsVideo_current: %@ -> rwu=%@", URL, rwu);
        gNoUse = 1;
    }

    return rwu;
}

- (NSURLRequest*)initWithURL:(NSURL *)URL{
    NSURLRequest* iwu =  %orig;

    if (isYoutubeAdsVideo_current(URL)){
        iosLogInfo("isYoutubeAdsVideo_current: %@ -> iwu=%@", URL, iwu);
        gNoUse = 1;
    }

    return iwu;
}

+ (NSURLRequest*)requestWithURL:(NSURL *)URL cachePolicy:(NSURLRequestCachePolicy)cachePolicy timeoutInterval:(NSTimeInterval)timeoutInterval{
    NSURLRequest* rwu_uct =  %orig;

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

- (NSURLRequest*)initWithURL:(NSURL *)URL cachePolicy:(NSURLRequestCachePolicy)cachePolicy timeoutInterval:(NSTimeInterval)timeoutInterval{
    NSURLRequest* iwu_uct =  %orig;

    if (isYoutubeAdsVideo_current(URL)){
        iosLogInfo("isYoutubeAdsVideo_current: URL=%@,cachePolicy=%lu,timeoutInterval=%f -> iwu_uct=%@", URL, (unsigned long)cachePolicy, timeoutInterval, iwu_uct);
        gNoUse = 1;
    }

    return iwu_uct;
}

%end


/*------------------------------------------------------------------------------
 NSMutableURLRequest
------------------------------------------------------------------------------*/

%hook NSMutableURLRequest

- (void)setHTTPBody: (NSData*)newHttpBodyData {
    NSURL *reqUrl = [self URL];
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    %orig;
}

%end

/*------------------------------------------------------------------------------
 NSHTTPURLResponse
------------------------------------------------------------------------------*/

%hook NSHTTPURLResponse

- (NSHTTPURLResponse*)initWithURL:(NSURL *)url
                 statusCode:(NSInteger)statusCode
                HTTPVersion:(NSString *)HTTPVersion
                headerFields:(NSDictionary<NSString *,NSString *> *)headerFields{
    NSHTTPURLResponse* newUrlResp =  %orig;

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
        // TODO: after test, change back to ads video filter
        iosLogInfo("url=%@", url);
        gNoUse = 1;
    }

    return newUrlResp;
}

-(NSDictionary *)allHeaderFields{
    NSURL* curUrl = [self URL];
    if (isYoutubeAdsVideo_current(curUrl)){
//        iosLogInfo("isYoutubeAdsVideo: self=%@", self);
        gNoUse = 1;
    }

    NSDictionary* allHeader = %orig;
    iosLogInfo("curUrl=%@ : allHeader=%@", curUrl, allHeader);
    return allHeader;
}

-(NSInteger)statusCode{
    NSURL* curUrl = [self URL];
    if (isYoutubeAdsVideo_current(curUrl)){
//        iosLogInfo("isYoutubeAdsVideo: self=%@", self);
        gNoUse = 1;
    }

    NSInteger respStatusCode = %orig;
    iosLogInfo("respStatusCode=%ld", respStatusCode);
    return respStatusCode;
}

%end


/*------------------------------------------------------------------------------
 HAMDataLoadRequest
------------------------------------------------------------------------------*/

%hook HAMDataLoadRequest

- (id)initWithRangedURL:(id)rangeUrl timeoutInterval:(double)timeoutInterval HTTPMethod:(NSString*)HTTPMethod HTTPContentType:(NSString*)HTTPContentType HTTPBody:(id)HTTPBody idempotent:(_Bool)idempotent{
    iosLogInfo("rangeUrl=%@,timeoutInterval=%f,HTTPMethod=%@,HTTPContentType=%@,HTTPBody=%@,idempotent=%s", rangeUrl, timeoutInterval, HTTPMethod, HTTPContentType, HTTPBody, boolToStr(idempotent));
    gNoUse = 1;
    id newDataLoadReq = %orig;
    return newDataLoadReq;
}

- (id)initWithRangedURL:(id)rangeUrl{
    iosLogInfo("rangeUrl=%@", rangeUrl);
    gNoUse = 1;
    id newDataLoadReq = %orig;
    return newDataLoadReq;
}

- (id)initWithURL:(id)url{
    iosLogInfo("url=%@", url);
    gNoUse = 1;
    id newDataLoadReq = %orig;
    return newDataLoadReq;
}

%end

/*------------------------------------------------------------------------------
 MLOnesieRequestFactory
------------------------------------------------------------------------------*/

%hook MLOnesieRequestFactory

- (id)onesieRequestForPlayerRequest:(id)request dataLoader:(id)dataLoader context:(id)context cryptor:(id)cryptor requestNumber:(long long)requestNumber error:(id *)error{
    iosLogInfo("request=%@,dataLoader=%@,context=%@,cryptor=%@,requestNumber=%lld,error=%p", request, dataLoader, context, cryptor, requestNumber, error);
    gNoUse = 1;
    id newReqFactory = %orig;
    iosLogInfo("-> newReqFactory=%@", newReqFactory);
    return newReqFactory;
}

- (void)onesieRequestForPlayerRequest:(id)request authorization:(id)authorization dataLoader:(id)dataLoader context:(id)context cryptor:(id)cryptor requestNumber:(long long)requestNumber completionHandler:(id)completionHandler{
    iosLogInfo("request=%@,authorization=%@,dataLoader=%@,context=%@,cryptor=%@,requestNumber=%lld,completionHandler=%@", request, authorization, dataLoader, context, cryptor, requestNumber, completionHandler);
    gNoUse = 1;
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTIInnerTubeContext
------------------------------------------------------------------------------*/

%hook YTIInnerTubeContext

- (id)data{
    id ctxData = %orig;
    iosLogInfo("ctxData=%@", ctxData);
    return ctxData;
}

+ (id)descriptor{
    gNoUse = 1;
    id curDesc = %orig;
    iosLogInfo("curDesc=%@", curDesc);
    return curDesc;
}

-(YTIClientInfo*)remoteClient{
    gNoUse = 1;
    YTIClientInfo* newClientInfo = %orig;
    iosLogInfo("newClientInfo=%@", newClientInfo);
    return newClientInfo;
}

%end


/*------------------------------------------------------------------------------
 YTPlayerService
------------------------------------------------------------------------------*/

%hook YTPlayerService

- (id)makePlaybackRequest:(id)playbackRequest responseBlock:(id)responseBlock errorBlock:(id)errorBlock{
    iosLogInfo("playbackRequest=%@,responseBlock=%@,errorBlock=%@", playbackRequest, responseBlock, errorBlock);
    gNoUse = 1;
    id newPlayService = %orig;
    iosLogInfo("-> newPlayService=%@", newPlayService);
    return newPlayService;
}

%end

/*------------------------------------------------------------------------------
 YTPlayerRequestFactory
------------------------------------------------------------------------------*/

%hook YTPlayerRequestFactory

- (id)requestForPlayerWithPlayerRequest:(id)playerRequest URLRequestProperties:(id)URLRequestProperties{
    iosLogInfo("playerRequest=%@,URLRequestProperties=%@", playerRequest, URLRequestProperties);
    gNoUse = 1;
    id newReqFactory = %orig;
    iosLogInfo("-> newReqFactory=%@", newReqFactory);
    return newReqFactory;
}

- (id)innerTubeRequestForPlayerWithVideoID:(id)videoID playlistID:(id)playlistID playlistIndex:(unsigned long long)playlistIndex playbackContext:(id)playbackContext forOffline:(_Bool)forOffline clickTrackingParams:(id)clickTrackingParams playerParams:(id)playerParams{
    iosLogInfo("videoID=%@,playlistID=%@,playlistIndex=%lld,playbackContext=%@,forOffline=%s,clickTrackingParams=%@,playerParams=%@", videoID, playlistID, playlistIndex, playbackContext, boolToStr(forOffline), clickTrackingParams, playerParams);
    gNoUse = 1;
    id newPlayerReqFactory = %orig;
    iosLogInfo("-> newPlayerReqFactory=%@", newPlayerReqFactory);
    return newPlayerReqFactory;
}

%end

/*------------------------------------------------------------------------------
 YTPlaybackDataLoader
------------------------------------------------------------------------------*/

%hook YTPlaybackDataLoader

- (id)onlinePromise{
    iosLogInfo("%s", "");
    gNoUse = 1;
    id newPromise = %orig;
    iosLogInfo("-> newPromise=%@", newPromise);
    return newPromise;
}

- (id)createPlaybackRequest{
    iosLogInfo("%s", "");
    gNoUse = 1;
    id newReq = %orig;
    iosLogInfo("-> newReq=%@", newReq);
    return newReq;
}

%end

/*------------------------------------------------------------------------------
 YTPlaybackRequestFactory
------------------------------------------------------------------------------*/

%hook YTPlaybackRequestFactory

- (id)playbackRequestForPlayerTransition:(id)playerTransition visibility:(int)visibility viewportSizeProvider:(id)viewportSizeProvider mediaStickySettings:(id)mediaStickySettings prefetchContext:(id)prefetchContext{
    iosLogInfo("playerTransition=%@,visibility=%d,viewportSizeProvider=%@,mediaStickySettings=%@,prefetchContext=%@", playerTransition, visibility, viewportSizeProvider, mediaStickySettings, prefetchContext);
    gNoUse = 1;
    id newPlaybackReqFactory = %orig;
    iosLogInfo("-> newPlaybackReqFactory=%@", newPlaybackReqFactory);
    return newPlaybackReqFactory;
}

%end


/*------------------------------------------------------------------------------
 GPBMessage
------------------------------------------------------------------------------*/

%hook GPBMessage

- (id)data{
    gNoUse = 1;
    id neGpbwData = %orig;
    iosLogInfo("-> neGpbwData=%@", neGpbwData);
    return neGpbwData;
}

%end

/*------------------------------------------------------------------------------
 YTAccountScopedInnerTubeRequestFactory
------------------------------------------------------------------------------*/

%hook YTAccountScopedInnerTubeRequestFactory

- (id)requestForProtoRequest:(id)protoRequest withService:(long long)serviceNumber needsClickTrackingParams:(_Bool)needsClickTrackingParams{
    iosLogInfo("protoRequest=%@,serviceNumber=%lld,needsClickTrackingParams=%s", protoRequest, serviceNumber, boolToStr(needsClickTrackingParams));
    if (ServiceNumber_AdBreak == serviceNumber){
        iosLogInfo("is ServiceNumber_AdBreak: %lld", serviceNumber);
        gNoUse = 1;
    }

    id newRequest = %orig;
    return newRequest;
}

%end


/*------------------------------------------------------------------------------
 YTPlayerBytesSlotFulfillmentAdapter
------------------------------------------------------------------------------*/

%hook YTPlayerBytesSlotFulfillmentAdapter

- (void)fillSlot{
    iosLogInfo("%s", "");
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTAdBreakMetadataProvider
------------------------------------------------------------------------------*/

%hook YTAdBreakMetadataProvider

+ (id)dataFromMetadata:(id)metadata{
    id data = %orig;
    iosLogInfo("metadata=%@ -> data=%@", metadata, data);
    return data;
}

%end

/*------------------------------------------------------------------------------
 YTAdClientMetadataAbstractProvider
------------------------------------------------------------------------------*/

%hook YTAdClientMetadataAbstractProvider

+ (id)tagName{
    id curTagName = %orig;
    iosLogInfo("curTagName=%@", curTagName);
    return curTagName;
}

%end

/*------------------------------------------------------------------------------
 YTAdClientMetadata
------------------------------------------------------------------------------*/

%hook YTAdClientMetadata

- (id)metadataProviderForProviderName:(id)providerName{
    id metadataProvider = %orig;
    iosLogInfo("providerName=%@ -> metadataProvider=%@", providerName, metadataProvider);
    return metadataProvider;
}

%end




