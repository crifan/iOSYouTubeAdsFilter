#line 1 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeHAM.xm"





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

@class HAMNetworkRequestCompletionEvent; @class MLHAMQueuePlayer; @class HAMMP4DataAccumulator; @class HAMPlayerInternal; @class HAMMP4InitializationChunk; @class HAMDASHSampleBufferSource; @class HAMNetworkRequestResponseEvent; @class HAMURLSessionDataLoadTask; @class HAMMP4MediaChunk; @class MLMP4ChunkFactory; @class MLHAMQueuePlayerSegmentList; @class HAMMediaChunk; @class HAMChunk; @class HAMMP4IndexChunk; @class MLHAMPlayerItem; 
static HAMPlayerInternal* (*_logos_orig$_ungrouped$HAMPlayerInternal$init)(_LOGOS_SELF_TYPE_INIT HAMPlayerInternal*, SEL) _LOGOS_RETURN_RETAINED; static HAMPlayerInternal* _logos_method$_ungrouped$HAMPlayerInternal$init(_LOGOS_SELF_TYPE_INIT HAMPlayerInternal*, SEL) _LOGOS_RETURN_RETAINED; static HAMPlayerInternal* (*_logos_orig$_ungrouped$HAMPlayerInternal$initWithStallPredictor$resyncPolicy$eventCenter$playerQueue$configuration$)(_LOGOS_SELF_TYPE_INIT HAMPlayerInternal*, SEL, id, id, id, id, CDStruct_cd0888f5) _LOGOS_RETURN_RETAINED; static HAMPlayerInternal* _logos_method$_ungrouped$HAMPlayerInternal$initWithStallPredictor$resyncPolicy$eventCenter$playerQueue$configuration$(_LOGOS_SELF_TYPE_INIT HAMPlayerInternal*, SEL, id, id, id, id, CDStruct_cd0888f5) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$HAMPlayerInternal$pause)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMPlayerInternal$pause(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_orig$_ungrouped$HAMPlayerInternal$stopAllTrackRenderers)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static _Bool _logos_method$_ungrouped$HAMPlayerInternal$stopAllTrackRenderers(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setStatus$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$HAMPlayerInternal$setStatus$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, long long); static NSArray* (*_logos_orig$_ungrouped$HAMPlayerInternal$_allTrackRenderers)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static NSArray* _logos_method$_ungrouped$HAMPlayerInternal$_allTrackRenderers(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setPlayerTimerPaused$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$HAMPlayerInternal$setPlayerTimerPaused$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, _Bool); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$terminate)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMPlayerInternal$terminate(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$terminateWithError$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMPlayerInternal$terminateWithError$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$trackRendererMustStop$resumeAutomatically$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id, _Bool); static void _logos_method$_ungrouped$HAMPlayerInternal$trackRendererMustStop$resumeAutomatically$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id, _Bool); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$trackRenderer$didFailWithError$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$HAMPlayerInternal$trackRenderer$didFailWithError$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$updateStartedTrackRenderers)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMPlayerInternal$updateStartedTrackRenderers(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$addTrackRenderer$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMPlayerInternal$addTrackRenderer$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setActiveTrackRenderers$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMPlayerInternal$setActiveTrackRenderers$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setDelegate$delegateQueue$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$HAMPlayerInternal$setDelegate$delegateQueue$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$internalPlay)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMPlayerInternal$internalPlay(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setTimeSourceTrackRenderer$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMPlayerInternal$setTimeSourceTrackRenderer$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static _Bool (*_logos_orig$_ungrouped$HAMPlayerInternal$resyncTrackRenderers$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static _Bool _logos_method$_ungrouped$HAMPlayerInternal$resyncTrackRenderers$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$playerLoop)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMPlayerInternal$playerLoop(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$HAMPlayerInternal$_currentTimeObserver)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$HAMPlayerInternal$_currentTimeObserver(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setCurrentTimeObserver$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMPlayerInternal$setCurrentTimeObserver$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static CDStruct_576a8307 (*_logos_orig$_ungrouped$HAMPlayerInternal$_currentTime)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static CDStruct_576a8307 _logos_method$_ungrouped$HAMPlayerInternal$_currentTime(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setMediaTime$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, CDStruct_1b6d18a9); static void _logos_method$_ungrouped$HAMPlayerInternal$setMediaTime$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, CDStruct_1b6d18a9); static void (*_logos_orig$_ungrouped$HAMPlayerInternal$setPlayerStatusObserver$)(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMPlayerInternal$setPlayerStatusObserver$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$setStatus$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$MLHAMQueuePlayer$setStatus$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$playerItem$didFailWithError$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLHAMQueuePlayer$playerItem$didFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$failWithError$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLHAMQueuePlayer$failWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$setCurrentTime$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, CDStruct_576a8307); static void _logos_method$_ungrouped$MLHAMQueuePlayer$setCurrentTime$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, CDStruct_576a8307); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$mediaFetchControllerDidFailWithError$fatal$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id, _Bool); static void _logos_method$_ungrouped$MLHAMQueuePlayer$mediaFetchControllerDidFailWithError$fatal$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id, _Bool); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$segmentListDidFailWithError$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLHAMQueuePlayer$segmentListDidFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$playerWillFailWithError$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLHAMQueuePlayer$playerWillFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayer$trackRenderer$didFailWithError$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MLHAMQueuePlayer$trackRenderer$didFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$MLHAMQueuePlayerSegmentList$updatePeriodCurrentTimeForSegment$)(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayerSegmentList* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MLHAMQueuePlayerSegmentList$updatePeriodCurrentTimeForSegment$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayerSegmentList* _LOGOS_SELF_CONST, SEL, id); static MLHAMPlayerItem* (*_logos_orig$_ungrouped$MLHAMPlayerItem$initWithVideo$playerConfig$playerQueue$periodID$player$playerStickySettings$onesieVideoData$latencyLogger$reloadContext$decoratedURLProvider$autoStartPlayback$useHAMPlayerStatusForClientAbrStateFiller$)(_LOGOS_SELF_TYPE_INIT MLHAMPlayerItem*, SEL, id, id, id, long long, id, id, id, id, id, id, _Bool, _Bool) _LOGOS_RETURN_RETAINED; static MLHAMPlayerItem* _logos_method$_ungrouped$MLHAMPlayerItem$initWithVideo$playerConfig$playerQueue$periodID$player$playerStickySettings$onesieVideoData$latencyLogger$reloadContext$decoratedURLProvider$autoStartPlayback$useHAMPlayerStatusForClientAbrStateFiller$(_LOGOS_SELF_TYPE_INIT MLHAMPlayerItem*, SEL, id, id, id, long long, id, id, id, id, id, id, _Bool, _Bool) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$MLHAMPlayerItem$setCurrentTime$)(_LOGOS_SELF_TYPE_NORMAL MLHAMPlayerItem* _LOGOS_SELF_CONST, SEL, CDStruct_576a8307); static void _logos_method$_ungrouped$MLHAMPlayerItem$setCurrentTime$(_LOGOS_SELF_TYPE_NORMAL MLHAMPlayerItem* _LOGOS_SELF_CONST, SEL, CDStruct_576a8307); static HAMNetworkRequestCompletionEvent* (*_logos_orig$_ungrouped$HAMNetworkRequestCompletionEvent$initWithRequest$absoluteTime$startAbsoluteTime$countOfBytesReceived$response$error$)(_LOGOS_SELF_TYPE_INIT HAMNetworkRequestCompletionEvent*, SEL, id, double, double, long long, id, id) _LOGOS_RETURN_RETAINED; static HAMNetworkRequestCompletionEvent* _logos_method$_ungrouped$HAMNetworkRequestCompletionEvent$initWithRequest$absoluteTime$startAbsoluteTime$countOfBytesReceived$response$error$(_LOGOS_SELF_TYPE_INIT HAMNetworkRequestCompletionEvent*, SEL, id, double, double, long long, id, id) _LOGOS_RETURN_RETAINED; static HAMNetworkRequestResponseEvent* (*_logos_orig$_ungrouped$HAMNetworkRequestResponseEvent$initWithRequest$absoluteTime$requestNumber$streamable$onesie$format$predictedWallTime$predictedSizeBytes$predictedMediaDuration$response$startAbsoluteTime$)(_LOGOS_SELF_TYPE_INIT HAMNetworkRequestResponseEvent*, SEL, id, double, long long, _Bool, _Bool, id, double, long long, double, id, double) _LOGOS_RETURN_RETAINED; static HAMNetworkRequestResponseEvent* _logos_method$_ungrouped$HAMNetworkRequestResponseEvent$initWithRequest$absoluteTime$requestNumber$streamable$onesie$format$predictedWallTime$predictedSizeBytes$predictedMediaDuration$response$startAbsoluteTime$(_LOGOS_SELF_TYPE_INIT HAMNetworkRequestResponseEvent*, SEL, id, double, long long, _Bool, _Bool, id, double, long long, double, id, double) _LOGOS_RETURN_RETAINED; static NSURLResponse * (*_logos_orig$_ungrouped$HAMNetworkRequestResponseEvent$response)(_LOGOS_SELF_TYPE_NORMAL HAMNetworkRequestResponseEvent* _LOGOS_SELF_CONST, SEL); static NSURLResponse * _logos_method$_ungrouped$HAMNetworkRequestResponseEvent$response(_LOGOS_SELF_TYPE_NORMAL HAMNetworkRequestResponseEvent* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didReceiveData$absoluteTime$)(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST, SEL, id, double); static void _logos_method$_ungrouped$HAMURLSessionDataLoadTask$didReceiveData$absoluteTime$(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST, SEL, id, double); static void (*_logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didCompleteWithError$absoluteTime$)(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST, SEL, id, double); static void _logos_method$_ungrouped$HAMURLSessionDataLoadTask$didCompleteWithError$absoluteTime$(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST, SEL, id, double); static void (*_logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didReceiveResponse$absoluteTime$)(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST, SEL, id, double); static void _logos_method$_ungrouped$HAMURLSessionDataLoadTask$didReceiveResponse$absoluteTime$(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST, SEL, id, double); static HAMDASHSampleBufferSource* (*_logos_orig$_ungrouped$HAMDASHSampleBufferSource$initWithContext$ABRController$periodID$)(_LOGOS_SELF_TYPE_INIT HAMDASHSampleBufferSource*, SEL, id, id, long long) _LOGOS_RETURN_RETAINED; static HAMDASHSampleBufferSource* _logos_method$_ungrouped$HAMDASHSampleBufferSource$initWithContext$ABRController$periodID$(_LOGOS_SELF_TYPE_INIT HAMDASHSampleBufferSource*, SEL, id, id, long long) _LOGOS_RETURN_RETAINED; static _Bool (*_logos_orig$_ungrouped$HAMDASHSampleBufferSource$prepareAndReturnError$)(_LOGOS_SELF_TYPE_NORMAL HAMDASHSampleBufferSource* _LOGOS_SELF_CONST, SEL, id *); static _Bool _logos_method$_ungrouped$HAMDASHSampleBufferSource$prepareAndReturnError$(_LOGOS_SELF_TYPE_NORMAL HAMDASHSampleBufferSource* _LOGOS_SELF_CONST, SEL, id *); static HAMChunk* (*_logos_orig$_ungrouped$HAMChunk$init)(_LOGOS_SELF_TYPE_INIT HAMChunk*, SEL) _LOGOS_RETURN_RETAINED; static HAMChunk* _logos_method$_ungrouped$HAMChunk$init(_LOGOS_SELF_TYPE_INIT HAMChunk*, SEL) _LOGOS_RETURN_RETAINED; static HAMChunk* (*_logos_orig$_ungrouped$HAMChunk$initWithFormat$rangedURL$dataAccumulator$)(_LOGOS_SELF_TYPE_INIT HAMChunk*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static HAMChunk* _logos_method$_ungrouped$HAMChunk$initWithFormat$rangedURL$dataAccumulator$(_LOGOS_SELF_TYPE_INIT HAMChunk*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$HAMChunk$loadWillBeginWithTask$)(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMChunk$loadWillBeginWithTask$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$HAMChunk$loadDidCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMChunk$loadDidCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$HAMChunk$HAMErrorWithCode$details$OSStatus$)(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, long long, id, int); static id _logos_method$_ungrouped$HAMChunk$HAMErrorWithCode$details$OSStatus$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, long long, id, int); static id (*_logos_orig$_ungrouped$HAMChunk$HAMErrorWithCode$details$)(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, long long, id); static id _logos_method$_ungrouped$HAMChunk$HAMErrorWithCode$details$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST, SEL, long long, id); static void (*_logos_orig$_ungrouped$HAMMediaChunk$loadDidCompleteWithError$)(_LOGOS_SELF_TYPE_NORMAL HAMMediaChunk* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMMediaChunk$loadDidCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL HAMMediaChunk* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$MLMP4ChunkFactory$manifestlessMediaChunkWithURL$segmentNumber$timeRange$segmentTimeline$streamable$updateStartTime$updateEndTime$metadataOnly$metadataRelay$partialResponseHandlerDelegate$)(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id, long long, CDStruct_e83c9415, id, _Bool, _Bool, _Bool, _Bool, id, id); static id _logos_method$_ungrouped$MLMP4ChunkFactory$manifestlessMediaChunkWithURL$segmentNumber$timeRange$segmentTimeline$streamable$updateStartTime$updateEndTime$metadataOnly$metadataRelay$partialResponseHandlerDelegate$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id, long long, CDStruct_e83c9415, id, _Bool, _Bool, _Bool, _Bool, id, id); static id (*_logos_orig$_ungrouped$MLMP4ChunkFactory$indexChunkWithURL$)(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$MLMP4ChunkFactory$indexChunkWithURL$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$MLMP4ChunkFactory$initializationChunkWithURL$)(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$MLMP4ChunkFactory$initializationChunkWithURL$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$MLMP4ChunkFactory$mediaChunkWithURL$segmentNumber$timeRange$)(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id, long long, CDStruct_e83c9415); static id _logos_method$_ungrouped$MLMP4ChunkFactory$mediaChunkWithURL$segmentNumber$timeRange$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST, SEL, id, long long, CDStruct_e83c9415); static MLMP4ChunkFactory* (*_logos_orig$_ungrouped$MLMP4ChunkFactory$initWithFormat$)(_LOGOS_SELF_TYPE_INIT MLMP4ChunkFactory*, SEL, id) _LOGOS_RETURN_RETAINED; static MLMP4ChunkFactory* _logos_method$_ungrouped$MLMP4ChunkFactory$initWithFormat$(_LOGOS_SELF_TYPE_INIT MLMP4ChunkFactory*, SEL, id) _LOGOS_RETURN_RETAINED; static HAMMP4MediaChunk* (*_logos_orig$_ungrouped$HAMMP4MediaChunk$initWithFormat$rangedURL$segmentNumber$timeRange$preferTrackTimescale$)(_LOGOS_SELF_TYPE_INIT HAMMP4MediaChunk*, SEL, id, id, long long, CDStruct_e83c9415, _Bool) _LOGOS_RETURN_RETAINED; static HAMMP4MediaChunk* _logos_method$_ungrouped$HAMMP4MediaChunk$initWithFormat$rangedURL$segmentNumber$timeRange$preferTrackTimescale$(_LOGOS_SELF_TYPE_INIT HAMMP4MediaChunk*, SEL, id, id, long long, CDStruct_e83c9415, _Bool) _LOGOS_RETURN_RETAINED; static HAMMP4InitializationChunk* (*_logos_orig$_ungrouped$HAMMP4InitializationChunk$initWithFormat$rangedURL$preferTrackTimescale$)(_LOGOS_SELF_TYPE_INIT HAMMP4InitializationChunk*, SEL, id, id, _Bool) _LOGOS_RETURN_RETAINED; static HAMMP4InitializationChunk* _logos_method$_ungrouped$HAMMP4InitializationChunk$initWithFormat$rangedURL$preferTrackTimescale$(_LOGOS_SELF_TYPE_INIT HAMMP4InitializationChunk*, SEL, id, id, _Bool) _LOGOS_RETURN_RETAINED; static HAMMP4DataAccumulator* (*_logos_orig$_ungrouped$HAMMP4DataAccumulator$init)(_LOGOS_SELF_TYPE_INIT HAMMP4DataAccumulator*, SEL) _LOGOS_RETURN_RETAINED; static HAMMP4DataAccumulator* _logos_method$_ungrouped$HAMMP4DataAccumulator$init(_LOGOS_SELF_TYPE_INIT HAMMP4DataAccumulator*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$HAMMP4DataAccumulator$addData$)(_LOGOS_SELF_TYPE_NORMAL HAMMP4DataAccumulator* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMMP4DataAccumulator$addData$(_LOGOS_SELF_TYPE_NORMAL HAMMP4DataAccumulator* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$HAMMP4DataAccumulator$doneAddingData)(_LOGOS_SELF_TYPE_NORMAL HAMMP4DataAccumulator* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMMP4DataAccumulator$doneAddingData(_LOGOS_SELF_TYPE_NORMAL HAMMP4DataAccumulator* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidComplete)(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidComplete(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidCompleteBox$startOffset$)(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL, void *, int); static void _logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidCompleteBox$startOffset$(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL, void *, int); static void (*_logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidFailWithErrorDetails$)(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidFailWithErrorDetails$(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL, id); static _Bool (*_logos_orig$_ungrouped$HAMMP4IndexChunk$prepareAndReturnError$)(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL, id *); static _Bool _logos_method$_ungrouped$HAMMP4IndexChunk$prepareAndReturnError$(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST, SEL, id *); static HAMMP4IndexChunk* (*_logos_orig$_ungrouped$HAMMP4IndexChunk$initWithFormat$rangedURL$)(_LOGOS_SELF_TYPE_INIT HAMMP4IndexChunk*, SEL, id, id) _LOGOS_RETURN_RETAINED; static HAMMP4IndexChunk* _logos_method$_ungrouped$HAMMP4IndexChunk$initWithFormat$rangedURL$(_LOGOS_SELF_TYPE_INIT HAMMP4IndexChunk*, SEL, id, id) _LOGOS_RETURN_RETAINED; 

#line 17 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeHAM.xm"


static HAMPlayerInternal* _logos_method$_ungrouped$HAMPlayerInternal$init(_LOGOS_SELF_TYPE_INIT HAMPlayerInternal* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    id initPi = _logos_orig$_ungrouped$HAMPlayerInternal$init(self, _cmd);
    iosLogInfo("initPi=%@", initPi);
    return initPi;
}

static HAMPlayerInternal* _logos_method$_ungrouped$HAMPlayerInternal$initWithStallPredictor$resyncPolicy$eventCenter$playerQueue$configuration$(_LOGOS_SELF_TYPE_INIT HAMPlayerInternal* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, id arg4, CDStruct_cd0888f5 arg5) _LOGOS_RETURN_RETAINED{
    id initwspPi = _logos_orig$_ungrouped$HAMPlayerInternal$initWithStallPredictor$resyncPolicy$eventCenter$playerQueue$configuration$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
    iosLogInfo("arg1=%@,resyncPolicy=%@,eventCenter=%@,playerQueue=%@-> initwspPi=%@", arg1, arg2, arg3, arg4, initwspPi);

    return initwspPi;
}

static void _logos_method$_ungrouped$HAMPlayerInternal$pause(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$HAMPlayerInternal$pause(self, _cmd);
}

static _Bool _logos_method$_ungrouped$HAMPlayerInternal$stopAllTrackRenderers(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    _Bool satr = _logos_orig$_ungrouped$HAMPlayerInternal$stopAllTrackRenderers(self, _cmd);
    iosLogInfo("satr=%s", boolToStr(satr));

    return satr;
}

static void _logos_method$_ungrouped$HAMPlayerInternal$setStatus$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1){
    iosLogInfo("arg1=%llu", arg1);

    int Youtube_Player_Status_Error = 8;
    int Youtube_Player_Status_Pause = 4;
    if( (Youtube_Player_Status_Error == arg1) || (Youtube_Player_Status_Pause == arg1) ){
        iosLogInfo("error/pause status: %llu", arg1);
    }

    _logos_orig$_ungrouped$HAMPlayerInternal$setStatus$(self, _cmd, arg1);
}

static NSArray* _logos_method$_ungrouped$HAMPlayerInternal$_allTrackRenderers(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSArray* orig_allTrackRenderers = _logos_orig$_ungrouped$HAMPlayerInternal$_allTrackRenderers(self, _cmd);
    iosLogInfo("orig_allTrackRenderers=%@", orig_allTrackRenderers);
    NSUInteger allRenderCount = [orig_allTrackRenderers count];

    int RenderCount_Normal = 3;

    if (allRenderCount < RenderCount_Normal) {
        iosLogInfo("allRenderCount < %d, maybe changed ?", RenderCount_Normal);
    } else {
        iosLogInfo("allRenderCount >= %d, seems normal", RenderCount_Normal);
    }

    return orig_allTrackRenderers;
}

static void _logos_method$_ungrouped$HAMPlayerInternal$setPlayerTimerPaused$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    iosLogInfo("arg1=%s", boolToStr(arg1));
    _logos_orig$_ungrouped$HAMPlayerInternal$setPlayerTimerPaused$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$terminate(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$HAMPlayerInternal$terminate(self, _cmd);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$terminateWithError$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$HAMPlayerInternal$terminateWithError$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$trackRendererMustStop$resumeAutomatically$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2){
    iosLogInfo("arg1=%@,resumeAutomatically=%s", arg1, boolToStr(arg2));
    _logos_orig$_ungrouped$HAMPlayerInternal$trackRendererMustStop$resumeAutomatically$(self, _cmd, arg1, arg2);

}

static void _logos_method$_ungrouped$HAMPlayerInternal$trackRenderer$didFailWithError$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("arg1=%@,didFailWithError=%@", arg1, arg2);
    _logos_orig$_ungrouped$HAMPlayerInternal$trackRenderer$didFailWithError$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$updateStartedTrackRenderers(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$HAMPlayerInternal$updateStartedTrackRenderers(self, _cmd);

}

static void _logos_method$_ungrouped$HAMPlayerInternal$addTrackRenderer$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$HAMPlayerInternal$addTrackRenderer$(self, _cmd, arg1);

}

static void _logos_method$_ungrouped$HAMPlayerInternal$setActiveTrackRenderers$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$HAMPlayerInternal$setActiveTrackRenderers$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$setDelegate$delegateQueue$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("arg1=%@,delegateQueue=%@", arg1, arg2);
    _logos_orig$_ungrouped$HAMPlayerInternal$setDelegate$delegateQueue$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$internalPlay(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$HAMPlayerInternal$internalPlay(self, _cmd);
}

static void _logos_method$_ungrouped$HAMPlayerInternal$setTimeSourceTrackRenderer$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$HAMPlayerInternal$setTimeSourceTrackRenderer$(self, _cmd, arg1);

}

static _Bool _logos_method$_ungrouped$HAMPlayerInternal$resyncTrackRenderers$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    _Bool rstr = _logos_orig$_ungrouped$HAMPlayerInternal$resyncTrackRenderers$(self, _cmd, arg1);
    iosLogInfo("arg1=%@ -> rstr=%s", arg1, boolToStr(rstr));

    return rstr;
}

static void _logos_method$_ungrouped$HAMPlayerInternal$playerLoop(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    gCurLogNum += 1;
    if (isNeedDebug()) {
        iosLogInfo("%s", "");
    }
    _logos_orig$_ungrouped$HAMPlayerInternal$playerLoop(self, _cmd);
}


static id _logos_method$_ungrouped$HAMPlayerInternal$_currentTimeObserver(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    id cto = _logos_orig$_ungrouped$HAMPlayerInternal$_currentTimeObserver(self, _cmd);
    iosLogInfo("cto=%@", cto);
    return cto;
}


static void _logos_method$_ungrouped$HAMPlayerInternal$setCurrentTimeObserver$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$HAMPlayerInternal$setCurrentTimeObserver$(self, _cmd, arg1);
}

static CDStruct_576a8307 _logos_method$_ungrouped$HAMPlayerInternal$_currentTime(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    CDStruct_576a8307 origCurTime = _logos_orig$_ungrouped$HAMPlayerInternal$_currentTime(self, _cmd);
    iosLogInfo("origCurTime: productionTime=%f, time.value=%lld", origCurTime.productionTime, origCurTime.time.value);
    
    if (origCurTime.time.value < smallStartTime) {
        iosLogInfo("origCurTime.time.value < %lld, maybe reset?", origCurTime.time.value);
    } else {
        iosLogInfo("origCurTime.time.value > %lld, maybe normal play time", origCurTime.time.value);
    }

    return origCurTime;
}

static void _logos_method$_ungrouped$HAMPlayerInternal$setMediaTime$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CDStruct_1b6d18a9 arg1){
    iosLogInfo("arg1: time.value=%lld,time.epoch=%lld", arg1.value, arg1.epoch);

    if (arg1.value < smallStartTime) {
        iosLogInfo("arg1.value < %lld, maybe reset?", arg1.value);
    } else {
        iosLogInfo("arg1.value > %lld, maybe normal play time", arg1.value);
    }

    _logos_orig$_ungrouped$HAMPlayerInternal$setMediaTime$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$HAMPlayerInternal$setPlayerStatusObserver$(_LOGOS_SELF_TYPE_NORMAL HAMPlayerInternal* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$HAMPlayerInternal$setPlayerStatusObserver$(self, _cmd, arg1);
}










static void _logos_method$_ungrouped$MLHAMQueuePlayer$setStatus$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1){
    iosLogInfo("arg1=%llu", arg1);

    int Youtube_Player_Status_Error = 8;
    if (Youtube_Player_Status_Error == arg1){
        iosLogInfo("error status: %llu", arg1);
    }

    _logos_orig$_ungrouped$MLHAMQueuePlayer$setStatus$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLHAMQueuePlayer$playerItem$didFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("arg1=%@，arg2=%@", arg1, arg2);
    _logos_orig$_ungrouped$MLHAMQueuePlayer$playerItem$didFailWithError$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLHAMQueuePlayer$failWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MLHAMQueuePlayer$failWithError$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$MLHAMQueuePlayer$setCurrentTime$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CDStruct_576a8307 arg1){
    gCurLogNum += 1;

    
    if (isNeedDebug()) {
        iosLogInfo("arg1: productionTime=%f, time.value=%lld", arg1.productionTime, arg1.time.value);
    }

    if (arg1.time.value < smallStartTime) {
        if(isNeedDebug()){
            iosLogInfo("arg1.time.value < %lld, maybe reset?", arg1.time.value);
        }
    } else {
        if (isNeedDebug()) {
            iosLogInfo("arg1.time.value > %lld, maybe normal play time", arg1.time.value);
        }
    }
    
    _logos_orig$_ungrouped$MLHAMQueuePlayer$setCurrentTime$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLHAMQueuePlayer$mediaFetchControllerDidFailWithError$fatal$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2){
    iosLogInfo("arg1=%@，arg2=%s", arg1, boolToStr(arg2));
    _logos_orig$_ungrouped$MLHAMQueuePlayer$mediaFetchControllerDidFailWithError$fatal$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$MLHAMQueuePlayer$segmentListDidFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MLHAMQueuePlayer$segmentListDidFailWithError$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLHAMQueuePlayer$playerWillFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("arg1=%@", arg1);
    _logos_orig$_ungrouped$MLHAMQueuePlayer$playerWillFailWithError$(self, _cmd, arg1);
}

static void _logos_method$_ungrouped$MLHAMQueuePlayer$trackRenderer$didFailWithError$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    iosLogInfo("arg1=%@，arg2=%@", arg1, arg2);
    _logos_orig$_ungrouped$MLHAMQueuePlayer$trackRenderer$didFailWithError$(self, _cmd, arg1, arg2);
}









static void _logos_method$_ungrouped$MLHAMQueuePlayerSegmentList$updatePeriodCurrentTimeForSegment$(_LOGOS_SELF_TYPE_NORMAL MLHAMQueuePlayerSegmentList* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    gCurLogNum += 1;
    if (isNeedDebug()) {
        iosLogInfo("arg1=%@", arg1);
    }
    _logos_orig$_ungrouped$MLHAMQueuePlayerSegmentList$updatePeriodCurrentTimeForSegment$(self, _cmd, arg1);
}









static MLHAMPlayerItem* _logos_method$_ungrouped$MLHAMPlayerItem$initWithVideo$playerConfig$playerQueue$periodID$player$playerStickySettings$onesieVideoData$latencyLogger$reloadContext$decoratedURLProvider$autoStartPlayback$useHAMPlayerStatusForClientAbrStateFiller$(_LOGOS_SELF_TYPE_INIT MLHAMPlayerItem* __unused self, SEL __unused _cmd, id video, id playerConfig, id playerQueue, long long periodID, id player, id playerStickySettings, id onesieVideoData, id latencyLogger, id reloadContext, id decoratedURLProvider, _Bool autoStartPlayback, _Bool useHAMPlayerStatusForClientAbrStateFiller) _LOGOS_RETURN_RETAINED{
    id newItem = _logos_orig$_ungrouped$MLHAMPlayerItem$initWithVideo$playerConfig$playerQueue$periodID$player$playerStickySettings$onesieVideoData$latencyLogger$reloadContext$decoratedURLProvider$autoStartPlayback$useHAMPlayerStatusForClientAbrStateFiller$(self, _cmd, video, playerConfig, playerQueue, periodID, player, playerStickySettings, onesieVideoData, latencyLogger, reloadContext, decoratedURLProvider, autoStartPlayback, useHAMPlayerStatusForClientAbrStateFiller);
    iosLogInfo("video=%@,playerConfig=%@,playerQueue=%@,periodID=%lld,player=%@,playerStickySettings=%@,onesieVideoData=%@,latencyLogger=%@,reloadContext=%@,decoratedURLProvider=%@,autoStartPlayback=%s,useHAMPlayerStatusForClientAbrStateFiller=%s -> newItem=%@",
               video, playerConfig, playerQueue, periodID, player, playerStickySettings, onesieVideoData, latencyLogger, reloadContext, decoratedURLProvider, boolToStr(autoStartPlayback), boolToStr(useHAMPlayerStatusForClientAbrStateFiller), newItem);
    return newItem;
}


static void _logos_method$_ungrouped$MLHAMPlayerItem$setCurrentTime$(_LOGOS_SELF_TYPE_NORMAL MLHAMPlayerItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CDStruct_576a8307 arg1){
    gCurLogNum += 1;
    if(isNeedDebug()){
        iosLogInfo("arg1: productionTime=%f, time.value=%lld", arg1.productionTime, arg1.time.value);
    }

    if (arg1.time.value < smallStartTime) {
        if(isNeedDebug()){
            iosLogInfo("arg1.time.value < %lld, maybe reset?", arg1.time.value);
        }
    } else {
        if(isNeedDebug()){
            iosLogInfo("arg1.time.value > %lld, maybe normal play time", arg1.time.value);
        }
    }

    _logos_orig$_ungrouped$MLHAMPlayerItem$setCurrentTime$(self, _cmd, arg1);
}










static HAMNetworkRequestCompletionEvent* _logos_method$_ungrouped$HAMNetworkRequestCompletionEvent$initWithRequest$absoluteTime$startAbsoluteTime$countOfBytesReceived$response$error$(_LOGOS_SELF_TYPE_INIT HAMNetworkRequestCompletionEvent* __unused self, SEL __unused _cmd, id arg1, double arg2, double arg3, long long arg4, id arg5, id arg6) _LOGOS_RETURN_RETAINED{
    NSError* error = (NSError*)arg6;
    NSURLRequest* request = (NSURLRequest*)arg1; 
    iosLogInfo("request=%@,absoluteTime=%f,startAbsoluteTime=%f,countOfBytesReceived=%lld,response=%@,error=%@", request, arg2, arg3, arg4, arg5, arg6);

    NSURL* reqUrl = [request URL];
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@", reqUrl);
        gNoUse = 1;

        if (error == NULL) {
            gNoUse = 1;
        } else {
            gNoUse = 2;
        }
    }

    id newCompletionEvent = _logos_orig$_ungrouped$HAMNetworkRequestCompletionEvent$initWithRequest$absoluteTime$startAbsoluteTime$countOfBytesReceived$response$error$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6);
    iosLogInfo("->newCompletionEvent=%@", newCompletionEvent);
    return newCompletionEvent;
}










static HAMNetworkRequestResponseEvent* _logos_method$_ungrouped$HAMNetworkRequestResponseEvent$initWithRequest$absoluteTime$requestNumber$streamable$onesie$format$predictedWallTime$predictedSizeBytes$predictedMediaDuration$response$startAbsoluteTime$(_LOGOS_SELF_TYPE_INIT HAMNetworkRequestResponseEvent* __unused self, SEL __unused _cmd, id arg1, double arg2, long long arg3, _Bool arg4, _Bool arg5, id arg6, double arg7, long long arg8, double arg9, id arg10, double arg11) _LOGOS_RETURN_RETAINED{
    NSMutableURLRequest* request = (NSMutableURLRequest*)arg1;
    NSHTTPURLResponse* response = (NSHTTPURLResponse*)arg10;
    
    NSURL* reqUrl = [request URL];
    NSURL* respUrl = [response URL];

    id reqRespEvent = _logos_orig$_ungrouped$HAMNetworkRequestResponseEvent$initWithRequest$absoluteTime$requestNumber$streamable$onesie$format$predictedWallTime$predictedSizeBytes$predictedMediaDuration$response$startAbsoluteTime$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11);

    if(isYoutubeAdsVideo_current(reqUrl) || isYoutubeAdsVideo_current(respUrl)){

        gNoUse = 1;
    }

    return reqRespEvent;
}


static NSURLResponse * _logos_method$_ungrouped$HAMNetworkRequestResponseEvent$response(_LOGOS_SELF_TYPE_NORMAL HAMNetworkRequestResponseEvent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSURLResponse * resp = _logos_orig$_ungrouped$HAMNetworkRequestResponseEvent$response(self, _cmd);
    iosLogInfo("resp=%@", resp);
    return resp;
}










static void _logos_method$_ungrouped$HAMURLSessionDataLoadTask$didReceiveData$absoluteTime$(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, double arg2){
    iosLogInfo("arg1=%@, absoluteTime=%f", arg1, arg2);
    _logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didReceiveData$absoluteTime$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$HAMURLSessionDataLoadTask$didCompleteWithError$absoluteTime$(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, double arg2){
    iosLogInfo("arg1=%@, absoluteTime=%f", arg1, arg2);
    _logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didCompleteWithError$absoluteTime$(self, _cmd, arg1, arg2);
}

static void _logos_method$_ungrouped$HAMURLSessionDataLoadTask$didReceiveResponse$absoluteTime$(_LOGOS_SELF_TYPE_NORMAL HAMURLSessionDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, double arg2){
    iosLogInfo("arg1=%@, absoluteTime=%f", arg1, arg2);
    _logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didReceiveResponse$absoluteTime$(self, _cmd, arg1, arg2);
}









static HAMDASHSampleBufferSource* _logos_method$_ungrouped$HAMDASHSampleBufferSource$initWithContext$ABRController$periodID$(_LOGOS_SELF_TYPE_INIT HAMDASHSampleBufferSource* __unused self, SEL __unused _cmd, id arg1, id arg2, long long arg3) _LOGOS_RETURN_RETAINED{
    id newHamDSBS = _logos_orig$_ungrouped$HAMDASHSampleBufferSource$initWithContext$ABRController$periodID$(self, _cmd, arg1, arg2, arg3);
    iosLogInfo("arg1=%@,ABRController=%@,periodID=%lld -> newHamDSBS=%@", arg1, arg2, arg3, newHamDSBS);
    return newHamDSBS;
}

static _Bool _logos_method$_ungrouped$HAMDASHSampleBufferSource$prepareAndReturnError$(_LOGOS_SELF_TYPE_NORMAL HAMDASHSampleBufferSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id * arg1){
    _Bool result = _logos_orig$_ungrouped$HAMDASHSampleBufferSource$prepareAndReturnError$(self, _cmd, arg1);
    iosLogInfo("errorPtr=%p -> result=%s", arg1, boolToStr(result));
    return result;
}










static HAMChunk* _logos_method$_ungrouped$HAMChunk$init(_LOGOS_SELF_TYPE_INIT HAMChunk* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    id newChunk = _logos_orig$_ungrouped$HAMChunk$init(self, _cmd);
    iosLogInfo("-> newChunk=%@", newChunk);
    return newChunk;
}

static HAMChunk* _logos_method$_ungrouped$HAMChunk$initWithFormat$rangedURL$dataAccumulator$(_LOGOS_SELF_TYPE_INIT HAMChunk* __unused self, SEL __unused _cmd, id format, id rangeURL, id dataAccumulator) _LOGOS_RETURN_RETAINED{
    id newChunk = _logos_orig$_ungrouped$HAMChunk$initWithFormat$rangedURL$dataAccumulator$(self, _cmd, format, rangeURL, dataAccumulator);
    iosLogInfo("format=%@,rangedURL=%@,dataAccumulator=%@-> newChunk=%@", format, rangeURL, dataAccumulator, newChunk);
    return newChunk;
}

static void _logos_method$_ungrouped$HAMChunk$loadWillBeginWithTask$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id task){
    iosLogInfo("task=%@", task);
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMChunk$loadWillBeginWithTask$(self, _cmd, task);
}

static void _logos_method$_ungrouped$HAMChunk$loadDidCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id error){
    iosLogInfo("error=%@", error);
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMChunk$loadDidCompleteWithError$(self, _cmd, error);
}

static id _logos_method$_ungrouped$HAMChunk$HAMErrorWithCode$details$OSStatus$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long errorCode, id details, int OSStatus){
    id hamewc3 = _logos_orig$_ungrouped$HAMChunk$HAMErrorWithCode$details$OSStatus$(self, _cmd, errorCode, details, OSStatus);
    iosLogInfo("errorCode=%lld,details=%@,OSStatus=%d -> hamewc3=%@", errorCode, details, OSStatus, hamewc3);
    return hamewc3;
}

static id _logos_method$_ungrouped$HAMChunk$HAMErrorWithCode$details$(_LOGOS_SELF_TYPE_NORMAL HAMChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long errorCode, id details){
    id hamewc2 = _logos_orig$_ungrouped$HAMChunk$HAMErrorWithCode$details$(self, _cmd, errorCode, details);
    iosLogInfo("errorCode=%lld,details=%@ -> hamewc2=%@", errorCode, details, hamewc2);
    return hamewc2;
}









static void _logos_method$_ungrouped$HAMMediaChunk$loadDidCompleteWithError$(_LOGOS_SELF_TYPE_NORMAL HAMMediaChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    iosLogInfo("error=%@", arg1);
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMMediaChunk$loadDidCompleteWithError$(self, _cmd, arg1);
}









static id _logos_method$_ungrouped$MLMP4ChunkFactory$manifestlessMediaChunkWithURL$segmentNumber$timeRange$segmentTimeline$streamable$updateStartTime$updateEndTime$metadataOnly$metadataRelay$partialResponseHandlerDelegate$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id url, long long segmentNumber, CDStruct_e83c9415 timeRange, id segmentTimeline, _Bool streamable, _Bool updateStartTime, _Bool updateEndTime, _Bool metadataOnly, id metadataRelay, id partialResponseHandlerDelegate){
    id newManifestlessMediaChunk = _logos_orig$_ungrouped$MLMP4ChunkFactory$manifestlessMediaChunkWithURL$segmentNumber$timeRange$segmentTimeline$streamable$updateStartTime$updateEndTime$metadataOnly$metadataRelay$partialResponseHandlerDelegate$(self, _cmd, url, segmentNumber, timeRange, segmentTimeline, streamable, updateStartTime, updateEndTime, metadataOnly, metadataRelay, partialResponseHandlerDelegate);
    iosLogInfo("url=%@,segmentNumber=%lld,segmentTimeline=%@,streamable=%s,updateStartTime=%s,updateEndTime=%s,metadataOnly=%s,metadataRelay=%@,partialResponseHandlerDelegate=%@ -> newManifestlessMediaChunk=%@", url, segmentNumber, segmentTimeline, boolToStr(streamable), boolToStr(updateStartTime), boolToStr(updateEndTime), boolToStr(metadataOnly), metadataRelay, partialResponseHandlerDelegate, newManifestlessMediaChunk);
    return newManifestlessMediaChunk;
}

static id _logos_method$_ungrouped$MLMP4ChunkFactory$indexChunkWithURL$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id url){
    id indexChunk = _logos_orig$_ungrouped$MLMP4ChunkFactory$indexChunkWithURL$(self, _cmd, url);
    iosLogInfo("url=%@ -> indexChunk=%@", url, indexChunk);
    return indexChunk;
}

static id _logos_method$_ungrouped$MLMP4ChunkFactory$initializationChunkWithURL$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id url){
    id initializationChunk = _logos_orig$_ungrouped$MLMP4ChunkFactory$initializationChunkWithURL$(self, _cmd, url);
    iosLogInfo("url=%@ -> initializationChunk=%@", url, initializationChunk);
    return initializationChunk;
}

static id _logos_method$_ungrouped$MLMP4ChunkFactory$mediaChunkWithURL$segmentNumber$timeRange$(_LOGOS_SELF_TYPE_NORMAL MLMP4ChunkFactory* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id url, long long segmentNumber, CDStruct_e83c9415 timeRange){
    id mediaChunk = _logos_orig$_ungrouped$MLMP4ChunkFactory$mediaChunkWithURL$segmentNumber$timeRange$(self, _cmd, url, segmentNumber, timeRange);
    iosLogInfo("url=%@,segmentNumber=%lld -> mediaChunk=%@", url, segmentNumber, mediaChunk);
    return mediaChunk;
}

static MLMP4ChunkFactory* _logos_method$_ungrouped$MLMP4ChunkFactory$initWithFormat$(_LOGOS_SELF_TYPE_INIT MLMP4ChunkFactory* __unused self, SEL __unused _cmd, id format) _LOGOS_RETURN_RETAINED{
    id newChunk = _logos_orig$_ungrouped$MLMP4ChunkFactory$initWithFormat$(self, _cmd, format);
    iosLogInfo("format=%@ -> newChunk=%@", format, newChunk);
    return newChunk;
}












static HAMMP4MediaChunk* _logos_method$_ungrouped$HAMMP4MediaChunk$initWithFormat$rangedURL$segmentNumber$timeRange$preferTrackTimescale$(_LOGOS_SELF_TYPE_INIT HAMMP4MediaChunk* __unused self, SEL __unused _cmd, id arg1, id arg2, long long arg3, CDStruct_e83c9415 arg4, _Bool arg5) _LOGOS_RETURN_RETAINED{
    id newMp4MediaChunk = _logos_orig$_ungrouped$HAMMP4MediaChunk$initWithFormat$rangedURL$segmentNumber$timeRange$preferTrackTimescale$(self, _cmd, arg1, arg2, arg3, arg4, arg5);

    iosLogInfo("format=%@,rangedURL=%@,segmentNumber=%lld,preferTrackTimescale=%s -> newMp4MediaChunk=%@", arg1, arg2, arg3, boolToStr(arg5), newMp4MediaChunk);
    return newMp4MediaChunk;
}









static HAMMP4InitializationChunk* _logos_method$_ungrouped$HAMMP4InitializationChunk$initWithFormat$rangedURL$preferTrackTimescale$(_LOGOS_SELF_TYPE_INIT HAMMP4InitializationChunk* __unused self, SEL __unused _cmd, id arg1, id arg2, _Bool arg3) _LOGOS_RETURN_RETAINED{
    id newMp4InitChunk = _logos_orig$_ungrouped$HAMMP4InitializationChunk$initWithFormat$rangedURL$preferTrackTimescale$(self, _cmd, arg1, arg2, arg3);
    iosLogInfo("format=%@,rangedURL=%@,preferTrackTimescale=%s -> newMp4InitChunk=%@", arg1, arg2, boolToStr(arg3), newMp4InitChunk);
    return newMp4InitChunk;
}









static HAMMP4DataAccumulator* _logos_method$_ungrouped$HAMMP4DataAccumulator$init(_LOGOS_SELF_TYPE_INIT HAMMP4DataAccumulator* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    id newAccumulator = _logos_orig$_ungrouped$HAMMP4DataAccumulator$init(self, _cmd);
    iosLogInfo("-> newAccumulator=%@", newAccumulator);
    return newAccumulator;
}

static void _logos_method$_ungrouped$HAMMP4DataAccumulator$addData$(_LOGOS_SELF_TYPE_NORMAL HAMMP4DataAccumulator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id data){
    iosLogInfo("data=%@", data);
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMMP4DataAccumulator$addData$(self, _cmd, data);
}

static void _logos_method$_ungrouped$HAMMP4DataAccumulator$doneAddingData(_LOGOS_SELF_TYPE_NORMAL HAMMP4DataAccumulator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMMP4DataAccumulator$doneAddingData(self, _cmd);
}









static void _logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidComplete(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidComplete(self, _cmd);
}

static void _logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidCompleteBox$startOffset$(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, void * arg1, int startOffset){
    iosLogInfo("arg1=%p,startOffset=%d", arg1, startOffset);
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidCompleteBox$startOffset$(self, _cmd, arg1, startOffset);
}

static void _logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidFailWithErrorDetails$(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id errorDetail){
    iosLogInfo("errorDetail=%@", errorDetail);
    gNoUse = 1;
    _logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidFailWithErrorDetails$(self, _cmd, errorDetail);
}

static _Bool _logos_method$_ungrouped$HAMMP4IndexChunk$prepareAndReturnError$(_LOGOS_SELF_TYPE_NORMAL HAMMP4IndexChunk* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id * errorPtr){
    _Bool result = _logos_orig$_ungrouped$HAMMP4IndexChunk$prepareAndReturnError$(self, _cmd, errorPtr);
    iosLogInfo("errorPtr=%p -> result=%s", errorPtr, boolToStr(result));
    gNoUse = 1;
    return result;
}

static HAMMP4IndexChunk* _logos_method$_ungrouped$HAMMP4IndexChunk$initWithFormat$rangedURL$(_LOGOS_SELF_TYPE_INIT HAMMP4IndexChunk* __unused self, SEL __unused _cmd, id format, id rangedURL) _LOGOS_RETURN_RETAINED{
    id newIdxChunk = _logos_orig$_ungrouped$HAMMP4IndexChunk$initWithFormat$rangedURL$(self, _cmd, format, rangedURL);
    iosLogInfo("format=%@,rangedURL=%@ -> newIdxChunk=%@", format, rangedURL, newIdxChunk);
    gNoUse = 1;
    return newIdxChunk;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HAMPlayerInternal = objc_getClass("HAMPlayerInternal"); { MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(init), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$init, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$init);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(initWithStallPredictor:resyncPolicy:eventCenter:playerQueue:configuration:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$initWithStallPredictor$resyncPolicy$eventCenter$playerQueue$configuration$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$initWithStallPredictor$resyncPolicy$eventCenter$playerQueue$configuration$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(pause), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$pause, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$pause);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(stopAllTrackRenderers), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$stopAllTrackRenderers, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$stopAllTrackRenderers);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setStatus:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setStatus$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setStatus$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(_allTrackRenderers), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$_allTrackRenderers, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$_allTrackRenderers);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setPlayerTimerPaused:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setPlayerTimerPaused$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setPlayerTimerPaused$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(terminate), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$terminate, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$terminate);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(terminateWithError:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$terminateWithError$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$terminateWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(trackRendererMustStop:resumeAutomatically:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$trackRendererMustStop$resumeAutomatically$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$trackRendererMustStop$resumeAutomatically$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(trackRenderer:didFailWithError:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$trackRenderer$didFailWithError$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$trackRenderer$didFailWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(updateStartedTrackRenderers), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$updateStartedTrackRenderers, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$updateStartedTrackRenderers);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(addTrackRenderer:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$addTrackRenderer$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$addTrackRenderer$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setActiveTrackRenderers:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setActiveTrackRenderers$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setActiveTrackRenderers$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setDelegate:delegateQueue:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setDelegate$delegateQueue$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setDelegate$delegateQueue$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(internalPlay), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$internalPlay, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$internalPlay);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setTimeSourceTrackRenderer:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setTimeSourceTrackRenderer$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setTimeSourceTrackRenderer$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(resyncTrackRenderers:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$resyncTrackRenderers$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$resyncTrackRenderers$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(playerLoop), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$playerLoop, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$playerLoop);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(_currentTimeObserver), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$_currentTimeObserver, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$_currentTimeObserver);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setCurrentTimeObserver:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setCurrentTimeObserver$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setCurrentTimeObserver$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(_currentTime), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$_currentTime, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$_currentTime);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setMediaTime:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setMediaTime$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setMediaTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMPlayerInternal, @selector(setPlayerStatusObserver:), (IMP)&_logos_method$_ungrouped$HAMPlayerInternal$setPlayerStatusObserver$, (IMP*)&_logos_orig$_ungrouped$HAMPlayerInternal$setPlayerStatusObserver$);}Class _logos_class$_ungrouped$MLHAMQueuePlayer = objc_getClass("MLHAMQueuePlayer"); { MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(setStatus:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$setStatus$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$setStatus$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(playerItem:didFailWithError:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$playerItem$didFailWithError$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$playerItem$didFailWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(failWithError:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$failWithError$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$failWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(setCurrentTime:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$setCurrentTime$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$setCurrentTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(mediaFetchControllerDidFailWithError:fatal:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$mediaFetchControllerDidFailWithError$fatal$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$mediaFetchControllerDidFailWithError$fatal$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(segmentListDidFailWithError:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$segmentListDidFailWithError$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$segmentListDidFailWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(playerWillFailWithError:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$playerWillFailWithError$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$playerWillFailWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayer, @selector(trackRenderer:didFailWithError:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayer$trackRenderer$didFailWithError$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayer$trackRenderer$didFailWithError$);}Class _logos_class$_ungrouped$MLHAMQueuePlayerSegmentList = objc_getClass("MLHAMQueuePlayerSegmentList"); { MSHookMessageEx(_logos_class$_ungrouped$MLHAMQueuePlayerSegmentList, @selector(updatePeriodCurrentTimeForSegment:), (IMP)&_logos_method$_ungrouped$MLHAMQueuePlayerSegmentList$updatePeriodCurrentTimeForSegment$, (IMP*)&_logos_orig$_ungrouped$MLHAMQueuePlayerSegmentList$updatePeriodCurrentTimeForSegment$);}Class _logos_class$_ungrouped$MLHAMPlayerItem = objc_getClass("MLHAMPlayerItem"); { MSHookMessageEx(_logos_class$_ungrouped$MLHAMPlayerItem, @selector(initWithVideo:playerConfig:playerQueue:periodID:player:playerStickySettings:onesieVideoData:latencyLogger:reloadContext:decoratedURLProvider:autoStartPlayback:useHAMPlayerStatusForClientAbrStateFiller:), (IMP)&_logos_method$_ungrouped$MLHAMPlayerItem$initWithVideo$playerConfig$playerQueue$periodID$player$playerStickySettings$onesieVideoData$latencyLogger$reloadContext$decoratedURLProvider$autoStartPlayback$useHAMPlayerStatusForClientAbrStateFiller$, (IMP*)&_logos_orig$_ungrouped$MLHAMPlayerItem$initWithVideo$playerConfig$playerQueue$periodID$player$playerStickySettings$onesieVideoData$latencyLogger$reloadContext$decoratedURLProvider$autoStartPlayback$useHAMPlayerStatusForClientAbrStateFiller$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLHAMPlayerItem, @selector(setCurrentTime:), (IMP)&_logos_method$_ungrouped$MLHAMPlayerItem$setCurrentTime$, (IMP*)&_logos_orig$_ungrouped$MLHAMPlayerItem$setCurrentTime$);}Class _logos_class$_ungrouped$HAMNetworkRequestCompletionEvent = objc_getClass("HAMNetworkRequestCompletionEvent"); { MSHookMessageEx(_logos_class$_ungrouped$HAMNetworkRequestCompletionEvent, @selector(initWithRequest:absoluteTime:startAbsoluteTime:countOfBytesReceived:response:error:), (IMP)&_logos_method$_ungrouped$HAMNetworkRequestCompletionEvent$initWithRequest$absoluteTime$startAbsoluteTime$countOfBytesReceived$response$error$, (IMP*)&_logos_orig$_ungrouped$HAMNetworkRequestCompletionEvent$initWithRequest$absoluteTime$startAbsoluteTime$countOfBytesReceived$response$error$);}Class _logos_class$_ungrouped$HAMNetworkRequestResponseEvent = objc_getClass("HAMNetworkRequestResponseEvent"); { MSHookMessageEx(_logos_class$_ungrouped$HAMNetworkRequestResponseEvent, @selector(initWithRequest:absoluteTime:requestNumber:streamable:onesie:format:predictedWallTime:predictedSizeBytes:predictedMediaDuration:response:startAbsoluteTime:), (IMP)&_logos_method$_ungrouped$HAMNetworkRequestResponseEvent$initWithRequest$absoluteTime$requestNumber$streamable$onesie$format$predictedWallTime$predictedSizeBytes$predictedMediaDuration$response$startAbsoluteTime$, (IMP*)&_logos_orig$_ungrouped$HAMNetworkRequestResponseEvent$initWithRequest$absoluteTime$requestNumber$streamable$onesie$format$predictedWallTime$predictedSizeBytes$predictedMediaDuration$response$startAbsoluteTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMNetworkRequestResponseEvent, @selector(response), (IMP)&_logos_method$_ungrouped$HAMNetworkRequestResponseEvent$response, (IMP*)&_logos_orig$_ungrouped$HAMNetworkRequestResponseEvent$response);}Class _logos_class$_ungrouped$HAMURLSessionDataLoadTask = objc_getClass("HAMURLSessionDataLoadTask"); { MSHookMessageEx(_logos_class$_ungrouped$HAMURLSessionDataLoadTask, @selector(didReceiveData:absoluteTime:), (IMP)&_logos_method$_ungrouped$HAMURLSessionDataLoadTask$didReceiveData$absoluteTime$, (IMP*)&_logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didReceiveData$absoluteTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMURLSessionDataLoadTask, @selector(didCompleteWithError:absoluteTime:), (IMP)&_logos_method$_ungrouped$HAMURLSessionDataLoadTask$didCompleteWithError$absoluteTime$, (IMP*)&_logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didCompleteWithError$absoluteTime$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMURLSessionDataLoadTask, @selector(didReceiveResponse:absoluteTime:), (IMP)&_logos_method$_ungrouped$HAMURLSessionDataLoadTask$didReceiveResponse$absoluteTime$, (IMP*)&_logos_orig$_ungrouped$HAMURLSessionDataLoadTask$didReceiveResponse$absoluteTime$);}Class _logos_class$_ungrouped$HAMDASHSampleBufferSource = objc_getClass("HAMDASHSampleBufferSource"); { MSHookMessageEx(_logos_class$_ungrouped$HAMDASHSampleBufferSource, @selector(initWithContext:ABRController:periodID:), (IMP)&_logos_method$_ungrouped$HAMDASHSampleBufferSource$initWithContext$ABRController$periodID$, (IMP*)&_logos_orig$_ungrouped$HAMDASHSampleBufferSource$initWithContext$ABRController$periodID$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMDASHSampleBufferSource, @selector(prepareAndReturnError:), (IMP)&_logos_method$_ungrouped$HAMDASHSampleBufferSource$prepareAndReturnError$, (IMP*)&_logos_orig$_ungrouped$HAMDASHSampleBufferSource$prepareAndReturnError$);}Class _logos_class$_ungrouped$HAMChunk = objc_getClass("HAMChunk"); { MSHookMessageEx(_logos_class$_ungrouped$HAMChunk, @selector(init), (IMP)&_logos_method$_ungrouped$HAMChunk$init, (IMP*)&_logos_orig$_ungrouped$HAMChunk$init);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMChunk, @selector(initWithFormat:rangedURL:dataAccumulator:), (IMP)&_logos_method$_ungrouped$HAMChunk$initWithFormat$rangedURL$dataAccumulator$, (IMP*)&_logos_orig$_ungrouped$HAMChunk$initWithFormat$rangedURL$dataAccumulator$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMChunk, @selector(loadWillBeginWithTask:), (IMP)&_logos_method$_ungrouped$HAMChunk$loadWillBeginWithTask$, (IMP*)&_logos_orig$_ungrouped$HAMChunk$loadWillBeginWithTask$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMChunk, @selector(loadDidCompleteWithError:), (IMP)&_logos_method$_ungrouped$HAMChunk$loadDidCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$HAMChunk$loadDidCompleteWithError$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMChunk, @selector(HAMErrorWithCode:details:OSStatus:), (IMP)&_logos_method$_ungrouped$HAMChunk$HAMErrorWithCode$details$OSStatus$, (IMP*)&_logos_orig$_ungrouped$HAMChunk$HAMErrorWithCode$details$OSStatus$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMChunk, @selector(HAMErrorWithCode:details:), (IMP)&_logos_method$_ungrouped$HAMChunk$HAMErrorWithCode$details$, (IMP*)&_logos_orig$_ungrouped$HAMChunk$HAMErrorWithCode$details$);}Class _logos_class$_ungrouped$HAMMediaChunk = objc_getClass("HAMMediaChunk"); { MSHookMessageEx(_logos_class$_ungrouped$HAMMediaChunk, @selector(loadDidCompleteWithError:), (IMP)&_logos_method$_ungrouped$HAMMediaChunk$loadDidCompleteWithError$, (IMP*)&_logos_orig$_ungrouped$HAMMediaChunk$loadDidCompleteWithError$);}Class _logos_class$_ungrouped$MLMP4ChunkFactory = objc_getClass("MLMP4ChunkFactory"); { MSHookMessageEx(_logos_class$_ungrouped$MLMP4ChunkFactory, @selector(manifestlessMediaChunkWithURL:segmentNumber:timeRange:segmentTimeline:streamable:updateStartTime:updateEndTime:metadataOnly:metadataRelay:partialResponseHandlerDelegate:), (IMP)&_logos_method$_ungrouped$MLMP4ChunkFactory$manifestlessMediaChunkWithURL$segmentNumber$timeRange$segmentTimeline$streamable$updateStartTime$updateEndTime$metadataOnly$metadataRelay$partialResponseHandlerDelegate$, (IMP*)&_logos_orig$_ungrouped$MLMP4ChunkFactory$manifestlessMediaChunkWithURL$segmentNumber$timeRange$segmentTimeline$streamable$updateStartTime$updateEndTime$metadataOnly$metadataRelay$partialResponseHandlerDelegate$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLMP4ChunkFactory, @selector(indexChunkWithURL:), (IMP)&_logos_method$_ungrouped$MLMP4ChunkFactory$indexChunkWithURL$, (IMP*)&_logos_orig$_ungrouped$MLMP4ChunkFactory$indexChunkWithURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLMP4ChunkFactory, @selector(initializationChunkWithURL:), (IMP)&_logos_method$_ungrouped$MLMP4ChunkFactory$initializationChunkWithURL$, (IMP*)&_logos_orig$_ungrouped$MLMP4ChunkFactory$initializationChunkWithURL$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLMP4ChunkFactory, @selector(mediaChunkWithURL:segmentNumber:timeRange:), (IMP)&_logos_method$_ungrouped$MLMP4ChunkFactory$mediaChunkWithURL$segmentNumber$timeRange$, (IMP*)&_logos_orig$_ungrouped$MLMP4ChunkFactory$mediaChunkWithURL$segmentNumber$timeRange$);}{ MSHookMessageEx(_logos_class$_ungrouped$MLMP4ChunkFactory, @selector(initWithFormat:), (IMP)&_logos_method$_ungrouped$MLMP4ChunkFactory$initWithFormat$, (IMP*)&_logos_orig$_ungrouped$MLMP4ChunkFactory$initWithFormat$);}Class _logos_class$_ungrouped$HAMMP4MediaChunk = objc_getClass("HAMMP4MediaChunk"); { MSHookMessageEx(_logos_class$_ungrouped$HAMMP4MediaChunk, @selector(initWithFormat:rangedURL:segmentNumber:timeRange:preferTrackTimescale:), (IMP)&_logos_method$_ungrouped$HAMMP4MediaChunk$initWithFormat$rangedURL$segmentNumber$timeRange$preferTrackTimescale$, (IMP*)&_logos_orig$_ungrouped$HAMMP4MediaChunk$initWithFormat$rangedURL$segmentNumber$timeRange$preferTrackTimescale$);}Class _logos_class$_ungrouped$HAMMP4InitializationChunk = objc_getClass("HAMMP4InitializationChunk"); { MSHookMessageEx(_logos_class$_ungrouped$HAMMP4InitializationChunk, @selector(initWithFormat:rangedURL:preferTrackTimescale:), (IMP)&_logos_method$_ungrouped$HAMMP4InitializationChunk$initWithFormat$rangedURL$preferTrackTimescale$, (IMP*)&_logos_orig$_ungrouped$HAMMP4InitializationChunk$initWithFormat$rangedURL$preferTrackTimescale$);}Class _logos_class$_ungrouped$HAMMP4DataAccumulator = objc_getClass("HAMMP4DataAccumulator"); { MSHookMessageEx(_logos_class$_ungrouped$HAMMP4DataAccumulator, @selector(init), (IMP)&_logos_method$_ungrouped$HAMMP4DataAccumulator$init, (IMP*)&_logos_orig$_ungrouped$HAMMP4DataAccumulator$init);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMMP4DataAccumulator, @selector(addData:), (IMP)&_logos_method$_ungrouped$HAMMP4DataAccumulator$addData$, (IMP*)&_logos_orig$_ungrouped$HAMMP4DataAccumulator$addData$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMMP4DataAccumulator, @selector(doneAddingData), (IMP)&_logos_method$_ungrouped$HAMMP4DataAccumulator$doneAddingData, (IMP*)&_logos_orig$_ungrouped$HAMMP4DataAccumulator$doneAddingData);}Class _logos_class$_ungrouped$HAMMP4IndexChunk = objc_getClass("HAMMP4IndexChunk"); { MSHookMessageEx(_logos_class$_ungrouped$HAMMP4IndexChunk, @selector(dataAccumulatorDidComplete), (IMP)&_logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidComplete, (IMP*)&_logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidComplete);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMMP4IndexChunk, @selector(dataAccumulatorDidCompleteBox:startOffset:), (IMP)&_logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidCompleteBox$startOffset$, (IMP*)&_logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidCompleteBox$startOffset$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMMP4IndexChunk, @selector(dataAccumulatorDidFailWithErrorDetails:), (IMP)&_logos_method$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidFailWithErrorDetails$, (IMP*)&_logos_orig$_ungrouped$HAMMP4IndexChunk$dataAccumulatorDidFailWithErrorDetails$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMMP4IndexChunk, @selector(prepareAndReturnError:), (IMP)&_logos_method$_ungrouped$HAMMP4IndexChunk$prepareAndReturnError$, (IMP*)&_logos_orig$_ungrouped$HAMMP4IndexChunk$prepareAndReturnError$);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMMP4IndexChunk, @selector(initWithFormat:rangedURL:), (IMP)&_logos_method$_ungrouped$HAMMP4IndexChunk$initWithFormat$rangedURL$, (IMP*)&_logos_orig$_ungrouped$HAMMP4IndexChunk$initWithFormat$rangedURL$);}} }
#line 617 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeHAM.xm"
