/*
 File: youtubeCronet.xm
 Function: Youtube hook Cronet related
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"


/*------------------------------------------------------------------------------
 HAMCronetDataLoadTask
------------------------------------------------------------------------------*/

%hook HAMCronetDataLoadTask

- (void)startWithDelegate:(id)arg1 delegateQueue:(id)arg2{
    iosLogInfo("delegate=%@, delegateQueue=%@", arg1, arg2);

    NSURL* reqUrl = getDataLoadTaskReqUrl(self);
    iosLogInfo("reqUrl=%@", reqUrl);
    if(isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: delegate=%@,delegateQueue=%@ -> reqUrl=%@", arg1, arg2, reqUrl);
        gNoUse = 1;

        if(isYoutubeAdsVideo_ctierA(reqUrl)){
            iosLogInfo("isYoutubeAdsVideo_ctierA: reqUrl=%@", reqUrl);
            gNoUse = 1;
        }
    }

    %orig;
}

%end

// other related, TODO: move to proper place

/*------------------------------------------------------------------------------
 YTNetworkRequestTrackerImpl
------------------------------------------------------------------------------*/

%hook YTNetworkRequestTrackerImpl

- (void)onRequestStart{
    iosLogInfo("%s", "");
    %orig;
}

- (void)onRequestEnd{
    iosLogInfo("%s", "");
    %orig;
}

%end

