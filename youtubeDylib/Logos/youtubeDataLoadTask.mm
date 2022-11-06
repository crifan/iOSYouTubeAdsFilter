#line 1 "/Users/crifan/dev/dev_root/company/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeDataLoadTask.xm"





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

@class MLOnesieConnectionOpener; @class MLServerABRLoader; @class MLOnesieUMPFetcherTask; @class MLNetworkChunkLoadTask; @class MLHAMDataLoadTaskObserverImpl; @class MLServerABRController; @class HAMCronetDataLoader; @class MLServerABRDataLoadTask; 
static _Bool (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$shouldFollowRedirectWithResponse$toURL$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id, id); static _Bool _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveResponse$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveResponse$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveData$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$buildRedirectorURL)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$MLOnesieConnectionOpener$buildRedirectorURL(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$scheduleNextRequestUsingStartDelay$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$MLOnesieConnectionOpener$scheduleNextRequestUsingStartDelay$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL, _Bool); static void (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$onPingTimer)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MLOnesieConnectionOpener$onPingTimer(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MLOnesieConnectionOpener$cancelScheduledRequest)(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MLOnesieConnectionOpener$cancelScheduledRequest(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST, SEL); static MLServerABRDataLoadTask* (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$initWithTask$networkRequestObserver$requestNumber$dataLoader$)(_LOGOS_SELF_TYPE_INIT MLServerABRDataLoadTask*, SEL, id, id, long long, id) _LOGOS_RETURN_RETAINED; static MLServerABRDataLoadTask* _logos_method$_ungrouped$MLServerABRDataLoadTask$initWithTask$networkRequestObserver$requestNumber$dataLoader$(_LOGOS_SELF_TYPE_INIT MLServerABRDataLoadTask*, SEL, id, id, long long, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$startWithDelegate$delegateQueue$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRDataLoadTask$startWithDelegate$delegateQueue$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static _Bool (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$shouldFollowRedirectWithResponse$toURL$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id, id); static _Bool _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveData$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveResponse$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveResponse$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRDataLoadTask$cancel)(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MLServerABRDataLoadTask$cancel(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST, SEL); static MLServerABRLoader* (*_logos_orig$_ungrouped$MLServerABRLoader$initWithQueue$dataLoader$playerEventCenter$playerItemEventCenter$streamingData$mediaCommonConfig$hamplayerConfig$onesieVideoData$QOEController$loadRetryPolicy$isLiveSource$livePlayerConfig$windowedLiveConfig$metadataRelay$delegate$latencyLogger$watchEndpointUstreamerConfig$periodID$firstRequestNumber$cache$)(_LOGOS_SELF_TYPE_INIT MLServerABRLoader*, SEL, id, id, id, id, id, id, id, id, id, id, _Bool, id, id, id, id, id, id, long long, long long, id) _LOGOS_RETURN_RETAINED; static MLServerABRLoader* _logos_method$_ungrouped$MLServerABRLoader$initWithQueue$dataLoader$playerEventCenter$playerItemEventCenter$streamingData$mediaCommonConfig$hamplayerConfig$onesieVideoData$QOEController$loadRetryPolicy$isLiveSource$livePlayerConfig$windowedLiveConfig$metadataRelay$delegate$latencyLogger$watchEndpointUstreamerConfig$periodID$firstRequestNumber$cache$(_LOGOS_SELF_TYPE_INIT MLServerABRLoader*, SEL, id, id, id, id, id, id, id, id, id, id, _Bool, id, id, id, id, id, id, long long, long long, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$MLServerABRLoader$updateLoadRetryPolicyOnLoadCompletionWithError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLServerABRLoader$updateLoadRetryPolicyOnLoadCompletionWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id); static _Bool (*_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$shouldFollowRedirectWithResponse$toURL$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id, id); static _Bool _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveResponse$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveResponse$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveData$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_orig$_ungrouped$MLServerABRLoader$chunkForMediaHeader$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, const void *); static id _logos_method$_ungrouped$MLServerABRLoader$chunkForMediaHeader$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, const void *); static void (*_logos_orig$_ungrouped$MLServerABRLoader$onChunk$completeWithError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, HAMChunk*, NSError*); static void _logos_method$_ungrouped$MLServerABRLoader$onChunk$completeWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, HAMChunk*, NSError*); static void (*_logos_orig$_ungrouped$MLServerABRLoader$didParseFormatInitializationMetadata$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, const void *); static void _logos_method$_ungrouped$MLServerABRLoader$didParseFormatInitializationMetadata$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, const void *); static void (*_logos_orig$_ungrouped$MLServerABRLoader$onChunkStartLoading$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, HAMChunk *); static void _logos_method$_ungrouped$MLServerABRLoader$onChunkStartLoading$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, HAMChunk *); static void (*_logos_orig$_ungrouped$MLServerABRLoader$failWithError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLServerABRLoader$failWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$continueLoading)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MLServerABRLoader$continueLoading(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MLServerABRLoader$recordNonFatalQOEErrorWithCode$extraDetails$requestNumber$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$recordNonFatalQOEErrorWithCode$extraDetails$requestNumber$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$recordInvalidFormatQOEErrorWithFormatID$extraDetails$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$recordInvalidFormatQOEErrorWithFormatID$extraDetails$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteChunks$withError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_method$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteChunks$withError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTask$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL MLHAMDataLoadTaskObserverImpl* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMDataLoadTaskObserverImpl* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTaskDidStart$)(_LOGOS_SELF_TYPE_NORMAL MLHAMDataLoadTaskObserverImpl* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTaskDidStart$(_LOGOS_SELF_TYPE_NORMAL MLHAMDataLoadTaskObserverImpl* _LOGOS_SELF_CONST, SEL, id); static MLHAMDataLoadTaskObserverImpl* (*_logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$init)(_LOGOS_SELF_TYPE_INIT MLHAMDataLoadTaskObserverImpl*, SEL) _LOGOS_RETURN_RETAINED; static MLHAMDataLoadTaskObserverImpl* _logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$init(_LOGOS_SELF_TYPE_INIT MLHAMDataLoadTaskObserverImpl*, SEL) _LOGOS_RETURN_RETAINED; static MLServerABRController* (*_logos_orig$_ungrouped$MLServerABRController$initWithQueue$ABRPolicy$serverABRControllerDelegate$config$windowedLiveConfig$periodID$bufferTrimBeforeSeconds$mediaContentType$isLiveSource$liveHeadPlayable$)(_LOGOS_SELF_TYPE_INIT MLServerABRController*, SEL, id, id, id, id, id, long long, double, int, _Bool, _Bool) _LOGOS_RETURN_RETAINED; static MLServerABRController* _logos_method$_ungrouped$MLServerABRController$initWithQueue$ABRPolicy$serverABRControllerDelegate$config$windowedLiveConfig$periodID$bufferTrimBeforeSeconds$mediaContentType$isLiveSource$liveHeadPlayable$(_LOGOS_SELF_TYPE_INIT MLServerABRController*, SEL, id, id, id, id, id, long long, double, int, _Bool, _Bool) _LOGOS_RETURN_RETAINED; static _Bool (*_logos_orig$_ungrouped$MLServerABRController$prepareAndReturnError$)(_LOGOS_SELF_TYPE_NORMAL MLServerABRController* _LOGOS_SELF_CONST, SEL, id *); static _Bool _logos_method$_ungrouped$MLServerABRController$prepareAndReturnError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRController* _LOGOS_SELF_CONST, SEL, id *); static MLNetworkChunkLoadTask* (*_logos_orig$_ungrouped$MLNetworkChunkLoadTask$initWithChunks$delegate$dataLoadTask$cache$clock$timeline$playerItemEventCenter$ABRDelegate$queue$treatNoMediaAsCancellation$)(_LOGOS_SELF_TYPE_INIT MLNetworkChunkLoadTask*, SEL, id, id, id, id, id, id, id, id, id, _Bool) _LOGOS_RETURN_RETAINED; static MLNetworkChunkLoadTask* _logos_method$_ungrouped$MLNetworkChunkLoadTask$initWithChunks$delegate$dataLoadTask$cache$clock$timeline$playerItemEventCenter$ABRDelegate$queue$treatNoMediaAsCancellation$(_LOGOS_SELF_TYPE_INIT MLNetworkChunkLoadTask*, SEL, id, id, id, id, id, id, id, id, id, _Bool) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidFail)(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidFail(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidParseMediaData$)(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, NSData *); static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidParseMediaData$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, NSData *); static void (*_logos_orig$_ungrouped$MLNetworkChunkLoadTask$didReceiveData$)(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didReceiveData$)(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLOnesieUMPFetcherTask$onRequestFactoryCompletionWithRequest$error$)(_LOGOS_SELF_TYPE_NORMAL MLOnesieUMPFetcherTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLOnesieUMPFetcherTask$onRequestFactoryCompletionWithRequest$error$(_LOGOS_SELF_TYPE_NORMAL MLOnesieUMPFetcherTask* _LOGOS_SELF_CONST, SEL, id, id); static MLOnesieUMPFetcherTask* (*_logos_orig$_ungrouped$MLOnesieUMPFetcherTask$initWithPlayerRequest$context$onesieHotConfig$configuration$cryptor$playerCompletionBlock$fallbackFetcherService$)(_LOGOS_SELF_TYPE_INIT MLOnesieUMPFetcherTask*, SEL, id, id, id, id, id, id, id) _LOGOS_RETURN_RETAINED; static MLOnesieUMPFetcherTask* _logos_method$_ungrouped$MLOnesieUMPFetcherTask$initWithPlayerRequest$context$onesieHotConfig$configuration$cryptor$playerCompletionBlock$fallbackFetcherService$(_LOGOS_SELF_TYPE_INIT MLOnesieUMPFetcherTask*, SEL, id, id, id, id, id, id, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$HAMCronetDataLoader$taskWithRequest$userInfo$)(_LOGOS_SELF_TYPE_NORMAL HAMCronetDataLoader* _LOGOS_SELF_CONST, SEL, HAMDataLoadRequest*, id); static id _logos_method$_ungrouped$HAMCronetDataLoader$taskWithRequest$userInfo$(_LOGOS_SELF_TYPE_NORMAL HAMCronetDataLoader* _LOGOS_SELF_CONST, SEL, HAMDataLoadRequest*, id); 

#line 16 "/Users/crifan/dev/dev_root/company/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeDataLoadTask.xm"


static _Bool _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3){
    _Bool shouldRedirect = _logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(self, _cmd, arg1, arg2, arg3);

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,shouldFollowRedirectWithResponse=%@,toURL=%@ -> shouldRedirect=%s", arg1, arg2, arg3, boolToStr(shouldRedirect));
        gNoUse = 1;
    }

    return shouldRedirect;
}

static void _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveResponse$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,didReceiveResponse=%@", arg1, arg2);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveResponse$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,didReceiveData=%@", arg1, arg2);
        gNoUse = 1;
    }
    
    _logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveData$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,didCompleteWithError=%@", arg1, arg2);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didCompleteWithError$(self, _cmd, arg1, arg2);
}

static id _logos_method$_ungrouped$MLOnesieConnectionOpener$buildRedirectorURL(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id bru = _logos_orig$_ungrouped$MLOnesieConnectionOpener$buildRedirectorURL(self, _cmd);
    iosLogInfo("bru=%@", bru);
    return bru;
}

static void _logos_method$_ungrouped$MLOnesieConnectionOpener$scheduleNextRequestUsingStartDelay$(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    iosLogInfo("arg1=%s", boolToStr(arg1));
    _logos_orig$_ungrouped$MLOnesieConnectionOpener$scheduleNextRequestUsingStartDelay$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLOnesieConnectionOpener$onPingTimer(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$MLOnesieConnectionOpener$onPingTimer(self, _cmd);
}

static void _logos_method$_ungrouped$MLOnesieConnectionOpener$cancelScheduledRequest(_LOGOS_SELF_TYPE_NORMAL MLOnesieConnectionOpener* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _logos_orig$_ungrouped$MLOnesieConnectionOpener$cancelScheduledRequest(self, _cmd);
}










static MLServerABRDataLoadTask* _logos_method$_ungrouped$MLServerABRDataLoadTask$initWithTask$networkRequestObserver$requestNumber$dataLoader$(_LOGOS_SELF_TYPE_INIT MLServerABRDataLoadTask* __unused self, SEL __unused _cmd, id arg1, id arg2, long long arg3, id arg4) _LOGOS_RETURN_RETAINED{
    iosLogInfo("task=%@, networkRequestObserver=%@, requestNumber=%lld, dataLoader=%@", arg1, arg2, arg3, arg4);
    id newTask = _logos_orig$_ungrouped$MLServerABRDataLoadTask$initWithTask$networkRequestObserver$requestNumber$dataLoader$(self, _cmd, arg1, arg2, arg3, arg4);
    iosLogInfo("-> newTask=%@", newTask);
    return newTask;
}

static void _logos_method$_ungrouped$MLServerABRDataLoadTask$startWithDelegate$delegateQueue$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("delegate=%@, delegateQueue=%@", arg1, arg2);
    _logos_orig$_ungrouped$MLServerABRDataLoadTask$startWithDelegate$delegateQueue$(self, _cmd, arg1, arg2);
}

static _Bool _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3){
    iosLogInfo("task=%@, shouldFollowRedirectWithResponse=%@, toURL=%@", arg1, arg2, arg3);
    _Bool shouldFollow = _logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(self, _cmd, arg1, arg2, arg3);

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, shouldFollowRedirectWithResponse=%@, toURL=%@ -> shouldFollow=%s for reqUrl=%@", arg1, arg2, arg3, boolToStr(shouldFollow), reqUrl);
        gNoUse = 1;
    }

    return shouldFollow;
}

static void _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("task=%@, didReceiveData=%@", arg1, arg2);
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);

    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didReceiveData=%@, reqUrl=%@", arg1, arg2, reqUrl);
        gNoUse = 1;
    } else if (is1SecondVideo(reqUrl)){
        iosLogInfo("reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveData$(self, _cmd, arg1, arg2);
}
static void _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveResponse$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("task=%@, didReceiveResponse=%@", arg1, arg2);


    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didReceiveResponse=%@", arg1, arg2);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveResponse$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("task=%@, didCompleteWithError=%@", arg1, arg2);

    long long countOfBytesReceived = -1;


    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didCompleteWithError=%@", arg1, arg2);
        iosLogInfo("_delegate=%@, _dataLoader=%@", [self valueForKey: @"_delegate"], [self valueForKey: @"_dataLoader"]);
        
        countOfBytesReceived = [arg1 countOfBytesReceived];
        iosLogInfo("before orig: countOfBytesReceived=%lld", countOfBytesReceived);


            gNoUse = 1;

    }

    _logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didCompleteWithError$(self, _cmd, arg1, arg2);
    





}

static void _logos_method$_ungrouped$MLServerABRDataLoadTask$cancel(_LOGOS_SELF_TYPE_NORMAL MLServerABRDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");

    NSURL* reqUrl = getDataLoadTaskReqUrl(self);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRDataLoadTask$cancel(self, _cmd);
}











static MLServerABRLoader* _logos_method$_ungrouped$MLServerABRLoader$initWithQueue$dataLoader$playerEventCenter$playerItemEventCenter$streamingData$mediaCommonConfig$hamplayerConfig$onesieVideoData$QOEController$loadRetryPolicy$isLiveSource$livePlayerConfig$windowedLiveConfig$metadataRelay$delegate$latencyLogger$watchEndpointUstreamerConfig$periodID$firstRequestNumber$cache$(_LOGOS_SELF_TYPE_INIT MLServerABRLoader* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, id arg6, id arg7, id arg8, id arg9, id arg10, _Bool arg11, id arg12, id arg13, id arg14, id arg15, id arg16, id arg17, long long arg18, long long arg19, id arg20) _LOGOS_RETURN_RETAINED{
    iosLogInfo("queue=%@,dataLoader=%@,playerEventCenter=%@,playerItemEventCenter=%@,streamingData=%@,mediaCommonConfig=%@,hamplayerConfig=%@,onesieVideoData=%@,QOEController=%@,loadRetryPolicy=%@,isLiveSource=%s,livePlayerConfig=%@,windowedLiveConfig=%@,metadataRelay=%@,delegate=%@,latencyLogger=%@,watchEndpointUstreamerConfig=%@,periodID=%lld,firstRequestNumber=%lld,cache=%@",
               arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,boolToStr(arg11),arg12,arg13,arg14,arg15,arg16,arg17,arg18,arg19,arg20);
    id newLoader = _logos_orig$_ungrouped$MLServerABRLoader$initWithQueue$dataLoader$playerEventCenter$playerItemEventCenter$streamingData$mediaCommonConfig$hamplayerConfig$onesieVideoData$QOEController$loadRetryPolicy$isLiveSource$livePlayerConfig$windowedLiveConfig$metadataRelay$delegate$latencyLogger$watchEndpointUstreamerConfig$periodID$firstRequestNumber$cache$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20);
    iosLogInfo("=> newLoader=%@", newLoader);
    return newLoader;
}

static void _logos_method$_ungrouped$MLServerABRLoader$updateLoadRetryPolicyOnLoadCompletionWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    id error = arg1;
    iosLogInfo("error=%@", error);

    NSURL *reqUrl = NULL;
    reqUrl = getHamErrReqUrl(error);
    if (reqUrl == NULL){
        id currentTask = [self valueForKey: @"_currentTask"];
        if (currentTask != NULL) {
            reqUrl = getDataLoadTaskReqUrl(currentTask);
        }
    }
    iosLogInfo("reqUrl=%@", reqUrl);

    if (isYoutubeAdsVideo_current(reqUrl)){
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRLoader$updateLoadRetryPolicyOnLoadCompletionWithError$(self, _cmd, arg1);
}

static _Bool _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3){
    iosLogInfo("task=%@, shouldFollowRedirectWithResponse=%@, toURL=%@", arg1, arg2, arg3);

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    _Bool shouldFollow = _logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$shouldFollowRedirectWithResponse$toURL$(self, _cmd, arg1, arg2, arg3);

    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@, arg1=%@, shouldFollowRedirectWithResponse=%@, toURL=%@ -> shouldFollow=%s", reqUrl, arg1, arg2, arg3, boolToStr(shouldFollow));
        gNoUse = 1;
    }
    
    return shouldFollow;
}

static void _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveResponse$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("task=%@, didReceiveResponse=%@", arg1, arg2);
    id response = arg2;
    long long countOfBytesReceived = -1;

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    NSURL *respUrl = [response URL];
    iosLogInfo("respUrl=%@", respUrl);
    if (isYoutubeAdsVideo_current(reqUrl) || isYoutubeAdsVideo_current(respUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didReceiveResponse=%@ for reqUrl=%@", arg1, response, reqUrl);
        countOfBytesReceived = [arg1 countOfBytesReceived];
        iosLogInfo("before orig: countOfBytesReceived=%lld", countOfBytesReceived);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveResponse$(self, _cmd, arg1, arg2);

    if (isYoutubeAdsVideo_current(reqUrl)){
        countOfBytesReceived = [arg1 countOfBytesReceived];
        iosLogInfo("after  orig: countOfBytesReceived=%lld", countOfBytesReceived);
        gNoUse = 1;
    }
}

static void _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    id task = arg1;

    iosLogInfo("task=%@, didReceiveData=%@", task, arg2);
    long long countOfBytesReceived = -1;

    NSURL* reqUrl = getDataLoadTaskReqUrl(task);

    countOfBytesReceived = [task countOfBytesReceived];
    iosLogInfo("countOfBytesReceived=%lld", countOfBytesReceived);

    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didReceiveData=%@, reqUrl=%@", task, arg2, reqUrl);
        gNoUse = 1;
    } else if (is1SecondVideo(reqUrl)){
        iosLogInfo("reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveData$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    id error = arg2;

    iosLogInfo("task=%@, didCompleteWithError=%@", arg1, error);
    long long countOfBytesReceived = -1;
    id _didReceiveChunkForCurrentRequest = NULL;
    id _didReceiveNextRequestPolicyForCurrentRequest = NULL;


    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: task=%@, didCompleteWithError=%@", arg1, error);
        

        _didReceiveChunkForCurrentRequest = [self valueForKey: @"_didReceiveChunkForCurrentRequest"];
        _didReceiveNextRequestPolicyForCurrentRequest = [self valueForKey: @"_didReceiveNextRequestPolicyForCurrentRequest"];
        iosLogInfo("before orig: _didReceiveChunkForCurrentRequest=%@, _didReceiveNextRequestPolicyForCurrentRequest=%@", _didReceiveChunkForCurrentRequest, _didReceiveNextRequestPolicyForCurrentRequest);
        gNoUse = 1;

        countOfBytesReceived = [arg1 countOfBytesReceived];
        iosLogInfo("before orig: countOfBytesReceived=%lld", countOfBytesReceived);
        gNoUse = 1;
        
        if (error == NULL){
            gNoUse = 1;
        }
    }

    _logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didCompleteWithError$(self, _cmd, arg1, arg2);
}

static id _logos_method$_ungrouped$MLServerABRLoader$chunkForMediaHeader$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, const void * mediaHeader){
    id newChunk = _logos_orig$_ungrouped$MLServerABRLoader$chunkForMediaHeader$(self, _cmd, mediaHeader);
    iosLogInfo("mediaHeader=%p -> newChunk=%@", mediaHeader, newChunk);
    return newChunk;
}

static void _logos_method$_ungrouped$MLServerABRLoader$onChunk$completeWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, HAMChunk* chunk, NSError* error){
    iosLogInfo("chunk=%@, completeWithError=%@", chunk, error);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLServerABRLoader$onChunk$completeWithError$(self, _cmd, chunk, error);
}

static void _logos_method$_ungrouped$MLServerABRLoader$didParseFormatInitializationMetadata$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, const void * arg1){
    iosLogInfo("arg1=%p", arg1);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLServerABRLoader$didParseFormatInitializationMetadata$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLServerABRLoader$onChunkStartLoading$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, HAMChunk * chunk){
    iosLogInfo("chunk==%@", chunk);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLServerABRLoader$onChunkStartLoading$(self, _cmd, chunk);
}

static void _logos_method$_ungrouped$MLServerABRLoader$failWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("error=%@", arg1);
    _logos_orig$_ungrouped$MLServerABRLoader$failWithError$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLServerABRLoader$continueLoading(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    gCurLogNum += 1;
    if (isNeedDebug()) {
        iosLogInfo("%s", "");
        gNoUse = 1;
    }
    _logos_orig$_ungrouped$MLServerABRLoader$continueLoading(self, _cmd);
}


static void _logos_method$_ungrouped$MLServerABRLoader$recordNonFatalQOEErrorWithCode$extraDetails$requestNumber$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id errorCode, id extraDetails, id requestNumber){
    iosLogInfo("errorCode=%@, extraDetails=%@, requestNumber=%@", errorCode, extraDetails, requestNumber);
    _logos_orig$_ungrouped$MLServerABRLoader$recordNonFatalQOEErrorWithCode$extraDetails$requestNumber$(self, _cmd, errorCode, extraDetails, requestNumber);
}

static void _logos_method$_ungrouped$MLServerABRLoader$recordInvalidFormatQOEErrorWithFormatID$extraDetails$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id formatID, id extraDetails){
    iosLogInfo("formatID=%@, extraDetails=%@", formatID, extraDetails);
    _logos_orig$_ungrouped$MLServerABRLoader$recordInvalidFormatQOEErrorWithFormatID$extraDetails$(self, _cmd, formatID, extraDetails);
}

static void _logos_method$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("arg1=%@, didCompleteWithError=%@", arg1, arg2);
    
    if (arg2 != NULL){
        gNoUse = 1;
    }
    
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didCompleteWithError=%@", arg1, arg2);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteWithError$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteChunks$withError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3){
    iosLogInfo("arg1=%@, didCompleteChunks=%@, withError=%@", arg1, arg2, arg3);
    
    if (arg3 != NULL){
        gNoUse = 1;
    }

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didCompleteWithError=%@", arg1, arg2);
        gNoUse = 1;
    }
    
    _logos_orig$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteChunks$withError$(self, _cmd, arg1, arg2, arg3);
}












static void _logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMDataLoadTaskObserverImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("dataLoadTask=%@, error=%@", arg1, arg2);
    
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@; dataLoadTask=%@, error=%@", reqUrl, arg1, arg2);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTask$didCompleteWithError$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTaskDidStart$(_LOGOS_SELF_TYPE_NORMAL MLHAMDataLoadTaskObserverImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("dataLoadTask=%@", arg1);

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@; dataLoadTask=%@", reqUrl, arg1);
        gNoUse = 1;
    }
    
    _logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTaskDidStart$(self, _cmd, arg1);
}

static MLHAMDataLoadTaskObserverImpl* _logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$init(_LOGOS_SELF_TYPE_INIT MLHAMDataLoadTaskObserverImpl* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    id observerImp = _logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$init(self, _cmd);
    id curNetworkRequestTracker = [observerImp valueForKey: @"_networkRequestTracker"];
    iosLogInfo("observerImp=%@, curNetworkRequestTracker=%@", observerImp, curNetworkRequestTracker);
    
    return observerImp;
}










static MLServerABRController* _logos_method$_ungrouped$MLServerABRController$initWithQueue$ABRPolicy$serverABRControllerDelegate$config$windowedLiveConfig$periodID$bufferTrimBeforeSeconds$mediaContentType$isLiveSource$liveHeadPlayable$(_LOGOS_SELF_TYPE_INIT MLServerABRController* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, long long arg6, double arg7, int arg8, _Bool arg9, _Bool arg10) _LOGOS_RETURN_RETAINED{
    iosLogInfo("queue=%@,ABRPolicy=%@,serverABRControllerDelegate=%@,config=%@,windowedLiveConfig=%@,periodID=%lld,bufferTrimBeforeSeconds=%f,mediaContentType=%d,isLiveSource=%s,liveHeadPlayable=%s", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8,boolToStr(arg9),boolToStr(arg10));
    id newController = _logos_orig$_ungrouped$MLServerABRController$initWithQueue$ABRPolicy$serverABRControllerDelegate$config$windowedLiveConfig$periodID$bufferTrimBeforeSeconds$mediaContentType$isLiveSource$liveHeadPlayable$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
    iosLogInfo("=>newController=%@", newController);
    return newController;
}

static _Bool _logos_method$_ungrouped$MLServerABRController$prepareAndReturnError$(_LOGOS_SELF_TYPE_NORMAL MLServerABRController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id * arg1){
    _Bool isFormatOk = _logos_orig$_ungrouped$MLServerABRController$prepareAndReturnError$(self, _cmd, arg1);
    iosLogInfo("errorPtr=%p => isFormatOk=%s", arg1, boolToStr(isFormatOk));

    if (isFormatOk == false) {
        gNoUse = 1;
    }

    return isFormatOk;
}










static MLNetworkChunkLoadTask* _logos_method$_ungrouped$MLNetworkChunkLoadTask$initWithChunks$delegate$dataLoadTask$cache$clock$timeline$playerItemEventCenter$ABRDelegate$queue$treatNoMediaAsCancellation$(_LOGOS_SELF_TYPE_INIT MLNetworkChunkLoadTask* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, id arg5, id arg6, id arg7, id arg8, id arg9, _Bool arg10) _LOGOS_RETURN_RETAINED{
    id newChunkLoadTask = _logos_orig$_ungrouped$MLNetworkChunkLoadTask$initWithChunks$delegate$dataLoadTask$cache$clock$timeline$playerItemEventCenter$ABRDelegate$queue$treatNoMediaAsCancellation$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
    iosLogInfo("chunk=%@,delegate=%@,dataLoadTask=%@,cache=%@,clock=%@,timeline=%@,playerItemEventCenter=%@,ABRDelegate=%@,queue=%@,treatNoMediaAsCancellation=%s -> newChunkLoadTask=%@", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, boolToStr(arg10), newChunkLoadTask);
    gNoUse = 1;
    return newChunkLoadTask;
}

static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidFail(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    gNoUse = 1;
    _logos_orig$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidFail(self, _cmd);
}

static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidParseMediaData$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSData * mediaData){
    iosLogInfo("mediaData=%@", mediaData);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidParseMediaData$(self, _cmd, mediaData);
}

static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id data){
    iosLogInfo("data=%@", data);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLNetworkChunkLoadTask$didReceiveData$(self, _cmd, data);
}

static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didReceiveData$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id loadTask, id data){
    iosLogInfo("loadTask=%@, data=%@", loadTask, data);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didReceiveData$(self, _cmd, loadTask, data);
}

static void _logos_method$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL MLNetworkChunkLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id loadTask, id error){
    iosLogInfo("loadTask=%@, error=%@", loadTask, error);
    gNoUse = 1;
    _logos_orig$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didCompleteWithError$(self, _cmd, loadTask, error);
}










static void _logos_method$_ungrouped$MLOnesieUMPFetcherTask$onRequestFactoryCompletionWithRequest$error$(_LOGOS_SELF_TYPE_NORMAL MLOnesieUMPFetcherTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id request, id error){
    iosLogInfo("request=%@, error=%@", request, error);
    
    NSURLRequest* curReq = [self valueForKey: @"_playerRequest"];
    NSURL *reqUrl = [curReq URL];
    iosLogInfo("curReq=%@, reqUrl=%@", curReq, reqUrl);
    gNoUse = 1;

    if (isYoutubeAdsVideo_current(reqUrl)) {
        iosLogInfo("curReq=%@, reqUrl=%@", curReq, reqUrl);
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$MLOnesieUMPFetcherTask$onRequestFactoryCompletionWithRequest$error$(self, _cmd, request, error);
}

static MLOnesieUMPFetcherTask* _logos_method$_ungrouped$MLOnesieUMPFetcherTask$initWithPlayerRequest$context$onesieHotConfig$configuration$cryptor$playerCompletionBlock$fallbackFetcherService$(_LOGOS_SELF_TYPE_INIT MLOnesieUMPFetcherTask* __unused self, SEL __unused _cmd, id request, id context, id onesieHotConfig, id configuration, id cryptor, id playerCompletionBlock, id fallbackFetcherService) _LOGOS_RETURN_RETAINED{
    id newUmpFetcherTask = _logos_orig$_ungrouped$MLOnesieUMPFetcherTask$initWithPlayerRequest$context$onesieHotConfig$configuration$cryptor$playerCompletionBlock$fallbackFetcherService$(self, _cmd, request, context, onesieHotConfig, configuration, cryptor, playerCompletionBlock, fallbackFetcherService);
    iosLogInfo("request=%@,context=%@,onesieHotConfig=%@,configuration=%@,cryptor=%@,playerCompletionBlock=%@,fallbackFetcherService=%@ -> newUmpFetcherTask=%@", request, context, onesieHotConfig, configuration, cryptor, playerCompletionBlock, fallbackFetcherService, newUmpFetcherTask);
    gNoUse = 1;
    return newUmpFetcherTask;
}









static id _logos_method$_ungrouped$HAMCronetDataLoader$taskWithRequest$userInfo$(_LOGOS_SELF_TYPE_NORMAL HAMCronetDataLoader* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, HAMDataLoadRequest* request, id userInfo){
    iosLogInfo("request=%@, userInfo=%@", request, userInfo);
    
    HAMRangedURL* rangeUrl = [request rangedURL];
    NSURL *reqUrl = [rangeUrl URL];

    if (isYoutubeAdsVideo_current(reqUrl)) {
        iosLogInfo("reqUrl=%@", reqUrl);
        gNoUse = 1;
        
        BOOL isPost = FALSE;
        NSString* httpMethod = [request HTTPMethod];
        if (httpMethod) {
            isPost = [httpMethod isEqualToString: @"POST"];
        }
        
        BOOL isProtobuf = FALSE;
        NSString* contentType = [request HTTPContentType];
        if (contentType) {
            isProtobuf = [contentType isEqualToString: @"application/x-protobuf"];
        }

        if (isPost && isProtobuf){
            gNoUse = 1;
        }
    }

    id newLoader = _logos_orig$_ungrouped$HAMCronetDataLoader$taskWithRequest$userInfo$(self, _cmd, request, userInfo);
    return newLoader;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MLOnesieConnectionOpener = objc_getClass("MLOnesieConnectionOpener"); { MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(dataLoadTask:shouldFollowRedirectWithResponse:toURL:), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$shouldFollowRedirectWithResponse$toURL$, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$shouldFollowRedirectWithResponse$toURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(dataLoadTask:didReceiveResponse:), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveResponse$, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveResponse$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(dataLoadTask:didReceiveData:), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveData$, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didReceiveData$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(dataLoadTask:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$dataLoadTask$didCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(buildRedirectorURL), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$buildRedirectorURL, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$buildRedirectorURL);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(scheduleNextRequestUsingStartDelay:), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$scheduleNextRequestUsingStartDelay$, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$scheduleNextRequestUsingStartDelay$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(onPingTimer), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$onPingTimer, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$onPingTimer);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieConnectionOpener, @selector(cancelScheduledRequest), (IMP)&_logos_method$_ungrouped$MLOnesieConnectionOpener$cancelScheduledRequest, (IMP*)&_logos_orig$_ungrouped$MLOnesieConnectionOpener$cancelScheduledRequest);}Class _logos_class$_ungrouped$MLServerABRDataLoadTask = objc_getClass("MLServerABRDataLoadTask"); { MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(initWithTask:networkRequestObserver:requestNumber:dataLoader:), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$initWithTask$networkRequestObserver$requestNumber$dataLoader$, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$initWithTask$networkRequestObserver$requestNumber$dataLoader$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(startWithDelegate:delegateQueue:), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$startWithDelegate$delegateQueue$, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$startWithDelegate$delegateQueue$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(dataLoadTask:shouldFollowRedirectWithResponse:toURL:), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$shouldFollowRedirectWithResponse$toURL$, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$shouldFollowRedirectWithResponse$toURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(dataLoadTask:didReceiveData:), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveData$, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveData$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(dataLoadTask:didReceiveResponse:), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveResponse$, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didReceiveResponse$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(dataLoadTask:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$dataLoadTask$didCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRDataLoadTask, @selector(cancel), (IMP)&_logos_method$_ungrouped$MLServerABRDataLoadTask$cancel, (IMP*)&_logos_orig$_ungrouped$MLServerABRDataLoadTask$cancel);}Class _logos_class$_ungrouped$MLServerABRLoader = objc_getClass("MLServerABRLoader"); { MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(initWithQueue:dataLoader:playerEventCenter:playerItemEventCenter:streamingData:mediaCommonConfig:hamplayerConfig:onesieVideoData:QOEController:loadRetryPolicy:isLiveSource:livePlayerConfig:windowedLiveConfig:metadataRelay:delegate:latencyLogger:watchEndpointUstreamerConfig:periodID:firstRequestNumber:cache:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$initWithQueue$dataLoader$playerEventCenter$playerItemEventCenter$streamingData$mediaCommonConfig$hamplayerConfig$onesieVideoData$QOEController$loadRetryPolicy$isLiveSource$livePlayerConfig$windowedLiveConfig$metadataRelay$delegate$latencyLogger$watchEndpointUstreamerConfig$periodID$firstRequestNumber$cache$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$initWithQueue$dataLoader$playerEventCenter$playerItemEventCenter$streamingData$mediaCommonConfig$hamplayerConfig$onesieVideoData$QOEController$loadRetryPolicy$isLiveSource$livePlayerConfig$windowedLiveConfig$metadataRelay$delegate$latencyLogger$watchEndpointUstreamerConfig$periodID$firstRequestNumber$cache$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(updateLoadRetryPolicyOnLoadCompletionWithError:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$updateLoadRetryPolicyOnLoadCompletionWithError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$updateLoadRetryPolicyOnLoadCompletionWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(dataLoadTask:shouldFollowRedirectWithResponse:toURL:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$shouldFollowRedirectWithResponse$toURL$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$shouldFollowRedirectWithResponse$toURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(dataLoadTask:didReceiveResponse:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveResponse$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveResponse$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(dataLoadTask:didReceiveData:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveData$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didReceiveData$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(dataLoadTask:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$dataLoadTask$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$dataLoadTask$didCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(chunkForMediaHeader:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$chunkForMediaHeader$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$chunkForMediaHeader$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(onChunk:completeWithError:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$onChunk$completeWithError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$onChunk$completeWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(didParseFormatInitializationMetadata:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$didParseFormatInitializationMetadata$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$didParseFormatInitializationMetadata$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(onChunkStartLoading:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$onChunkStartLoading$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$onChunkStartLoading$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(failWithError:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$failWithError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$failWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(continueLoading), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$continueLoading, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$continueLoading);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(recordNonFatalQOEErrorWithCode:extraDetails:requestNumber:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$recordNonFatalQOEErrorWithCode$extraDetails$requestNumber$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$recordNonFatalQOEErrorWithCode$extraDetails$requestNumber$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(recordInvalidFormatQOEErrorWithFormatID:extraDetails:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$recordInvalidFormatQOEErrorWithFormatID$extraDetails$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$recordInvalidFormatQOEErrorWithFormatID$extraDetails$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(onesieDataLoader:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRLoader, @selector(onesieDataLoader:didCompleteChunks:withError:), (IMP)&_logos_method$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteChunks$withError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRLoader$onesieDataLoader$didCompleteChunks$withError$);}Class _logos_class$_ungrouped$MLHAMDataLoadTaskObserverImpl = objc_getClass("MLHAMDataLoadTaskObserverImpl"); { MSHookMessageEx(_logos_class$_ungrouped$MLHAMDataLoadTaskObserverImpl, @selector(dataLoadTask:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTask$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTask$didCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMDataLoadTaskObserverImpl, @selector(dataLoadTaskDidStart:), (IMP)&_logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTaskDidStart$, (IMP*)&_logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$dataLoadTaskDidStart$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMDataLoadTaskObserverImpl, @selector(init), (IMP)&_logos_method$_ungrouped$MLHAMDataLoadTaskObserverImpl$init, (IMP*)&_logos_orig$_ungrouped$MLHAMDataLoadTaskObserverImpl$init);}Class _logos_class$_ungrouped$MLServerABRController = objc_getClass("MLServerABRController"); { MSHookMessageEx(_logos_class$_ungrouped$MLServerABRController, @selector(initWithQueue:ABRPolicy:serverABRControllerDelegate:config:windowedLiveConfig:periodID:bufferTrimBeforeSeconds:mediaContentType:isLiveSource:liveHeadPlayable:), (IMP)&_logos_method$_ungrouped$MLServerABRController$initWithQueue$ABRPolicy$serverABRControllerDelegate$config$windowedLiveConfig$periodID$bufferTrimBeforeSeconds$mediaContentType$isLiveSource$liveHeadPlayable$, (IMP*)&_logos_orig$_ungrouped$MLServerABRController$initWithQueue$ABRPolicy$serverABRControllerDelegate$config$windowedLiveConfig$periodID$bufferTrimBeforeSeconds$mediaContentType$isLiveSource$liveHeadPlayable$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLServerABRController, @selector(prepareAndReturnError:), (IMP)&_logos_method$_ungrouped$MLServerABRController$prepareAndReturnError$, (IMP*)&_logos_orig$_ungrouped$MLServerABRController$prepareAndReturnError$);}Class _logos_class$_ungrouped$MLNetworkChunkLoadTask = objc_getClass("MLNetworkChunkLoadTask"); { MSHookMessageEx(_logos_class$_ungrouped$MLNetworkChunkLoadTask, @selector(initWithChunks:delegate:dataLoadTask:cache:clock:timeline:playerItemEventCenter:ABRDelegate:queue:treatNoMediaAsCancellation:), (IMP)&_logos_method$_ungrouped$MLNetworkChunkLoadTask$initWithChunks$delegate$dataLoadTask$cache$clock$timeline$playerItemEventCenter$ABRDelegate$queue$treatNoMediaAsCancellation$, (IMP*)&_logos_orig$_ungrouped$MLNetworkChunkLoadTask$initWithChunks$delegate$dataLoadTask$cache$clock$timeline$playerItemEventCenter$ABRDelegate$queue$treatNoMediaAsCancellation$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLNetworkChunkLoadTask, @selector(videoPlaybackUMPParserDidFail), (IMP)&_logos_method$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidFail, (IMP*)&_logos_orig$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidFail);}{ MSHookMessageEx(_logos_class$_ungrouped$MLNetworkChunkLoadTask, @selector(videoPlaybackUMPParserDidParseMediaData:), (IMP)&_logos_method$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidParseMediaData$, (IMP*)&_logos_orig$_ungrouped$MLNetworkChunkLoadTask$videoPlaybackUMPParserDidParseMediaData$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLNetworkChunkLoadTask, @selector(didReceiveData:), (IMP)&_logos_method$_ungrouped$MLNetworkChunkLoadTask$didReceiveData$, (IMP*)&_logos_orig$_ungrouped$MLNetworkChunkLoadTask$didReceiveData$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLNetworkChunkLoadTask, @selector(dataLoadTask:didReceiveData:), (IMP)&_logos_method$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didReceiveData$, (IMP*)&_logos_orig$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didReceiveData$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLNetworkChunkLoadTask, @selector(dataLoadTask:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$MLNetworkChunkLoadTask$dataLoadTask$didCompleteWithError$);}Class _logos_class$_ungrouped$MLOnesieUMPFetcherTask = objc_getClass("MLOnesieUMPFetcherTask"); { MSHookMessageEx(_logos_class$_ungrouped$MLOnesieUMPFetcherTask, @selector(onRequestFactoryCompletionWithRequest:error:), (IMP)&_logos_method$_ungrouped$MLOnesieUMPFetcherTask$onRequestFactoryCompletionWithRequest$error$, (IMP*)&_logos_orig$_ungrouped$MLOnesieUMPFetcherTask$onRequestFactoryCompletionWithRequest$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLOnesieUMPFetcherTask, @selector(initWithPlayerRequest:context:onesieHotConfig:configuration:cryptor:playerCompletionBlock:fallbackFetcherService:), (IMP)&_logos_method$_ungrouped$MLOnesieUMPFetcherTask$initWithPlayerRequest$context$onesieHotConfig$configuration$cryptor$playerCompletionBlock$fallbackFetcherService$, (IMP*)&_logos_orig$_ungrouped$MLOnesieUMPFetcherTask$initWithPlayerRequest$context$onesieHotConfig$configuration$cryptor$playerCompletionBlock$fallbackFetcherService$);}Class _logos_class$_ungrouped$HAMCronetDataLoader = objc_getClass("HAMCronetDataLoader"); { MSHookMessageEx(_logos_class$_ungrouped$HAMCronetDataLoader, @selector(taskWithRequest:userInfo:), (IMP)&_logos_method$_ungrouped$HAMCronetDataLoader$taskWithRequest$userInfo$, (IMP*)&_logos_orig$_ungrouped$HAMCronetDataLoader$taskWithRequest$userInfo$);}} }
#line 579 "/Users/crifan/dev/dev_root/company/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeDataLoadTask.xm"
