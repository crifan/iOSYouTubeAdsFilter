/*
 File: youtubeML.xm
 Function: Youtube hook ML related. ML= Media Layer ?
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"


/*------------------------------------------------------------------------------
 MLOnesieUMPController
------------------------------------------------------------------------------*/

%hook MLOnesieUMPController

- (id)initWithQueue:(id)arg1 requestContext:(id)arg2 cryptor:(id)arg3 hotConfig:(id)arg4 dataLoader:(id)arg5 requestNumber:(long long)arg6{
    iosLogInfo("arg1=%@,requestContext=%@,cryptor=%@,hotConfig=%@,dataLoader=%@,requestNumber=%lld", arg1,arg2,arg3,arg4,arg5,arg6);
    
    id newQueue = %orig;

    //     base_url: "/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&ip=70.110.26.104"
    YTIOnesieHotConfig* hotConfig = (YTIOnesieHotConfig*)arg4;
    NSString *baseUrlStr = [hotConfig baseURL];
//    if (isYoutubeAdsVideo_ctierA(baseUrlStr)){
//    if (isContainCtierA(baseUrlStr)){
    if (containCtier(baseUrlStr)){
        iosLogInfo("arg1=%@,requestContext=%@,cryptor=%@,hotConfig=%@,dataLoader=%@,requestNumber=%lld => newQueue=%@", arg1,arg2,arg3,arg4,arg5,arg6, newQueue);
        gNoUse = 1;
    }

    return newQueue;
}

%end


/*------------------------------------------------------------------------------
 MLDefaultLoadRetryPolicy
------------------------------------------------------------------------------*/

%hook MLDefaultLoadRetryPolicy

- (void)executeRetryBlockWithRetryID:(int)arg1{
    int retryID = arg1;
    iosLogInfo("retryID=%d", retryID);
    gNoUse = 1;
    %orig;
}

- (void)cancelRetryAndResetBackoff:(_Bool)arg1{
    iosLogInfo("isRestBackoff=%s", boolToStr(arg1));
    gNoUse = 1;
    %orig;
}

- (void)setNextRequestBackoffTimeSeconds:(double)arg1{
    double backoffTime = arg1;
    iosLogInfo("backoffTime=%f", backoffTime);
    gNoUse = 1;
    %orig;
}

- (void)cancelRetry{
    iosLogInfo("%s", "");
    gNoUse = 1;
    %orig;
}

- (void)scheduleRetryWithBlock:(id)arg1{
    id newRetryBlock = arg1;
    iosLogInfo("newRetryBlock=%@", newRetryBlock);
    gNoUse = 1;
    %orig;
}

- (void)didCompleteLoadWithError:(id)arg1{
    id error = arg1;
    iosLogInfo("error=%@", error);
    gNoUse = 1;
    %orig;
}

//@property(readonly, nonatomic) _Bool canRetry;
-(_Bool)canRetry{
    gNoUse = 1;
    _Bool isCanRetry = %orig;
    iosLogInfo("isCanRetry=%s", boolToStr(isCanRetry));
    return isCanRetry;
}

%end


/*------------------------------------------------------------------------------
 MLPlayerItemEventCenter
------------------------------------------------------------------------------*/

%hook MLPlayerItemEventCenter

- (id)init{
    id newEventCenter = %orig;
    iosLogInfo("->newEventCenter=%@", newEventCenter);
    return newEventCenter;
}

- (id)initWithPlayerItem:(id)arg1{
    id newEventCenter = %orig;
    iosLogInfo("playerItem=%@ -> newEventCenter=%@", arg1, newEventCenter);
    return newEventCenter;
}

- (void)addNetworkRequestCompletionObserver:(id)arg1{
    iosLogInfo("_networkRequestCompletionObservers=%@, to add: observer=%@, ", [self valueForKey: @"_networkRequestCompletionObservers"], arg1);
    %orig;
}

- (void)removeAllObservers{
    iosLogInfo("%s", "");
    %orig;
}

- (void)removeObserverForAllEvents:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

%end


/*------------------------------------------------------------------------------
 MLQOEError
------------------------------------------------------------------------------*/

%hook MLQOEError

+ (id)QOEErrorWithCode:(id)code details:(id)details{
    id newQoeErr = %orig;
    iosLogInfo("code=%@,details=%@ -> newQoeErr=%@", code, details, newQoeErr);
    return newQoeErr;
}


+ (id)QOEErrorWithNSError:(id)nsError host:(id)host{
    id newQoeErr = %orig;
    iosLogInfo("nsError=%@,host=%@ -> newQoeErr=%@", nsError, host, newQoeErr);
    return newQoeErr;
}

+ (id)QOEErrorWithNSError:(id)nsError details:(id)details{
    id newQoeErr = %orig;
    iosLogInfo("nsError=%@,details=%@ -> newQoeErr=%@", nsError, details, newQoeErr);
    return newQoeErr;
}

+ (id)QOEErrorWithNSError:(id)nsError{
    id newQoeErr = %orig;
    iosLogInfo("nsError=%@ -> newQoeErr=%@", nsError, newQoeErr);
    return newQoeErr;
}

+ (id)QOEErrorWithCode:(id)code underlyingError:(id)underlyingError{
    id newQoeErr = %orig;
    iosLogInfo("code=%@,underlyingError=%@ -> newQoeErr=%@", code, underlyingError, newQoeErr);
    return newQoeErr;
}

+ (id)QOEErrorWithCode:(id)code{
    id newQoeErr = %orig;
    iosLogInfo("code=%@ -> newQoeErr=%@", code, newQoeErr);
    return newQoeErr;
}

+ (id)QOEErrorWithPlaybackError:(id)playbackError{
    id newQoeErr = %orig;
    iosLogInfo("playbackError=%@ -> newQoeErr=%@", playbackError, newQoeErr);
    return newQoeErr;
}

- (id)initWithCode:(id)code details:(id)details{
    id initedQoeErr = %orig;
    iosLogInfo("code=%@,details=%@ -> initedQoeErr=%@", code, details, initedQoeErr);
    return initedQoeErr;
}

- (id)detailsString{
    id detailStr = %orig;
    iosLogInfo("detailStr=%@", detailStr);
    return detailStr;
}

- (id)errorWithPrefix:(id)prefix{
    id error = %orig;
    iosLogInfo("prefix=%@ -> error=%@", prefix, error);
    return error;
}

%end
