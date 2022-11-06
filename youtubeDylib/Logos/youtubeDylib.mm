#line 1 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeDylib.xm"







#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"





@interface YTWatchController : NSObject

- (id)activeVideoID;

@end

@protocol MDXChannelMessageCommonFields <NSObject>
    @property(readonly, nonatomic) long long heartbeatInterval;
    @property(readonly, nonatomic) double heartbeatSentTime;
    @property(readonly, nonatomic) double liveIngestionTime;
    @property(readonly, nonatomic) double seekableEndTime;
    @property(readonly, nonatomic) double seekableStartTime;
    @property(readonly, nonatomic) NSString *audioTrackID;
    @property(readonly, nonatomic) NSString *listID;
    @property(readonly, nonatomic) long long adInfoVisibilityState;
    @property(readonly, nonatomic) NSString *adNextParams;
    @property(readonly, nonatomic) NSString *adVideoID;
    @property(readonly, nonatomic) long long adState;
    @property(readonly, nonatomic) _Bool isSkippable;
    @property(readonly, nonatomic) _Bool hasNext;
    @property(readonly, nonatomic) _Bool hasPrevious;
    @property(readonly, nonatomic) double duration;
    @property(readonly, nonatomic) long long volume;
    @property(readonly, nonatomic) long long currentIndex;
    @property(readonly, nonatomic) double currentTime;
    @property(readonly, nonatomic) NSString *firstVideoID;
    @property(readonly, nonatomic) NSString *videoID;
    @property(readonly, nonatomic) NSString *screenID;
@end

@interface MDXChannelMessageCommonFieldsImpl : NSObject <MDXChannelMessageCommonFields>
{
    NSDictionary *_body;
}


    - (id)objectForFirstOfKeys:(id)arg1;
    @property(readonly, nonatomic) long long heartbeatInterval;
    @property(readonly, nonatomic) double heartbeatSentTime;
    @property(readonly, nonatomic) double liveIngestionTime;
    @property(readonly, nonatomic) double seekableEndTime;
    @property(readonly, nonatomic) double seekableStartTime;
    @property(readonly, nonatomic) NSString *audioTrackID;
    @property(readonly, nonatomic) NSString *listID;
    @property(readonly, nonatomic) long long adInfoVisibilityState;
    @property(readonly, nonatomic) NSString *adNextParams;
    @property(readonly, nonatomic) NSString *adVideoID;
    @property(readonly, nonatomic) long long adState;
    @property(readonly, nonatomic) _Bool isSkippable;
    @property(readonly, nonatomic) _Bool hasNext;
    @property(readonly, nonatomic) _Bool hasPrevious;
    @property(readonly, nonatomic) double duration;
    @property(readonly, nonatomic) long long volume;
    @property(readonly, nonatomic) long long currentIndex;
    @property(readonly, nonatomic) double currentTime;
    @property(readonly, nonatomic) NSString *firstVideoID;
    @property(readonly, nonatomic) NSString *videoID;
    @property(readonly, nonatomic) NSString *screenID;
    - (id)initWithBody:(id)arg1;

    
    @property(readonly, copy) NSString *debugDescription;
    @property(readonly, copy) NSString *description;
    @property(readonly) unsigned long long hash;
    @property(readonly) Class superclass;

@end


@interface YTWatchBreakController : NSObject
{

    double _watchTime;
}

@property(nonatomic) double watchTime; 


- (void)resetWatchTime;
- (void)saveWatchTime;

- (id)init;

@end

@interface YTSingleVideoTime : NSObject

+ (id)timeWithTime:(double)arg1 productionTime:(double)arg2;
+ (id)timeWithTime:(double)arg1;
+ (id)invalid;
+ (id)zero;
@property(readonly, nonatomic) double absoluteTime; 
@property(readonly, nonatomic) double productionTime; 
@property(readonly, nonatomic) double time; 
- (id)absoluteTimeString;
- (id)productionTimeString;
- (id)timeString;
- (id)description;
- (id)initWithTime:(double)arg1 productionTime:(double)arg2 absoluteTime:(double)arg3;
@end


















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

@class YTWatchFlowController; @class YTPlayerBarController; @class MDXVideoProgressController; @class YTWatchController; @class YTSingleVideoController; @class MDXChannelMessageCommonFieldsImpl; @class YTWatchBreakController; @class NSURLSessionTaskDelegate; @class YTAdsControlFlowPlaybackCoordinator; @class MDXSingleVideoController; @class YTWatchMiniBarViewController; @class YTWatchLayerViewController; @class YTSingleVideoTime; @class MDXChannelMessage; @class YTPlaybackControllerEventsDelegate; @class MDXSession; @class MDXPlaybackController; @class YTPlaybackControllerUIDelegate; 
static id (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$currentAdRequestConfig)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$currentAdRequestConfig(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didFailToPlayAdWithPlaybackError$)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didFailToPlayAdWithPlaybackError$(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didSkipOrCompleteAd$)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didSkipOrCompleteAd$(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didStopPlayingAd)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didStopPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPostrollAdBreak)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPostrollAdBreak(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPrerollAdBreak)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPrerollAdBreak(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime$)(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime$(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL NSURLSessionTaskDelegate* _LOGOS_SELF_CONST, SEL, NSURLSession *, NSURLSessionTask *, NSError *); static void _logos_method$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL NSURLSessionTaskDelegate* _LOGOS_SELF_CONST, SEL, NSURLSession *, NSURLSessionTask *, NSError *); static void (*_logos_orig$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didSendBodyData$totalBytesSent$totalBytesExpectedToSend$)(_LOGOS_SELF_TYPE_NORMAL NSURLSessionTaskDelegate* _LOGOS_SELF_CONST, SEL, NSURLSession *, NSURLSessionTask *, long long, long long, long long); static void _logos_method$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didSendBodyData$totalBytesSent$totalBytesExpectedToSend$(_LOGOS_SELF_TYPE_NORMAL NSURLSessionTaskDelegate* _LOGOS_SELF_CONST, SEL, NSURLSession *, NSURLSessionTask *, long long, long long, long long); static double (*_logos_orig$_ungrouped$YTSingleVideoTime$productionTime)(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoTime* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTSingleVideoTime$productionTime(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoTime* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTSingleVideoTime$time)(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoTime* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTSingleVideoTime$time(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoTime* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$YTSingleVideoTime$timeWithTime$productionTime$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, double, double); static id _logos_meta_method$_ungrouped$YTSingleVideoTime$timeWithTime$productionTime$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, double, double); static YTSingleVideoTime* (*_logos_orig$_ungrouped$YTSingleVideoTime$initWithTime$productionTime$absoluteTime$)(_LOGOS_SELF_TYPE_INIT YTSingleVideoTime*, SEL, double, double, double) _LOGOS_RETURN_RETAINED; static YTSingleVideoTime* _logos_method$_ungrouped$YTSingleVideoTime$initWithTime$productionTime$absoluteTime$(_LOGOS_SELF_TYPE_INIT YTSingleVideoTime*, SEL, double, double, double) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$YTSingleVideoTime$timeWithTime$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, double); static id _logos_meta_method$_ungrouped$YTSingleVideoTime$timeWithTime$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, double); static id (*_logos_meta_orig$_ungrouped$YTSingleVideoTime$invalid)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$YTSingleVideoTime$invalid(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$YTSingleVideoTime$zero)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$YTSingleVideoTime$zero(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static YTSingleVideoTime * (*_logos_orig$_ungrouped$YTSingleVideoController$currentVideoTime)(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoController* _LOGOS_SELF_CONST, SEL); static YTSingleVideoTime * _logos_method$_ungrouped$YTSingleVideoController$currentVideoTime(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoController* _LOGOS_SELF_CONST, SEL); static YTWatchBreakController* (*_logos_orig$_ungrouped$YTWatchBreakController$init)(_LOGOS_SELF_TYPE_INIT YTWatchBreakController*, SEL) _LOGOS_RETURN_RETAINED; static YTWatchBreakController* _logos_method$_ungrouped$YTWatchBreakController$init(_LOGOS_SELF_TYPE_INIT YTWatchBreakController*, SEL) _LOGOS_RETURN_RETAINED; static double (*_logos_orig$_ungrouped$YTWatchBreakController$watchTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTWatchBreakController$watchTime(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchBreakController$resetWatchTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchBreakController$resetWatchTime(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchBreakController$saveWatchTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchBreakController$saveWatchTime(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$currentTime)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$currentTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$duration)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$duration(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$isSkippable)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$isSkippable(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adInfoVisibilityState)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adInfoVisibilityState(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adNextParams)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adNextParams(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adVideoID)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adVideoID(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adState)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adState(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$heartbeatSentTime)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$heartbeatSentTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$liveIngestionTime)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$liveIngestionTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableEndTime)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableEndTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableStartTime)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableStartTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXSession$onAdStateChange$)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MDXSession$onAdStateChange$(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MDXSession$onAdInfoChange$)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MDXSession$onAdInfoChange$(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MDXSession$adPlaying$)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MDXSession$adPlaying$(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL, id); static _Bool (*_logos_orig$_ungrouped$MDXSession$playingAd)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$MDXSession$playingAd(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static NSString* (*_logos_orig$_ungrouped$MDXSession$currentVideoID)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static NSString* _logos_method$_ungrouped$MDXSession$currentVideoID(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$currentContentVideoProgress)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$currentContentVideoProgress(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$currentVideoProgress)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$currentVideoProgress(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$videoLiveIngestionTime)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$videoLiveIngestionTime(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$videoSeekableEnd)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$videoSeekableEnd(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$videoSeekableStart)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$videoSeekableStart(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$timeSinceLastReceivedContentVideoTime)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$timeSinceLastReceivedContentVideoTime(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$MDXSession$timeSinceLastReceivedVideoTime)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXSession$timeSinceLastReceivedVideoTime(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXSession$skipAd)(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MDXSession$skipAd(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$MDXChannelMessage$messageByParsingJSONString$error$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id *); static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageByParsingJSONString$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id *); static id (*_logos_meta_orig$_ungrouped$MDXChannelMessage$messageByParsingJSONData$error$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id *); static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageByParsingJSONData$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id *); static id (*_logos_meta_orig$_ungrouped$MDXChannelMessage$messageByDecodingObjectArray$error$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id *); static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageByDecodingObjectArray$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id *); static id (*_logos_meta_orig$_ungrouped$MDXChannelMessage$messageWithName$body$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageWithName$body$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static id (*_logos_meta_orig$_ungrouped$MDXChannelMessage$messageWithName$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageWithName$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static MDXChannelMessage* (*_logos_orig$_ungrouped$MDXChannelMessage$initWithName$body$)(_LOGOS_SELF_TYPE_INIT MDXChannelMessage*, SEL, id, id) _LOGOS_RETURN_RETAINED; static MDXChannelMessage* _logos_method$_ungrouped$MDXChannelMessage$initWithName$body$(_LOGOS_SELF_TYPE_INIT MDXChannelMessage*, SEL, id, id) _LOGOS_RETURN_RETAINED; static NSDictionary * (*_logos_orig$_ungrouped$MDXChannelMessage$body)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST, SEL); static NSDictionary * _logos_method$_ungrouped$MDXChannelMessage$body(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$MDXChannelMessage$name)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$MDXChannelMessage$name(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST, SEL); static MDXChannelMessageCommonFieldsImpl * (*_logos_orig$_ungrouped$MDXChannelMessage$commonFields)(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST, SEL); static MDXChannelMessageCommonFieldsImpl * _logos_method$_ungrouped$MDXChannelMessage$commonFields(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXPlaybackController$didShowSkipAd)(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MDXPlaybackController$didShowSkipAd(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXPlaybackController$didPressSkipAd)(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MDXPlaybackController$didPressSkipAd(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXPlaybackController$didPressSkipAdWithTouchPoint$)(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL, struct CGPoint); static void _logos_method$_ungrouped$MDXPlaybackController$didPressSkipAdWithTouchPoint$(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL, struct CGPoint); static void (*_logos_orig$_ungrouped$MDXPlaybackController$didPressAdThumbnail)(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MDXPlaybackController$didPressAdThumbnail(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerDidPlay)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidPlay(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTWatchController$contentVideoTotalTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTWatchController$contentVideoTotalTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTWatchController$contentVideoCurrentTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTWatchController$contentVideoCurrentTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTWatchController$activeVideoCurrentTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$YTWatchController$activeVideoCurrentTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTWatchController$activeVideoMediaTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTWatchController$activeVideoMediaTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTWatchController$activeVideoID)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$YTWatchController$activeVideoID(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$YTWatchController$isPlaybackFinished)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchController$isPlaybackFinished(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerDidFinishPlayingAd)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidFinishPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerPlayerStateDidChange)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerPlayerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerDidLoadPlayerWithPlaybackData$)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidLoadPlayerWithPlaybackData$(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerDidPause)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidPause(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerDidPressPlay)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidPressPlay(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerStateDidChange)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerDidFinishPlayback)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidFinishPlayback(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchController$playbackControllerCurrentVideoMediaTimeDidChange$)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$YTWatchController$playbackControllerCurrentVideoMediaTimeDidChange$(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL, double); static _Bool (*_logos_orig$_ungrouped$YTWatchController$videoEnded)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchController$videoEnded(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$YTWatchController$isPlaybackVideoPlayingAd)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchController$isPlaybackVideoPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$YTWatchController$isPlaybackVideoPlaying)(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchController$isPlaybackVideoPlaying(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerCurrentVideoMediaTimeDidChange$)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerCurrentVideoMediaTimeDidChange$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, double); static _Bool (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$adPlaying)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchMiniBarViewController$adPlaying(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$activated)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchMiniBarViewController$activated(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$updateMiniBarSkipAdStatus)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$updateMiniBarSkipAdStatus(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$isSkipAdEnabled)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$YTWatchMiniBarViewController$isSkipAdEnabled(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerDidLoadPlayerWithPlaybackData$)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerDidLoadPlayerWithPlaybackData$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerStateDidChange)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerWillFailWithError$)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerWillFailWithError$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerPlayerStateDidChange)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerPlayerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$miniBarControlsViewDidTapPause$)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$miniBarControlsViewDidTapPause$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$loadView)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$loadView(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$startPlayback)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$startPlayback(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$setVideoDetails$)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$setVideoDetails$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTWatchMiniBarViewController$updateVideoDetails)(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTWatchMiniBarViewController$updateVideoDetails(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTPlayerBarController$_maximumSeekableTime)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTPlayerBarController$_maximumSeekableTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTPlayerBarController$_totalTime)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTPlayerBarController$_totalTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTPlayerBarController$_minimumSeekableTime)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTPlayerBarController$_minimumSeekableTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$YTPlayerBarController$_currentMediaTime)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTPlayerBarController$_currentMediaTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$YTPlayerBarController$titleForTime$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double); static id _logos_method$_ungrouped$YTPlayerBarController$titleForTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$YTPlayerBarController$setCurrentTimeTitleString$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTPlayerBarController$setCurrentTimeTitleString$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double, double); static void _logos_method$_ungrouped$YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double, double); static void (*_logos_orig$_ungrouped$YTPlayerBarController$setDownloadedTime$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$YTPlayerBarController$setDownloadedTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$YTPlayerBarController$setMediaTime$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$YTPlayerBarController$setMediaTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$YTPlayerBarController$setAdMarkers$)(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$YTPlayerBarController$setAdMarkers$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST, SEL, id); static double (*_logos_orig$_ungrouped$YTWatchLayerViewController$_lastWatchMediaTime)(_LOGOS_SELF_TYPE_NORMAL YTWatchLayerViewController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$YTWatchLayerViewController$_lastWatchMediaTime(_LOGOS_SELF_TYPE_NORMAL YTWatchLayerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTWatchFlowController$contentVideoMediaTimeDidChangeToTime$totalMediaTime$)(_LOGOS_SELF_TYPE_NORMAL YTWatchFlowController* _LOGOS_SELF_CONST, SEL, double, double); static void _logos_method$_ungrouped$YTWatchFlowController$contentVideoMediaTimeDidChangeToTime$totalMediaTime$(_LOGOS_SELF_TYPE_NORMAL YTWatchFlowController* _LOGOS_SELF_CONST, SEL, double, double); static void (*_logos_orig$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidFinishPlayingAd)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerEventsDelegate* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidFinishPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerEventsDelegate* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidPressPause)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerEventsDelegate* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidPressPause(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerEventsDelegate* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTPlaybackControllerUIDelegate$adDidComplete$)(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerUIDelegate* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$YTPlaybackControllerUIDelegate$adDidComplete$(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerUIDelegate* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$MDXVideoProgressController$startVideoProgressTimer)(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MDXVideoProgressController$startVideoProgressTimer(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXVideoProgressController$mediaTimesDidChangeForMDXSession$)(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MDXVideoProgressController$mediaTimesDidChangeForMDXSession$(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST, SEL, id); static double (*_logos_orig$_ungrouped$MDXVideoProgressController$currentVideoMediaTime)(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$MDXVideoProgressController$currentVideoMediaTime(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$MDXSingleVideoController$startAdOverlay)(_LOGOS_SELF_TYPE_NORMAL MDXSingleVideoController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$MDXSingleVideoController$startAdOverlay(_LOGOS_SELF_TYPE_NORMAL MDXSingleVideoController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$MDXSingleVideoController$isContentVideoLoadedOnScreen)(_LOGOS_SELF_TYPE_NORMAL MDXSingleVideoController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$MDXSingleVideoController$isContentVideoLoadedOnScreen(_LOGOS_SELF_TYPE_NORMAL MDXSingleVideoController* _LOGOS_SELF_CONST, SEL); 

#line 135 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeDylib.xm"


static id _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$currentAdRequestConfig(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id carc = _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$currentAdRequestConfig(self, _cmd);
    iosLogInfo("carc=%@", carc);
    return carc;
}

static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didFailToPlayAdWithPlaybackError$(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didFailToPlayAdWithPlaybackError$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didSkipOrCompleteAd$(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didSkipOrCompleteAd$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didStopPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didStopPlayingAd(self, _cmd);
}

static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPostrollAdBreak(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPostrollAdBreak(self, _cmd);
}

static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPrerollAdBreak(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPrerollAdBreak(self, _cmd);
}

static void _logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime$(_LOGOS_SELF_TYPE_NORMAL YTAdsControlFlowPlaybackCoordinator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
    iosLogInfo("arg1=%f", arg1);
    _logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime$(self, _cmd, arg1);
}

















static void _logos_method$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL NSURLSessionTaskDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLSession * arg1, NSURLSessionTask * arg2, NSError * arg3){
    iosLogInfo("arg1=%p, task=%p, didCompleteWithError=%p", arg1, arg2, arg3);
    _logos_orig$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didCompleteWithError$(self, _cmd, arg1, arg2, arg3);
}

static void _logos_method$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didSendBodyData$totalBytesSent$totalBytesExpectedToSend$(_LOGOS_SELF_TYPE_NORMAL NSURLSessionTaskDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLSession * arg1, NSURLSessionTask * arg2, long long arg3, long long arg4, long long arg5){
    iosLogInfo("arg1=%p, task=%p, didSendBodyData=%lld, totalBytesSent=%lld, totalBytesExpectedToSend=%lld", arg1, arg2, arg3,arg4, arg5);
    _logos_orig$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didSendBodyData$totalBytesSent$totalBytesExpectedToSend$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}










static double _logos_method$_ungrouped$YTSingleVideoTime$productionTime(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoTime* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double pt = _logos_orig$_ungrouped$YTSingleVideoTime$productionTime(self, _cmd);

    if (pt < smallStartTime){
        gNoUse = 1;

    }

    return pt;
}


static double _logos_method$_ungrouped$YTSingleVideoTime$time(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoTime* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double tm = _logos_orig$_ungrouped$YTSingleVideoTime$time(self, _cmd);

    if (tm < smallStartTime){
        gNoUse = 1;

    }

    return tm;
}


static id _logos_meta_method$_ungrouped$YTSingleVideoTime$timeWithTime$productionTime$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1, double arg2){
    id twt = _logos_meta_orig$_ungrouped$YTSingleVideoTime$timeWithTime$productionTime$(self, _cmd, arg1, arg2);
    iosLogInfo("arg1=%f,productionTime=%f", arg1, arg2);
    return twt;
}


static YTSingleVideoTime* _logos_method$_ungrouped$YTSingleVideoTime$initWithTime$productionTime$absoluteTime$(_LOGOS_SELF_TYPE_INIT YTSingleVideoTime* __unused self, SEL __unused _cmd, double arg1, double arg2, double arg3) _LOGOS_RETURN_RETAINED{
    id iwt = _logos_orig$_ungrouped$YTSingleVideoTime$initWithTime$productionTime$absoluteTime$(self, _cmd, arg1, arg2, arg3);
    gNoUse = 1;

    return iwt;
}


static id _logos_meta_method$_ungrouped$YTSingleVideoTime$timeWithTime$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
    id twt = _logos_meta_orig$_ungrouped$YTSingleVideoTime$timeWithTime$(self, _cmd, arg1);

    gNoUse = 1;
    return twt;
}


static id _logos_meta_method$_ungrouped$YTSingleVideoTime$invalid(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ivt = _logos_meta_orig$_ungrouped$YTSingleVideoTime$invalid(self, _cmd);
    iosLogInfo("ivt=%@", ivt);
    return ivt;
}


static id _logos_meta_method$_ungrouped$YTSingleVideoTime$zero(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id zt = _logos_meta_orig$_ungrouped$YTSingleVideoTime$zero(self, _cmd);
    iosLogInfo("zt=%@", zt);
    return zt;
}










static YTSingleVideoTime * _logos_method$_ungrouped$YTSingleVideoController$currentVideoTime(_LOGOS_SELF_TYPE_NORMAL YTSingleVideoController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    YTSingleVideoTime * ytsvt = _logos_orig$_ungrouped$YTSingleVideoController$currentVideoTime(self, _cmd);
    iosLogInfo("ytsvt=%p", ytsvt);
    return ytsvt;
}










static YTWatchBreakController* _logos_method$_ungrouped$YTWatchBreakController$init(_LOGOS_SELF_TYPE_INIT YTWatchBreakController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    id ytwbcObj = _logos_orig$_ungrouped$YTWatchBreakController$init(self, _cmd);
    iosLogInfo("ytwbcObj=%@", ytwbcObj);
    return ytwbcObj;
}







static double _logos_method$_ungrouped$YTWatchBreakController$watchTime(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double wt = _logos_orig$_ungrouped$YTWatchBreakController$watchTime(self, _cmd);
    
    if (wt < smallStartTime){
        iosLogInfo("watchTime < %f, maybe reset?", wt);
    }

    return wt;
}


static void _logos_method$_ungrouped$YTWatchBreakController$resetWatchTime(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchBreakController$resetWatchTime(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchBreakController$saveWatchTime(_LOGOS_SELF_TYPE_NORMAL YTWatchBreakController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogDebug("%s", "");


    double curWatchTime =  [self watchTime];
    iosLogInfo("curWatchTime=%f", curWatchTime);




    _logos_orig$_ungrouped$YTWatchBreakController$saveWatchTime(self, _cmd);
}










static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$currentTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double ct = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$currentTime(self, _cmd);
    iosLogInfo("ct=%f", ct);
    return ct;
}


static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$duration(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double dr = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$duration(self, _cmd);
    iosLogInfo("dr=%f", dr);
    return dr;
}


static _Bool _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$isSkippable(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double is = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$isSkippable(self, _cmd);
    iosLogInfo("is=%f", is);
    return is;
}


static long long _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adInfoVisibilityState(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    long long aivs = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adInfoVisibilityState(self, _cmd);
    iosLogInfo("aivs=%llu", aivs);
    return aivs;
}


static NSString * _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adNextParams(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString * anp = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adNextParams(self, _cmd);
    iosLogInfo("anp=%@", anp);
    return anp;
}


static NSString * _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adVideoID(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString * avi = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adVideoID(self, _cmd);
    iosLogInfo("avi=%@", avi);
    return avi;
}


static long long _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adState(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    long long as = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adState(self, _cmd);
    iosLogInfo("as=%llu", as);
    return as;
}


static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$heartbeatSentTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double hst = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$heartbeatSentTime(self, _cmd);
    iosLogInfo("hst=%f", hst);
    return hst;
}


static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$liveIngestionTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double lit = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$liveIngestionTime(self, _cmd);
    iosLogInfo("lit=%f", lit);
    return lit;
}


static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableEndTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double set = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableEndTime(self, _cmd);
    iosLogInfo("set=%f", set);
    return set;
}


static double _logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableStartTime(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessageCommonFieldsImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double sst = _logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableStartTime(self, _cmd);
    iosLogInfo("sst=%f", sst);
    return sst;
}










static void _logos_method$_ungrouped$MDXSession$onAdStateChange$(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MDXSession$onAdStateChange$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$MDXSession$onAdInfoChange$(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MDXSession$onAdInfoChange$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$MDXSession$adPlaying$(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MDXSession$adPlaying$(self, _cmd, arg1);
}


static _Bool _logos_method$_ungrouped$MDXSession$playingAd(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _Bool pa = _logos_orig$_ungrouped$MDXSession$playingAd(self, _cmd);
    iosLogInfo("pa=%s", boolToStr(pa));
    return pa;
}


static NSString* _logos_method$_ungrouped$MDXSession$currentVideoID(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString* cvi = _logos_orig$_ungrouped$MDXSession$currentVideoID(self, _cmd);
    iosLogInfo("cvi=%@", cvi);
    return cvi;
}


static double _logos_method$_ungrouped$MDXSession$currentContentVideoProgress(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double ccvp = _logos_orig$_ungrouped$MDXSession$currentContentVideoProgress(self, _cmd);
    iosLogInfo("ccvp=%f", ccvp);
    return ccvp;
}


static double _logos_method$_ungrouped$MDXSession$currentVideoProgress(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double cvp = _logos_orig$_ungrouped$MDXSession$currentVideoProgress(self, _cmd);
    iosLogInfo("cvp=%f", cvp);
    return cvp;
}


static double _logos_method$_ungrouped$MDXSession$videoLiveIngestionTime(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double vlit = _logos_orig$_ungrouped$MDXSession$videoLiveIngestionTime(self, _cmd);
    iosLogInfo("vlit=%f", vlit);
    return vlit;
}


static double _logos_method$_ungrouped$MDXSession$videoSeekableEnd(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double vse = _logos_orig$_ungrouped$MDXSession$videoSeekableEnd(self, _cmd);
    iosLogInfo("vse=%f", vse);
    return vse;
}


static double _logos_method$_ungrouped$MDXSession$videoSeekableStart(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double vss = _logos_orig$_ungrouped$MDXSession$videoSeekableStart(self, _cmd);
    iosLogInfo("vss=%f", vss);
    return vss;
}


static double _logos_method$_ungrouped$MDXSession$timeSinceLastReceivedContentVideoTime(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double tslrcvt = _logos_orig$_ungrouped$MDXSession$timeSinceLastReceivedContentVideoTime(self, _cmd);
    iosLogInfo("tslrcvt=%f", tslrcvt);
    return tslrcvt;
}


static double _logos_method$_ungrouped$MDXSession$timeSinceLastReceivedVideoTime(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double tslrvt = _logos_orig$_ungrouped$MDXSession$timeSinceLastReceivedVideoTime(self, _cmd);
    iosLogInfo("tslrvt=%f", tslrvt);
    return tslrvt;
}


static void _logos_method$_ungrouped$MDXSession$skipAd(_LOGOS_SELF_TYPE_NORMAL MDXSession* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$MDXSession$skipAd(self, _cmd);
}











static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageByParsingJSONString$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id * arg2){
    id mbpjs = _logos_meta_orig$_ungrouped$MDXChannelMessage$messageByParsingJSONString$error$(self, _cmd, arg1, arg2);
    iosLogInfo("arg1=%@,arg2=%p -> mbpjs=%@", arg1, arg2, mbpjs);
    return mbpjs;
}


static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageByParsingJSONData$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id * arg2){
    id mbpjd = _logos_meta_orig$_ungrouped$MDXChannelMessage$messageByParsingJSONData$error$(self, _cmd, arg1, arg2);
    iosLogInfo("arg1=%@,arg2=%p -> mbpjd=%@", arg1, arg2, mbpjd);
    return mbpjd;
}


static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageByDecodingObjectArray$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id * arg2){
    id mbdoa = _logos_meta_orig$_ungrouped$MDXChannelMessage$messageByDecodingObjectArray$error$(self, _cmd, arg1, arg2);
    iosLogInfo("arg1=%@,arg2=%p -> mbdoa=%@", arg1, arg2, mbdoa);
    return mbdoa;
}


static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageWithName$body$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    id mwn = _logos_meta_orig$_ungrouped$MDXChannelMessage$messageWithName$body$(self, _cmd, arg1, arg2);
    iosLogInfo("arg1=%@,arg2=%@ -> mwn=%@", arg1, arg2, mwn);
    return mwn;
}


static id _logos_meta_method$_ungrouped$MDXChannelMessage$messageWithName$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    id mwn = _logos_meta_orig$_ungrouped$MDXChannelMessage$messageWithName$(self, _cmd, arg1);
    iosLogInfo("arg1=%@-> mwn=%@", arg1, mwn);
    return mwn;
}


static MDXChannelMessage* _logos_method$_ungrouped$MDXChannelMessage$initWithName$body$(_LOGOS_SELF_TYPE_INIT MDXChannelMessage* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED{
    id iwn = _logos_orig$_ungrouped$MDXChannelMessage$initWithName$body$(self, _cmd, arg1, arg2);
    iosLogInfo("arg1=%@,arg2=%@-> iwn=%@", arg1, arg2, iwn);
    return iwn;
}


static NSDictionary * _logos_method$_ungrouped$MDXChannelMessage$body(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSDictionary * bd = _logos_orig$_ungrouped$MDXChannelMessage$body(self, _cmd);
    iosLogInfo("bd=%@", bd);
    return bd;
}


static NSString * _logos_method$_ungrouped$MDXChannelMessage$name(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSString * nm = _logos_orig$_ungrouped$MDXChannelMessage$name(self, _cmd);
    iosLogInfo("nm=%@", nm);
    return nm;
}




static MDXChannelMessageCommonFieldsImpl * _logos_method$_ungrouped$MDXChannelMessage$commonFields(_LOGOS_SELF_TYPE_NORMAL MDXChannelMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){

    MDXChannelMessageCommonFieldsImpl* cfList = _logos_orig$_ungrouped$MDXChannelMessage$commonFields(self, _cmd);
    iosLogInfo("cfList=%@", cfList);
    return cfList;
}











static void _logos_method$_ungrouped$MDXPlaybackController$didShowSkipAd(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$MDXPlaybackController$didShowSkipAd(self, _cmd);
}


static void _logos_method$_ungrouped$MDXPlaybackController$didPressSkipAd(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$MDXPlaybackController$didPressSkipAd(self, _cmd);
}


static void _logos_method$_ungrouped$MDXPlaybackController$didPressSkipAdWithTouchPoint$(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, struct CGPoint arg1){
    iosLogInfo("arg1.x=%f, arg1.y=%f", arg1.x, arg1.y);
    _logos_orig$_ungrouped$MDXPlaybackController$didPressSkipAdWithTouchPoint$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$MDXPlaybackController$didPressAdThumbnail(_LOGOS_SELF_TYPE_NORMAL MDXPlaybackController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$MDXPlaybackController$didPressAdThumbnail(self, _cmd);
}









static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidPlay(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerDidPlay(self, _cmd);
}

static double _logos_method$_ungrouped$YTWatchController$contentVideoTotalTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    double cvtt = _logos_orig$_ungrouped$YTWatchController$contentVideoTotalTime(self, _cmd);
    iosLogInfo("cvtt=%f", cvtt);
    return cvtt;
}

static double _logos_method$_ungrouped$YTWatchController$contentVideoCurrentTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double cvct = _logos_orig$_ungrouped$YTWatchController$contentVideoCurrentTime(self, _cmd);
    iosLogInfo("cvct=%f", cvct);
    return cvct;
}

static id _logos_method$_ungrouped$YTWatchController$activeVideoCurrentTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id avct = _logos_orig$_ungrouped$YTWatchController$activeVideoCurrentTime(self, _cmd);
    iosLogInfo("avct=%@", avct);
    return avct;
}

static double _logos_method$_ungrouped$YTWatchController$activeVideoMediaTime(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double avmt = _logos_orig$_ungrouped$YTWatchController$activeVideoMediaTime(self, _cmd);
    iosLogInfo("avmt=%f", avmt);
    return avmt;
}

static id _logos_method$_ungrouped$YTWatchController$activeVideoID(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id avid = _logos_orig$_ungrouped$YTWatchController$activeVideoID(self, _cmd);
    iosLogInfo("avid=%@", avid);
    return avid;
}

static _Bool _logos_method$_ungrouped$YTWatchController$isPlaybackFinished(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _Bool ipf = _logos_orig$_ungrouped$YTWatchController$isPlaybackFinished(self, _cmd);
    iosLogInfo("ipf=%s", boolToStr(ipf));
    return ipf;
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidFinishPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerDidFinishPlayingAd(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerPlayerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerPlayerStateDidChange(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidLoadPlayerWithPlaybackData$(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTWatchController$playbackControllerDidLoadPlayerWithPlaybackData$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidPause(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerDidPause(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidPressPlay(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerDidPressPlay(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerStateDidChange(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerDidFinishPlayback(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchController$playbackControllerDidFinishPlayback(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchController$playbackControllerCurrentVideoMediaTimeDidChange$(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){

    gNoUse = 1;
    
    if (arg1 < smallStartTime){

        gNoUse = 1;
    }

    _logos_orig$_ungrouped$YTWatchController$playbackControllerCurrentVideoMediaTimeDidChange$(self, _cmd, arg1);
}


static _Bool _logos_method$_ungrouped$YTWatchController$videoEnded(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _Bool ve = _logos_orig$_ungrouped$YTWatchController$videoEnded(self, _cmd);
    iosLogInfo("ve=%d", ve);
    return ve;
}

static _Bool _logos_method$_ungrouped$YTWatchController$isPlaybackVideoPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _Bool ipvpd = _logos_orig$_ungrouped$YTWatchController$isPlaybackVideoPlayingAd(self, _cmd);
    iosLogInfo("ipvpd=%d", ipvpd);
    if (ipvpd) {
        iosLogInfo("Playing Ads, activeVideoID=%@", [self activeVideoID]);
    }

    return ipvpd;
}

static _Bool _logos_method$_ungrouped$YTWatchController$isPlaybackVideoPlaying(_LOGOS_SELF_TYPE_NORMAL YTWatchController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _Bool ipvp = _logos_orig$_ungrouped$YTWatchController$isPlaybackVideoPlaying(self, _cmd);
    iosLogInfo("ipvp=%d", ipvp);
    if (!ipvp) {
        iosLogInfo("NOT Playing video, activeVideoID=%@", [self activeVideoID]);
    }

    return ipvp;
}









static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerCurrentVideoMediaTimeDidChange$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {

    gNoUse = 1;
    
    if (arg1 < smallStartTime){

        gNoUse = 1;
    }

    _logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerCurrentVideoMediaTimeDidChange$(self, _cmd, arg1);
}


static _Bool _logos_method$_ungrouped$YTWatchMiniBarViewController$adPlaying(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _Bool ap = _logos_orig$_ungrouped$YTWatchMiniBarViewController$adPlaying(self, _cmd);
    iosLogInfo("ap=%s", boolToStr(ap));
    return ap;
}


static _Bool _logos_method$_ungrouped$YTWatchMiniBarViewController$activated(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _Bool at = _logos_orig$_ungrouped$YTWatchMiniBarViewController$activated(self, _cmd);
    iosLogInfo("at=%s", boolToStr(at));
    return at;
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$updateMiniBarSkipAdStatus(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$updateMiniBarSkipAdStatus(self, _cmd);
}


static _Bool _logos_method$_ungrouped$YTWatchMiniBarViewController$isSkipAdEnabled(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _Bool isae = _logos_orig$_ungrouped$YTWatchMiniBarViewController$isSkipAdEnabled(self, _cmd);
    iosLogInfo("isae=%s", boolToStr(isae));
    if( isae ){
        iosLogInfo("%s", "isSkipAdEnabled is True");
    }
    return isae;
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerDidLoadPlayerWithPlaybackData$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerDidLoadPlayerWithPlaybackData$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerStateDidChange(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerWillFailWithError$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerWillFailWithError$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerPlayerStateDidChange(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerPlayerStateDidChange(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$miniBarControlsViewDidTapPause$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$miniBarControlsViewDidTapPause$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$viewDidLoad(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$loadView(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$loadView(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$startPlayback(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$startPlayback(self, _cmd);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$setVideoDetails$(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$setVideoDetails$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTWatchMiniBarViewController$updateVideoDetails(_LOGOS_SELF_TYPE_NORMAL YTWatchMiniBarViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTWatchMiniBarViewController$updateVideoDetails(self, _cmd);
}










static double _logos_method$_ungrouped$YTPlayerBarController$_maximumSeekableTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double mst = _logos_orig$_ungrouped$YTPlayerBarController$_maximumSeekableTime(self, _cmd);
    iosLogInfo("mst=%f", mst);
    return mst;
}


static double _logos_method$_ungrouped$YTPlayerBarController$_totalTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double tt = _logos_orig$_ungrouped$YTPlayerBarController$_totalTime(self, _cmd);
    iosLogInfo("tt=%f", tt);
    return tt;
}


static double _logos_method$_ungrouped$YTPlayerBarController$_minimumSeekableTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double mst = _logos_orig$_ungrouped$YTPlayerBarController$_minimumSeekableTime(self, _cmd);
    iosLogInfo("mst=%f", mst);
    return mst;
}


static double _logos_method$_ungrouped$YTPlayerBarController$_currentMediaTime(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double cmt = _logos_orig$_ungrouped$YTPlayerBarController$_currentMediaTime(self, _cmd);
    iosLogInfo("cmt=%f", cmt);
    return cmt;
}


static id _logos_method$_ungrouped$YTPlayerBarController$titleForTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
    id origTFT = _logos_orig$_ungrouped$YTPlayerBarController$titleForTime$(self, _cmd, arg1);
    iosLogInfo("arg1=%f -> origTFT=%@", arg1, origTFT);
    return origTFT;
}


static void _logos_method$_ungrouped$YTPlayerBarController$setCurrentTimeTitleString$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTPlayerBarController$setCurrentTimeTitleString$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1, double arg2){
    iosLogDebug("arg1=%f,arg2=%f", arg1, arg2);
    
    _logos_orig$_ungrouped$YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$(self, _cmd, arg1, arg2);
}


static void _logos_method$_ungrouped$YTPlayerBarController$setDownloadedTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
    iosLogDebug("arg1=%f", arg1);
    
    
    
    
    _logos_orig$_ungrouped$YTPlayerBarController$setDownloadedTime$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTPlayerBarController$setMediaTime$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1){
    iosLogInfo("arg1=%f", arg1);
    
    if (arg1 < smallStartTime){
        iosLogInfo("setMediaTime < %f, maybe reset?", arg1);
    }

    _logos_orig$_ungrouped$YTPlayerBarController$setMediaTime$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$YTPlayerBarController$setAdMarkers$(_LOGOS_SELF_TYPE_NORMAL YTPlayerBarController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$YTPlayerBarController$setAdMarkers$(self, _cmd, arg1);
}









static double _logos_method$_ungrouped$YTWatchLayerViewController$_lastWatchMediaTime(_LOGOS_SELF_TYPE_NORMAL YTWatchLayerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    double lwmt = _logos_orig$_ungrouped$YTWatchLayerViewController$_lastWatchMediaTime(self, _cmd);
    iosLogInfo("lwmt=%f", lwmt);
    return lwmt;
}









static void _logos_method$_ungrouped$YTWatchFlowController$contentVideoMediaTimeDidChangeToTime$totalMediaTime$(_LOGOS_SELF_TYPE_NORMAL YTWatchFlowController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1, double arg2){

    gNoUse = 1;
    _logos_orig$_ungrouped$YTWatchFlowController$contentVideoMediaTimeDidChangeToTime$totalMediaTime$(self, _cmd, arg1, arg2);
}











static void _logos_method$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidFinishPlayingAd(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerEventsDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidFinishPlayingAd(self, _cmd);
}


static void _logos_method$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidPressPause(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerEventsDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidPressPause(self, _cmd);
}










static void _logos_method$_ungrouped$YTPlaybackControllerUIDelegate$adDidComplete$(_LOGOS_SELF_TYPE_NORMAL YTPlaybackControllerUIDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1){


    _logos_orig$_ungrouped$YTPlaybackControllerUIDelegate$adDidComplete$(self, _cmd, arg1);
}









static void _logos_method$_ungrouped$MDXVideoProgressController$startVideoProgressTimer(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$MDXVideoProgressController$startVideoProgressTimer(self, _cmd);
}

static void _logos_method$_ungrouped$MDXVideoProgressController$mediaTimesDidChangeForMDXSession$(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MDXVideoProgressController$mediaTimesDidChangeForMDXSession$(self, _cmd, arg1);
}

static double _logos_method$_ungrouped$MDXVideoProgressController$currentVideoMediaTime(_LOGOS_SELF_TYPE_NORMAL MDXVideoProgressController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double origCurrentVideoMediaTime = _logos_orig$_ungrouped$MDXVideoProgressController$currentVideoMediaTime(self, _cmd);
    iosLogInfo("origCurrentVideoMediaTime=%f", origCurrentVideoMediaTime);
    return origCurrentVideoMediaTime;
}









static void _logos_method$_ungrouped$MDXSingleVideoController$startAdOverlay(_LOGOS_SELF_TYPE_NORMAL MDXSingleVideoController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$MDXSingleVideoController$startAdOverlay(self, _cmd);
}

static BOOL _logos_method$_ungrouped$MDXSingleVideoController$isContentVideoLoadedOnScreen(_LOGOS_SELF_TYPE_NORMAL MDXSingleVideoController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    double origIsContentVideoLoadedOnScreen = _logos_orig$_ungrouped$MDXSingleVideoController$isContentVideoLoadedOnScreen(self, _cmd);
    iosLogInfo("origIsContentVideoLoadedOnScreen=%f", origIsContentVideoLoadedOnScreen);
    return origIsContentVideoLoadedOnScreen;
}







static __attribute__((constructor)) void _logosLocalCtor_4a08142c(int __unused argc, char __unused **argv, char __unused **envp)
{
    @autoreleasepool
    {
        iosLogInfo("%s", "youtubeDylib ctor");
        
        gCurLogNum = 0;
    }
}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator = objc_getClass("YTAdsControlFlowPlaybackCoordinator"); { MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(currentAdRequestConfig), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$currentAdRequestConfig, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$currentAdRequestConfig);}{ MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(didFailToPlayAdWithPlaybackError:), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didFailToPlayAdWithPlaybackError$, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didFailToPlayAdWithPlaybackError$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(didSkipOrCompleteAd:), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didSkipOrCompleteAd$, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didSkipOrCompleteAd$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(didStopPlayingAd), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didStopPlayingAd, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$didStopPlayingAd);}{ MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(startPostrollAdBreak), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPostrollAdBreak, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPostrollAdBreak);}{ MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(startPrerollAdBreak), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPrerollAdBreak, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$startPrerollAdBreak);}{ MSHookMessageEx(_logos_class$_ungrouped$YTAdsControlFlowPlaybackCoordinator, @selector(playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime:), (IMP)&_logos_method$_ungrouped$YTAdsControlFlowPlaybackCoordinator$playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime$, (IMP*)&_logos_orig$_ungrouped$YTAdsControlFlowPlaybackCoordinator$playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime$);}Class _logos_class$_ungrouped$NSURLSessionTaskDelegate = objc_getClass("NSURLSessionTaskDelegate"); { MSHookMessageEx(_logos_class$_ungrouped$NSURLSessionTaskDelegate, @selector(URLSession:task:didCompleteWithError:), (IMP)&_logos_method$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$NSURLSessionTaskDelegate, @selector(URLSession:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:), (IMP)&_logos_method$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didSendBodyData$totalBytesSent$totalBytesExpectedToSend$, (IMP*)&_logos_orig$_ungrouped$NSURLSessionTaskDelegate$URLSession$task$didSendBodyData$totalBytesSent$totalBytesExpectedToSend$);}Class _logos_class$_ungrouped$YTSingleVideoTime = objc_getClass("YTSingleVideoTime"); Class _logos_metaclass$_ungrouped$YTSingleVideoTime = object_getClass(_logos_class$_ungrouped$YTSingleVideoTime); { MSHookMessageEx(_logos_class$_ungrouped$YTSingleVideoTime, @selector(productionTime), (IMP)&_logos_method$_ungrouped$YTSingleVideoTime$productionTime, (IMP*)&_logos_orig$_ungrouped$YTSingleVideoTime$productionTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTSingleVideoTime, @selector(time), (IMP)&_logos_method$_ungrouped$YTSingleVideoTime$time, (IMP*)&_logos_orig$_ungrouped$YTSingleVideoTime$time);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$YTSingleVideoTime, @selector(timeWithTime:productionTime:), (IMP)&_logos_meta_method$_ungrouped$YTSingleVideoTime$timeWithTime$productionTime$, (IMP*)&_logos_meta_orig$_ungrouped$YTSingleVideoTime$timeWithTime$productionTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTSingleVideoTime, @selector(initWithTime:productionTime:absoluteTime:), (IMP)&_logos_method$_ungrouped$YTSingleVideoTime$initWithTime$productionTime$absoluteTime$, (IMP*)&_logos_orig$_ungrouped$YTSingleVideoTime$initWithTime$productionTime$absoluteTime$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$YTSingleVideoTime, @selector(timeWithTime:), (IMP)&_logos_meta_method$_ungrouped$YTSingleVideoTime$timeWithTime$, (IMP*)&_logos_meta_orig$_ungrouped$YTSingleVideoTime$timeWithTime$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$YTSingleVideoTime, @selector(invalid), (IMP)&_logos_meta_method$_ungrouped$YTSingleVideoTime$invalid, (IMP*)&_logos_meta_orig$_ungrouped$YTSingleVideoTime$invalid);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$YTSingleVideoTime, @selector(zero), (IMP)&_logos_meta_method$_ungrouped$YTSingleVideoTime$zero, (IMP*)&_logos_meta_orig$_ungrouped$YTSingleVideoTime$zero);}Class _logos_class$_ungrouped$YTSingleVideoController = objc_getClass("YTSingleVideoController"); { MSHookMessageEx(_logos_class$_ungrouped$YTSingleVideoController, @selector(currentVideoTime), (IMP)&_logos_method$_ungrouped$YTSingleVideoController$currentVideoTime, (IMP*)&_logos_orig$_ungrouped$YTSingleVideoController$currentVideoTime);}Class _logos_class$_ungrouped$YTWatchBreakController = objc_getClass("YTWatchBreakController"); { MSHookMessageEx(_logos_class$_ungrouped$YTWatchBreakController, @selector(init), (IMP)&_logos_method$_ungrouped$YTWatchBreakController$init, (IMP*)&_logos_orig$_ungrouped$YTWatchBreakController$init);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchBreakController, @selector(watchTime), (IMP)&_logos_method$_ungrouped$YTWatchBreakController$watchTime, (IMP*)&_logos_orig$_ungrouped$YTWatchBreakController$watchTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchBreakController, @selector(resetWatchTime), (IMP)&_logos_method$_ungrouped$YTWatchBreakController$resetWatchTime, (IMP*)&_logos_orig$_ungrouped$YTWatchBreakController$resetWatchTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchBreakController, @selector(saveWatchTime), (IMP)&_logos_method$_ungrouped$YTWatchBreakController$saveWatchTime, (IMP*)&_logos_orig$_ungrouped$YTWatchBreakController$saveWatchTime);}Class _logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl = objc_getClass("MDXChannelMessageCommonFieldsImpl"); { MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(currentTime), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$currentTime, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$currentTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(duration), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$duration, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$duration);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(isSkippable), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$isSkippable, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$isSkippable);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(adInfoVisibilityState), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adInfoVisibilityState, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adInfoVisibilityState);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(adNextParams), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adNextParams, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adNextParams);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(adVideoID), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adVideoID, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adVideoID);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(adState), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$adState, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$adState);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(heartbeatSentTime), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$heartbeatSentTime, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$heartbeatSentTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(liveIngestionTime), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$liveIngestionTime, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$liveIngestionTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(seekableEndTime), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableEndTime, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableEndTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessageCommonFieldsImpl, @selector(seekableStartTime), (IMP)&_logos_method$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableStartTime, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessageCommonFieldsImpl$seekableStartTime);}Class _logos_class$_ungrouped$MDXSession = objc_getClass("MDXSession"); { MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(onAdStateChange:), (IMP)&_logos_method$_ungrouped$MDXSession$onAdStateChange$, (IMP*)&_logos_orig$_ungrouped$MDXSession$onAdStateChange$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(onAdInfoChange:), (IMP)&_logos_method$_ungrouped$MDXSession$onAdInfoChange$, (IMP*)&_logos_orig$_ungrouped$MDXSession$onAdInfoChange$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(adPlaying:), (IMP)&_logos_method$_ungrouped$MDXSession$adPlaying$, (IMP*)&_logos_orig$_ungrouped$MDXSession$adPlaying$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(playingAd), (IMP)&_logos_method$_ungrouped$MDXSession$playingAd, (IMP*)&_logos_orig$_ungrouped$MDXSession$playingAd);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(currentVideoID), (IMP)&_logos_method$_ungrouped$MDXSession$currentVideoID, (IMP*)&_logos_orig$_ungrouped$MDXSession$currentVideoID);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(currentContentVideoProgress), (IMP)&_logos_method$_ungrouped$MDXSession$currentContentVideoProgress, (IMP*)&_logos_orig$_ungrouped$MDXSession$currentContentVideoProgress);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(currentVideoProgress), (IMP)&_logos_method$_ungrouped$MDXSession$currentVideoProgress, (IMP*)&_logos_orig$_ungrouped$MDXSession$currentVideoProgress);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(videoLiveIngestionTime), (IMP)&_logos_method$_ungrouped$MDXSession$videoLiveIngestionTime, (IMP*)&_logos_orig$_ungrouped$MDXSession$videoLiveIngestionTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(videoSeekableEnd), (IMP)&_logos_method$_ungrouped$MDXSession$videoSeekableEnd, (IMP*)&_logos_orig$_ungrouped$MDXSession$videoSeekableEnd);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(videoSeekableStart), (IMP)&_logos_method$_ungrouped$MDXSession$videoSeekableStart, (IMP*)&_logos_orig$_ungrouped$MDXSession$videoSeekableStart);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(timeSinceLastReceivedContentVideoTime), (IMP)&_logos_method$_ungrouped$MDXSession$timeSinceLastReceivedContentVideoTime, (IMP*)&_logos_orig$_ungrouped$MDXSession$timeSinceLastReceivedContentVideoTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(timeSinceLastReceivedVideoTime), (IMP)&_logos_method$_ungrouped$MDXSession$timeSinceLastReceivedVideoTime, (IMP*)&_logos_orig$_ungrouped$MDXSession$timeSinceLastReceivedVideoTime);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSession, @selector(skipAd), (IMP)&_logos_method$_ungrouped$MDXSession$skipAd, (IMP*)&_logos_orig$_ungrouped$MDXSession$skipAd);}Class _logos_class$_ungrouped$MDXChannelMessage = objc_getClass("MDXChannelMessage"); Class _logos_metaclass$_ungrouped$MDXChannelMessage = object_getClass(_logos_class$_ungrouped$MDXChannelMessage); { MSHookMessageEx(_logos_metaclass$_ungrouped$MDXChannelMessage, @selector(messageByParsingJSONString:error:), (IMP)&_logos_meta_method$_ungrouped$MDXChannelMessage$messageByParsingJSONString$error$, (IMP*)&_logos_meta_orig$_ungrouped$MDXChannelMessage$messageByParsingJSONString$error$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$MDXChannelMessage, @selector(messageByParsingJSONData:error:), (IMP)&_logos_meta_method$_ungrouped$MDXChannelMessage$messageByParsingJSONData$error$, (IMP*)&_logos_meta_orig$_ungrouped$MDXChannelMessage$messageByParsingJSONData$error$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$MDXChannelMessage, @selector(messageByDecodingObjectArray:error:), (IMP)&_logos_meta_method$_ungrouped$MDXChannelMessage$messageByDecodingObjectArray$error$, (IMP*)&_logos_meta_orig$_ungrouped$MDXChannelMessage$messageByDecodingObjectArray$error$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$MDXChannelMessage, @selector(messageWithName:body:), (IMP)&_logos_meta_method$_ungrouped$MDXChannelMessage$messageWithName$body$, (IMP*)&_logos_meta_orig$_ungrouped$MDXChannelMessage$messageWithName$body$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$MDXChannelMessage, @selector(messageWithName:), (IMP)&_logos_meta_method$_ungrouped$MDXChannelMessage$messageWithName$, (IMP*)&_logos_meta_orig$_ungrouped$MDXChannelMessage$messageWithName$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessage, @selector(initWithName:body:), (IMP)&_logos_method$_ungrouped$MDXChannelMessage$initWithName$body$, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessage$initWithName$body$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessage, @selector(body), (IMP)&_logos_method$_ungrouped$MDXChannelMessage$body, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessage$body);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessage, @selector(name), (IMP)&_logos_method$_ungrouped$MDXChannelMessage$name, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessage$name);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXChannelMessage, @selector(commonFields), (IMP)&_logos_method$_ungrouped$MDXChannelMessage$commonFields, (IMP*)&_logos_orig$_ungrouped$MDXChannelMessage$commonFields);}Class _logos_class$_ungrouped$MDXPlaybackController = objc_getClass("MDXPlaybackController"); { MSHookMessageEx(_logos_class$_ungrouped$MDXPlaybackController, @selector(didShowSkipAd), (IMP)&_logos_method$_ungrouped$MDXPlaybackController$didShowSkipAd, (IMP*)&_logos_orig$_ungrouped$MDXPlaybackController$didShowSkipAd);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXPlaybackController, @selector(didPressSkipAd), (IMP)&_logos_method$_ungrouped$MDXPlaybackController$didPressSkipAd, (IMP*)&_logos_orig$_ungrouped$MDXPlaybackController$didPressSkipAd);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXPlaybackController, @selector(didPressSkipAdWithTouchPoint:), (IMP)&_logos_method$_ungrouped$MDXPlaybackController$didPressSkipAdWithTouchPoint$, (IMP*)&_logos_orig$_ungrouped$MDXPlaybackController$didPressSkipAdWithTouchPoint$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXPlaybackController, @selector(didPressAdThumbnail), (IMP)&_logos_method$_ungrouped$MDXPlaybackController$didPressAdThumbnail, (IMP*)&_logos_orig$_ungrouped$MDXPlaybackController$didPressAdThumbnail);}Class _logos_class$_ungrouped$YTWatchController = objc_getClass("YTWatchController"); { MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerDidPlay), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerDidPlay, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerDidPlay);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(contentVideoTotalTime), (IMP)&_logos_method$_ungrouped$YTWatchController$contentVideoTotalTime, (IMP*)&_logos_orig$_ungrouped$YTWatchController$contentVideoTotalTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(contentVideoCurrentTime), (IMP)&_logos_method$_ungrouped$YTWatchController$contentVideoCurrentTime, (IMP*)&_logos_orig$_ungrouped$YTWatchController$contentVideoCurrentTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(activeVideoCurrentTime), (IMP)&_logos_method$_ungrouped$YTWatchController$activeVideoCurrentTime, (IMP*)&_logos_orig$_ungrouped$YTWatchController$activeVideoCurrentTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(activeVideoMediaTime), (IMP)&_logos_method$_ungrouped$YTWatchController$activeVideoMediaTime, (IMP*)&_logos_orig$_ungrouped$YTWatchController$activeVideoMediaTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(activeVideoID), (IMP)&_logos_method$_ungrouped$YTWatchController$activeVideoID, (IMP*)&_logos_orig$_ungrouped$YTWatchController$activeVideoID);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(isPlaybackFinished), (IMP)&_logos_method$_ungrouped$YTWatchController$isPlaybackFinished, (IMP*)&_logos_orig$_ungrouped$YTWatchController$isPlaybackFinished);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerDidFinishPlayingAd), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerDidFinishPlayingAd, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerDidFinishPlayingAd);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerPlayerStateDidChange), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerPlayerStateDidChange, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerPlayerStateDidChange);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerDidLoadPlayerWithPlaybackData:), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerDidLoadPlayerWithPlaybackData$, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerDidLoadPlayerWithPlaybackData$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerDidPause), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerDidPause, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerDidPause);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerDidPressPlay), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerDidPressPlay, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerDidPressPlay);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerStateDidChange), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerStateDidChange, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerStateDidChange);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerDidFinishPlayback), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerDidFinishPlayback, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerDidFinishPlayback);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(playbackControllerCurrentVideoMediaTimeDidChange:), (IMP)&_logos_method$_ungrouped$YTWatchController$playbackControllerCurrentVideoMediaTimeDidChange$, (IMP*)&_logos_orig$_ungrouped$YTWatchController$playbackControllerCurrentVideoMediaTimeDidChange$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(videoEnded), (IMP)&_logos_method$_ungrouped$YTWatchController$videoEnded, (IMP*)&_logos_orig$_ungrouped$YTWatchController$videoEnded);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(isPlaybackVideoPlayingAd), (IMP)&_logos_method$_ungrouped$YTWatchController$isPlaybackVideoPlayingAd, (IMP*)&_logos_orig$_ungrouped$YTWatchController$isPlaybackVideoPlayingAd);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchController, @selector(isPlaybackVideoPlaying), (IMP)&_logos_method$_ungrouped$YTWatchController$isPlaybackVideoPlaying, (IMP*)&_logos_orig$_ungrouped$YTWatchController$isPlaybackVideoPlaying);}Class _logos_class$_ungrouped$YTWatchMiniBarViewController = objc_getClass("YTWatchMiniBarViewController"); { MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(playbackControllerCurrentVideoMediaTimeDidChange:), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerCurrentVideoMediaTimeDidChange$, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerCurrentVideoMediaTimeDidChange$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(adPlaying), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$adPlaying, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$adPlaying);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(activated), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$activated, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$activated);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(updateMiniBarSkipAdStatus), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$updateMiniBarSkipAdStatus, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$updateMiniBarSkipAdStatus);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(isSkipAdEnabled), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$isSkipAdEnabled, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$isSkipAdEnabled);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(playbackControllerDidLoadPlayerWithPlaybackData:), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerDidLoadPlayerWithPlaybackData$, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerDidLoadPlayerWithPlaybackData$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(playbackControllerStateDidChange), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerStateDidChange, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerStateDidChange);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(playbackControllerWillFailWithError:), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerWillFailWithError$, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerWillFailWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(playbackControllerPlayerStateDidChange), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$playbackControllerPlayerStateDidChange, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$playbackControllerPlayerStateDidChange);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(miniBarControlsViewDidTapPause:), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$miniBarControlsViewDidTapPause$, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$miniBarControlsViewDidTapPause$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$viewDidLoad);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(loadView), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$loadView, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$loadView);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(startPlayback), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$startPlayback, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$startPlayback);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(setVideoDetails:), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$setVideoDetails$, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$setVideoDetails$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTWatchMiniBarViewController, @selector(updateVideoDetails), (IMP)&_logos_method$_ungrouped$YTWatchMiniBarViewController$updateVideoDetails, (IMP*)&_logos_orig$_ungrouped$YTWatchMiniBarViewController$updateVideoDetails);}Class _logos_class$_ungrouped$YTPlayerBarController = objc_getClass("YTPlayerBarController"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(_maximumSeekableTime), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$_maximumSeekableTime, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$_maximumSeekableTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(_totalTime), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$_totalTime, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$_totalTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(_minimumSeekableTime), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$_minimumSeekableTime, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$_minimumSeekableTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(_currentMediaTime), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$_currentMediaTime, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$_currentMediaTime);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(titleForTime:), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$titleForTime$, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$titleForTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(setCurrentTimeTitleString:), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$setCurrentTimeTitleString$, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$setCurrentTimeTitleString$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(setMinimumSeekableTime:maximumSeekableTime:), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(setDownloadedTime:), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$setDownloadedTime$, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$setDownloadedTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(setMediaTime:), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$setMediaTime$, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$setMediaTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlayerBarController, @selector(setAdMarkers:), (IMP)&_logos_method$_ungrouped$YTPlayerBarController$setAdMarkers$, (IMP*)&_logos_orig$_ungrouped$YTPlayerBarController$setAdMarkers$);}Class _logos_class$_ungrouped$YTWatchLayerViewController = objc_getClass("YTWatchLayerViewController"); { MSHookMessageEx(_logos_class$_ungrouped$YTWatchLayerViewController, @selector(_lastWatchMediaTime), (IMP)&_logos_method$_ungrouped$YTWatchLayerViewController$_lastWatchMediaTime, (IMP*)&_logos_orig$_ungrouped$YTWatchLayerViewController$_lastWatchMediaTime);}Class _logos_class$_ungrouped$YTWatchFlowController = objc_getClass("YTWatchFlowController"); { MSHookMessageEx(_logos_class$_ungrouped$YTWatchFlowController, @selector(contentVideoMediaTimeDidChangeToTime:totalMediaTime:), (IMP)&_logos_method$_ungrouped$YTWatchFlowController$contentVideoMediaTimeDidChangeToTime$totalMediaTime$, (IMP*)&_logos_orig$_ungrouped$YTWatchFlowController$contentVideoMediaTimeDidChangeToTime$totalMediaTime$);}Class _logos_class$_ungrouped$YTPlaybackControllerEventsDelegate = objc_getClass("YTPlaybackControllerEventsDelegate"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlaybackControllerEventsDelegate, @selector(playbackControllerDidFinishPlayingAd), (IMP)&_logos_method$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidFinishPlayingAd, (IMP*)&_logos_orig$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidFinishPlayingAd);}{ MSHookMessageEx(_logos_class$_ungrouped$YTPlaybackControllerEventsDelegate, @selector(playbackControllerDidPressPause), (IMP)&_logos_method$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidPressPause, (IMP*)&_logos_orig$_ungrouped$YTPlaybackControllerEventsDelegate$playbackControllerDidPressPause);}Class _logos_class$_ungrouped$YTPlaybackControllerUIDelegate = objc_getClass("YTPlaybackControllerUIDelegate"); { MSHookMessageEx(_logos_class$_ungrouped$YTPlaybackControllerUIDelegate, @selector(adDidComplete:), (IMP)&_logos_method$_ungrouped$YTPlaybackControllerUIDelegate$adDidComplete$, (IMP*)&_logos_orig$_ungrouped$YTPlaybackControllerUIDelegate$adDidComplete$);}Class _logos_class$_ungrouped$MDXVideoProgressController = objc_getClass("MDXVideoProgressController"); { MSHookMessageEx(_logos_class$_ungrouped$MDXVideoProgressController, @selector(startVideoProgressTimer), (IMP)&_logos_method$_ungrouped$MDXVideoProgressController$startVideoProgressTimer, (IMP*)&_logos_orig$_ungrouped$MDXVideoProgressController$startVideoProgressTimer);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXVideoProgressController, @selector(mediaTimesDidChangeForMDXSession:), (IMP)&_logos_method$_ungrouped$MDXVideoProgressController$mediaTimesDidChangeForMDXSession$, (IMP*)&_logos_orig$_ungrouped$MDXVideoProgressController$mediaTimesDidChangeForMDXSession$);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXVideoProgressController, @selector(currentVideoMediaTime), (IMP)&_logos_method$_ungrouped$MDXVideoProgressController$currentVideoMediaTime, (IMP*)&_logos_orig$_ungrouped$MDXVideoProgressController$currentVideoMediaTime);}Class _logos_class$_ungrouped$MDXSingleVideoController = objc_getClass("MDXSingleVideoController"); { MSHookMessageEx(_logos_class$_ungrouped$MDXSingleVideoController, @selector(startAdOverlay), (IMP)&_logos_method$_ungrouped$MDXSingleVideoController$startAdOverlay, (IMP*)&_logos_orig$_ungrouped$MDXSingleVideoController$startAdOverlay);}{ MSHookMessageEx(_logos_class$_ungrouped$MDXSingleVideoController, @selector(isContentVideoLoadedOnScreen), (IMP)&_logos_method$_ungrouped$MDXSingleVideoController$isContentVideoLoadedOnScreen, (IMP*)&_logos_orig$_ungrouped$MDXSingleVideoController$isContentVideoLoadedOnScreen);}} }
#line 1069 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeDylib.xm"
