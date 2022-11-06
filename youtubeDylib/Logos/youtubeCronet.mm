#line 1 "/Users/crifan/dev/dev_root/crifan/iOSYouTubeAdsFilter/youtubeDylib/Logos/youtubeCronet.xm"





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

@class YTNetworkRequestTrackerImpl; @class HAMCronetDataLoadTask; 
static void (*_logos_orig$_ungrouped$HAMCronetDataLoadTask$startWithDelegate$delegateQueue$)(_LOGOS_SELF_TYPE_NORMAL HAMCronetDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$HAMCronetDataLoadTask$startWithDelegate$delegateQueue$(_LOGOS_SELF_TYPE_NORMAL HAMCronetDataLoadTask* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$YTNetworkRequestTrackerImpl$onRequestStart)(_LOGOS_SELF_TYPE_NORMAL YTNetworkRequestTrackerImpl* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTNetworkRequestTrackerImpl$onRequestStart(_LOGOS_SELF_TYPE_NORMAL YTNetworkRequestTrackerImpl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$YTNetworkRequestTrackerImpl$onRequestEnd)(_LOGOS_SELF_TYPE_NORMAL YTNetworkRequestTrackerImpl* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$YTNetworkRequestTrackerImpl$onRequestEnd(_LOGOS_SELF_TYPE_NORMAL YTNetworkRequestTrackerImpl* _LOGOS_SELF_CONST, SEL); 

#line 17 "/Users/crifan/dev/dev_root/crifan/iOSYouTubeAdsFilter/youtubeDylib/Logos/youtubeCronet.xm"


static void _logos_method$_ungrouped$HAMCronetDataLoadTask$startWithDelegate$delegateQueue$(_LOGOS_SELF_TYPE_NORMAL HAMCronetDataLoadTask* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
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

    _logos_orig$_ungrouped$HAMCronetDataLoadTask$startWithDelegate$delegateQueue$(self, _cmd, arg1, arg2);
}











static void _logos_method$_ungrouped$YTNetworkRequestTrackerImpl$onRequestStart(_LOGOS_SELF_TYPE_NORMAL YTNetworkRequestTrackerImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTNetworkRequestTrackerImpl$onRequestStart(self, _cmd);
}

static void _logos_method$_ungrouped$YTNetworkRequestTrackerImpl$onRequestEnd(_LOGOS_SELF_TYPE_NORMAL YTNetworkRequestTrackerImpl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
    _logos_orig$_ungrouped$YTNetworkRequestTrackerImpl$onRequestEnd(self, _cmd);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HAMCronetDataLoadTask = objc_getClass("HAMCronetDataLoadTask"); { MSHookMessageEx(_logos_class$_ungrouped$HAMCronetDataLoadTask, @selector(startWithDelegate:delegateQueue:), (IMP)&_logos_method$_ungrouped$HAMCronetDataLoadTask$startWithDelegate$delegateQueue$, (IMP*)&_logos_orig$_ungrouped$HAMCronetDataLoadTask$startWithDelegate$delegateQueue$);}Class _logos_class$_ungrouped$YTNetworkRequestTrackerImpl = objc_getClass("YTNetworkRequestTrackerImpl"); { MSHookMessageEx(_logos_class$_ungrouped$YTNetworkRequestTrackerImpl, @selector(onRequestStart), (IMP)&_logos_method$_ungrouped$YTNetworkRequestTrackerImpl$onRequestStart, (IMP*)&_logos_orig$_ungrouped$YTNetworkRequestTrackerImpl$onRequestStart);}{ MSHookMessageEx(_logos_class$_ungrouped$YTNetworkRequestTrackerImpl, @selector(onRequestEnd), (IMP)&_logos_method$_ungrouped$YTNetworkRequestTrackerImpl$onRequestEnd, (IMP*)&_logos_orig$_ungrouped$YTNetworkRequestTrackerImpl$onRequestEnd);}} }
#line 59 "/Users/crifan/dev/dev_root/crifan/iOSYouTubeAdsFilter/youtubeDylib/Logos/youtubeCronet.xm"
