#line 1 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeTimer.xm"





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

@class HAMTimer; 
static void (*_logos_orig$_ungrouped$HAMTimer$reset)(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMTimer$reset(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMTimer$invalidate)(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMTimer$invalidate(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMTimer$fire)(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMTimer$fire(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$HAMTimer$dealloc)(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$HAMTimer$dealloc(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST, SEL); static HAMTimer* (*_logos_orig$_ungrouped$HAMTimer$initWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$repeats$block$)(_LOGOS_SELF_TYPE_INIT HAMTimer*, SEL, id, long long, unsigned long long, unsigned long long, _Bool, id) _LOGOS_RETURN_RETAINED; static HAMTimer* _logos_method$_ungrouped$HAMTimer$initWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$repeats$block$(_LOGOS_SELF_TYPE_INIT HAMTimer*, SEL, id, long long, unsigned long long, unsigned long long, _Bool, id) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$HAMTimer$repeatingTimerWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$block$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, long long, unsigned long long, unsigned long long, id); static id _logos_meta_method$_ungrouped$HAMTimer$repeatingTimerWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$block$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, long long, unsigned long long, unsigned long long, id); static id (*_logos_meta_orig$_ungrouped$HAMTimer$timerWithQueue$startNanoseconds$leewayNanoseconds$block$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, long long, unsigned long long, id); static id _logos_meta_method$_ungrouped$HAMTimer$timerWithQueue$startNanoseconds$leewayNanoseconds$block$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, long long, unsigned long long, id); 

#line 16 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeTimer.xm"


static void _logos_method$_ungrouped$HAMTimer$reset(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");

    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$HAMTimer$reset(self, _cmd);
}

static void _logos_method$_ungrouped$HAMTimer$invalidate(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");

    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$HAMTimer$invalidate(self, _cmd);
}

static void _logos_method$_ungrouped$HAMTimer$fire(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");

    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }

    _logos_orig$_ungrouped$HAMTimer$fire(self, _cmd);
}

static void _logos_method$_ungrouped$HAMTimer$dealloc(_LOGOS_SELF_TYPE_NORMAL HAMTimer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    iosLogInfo("%s", "");
 
    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }
    
    _logos_orig$_ungrouped$HAMTimer$dealloc(self, _cmd);
}

static HAMTimer* _logos_method$_ungrouped$HAMTimer$initWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$repeats$block$(_LOGOS_SELF_TYPE_INIT HAMTimer* __unused self, SEL __unused _cmd, id arg1, long long arg2, unsigned long long arg3, unsigned long long arg4, _Bool arg5, id arg6) _LOGOS_RETURN_RETAINED{
    long long startNanoseconds = arg2;
    if (isTryResetTimeoutTimer(startNanoseconds)){
        iosLogInfo("queue=%@,startNanoseconds=%lld, intervalNanoseconds=%lld, leewayNanoseconds=%lld, repeats=%s, block=%@", arg1, startNanoseconds, arg3, arg4, boolToStr(arg5), arg6);
        gNoUse = 1;
    }

    id newHamTimer = _logos_orig$_ungrouped$HAMTimer$initWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$repeats$block$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6);
    return newHamTimer;
}

static id _logos_meta_method$_ungrouped$HAMTimer$repeatingTimerWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$block$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, long long arg2, unsigned long long arg3, unsigned long long arg4, id arg5){
    long long startNanoseconds = arg2;

    if (isTryResetTimeoutTimer(startNanoseconds)){
        iosLogInfo("arg1=%@,startNanoseconds=%lld, intervalNanoseconds=%lld, leewayNanoseconds=%lld, block%@", arg1, startNanoseconds, arg3, arg4, arg5);
        gNoUse = 1;
    }

    id newRepeatTimer = _logos_meta_orig$_ungrouped$HAMTimer$repeatingTimerWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$block$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
    return newRepeatTimer;
}

static id _logos_meta_method$_ungrouped$HAMTimer$timerWithQueue$startNanoseconds$leewayNanoseconds$block$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, long long arg2, unsigned long long arg3, id arg4){
    long long startNanoseconds = arg2;

    if (isTryResetTimeoutTimer(startNanoseconds)){
        iosLogInfo("arg1=%@,startNanoseconds=%lld, leewayNanoseconds=%lld, block%@", arg1, arg2, arg3, arg4);
        gNoUse = 1;
    }

    id newQueueTimer = _logos_meta_orig$_ungrouped$HAMTimer$timerWithQueue$startNanoseconds$leewayNanoseconds$block$(self, _cmd, arg1, arg2, arg3, arg4);
    return newQueueTimer;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HAMTimer = objc_getClass("HAMTimer"); Class _logos_metaclass$_ungrouped$HAMTimer = object_getClass(_logos_class$_ungrouped$HAMTimer); { MSHookMessageEx(_logos_class$_ungrouped$HAMTimer, @selector(reset), (IMP)&_logos_method$_ungrouped$HAMTimer$reset, (IMP*)&_logos_orig$_ungrouped$HAMTimer$reset);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMTimer, @selector(invalidate), (IMP)&_logos_method$_ungrouped$HAMTimer$invalidate, (IMP*)&_logos_orig$_ungrouped$HAMTimer$invalidate);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMTimer, @selector(fire), (IMP)&_logos_method$_ungrouped$HAMTimer$fire, (IMP*)&_logos_orig$_ungrouped$HAMTimer$fire);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMTimer, sel_registerName("dealloc"), (IMP)&_logos_method$_ungrouped$HAMTimer$dealloc, (IMP*)&_logos_orig$_ungrouped$HAMTimer$dealloc);}{ MSHookMessageEx(_logos_class$_ungrouped$HAMTimer, @selector(initWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:repeats:block:), (IMP)&_logos_method$_ungrouped$HAMTimer$initWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$repeats$block$, (IMP*)&_logos_orig$_ungrouped$HAMTimer$initWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$repeats$block$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$HAMTimer, @selector(repeatingTimerWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:block:), (IMP)&_logos_meta_method$_ungrouped$HAMTimer$repeatingTimerWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$block$, (IMP*)&_logos_meta_orig$_ungrouped$HAMTimer$repeatingTimerWithQueue$startNanoseconds$intervalNanoseconds$leewayNanoseconds$block$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$HAMTimer, @selector(timerWithQueue:startNanoseconds:leewayNanoseconds:block:), (IMP)&_logos_meta_method$_ungrouped$HAMTimer$timerWithQueue$startNanoseconds$leewayNanoseconds$block$, (IMP*)&_logos_meta_orig$_ungrouped$HAMTimer$timerWithQueue$startNanoseconds$leewayNanoseconds$block$);}} }
#line 94 "/Users/crifan/dev/dev_root/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeTimer.xm"
