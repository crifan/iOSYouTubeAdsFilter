/*
 File: youtubeDataLoadTask.xm
 Function: Youtube hook dataLoadTask related
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"

/*------------------------------------------------------------------------------
 MLOnesieConnectionOpener
------------------------------------------------------------------------------*/

%hook MLOnesieConnectionOpener

- (_Bool)dataLoadTask:(id)arg1 shouldFollowRedirectWithResponse:(id)arg2 toURL:(id)arg3{
    _Bool shouldRedirect = %orig;

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,shouldFollowRedirectWithResponse=%@,toURL=%@ -> shouldRedirect=%s", arg1, arg2, arg3, boolToStr(shouldRedirect));
        gNoUse = 1;
    }

    return shouldRedirect;
}

- (void)dataLoadTask:(id)arg1 didReceiveResponse:(id)arg2{
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,didReceiveResponse=%@", arg1, arg2);
        gNoUse = 1;
    }

    %orig;
}

- (void)dataLoadTask:(id)arg1 didReceiveData:(id)arg2{
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,didReceiveData=%@", arg1, arg2);
        gNoUse = 1;
    }
    
    %orig;
}

- (void)dataLoadTask:(id)arg1 didCompleteWithError:(id)arg2{
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: dataLoadTask=%@,didCompleteWithError=%@", arg1, arg2);
        gNoUse = 1;
    }

    %orig;
}

- (id)buildRedirectorURL{
    id bru = %orig;
    iosLogInfo("bru=%@", bru);
    return bru;
}

- (void)scheduleNextRequestUsingStartDelay:(_Bool)arg1{
    iosLogInfo("arg1=%s", boolToStr(arg1));
    %orig;
}

- (void)onPingTimer{
    %orig;
}

- (void)cancelScheduledRequest{
    %orig;
}

%end


/*------------------------------------------------------------------------------
 MLServerABRDataLoadTask
------------------------------------------------------------------------------*/

%hook MLServerABRDataLoadTask

- (id)initWithTask:(id)arg1 networkRequestObserver:(id)arg2 requestNumber:(long long)arg3 dataLoader:(id)arg4{
    iosLogInfo("task=%@, networkRequestObserver=%@, requestNumber=%lld, dataLoader=%@", arg1, arg2, arg3, arg4);
    id newTask = %orig;
    iosLogInfo("-> newTask=%@", newTask);
    return newTask;
}

- (void)startWithDelegate:(id)arg1 delegateQueue:(id)arg2{
    iosLogInfo("delegate=%@, delegateQueue=%@", arg1, arg2);
    %orig;
}

- (_Bool)dataLoadTask:(id)arg1 shouldFollowRedirectWithResponse:(id)arg2 toURL:(id)arg3{
    iosLogInfo("task=%@, shouldFollowRedirectWithResponse=%@, toURL=%@", arg1, arg2, arg3);
    _Bool shouldFollow = %orig;

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, shouldFollowRedirectWithResponse=%@, toURL=%@ -> shouldFollow=%s for reqUrl=%@", arg1, arg2, arg3, boolToStr(shouldFollow), reqUrl);
        gNoUse = 1;
    }

    return shouldFollow;
}

- (void)dataLoadTask:(id)arg1 didReceiveData:(id)arg2{
    iosLogInfo("task=%@, didReceiveData=%@", arg1, arg2);
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);

    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didReceiveData=%@, reqUrl=%@", arg1, arg2, reqUrl);
        gNoUse = 1;
    } else if (is1SecondVideo(reqUrl)){
        iosLogInfo("reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    %orig;
}
- (void)dataLoadTask:(id)arg1 didReceiveResponse:(id)arg2{
    iosLogInfo("task=%@, didReceiveResponse=%@", arg1, arg2);

//    NSURL *respUrl = [arg2 URL];
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didReceiveResponse=%@", arg1, arg2);
        gNoUse = 1;
    }

    %orig;
}

- (void)dataLoadTask:(id)arg1 didCompleteWithError:(id)arg2{
    iosLogInfo("task=%@, didCompleteWithError=%@", arg1, arg2);

    long long countOfBytesReceived = -1;

//    NSURL *reqUrl = getHamErrReqUrl(arg2);
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didCompleteWithError=%@", arg1, arg2);
        iosLogInfo("_delegate=%@, _dataLoader=%@", [self valueForKey: @"_delegate"], [self valueForKey: @"_dataLoader"]);
        
        countOfBytesReceived = [arg1 countOfBytesReceived];
        iosLogInfo("before orig: countOfBytesReceived=%lld", countOfBytesReceived);

//        if (arg2 == NULL) {
            gNoUse = 1;
//        }
    }

    %orig;
    
//    if (isYoutubeAdsVideo_current(reqUrl)){
//        countOfBytesReceived = [arg1 countOfBytesReceived];
//        iosLogInfo("after  orig: countOfBytesReceived=%lld", countOfBytesReceived);
//        gNoUse = 1;
//    }
}

- (void)cancel{
    iosLogInfo("%s", "");

    NSURL* reqUrl = getDataLoadTaskReqUrl(self);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@", reqUrl);
        gNoUse = 1;
    }

    %orig;
}

%end



/*------------------------------------------------------------------------------
 MLServerABRLoader
------------------------------------------------------------------------------*/

%hook MLServerABRLoader

- (id)initWithQueue:(id)arg1 dataLoader:(id)arg2 playerEventCenter:(id)arg3 playerItemEventCenter:(id)arg4 streamingData:(id)arg5 mediaCommonConfig:(id)arg6 hamplayerConfig:(id)arg7 onesieVideoData:(id)arg8 QOEController:(id)arg9 loadRetryPolicy:(id)arg10 isLiveSource:(_Bool)arg11 livePlayerConfig:(id)arg12 windowedLiveConfig:(id)arg13 metadataRelay:(id)arg14 delegate:(id)arg15 latencyLogger:(id)arg16 watchEndpointUstreamerConfig:(id)arg17 periodID:(long long)arg18 firstRequestNumber:(long long)arg19 cache:(id)arg20{
    iosLogInfo("queue=%@,dataLoader=%@,playerEventCenter=%@,playerItemEventCenter=%@,streamingData=%@,mediaCommonConfig=%@,hamplayerConfig=%@,onesieVideoData=%@,QOEController=%@,loadRetryPolicy=%@,isLiveSource=%s,livePlayerConfig=%@,windowedLiveConfig=%@,metadataRelay=%@,delegate=%@,latencyLogger=%@,watchEndpointUstreamerConfig=%@,periodID=%lld,firstRequestNumber=%lld,cache=%@",
               arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,boolToStr(arg11),arg12,arg13,arg14,arg15,arg16,arg17,arg18,arg19,arg20);
    id newLoader = %orig;
    iosLogInfo("=> newLoader=%@", newLoader);
    return newLoader;
}

- (void)updateLoadRetryPolicyOnLoadCompletionWithError:(id)arg1{
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

    %orig;
}

- (_Bool)dataLoadTask:(id)arg1 shouldFollowRedirectWithResponse:(id)arg2 toURL:(id)arg3{
    iosLogInfo("task=%@, shouldFollowRedirectWithResponse=%@, toURL=%@", arg1, arg2, arg3);

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    _Bool shouldFollow = %orig;

    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@, arg1=%@, shouldFollowRedirectWithResponse=%@, toURL=%@ -> shouldFollow=%s", reqUrl, arg1, arg2, arg3, boolToStr(shouldFollow));
        gNoUse = 1;
    }
    
    return shouldFollow;
}

- (void)dataLoadTask:(id)arg1 didReceiveResponse:(id)arg2{
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

    %orig;

    if (isYoutubeAdsVideo_current(reqUrl)){
        countOfBytesReceived = [arg1 countOfBytesReceived];
        iosLogInfo("after  orig: countOfBytesReceived=%lld", countOfBytesReceived);
        gNoUse = 1;
    }
}

- (void)dataLoadTask:(id)arg1 didReceiveData:(id)arg2{
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

    %orig;
}

- (void)dataLoadTask:(id)arg1 didCompleteWithError:(id)arg2{
    id error = arg2;

    iosLogInfo("task=%@, didCompleteWithError=%@", arg1, error);
    long long countOfBytesReceived = -1;
    id _didReceiveChunkForCurrentRequest = NULL;
    id _didReceiveNextRequestPolicyForCurrentRequest = NULL;

//    NSURL *reqUrl = getHamErrReqUrl(arg2); // Note: when arg2=NULL, can not get request url
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: task=%@, didCompleteWithError=%@", arg1, error);
        // arg1=<MLServerABRDataLoadTask: 0x28424d5f0>, didCompleteWithError=(null)

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

    %orig;
}

- (id)chunkForMediaHeader:(const void *)mediaHeader{
    id newChunk = %orig;
    iosLogInfo("mediaHeader=%p -> newChunk=%@", mediaHeader, newChunk);
    return newChunk;
}

- (void)onChunk:(HAMChunk*)chunk completeWithError:(NSError*)error{
    iosLogInfo("chunk=%@, completeWithError=%@", chunk, error);
    gNoUse = 1;
    %orig;
}

- (void)didParseFormatInitializationMetadata:(const void *)arg1{
    iosLogInfo("arg1=%p", arg1);
    gNoUse = 1;
    %orig;
}

- (void)onChunkStartLoading:(HAMChunk *)chunk{
    iosLogInfo("chunk==%@", chunk);
    gNoUse = 1;
    %orig;
}

- (void)failWithError:(id)arg1{
    iosLogInfo("error=%@", arg1);
    %orig;
}

- (void)continueLoading{
    gCurLogNum += 1;
    if (isNeedDebug()) {
        iosLogInfo("%s", "");
        gNoUse = 1;
    }
    %orig;
}


- (void)recordNonFatalQOEErrorWithCode:(id)errorCode extraDetails:(id)extraDetails requestNumber:(id)requestNumber{
    iosLogInfo("errorCode=%@, extraDetails=%@, requestNumber=%@", errorCode, extraDetails, requestNumber);
    %orig;
}

- (void)recordInvalidFormatQOEErrorWithFormatID:(id)formatID extraDetails:(id)extraDetails{
    iosLogInfo("formatID=%@, extraDetails=%@", formatID, extraDetails);
    %orig;
}

- (void)onesieDataLoader:(id)arg1 didCompleteWithError:(id)arg2{
    iosLogInfo("arg1=%@, didCompleteWithError=%@", arg1, arg2);
    
    if (arg2 != NULL){
        gNoUse = 1;
    }
    
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didCompleteWithError=%@", arg1, arg2);
        gNoUse = 1;
    }

    %orig;
}

- (void)onesieDataLoader:(id)arg1 didCompleteChunks:(id)arg2 withError:(id)arg3{
    iosLogInfo("arg1=%@, didCompleteChunks=%@, withError=%@", arg1, arg2, arg3);
    
    if (arg3 != NULL){
        gNoUse = 1;
    }

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%@, didCompleteWithError=%@", arg1, arg2);
        gNoUse = 1;
    }
    
    %orig;
}



%end


/*------------------------------------------------------------------------------
 MLHAMDataLoadTaskObserverImpl
------------------------------------------------------------------------------*/

%hook MLHAMDataLoadTaskObserverImpl

- (void)dataLoadTask:(id)arg1 didCompleteWithError:(id)arg2{
    iosLogInfo("dataLoadTask=%@, error=%@", arg1, arg2);
    
    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@; dataLoadTask=%@, error=%@", reqUrl, arg1, arg2);
        gNoUse = 1;
    }

    %orig;
}

- (void)dataLoadTaskDidStart:(id)arg1{
    iosLogInfo("dataLoadTask=%@", arg1);

    NSURL* reqUrl = getDataLoadTaskReqUrl(arg1);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@; dataLoadTask=%@", reqUrl, arg1);
        gNoUse = 1;
    }
    
    %orig;
}

- (id)init{
    id observerImp = %orig;
    id curNetworkRequestTracker = [observerImp valueForKey: @"_networkRequestTracker"];
    iosLogInfo("observerImp=%@, curNetworkRequestTracker=%@", observerImp, curNetworkRequestTracker);
    // observerImp=<MLHAMDataLoadTaskObserverImpl: 0x283815b20>, curNetworkRequestTracker=<YTNetworkRequestTrackerImpl: 0x283abad60>
    return observerImp;
}

%end


/*------------------------------------------------------------------------------
 MLServerABRController
------------------------------------------------------------------------------*/

%hook MLServerABRController

- (id)initWithQueue:(id)arg1 ABRPolicy:(id)arg2 serverABRControllerDelegate:(id)arg3 config:(id)arg4 windowedLiveConfig:(id)arg5 periodID:(long long)arg6 bufferTrimBeforeSeconds:(double)arg7 mediaContentType:(int)arg8 isLiveSource:(_Bool)arg9 liveHeadPlayable:(_Bool)arg10{
    iosLogInfo("queue=%@,ABRPolicy=%@,serverABRControllerDelegate=%@,config=%@,windowedLiveConfig=%@,periodID=%lld,bufferTrimBeforeSeconds=%f,mediaContentType=%d,isLiveSource=%s,liveHeadPlayable=%s", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8,boolToStr(arg9),boolToStr(arg10));
    id newController = %orig;
    iosLogInfo("=>newController=%@", newController);
    return newController;
}

- (_Bool)prepareAndReturnError:(id *)arg1{
    _Bool isFormatOk = %orig;
    iosLogInfo("errorPtr=%p => isFormatOk=%s", arg1, boolToStr(isFormatOk));

    if (isFormatOk == false) {
        gNoUse = 1;
    }

    return isFormatOk;
}

%end


/*------------------------------------------------------------------------------
 MLNetworkChunkLoadTask
------------------------------------------------------------------------------*/

%hook MLNetworkChunkLoadTask

- (id)initWithChunks:(id)arg1 delegate:(id)arg2 dataLoadTask:(id)arg3 cache:(id)arg4 clock:(id)arg5 timeline:(id)arg6 playerItemEventCenter:(id)arg7 ABRDelegate:(id)arg8 queue:(id)arg9 treatNoMediaAsCancellation:(_Bool)arg10{
    id newChunkLoadTask = %orig;
    iosLogInfo("chunk=%@,delegate=%@,dataLoadTask=%@,cache=%@,clock=%@,timeline=%@,playerItemEventCenter=%@,ABRDelegate=%@,queue=%@,treatNoMediaAsCancellation=%s -> newChunkLoadTask=%@", arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, boolToStr(arg10), newChunkLoadTask);
    gNoUse = 1;
    return newChunkLoadTask;
}

- (void)videoPlaybackUMPParserDidFail{
    iosLogInfo("%s", "");
    gNoUse = 1;
    %orig;
}

- (void)videoPlaybackUMPParserDidParseMediaData:(NSData *)mediaData{
    iosLogInfo("mediaData=%@", mediaData);
    gNoUse = 1;
    %orig;
}

- (void)didReceiveData:(id)data{
    iosLogInfo("data=%@", data);
    gNoUse = 1;
    %orig;
}

- (void)dataLoadTask:(id)loadTask didReceiveData:(id)data{
    iosLogInfo("loadTask=%@, data=%@", loadTask, data);
    gNoUse = 1;
    %orig;
}

- (void)dataLoadTask:(id)loadTask didCompleteWithError:(id)error{
    iosLogInfo("loadTask=%@, error=%@", loadTask, error);
    gNoUse = 1;
    %orig;
}

%end


/*------------------------------------------------------------------------------
 MLOnesieUMPFetcherTask
------------------------------------------------------------------------------*/

%hook MLOnesieUMPFetcherTask

- (void)onRequestFactoryCompletionWithRequest:(id)request error:(id)error{
    iosLogInfo("request=%@, error=%@", request, error);
    
    NSURLRequest* curReq = [self valueForKey: @"_playerRequest"];
    NSURL *reqUrl = [curReq URL];
    iosLogInfo("curReq=%@, reqUrl=%@", curReq, reqUrl);
    gNoUse = 1;

    if (isYoutubeAdsVideo_current(reqUrl)) {
        iosLogInfo("curReq=%@, reqUrl=%@", curReq, reqUrl);
        gNoUse = 1;
    }

    %orig;
}

- (id)initWithPlayerRequest:(id)request context:(id)context onesieHotConfig:(id)onesieHotConfig configuration:(id)configuration cryptor:(id)cryptor playerCompletionBlock:(id)playerCompletionBlock fallbackFetcherService:(id)fallbackFetcherService{
    id newUmpFetcherTask = %orig;
    iosLogInfo("request=%@,context=%@,onesieHotConfig=%@,configuration=%@,cryptor=%@,playerCompletionBlock=%@,fallbackFetcherService=%@ -> newUmpFetcherTask=%@", request, context, onesieHotConfig, configuration, cryptor, playerCompletionBlock, fallbackFetcherService, newUmpFetcherTask);
    gNoUse = 1;
    return newUmpFetcherTask;
}

%end

/*------------------------------------------------------------------------------
 HAMCronetDataLoader
------------------------------------------------------------------------------*/

%hook HAMCronetDataLoader

- (id)taskWithRequest:(HAMDataLoadRequest*)request userInfo:(id)userInfo{
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

    id newLoader = %orig;
    return newLoader;
}

%end
