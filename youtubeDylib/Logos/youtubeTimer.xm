/*
 File: youtubeTimer.xm
 Function: Youtube hook Timer related
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"

/*------------------------------------------------------------------------------
 HAMTimer
------------------------------------------------------------------------------*/

%hook HAMTimer

- (void)reset{
    iosLogInfo("%s", "");

    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }

    %orig;
}

- (void)invalidate{
    iosLogInfo("%s", "");

    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }

    %orig;
}

- (void)fire{
    iosLogInfo("%s", "");

    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }

    %orig;
}

- (void)dealloc{
    iosLogInfo("%s", "");
 
    if (isTryResetTimeoutTimer(self)){
        gNoUse = 1;
    }
    
    %orig;
}

- (id)initWithQueue:(id)arg1 startNanoseconds:(long long)arg2 intervalNanoseconds:(unsigned long long)arg3 leewayNanoseconds:(unsigned long long)arg4 repeats:(_Bool)arg5 block:(id)arg6{
    long long startNanoseconds = arg2;
    if (isTryResetTimeoutTimer(startNanoseconds)){
        iosLogInfo("queue=%@,startNanoseconds=%lld, intervalNanoseconds=%lld, leewayNanoseconds=%lld, repeats=%s, block=%@", arg1, startNanoseconds, arg3, arg4, boolToStr(arg5), arg6);
        gNoUse = 1;
    }

    id newHamTimer = %orig;
    return newHamTimer;
}

+ (id)repeatingTimerWithQueue:(id)arg1 startNanoseconds:(long long)arg2 intervalNanoseconds:(unsigned long long)arg3 leewayNanoseconds:(unsigned long long)arg4 block:(id)arg5{
    long long startNanoseconds = arg2;

    if (isTryResetTimeoutTimer(startNanoseconds)){
        iosLogInfo("arg1=%@,startNanoseconds=%lld, intervalNanoseconds=%lld, leewayNanoseconds=%lld, block%@", arg1, startNanoseconds, arg3, arg4, arg5);
        gNoUse = 1;
    }

    id newRepeatTimer = %orig;
    return newRepeatTimer;
}

+ (id)timerWithQueue:(id)arg1 startNanoseconds:(long long)arg2 leewayNanoseconds:(unsigned long long)arg3 block:(id)arg4{
    long long startNanoseconds = arg2;

    if (isTryResetTimeoutTimer(startNanoseconds)){
        iosLogInfo("arg1=%@,startNanoseconds=%lld, leewayNanoseconds=%lld, block%@", arg1, arg2, arg3, arg4);
        gNoUse = 1;
    }

    id newQueueTimer = %orig;
    return newQueueTimer;
}

%end
