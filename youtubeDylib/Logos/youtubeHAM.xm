/*
 File: youtubeHAM.xm
 Function: Youtube hook HAM related
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"


/*------------------------------------------------------------------------------
 HAMPlayerInternal
------------------------------------------------------------------------------*/

%hook HAMPlayerInternal

- (id)init{
    id initPi = %orig;
    iosLogInfo("initPi=%@", initPi);
    return initPi;
}

- (id)initWithStallPredictor:(id)arg1 resyncPolicy:(id)arg2 eventCenter:(id)arg3 playerQueue:(id)arg4 configuration:(CDStruct_cd0888f5)arg5{
    id initwspPi = %orig;
    iosLogInfo("arg1=%@,resyncPolicy=%@,eventCenter=%@,playerQueue=%@-> initwspPi=%@", arg1, arg2, arg3, arg4, initwspPi);
//    iosLogInfo("configuration: %p", arg5);
    return initwspPi;
}

- (void)pause{
    iosLogInfo("%s", "");
    %orig;
}

- (_Bool)stopAllTrackRenderers{
    _Bool satr = %orig;
    iosLogInfo("satr=%s", boolToStr(satr));
//    iosLogInfo("_allTrackRenderers=%@", self->_allTrackRenderers);
    return satr;
}

- (void)setStatus:(long long)arg1{
    iosLogInfo("arg1=%llu", arg1);

    int Youtube_Player_Status_Error = 8;
    int Youtube_Player_Status_Pause = 4;
    if( (Youtube_Player_Status_Error == arg1) || (Youtube_Player_Status_Pause == arg1) ){
        iosLogInfo("error/pause status: %llu", arg1);
    }

    %orig;
}

-(NSArray*)_allTrackRenderers{
    NSArray* orig_allTrackRenderers = %orig;
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

- (void)setPlayerTimerPaused:(_Bool)arg1{
    iosLogInfo("arg1=%s", boolToStr(arg1));
    %orig;
}

- (void)terminate{
    iosLogInfo("%s", "");
    %orig;
}

- (void)terminateWithError:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (void)trackRendererMustStop:(id)arg1 resumeAutomatically:(_Bool)arg2{
    iosLogInfo("arg1=%@,resumeAutomatically=%s", arg1, boolToStr(arg2));
    %orig;
//    iosLogInfo("_allTrackRenderers=%@", self->_allTrackRenderers);
}

- (void)trackRenderer:(id)arg1 didFailWithError:(id)arg2{
    iosLogInfo("arg1=%@,didFailWithError=%@", arg1, arg2);
    %orig;
}

- (void)updateStartedTrackRenderers{
    iosLogInfo("%s", "");
    %orig;
//    iosLogInfo("_allTrackRenderers=%@", self->_allTrackRenderers);
}

- (void)addTrackRenderer:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
//    iosLogInfo("_allTrackRenderers=%@", self->_allTrackRenderers);
}

- (void)setActiveTrackRenderers:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (void)setDelegate:(id)arg1 delegateQueue:(id)arg2{
    iosLogInfo("arg1=%@,delegateQueue=%@", arg1, arg2);
    %orig;
}

- (void)internalPlay{
    iosLogInfo("%s", "");
    %orig;
}

- (void)setTimeSourceTrackRenderer:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
//    iosLogInfo("_allTrackRenderers=%@", self->_allTrackRenderers);
}

- (_Bool)resyncTrackRenderers:(id)arg1{
    _Bool rstr = %orig;
    iosLogInfo("arg1=%@ -> rstr=%s", arg1, boolToStr(rstr));
//    iosLogInfo("_allTrackRenderers=%@", self->_allTrackRenderers);
    return rstr;
}

- (void)playerLoop{
    gCurLogNum += 1;
    if (isNeedDebug()) {
        iosLogInfo("%s", "");
    }
    %orig;
}

//CDUnknownBlockType _currentTimeObserver;
-(id)_currentTimeObserver{
    id cto = %orig;
    iosLogInfo("cto=%@", cto);
    return cto;
}

//- (void)setCurrentTimeObserver:(CDUnknownBlockType)arg1{
- (void)setCurrentTimeObserver:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

-(CDStruct_576a8307)_currentTime{
    CDStruct_576a8307 origCurTime = %orig;
    iosLogInfo("origCurTime: productionTime=%f, time.value=%lld", origCurTime.productionTime, origCurTime.time.value);
    
    if (origCurTime.time.value < smallStartTime) {
        iosLogInfo("origCurTime.time.value < %lld, maybe reset?", origCurTime.time.value);
    } else {
        iosLogInfo("origCurTime.time.value > %lld, maybe normal play time", origCurTime.time.value);
    }

    return origCurTime;
}

- (void)setMediaTime:(CDStruct_1b6d18a9)arg1{
    iosLogInfo("arg1: time.value=%lld,time.epoch=%lld", arg1.value, arg1.epoch);

    if (arg1.value < smallStartTime) {
        iosLogInfo("arg1.value < %lld, maybe reset?", arg1.value);
    } else {
        iosLogInfo("arg1.value > %lld, maybe normal play time", arg1.value);
    }

    %orig;
}

//- (void)setPlayerStatusObserver:(CDUnknownBlockType)arg1{
- (void)setPlayerStatusObserver:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

%end

/*------------------------------------------------------------------------------
 MLHAMQueuePlayer
------------------------------------------------------------------------------*/

%hook MLHAMQueuePlayer

//- (void)setStatus:(long long)arg1;
- (void)setStatus:(long long)arg1{
    iosLogInfo("arg1=%llu", arg1);

    int Youtube_Player_Status_Error = 8;
    if (Youtube_Player_Status_Error == arg1){
        iosLogInfo("error status: %llu", arg1);
    }

    %orig;
}

- (void)playerItem:(id)arg1 didFailWithError:(id)arg2{
    iosLogInfo("arg1=%@，arg2=%@", arg1, arg2);
    %orig;
}

- (void)failWithError:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

//- (void)setCurrentTime:(CDStruct_576a8307)arg1;
- (void)setCurrentTime:(CDStruct_576a8307)arg1{
    gCurLogNum += 1;

    //    iosLogInfo("arg1=%@", arg1);
    if (isNeedDebug()) {
        iosLogInfo("arg1: productionTime=%f, time.value=%lld", arg1.productionTime, arg1.time.value);
    }
//    2022-04-07 22:29:07.817036+0800 YouTube[5566:370367] hook_ youtubeDylib.xm MLHAMQueuePlayer$setCurrentTime$: arg1: productionTime=0.000000, time.value=0
    if (arg1.time.value < smallStartTime) {
        if(isNeedDebug()){
            iosLogInfo("arg1.time.value < %lld, maybe reset?", arg1.time.value);
        }
    } else {
        if (isNeedDebug()) {
            iosLogInfo("arg1.time.value > %lld, maybe normal play time", arg1.time.value);
        }
    }
    
    %orig;
}

- (void)mediaFetchControllerDidFailWithError:(id)arg1 fatal:(_Bool)arg2{
    iosLogInfo("arg1=%@，arg2=%s", arg1, boolToStr(arg2));
    %orig;
}

- (void)segmentListDidFailWithError:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (void)playerWillFailWithError:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (void)trackRenderer:(id)arg1 didFailWithError:(id)arg2{
    iosLogInfo("arg1=%@，arg2=%@", arg1, arg2);
    %orig;
}

%end

/*------------------------------------------------------------------------------
 MLHAMQueuePlayerSegmentList
------------------------------------------------------------------------------*/

%hook MLHAMQueuePlayerSegmentList

- (void)updatePeriodCurrentTimeForSegment:(id)arg1{
    gCurLogNum += 1;
    if (isNeedDebug()) {
        iosLogInfo("arg1=%@", arg1);
    }
    %orig;
}

%end

/*------------------------------------------------------------------------------
 MLHAMPlayerItem
------------------------------------------------------------------------------*/

%hook MLHAMPlayerItem

- (id)initWithVideo:(id)video playerConfig:(id)playerConfig playerQueue:(id)playerQueue periodID:(long long)periodID player:(id)player playerStickySettings:(id)playerStickySettings onesieVideoData:(id)onesieVideoData latencyLogger:(id)latencyLogger reloadContext:(id)reloadContext decoratedURLProvider:(id)decoratedURLProvider autoStartPlayback:(_Bool)autoStartPlayback useHAMPlayerStatusForClientAbrStateFiller:(_Bool)useHAMPlayerStatusForClientAbrStateFiller{
    id newItem = %orig;
    iosLogInfo("video=%@,playerConfig=%@,playerQueue=%@,periodID=%lld,player=%@,playerStickySettings=%@,onesieVideoData=%@,latencyLogger=%@,reloadContext=%@,decoratedURLProvider=%@,autoStartPlayback=%s,useHAMPlayerStatusForClientAbrStateFiller=%s -> newItem=%@",
               video, playerConfig, playerQueue, periodID, player, playerStickySettings, onesieVideoData, latencyLogger, reloadContext, decoratedURLProvider, boolToStr(autoStartPlayback), boolToStr(useHAMPlayerStatusForClientAbrStateFiller), newItem);
    return newItem;
}


- (void)setCurrentTime:(CDStruct_576a8307)arg1{
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

    %orig;
}

%end


/*------------------------------------------------------------------------------
 HAMNetworkRequestCompletionEvent
------------------------------------------------------------------------------*/

%hook HAMNetworkRequestCompletionEvent

- (id)initWithRequest:(id)arg1 absoluteTime:(double)arg2 startAbsoluteTime:(double)arg3 countOfBytesReceived:(long long)arg4 response:(id)arg5 error:(id)arg6{
    NSError* error = (NSError*)arg6;
    NSURLRequest* request = (NSURLRequest*)arg1; // NSMutableURLRequest
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

    id newCompletionEvent = %orig;
    iosLogInfo("->newCompletionEvent=%@", newCompletionEvent);
    return newCompletionEvent;
}

%end


/*------------------------------------------------------------------------------
 HAMNetworkRequestResponseEvent
------------------------------------------------------------------------------*/

%hook HAMNetworkRequestResponseEvent

- (id)initWithRequest:(id)arg1 absoluteTime:(double)arg2 requestNumber:(long long)arg3 streamable:(_Bool)arg4 onesie:(_Bool)arg5 format:(id)arg6 predictedWallTime:(double)arg7 predictedSizeBytes:(long long)arg8 predictedMediaDuration:(double)arg9 response:(id)arg10 startAbsoluteTime:(double)arg11{
    NSMutableURLRequest* request = (NSMutableURLRequest*)arg1;
    NSHTTPURLResponse* response = (NSHTTPURLResponse*)arg10;
    
    NSURL* reqUrl = [request URL];
    NSURL* respUrl = [response URL];

    id reqRespEvent = %orig;

    if(isYoutubeAdsVideo_current(reqUrl) || isYoutubeAdsVideo_current(respUrl)){
//        iosLogInfo("request=%@,absoluteTime=%f,requestNumber=%lld,streamable=%s,onesie=%s,format=%@, predictedWallTime=%f, predictedSizeBytes=%lld, predictedMediaDuration=%f, response=%@, startAbsoluteTime=%f -> reqRespEvent=%@", request, arg2,  arg3, boolToStr(arg4), boolToStr(arg5), arg6, arg7, arg8, arg9, response, arg11, reqRespEvent);
        gNoUse = 1;
    }

    return reqRespEvent;
}

//@property(readonly, nonatomic) NSURLResponse *response; // @synthesize response=_response;
-(NSURLResponse *)response{
    NSURLResponse * resp = %orig;
    iosLogInfo("resp=%@", resp);
    return resp;
}

%end


/*------------------------------------------------------------------------------
 HAMURLSessionDataLoadTask
------------------------------------------------------------------------------*/

%hook HAMURLSessionDataLoadTask

- (void)didReceiveData:(id)arg1 absoluteTime:(double)arg2{
    iosLogInfo("arg1=%@, absoluteTime=%f", arg1, arg2);
    %orig;
}

- (void)didCompleteWithError:(id)arg1 absoluteTime:(double)arg2{
    iosLogInfo("arg1=%@, absoluteTime=%f", arg1, arg2);
    %orig;
}

- (void)didReceiveResponse:(id)arg1 absoluteTime:(double)arg2{
    iosLogInfo("arg1=%@, absoluteTime=%f", arg1, arg2);
    %orig;
}

%end

/*------------------------------------------------------------------------------
 HAMDASHSampleBufferSource
------------------------------------------------------------------------------*/

%hook HAMDASHSampleBufferSource

- (id)initWithContext:(id)arg1 ABRController:(id)arg2 periodID:(long long)arg3{
    id newHamDSBS = %orig;
    iosLogInfo("arg1=%@,ABRController=%@,periodID=%lld -> newHamDSBS=%@", arg1, arg2, arg3, newHamDSBS);
    return newHamDSBS;
}

- (_Bool)prepareAndReturnError:(id *)arg1{
    _Bool result = %orig;
    iosLogInfo("errorPtr=%p -> result=%s", arg1, boolToStr(result));
    return result;
}

%end


/*------------------------------------------------------------------------------
 HAMChunk
------------------------------------------------------------------------------*/

%hook HAMChunk

- (id)init{
    id newChunk = %orig;
    iosLogInfo("-> newChunk=%@", newChunk);
    return newChunk;
}

- (id)initWithFormat:(id)format rangedURL:(id)rangeURL dataAccumulator:(id)dataAccumulator{
    id newChunk = %orig;
    iosLogInfo("format=%@,rangedURL=%@,dataAccumulator=%@-> newChunk=%@", format, rangeURL, dataAccumulator, newChunk);
    return newChunk;
}

- (void)loadWillBeginWithTask:(id)task{
    iosLogInfo("task=%@", task);
    gNoUse = 1;
    %orig;
}

-(void)loadDidCompleteWithError:(id)error{
    iosLogInfo("error=%@", error);
    gNoUse = 1;
    %orig;
}

-(id)HAMErrorWithCode:(long long)errorCode details:(id)details OSStatus:(int)OSStatus{
    id hamewc3 = %orig;
    iosLogInfo("errorCode=%lld,details=%@,OSStatus=%d -> hamewc3=%@", errorCode, details, OSStatus, hamewc3);
    return hamewc3;
}

-(id)HAMErrorWithCode:(long long)errorCode details:(id)details{
    id hamewc2 = %orig;
    iosLogInfo("errorCode=%lld,details=%@ -> hamewc2=%@", errorCode, details, hamewc2);
    return hamewc2;
}

%end

/*------------------------------------------------------------------------------
 HAMMediaChunk
------------------------------------------------------------------------------*/

%hook HAMMediaChunk

-(void)loadDidCompleteWithError:(id)arg1{
    iosLogInfo("error=%@", arg1);
    gNoUse = 1;
    %orig;
}

%end

/*------------------------------------------------------------------------------
 MLMP4ChunkFactory
------------------------------------------------------------------------------*/

%hook MLMP4ChunkFactory

- (id)manifestlessMediaChunkWithURL:(id)url segmentNumber:(long long)segmentNumber timeRange:(CDStruct_e83c9415)timeRange segmentTimeline:(id)segmentTimeline streamable:(_Bool)streamable updateStartTime:(_Bool)updateStartTime updateEndTime:(_Bool)updateEndTime metadataOnly:(_Bool)metadataOnly metadataRelay:(id)metadataRelay partialResponseHandlerDelegate:(id)partialResponseHandlerDelegate{
    id newManifestlessMediaChunk = %orig;
    iosLogInfo("url=%@,segmentNumber=%lld,segmentTimeline=%@,streamable=%s,updateStartTime=%s,updateEndTime=%s,metadataOnly=%s,metadataRelay=%@,partialResponseHandlerDelegate=%@ -> newManifestlessMediaChunk=%@", url, segmentNumber, segmentTimeline, boolToStr(streamable), boolToStr(updateStartTime), boolToStr(updateEndTime), boolToStr(metadataOnly), metadataRelay, partialResponseHandlerDelegate, newManifestlessMediaChunk);
    return newManifestlessMediaChunk;
}

- (id)indexChunkWithURL:(id)url{
    id indexChunk = %orig;
    iosLogInfo("url=%@ -> indexChunk=%@", url, indexChunk);
    return indexChunk;
}

- (id)initializationChunkWithURL:(id)url{
    id initializationChunk = %orig;
    iosLogInfo("url=%@ -> initializationChunk=%@", url, initializationChunk);
    return initializationChunk;
}

- (id)mediaChunkWithURL:(id)url segmentNumber:(long long)segmentNumber timeRange:(CDStruct_e83c9415)timeRange{
    id mediaChunk = %orig;
    iosLogInfo("url=%@,segmentNumber=%lld -> mediaChunk=%@", url, segmentNumber, mediaChunk);
    return mediaChunk;
}

- (id)initWithFormat:(id)format{
    id newChunk = %orig;
    iosLogInfo("format=%@ -> newChunk=%@", format, newChunk);
    return newChunk;
}

%end


/*------------------------------------------------------------------------------
 HAMMP4MediaChunk
------------------------------------------------------------------------------*/

%hook HAMMP4MediaChunk

//- (id)initWithFormat:(id)arg1 rangedURL:(id)arg2 segmentNumber:(long long)arg3 timeRange:(CDStruct_e83c9415)arg4 preferTrackTimescale:(_Bool)arg5{
//- (id)initWithFormat:(id)arg1 rangedURL:(id)arg2 segmentNumber:(long long)arg3 timeRange:(id)arg4 preferTrackTimescale:(_Bool)arg5{
- (id)initWithFormat:(id)arg1 rangedURL:(id)arg2 segmentNumber:(long long)arg3 timeRange:(CDStruct_e83c9415)arg4 preferTrackTimescale:(_Bool)arg5{
    id newMp4MediaChunk = %orig;
//    iosLogInfo("format=%@,rangedURL=%@,segmentNumber=%lld,timeRange=%@,preferTrackTimescale=%s -> newMp4MediaChunk=%@", arg1, arg2, arg3, arg4, boolToStr(arg5), newMp4MediaChunk);
    iosLogInfo("format=%@,rangedURL=%@,segmentNumber=%lld,preferTrackTimescale=%s -> newMp4MediaChunk=%@", arg1, arg2, arg3, boolToStr(arg5), newMp4MediaChunk);
    return newMp4MediaChunk;
}

%end

/*------------------------------------------------------------------------------
 HAMMP4InitializationChunk
------------------------------------------------------------------------------*/

%hook HAMMP4InitializationChunk

- (id)initWithFormat:(id)arg1 rangedURL:(id)arg2 preferTrackTimescale:(_Bool)arg3{
    id newMp4InitChunk = %orig;
    iosLogInfo("format=%@,rangedURL=%@,preferTrackTimescale=%s -> newMp4InitChunk=%@", arg1, arg2, boolToStr(arg3), newMp4InitChunk);
    return newMp4InitChunk;
}

%end

/*------------------------------------------------------------------------------
 HAMMP4DataAccumulator
------------------------------------------------------------------------------*/

%hook HAMMP4DataAccumulator

- (id)init{
    id newAccumulator = %orig;
    iosLogInfo("-> newAccumulator=%@", newAccumulator);
    return newAccumulator;
}

- (void)addData:(id)data{
    iosLogInfo("data=%@", data);
    gNoUse = 1;
    %orig;
}

- (void)doneAddingData{
    iosLogInfo("%s", "");
    gNoUse = 1;
    %orig;
}

%end

/*------------------------------------------------------------------------------
 HAMMP4IndexChunk
------------------------------------------------------------------------------*/

%hook HAMMP4IndexChunk

- (void)dataAccumulatorDidComplete{
    iosLogInfo("%s", "");
    gNoUse = 1;
    %orig;
}

- (void)dataAccumulatorDidCompleteBox:(void *)arg1 startOffset:(int)startOffset{
    iosLogInfo("arg1=%p,startOffset=%d", arg1, startOffset);
    gNoUse = 1;
    %orig;
}

- (void)dataAccumulatorDidFailWithErrorDetails:(id)errorDetail{
    iosLogInfo("errorDetail=%@", errorDetail);
    gNoUse = 1;
    %orig;
}

- (_Bool)prepareAndReturnError:(id *)errorPtr{
    _Bool result = %orig;
    iosLogInfo("errorPtr=%p -> result=%s", errorPtr, boolToStr(result));
    gNoUse = 1;
    return result;
}

- (id)initWithFormat:(id)format rangedURL:(id)rangedURL{
    id newIdxChunk = %orig;
    iosLogInfo("format=%@,rangedURL=%@ -> newIdxChunk=%@", format, rangedURL, newIdxChunk);
    gNoUse = 1;
    return newIdxChunk;
}

%end
