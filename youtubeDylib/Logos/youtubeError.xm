/*
 File: youtubeError.xm
 Function: Youtube hook NSError related
*/

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"


/*------------------------------------------------------------------------------
 NSError
------------------------------------------------------------------------------*/

%hook NSError

+ (long long)HAMErrorCodeForURLErrorCode:(long long)arg1{
    long long hamErrCode = %orig;
    iosLogInfo("urlErrCode=%lld -> hamErrCode=%lld", arg1, hamErrCode);
    return hamErrCode;
}

+ (id)errorWithDomain:(id)arg1 code:(long)arg2 userInfo:(id)arg3{
    long curCode = arg2;
    NSURL *reqUrl = getHamErrReqUrl(arg3);

    id newError = %orig;

    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: errDomain=%@,code=%ld,userInfo=%@ -> newError=%@ for reqUrl=%@", arg1, curCode, arg3, newError, reqUrl);
        gNoUse = 1;

        if (isYoutubeAdsVideo_ctierA(reqUrl)){
            iosLogInfo("isYoutubeAdsVideo_ctierA: reqUrl=%@", reqUrl);
            gNoUse = 1;
        }
    }

    return newError;
}

+ (id)HAMErrorWithCode:(long long)arg1 userInfo:(id)arg2{
    id hamewc_au = %orig;

    NSURL *reqUrl = getHamErrReqUrl(arg2);
    if (isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("arg1=%lld,userInfo=%@ -> hamewc_au=%@", arg1, arg2, hamewc_au);

        iosLogInfo("isYoutubeAdsVideo_current: reqUrl=%@", reqUrl);
        gNoUse = 1;

        if (isYoutubeAdsVideo_ctierA(reqUrl)){
            iosLogInfo("isYoutubeAdsVideo_ctier reqUrl=%@", reqUrl);
            gNoUse = 1;
        }
    }
    
    return hamewc_au;
}

+ (id)ml_mediaErrorWithCode:(long long)arg1 underlyingError:(id)arg2{
    id mmewc = %orig;

    NSURL *reqUrl = getHamErrReqUrl(arg2);
    if(isYoutubeAdsVideo_current(reqUrl)){
        iosLogInfo("isYoutubeAdsVideo_current: arg1=%lld,underlyingError=%@ -> mmewc=%@", arg1, arg2, mmewc);
        gNoUse = 1;
    }

    return mmewc;
}

+ (id)ml_mediaErrorWithCode:(long long)arg1{
    id mmewc_a = %orig;
    if (AdsVideoYTMediaErrorCode == arg1) {
        iosLogInfo("AdsVideoYTMediaErrorCode: arg1=%lld -> mmewc_a=%@", arg1, mmewc_a);
        gNoUse = 1;
    }
    return mmewc_a;
}

+ (id)HAMErrorWithURLResponse:(id)arg1 userInfo:(id)arg2 request:(id)arg3{
    id hamewur = %orig;
    // <NSHTTPURLResponse: 0x281464760> { URL: https://rr6---sn-5uaeznk7.googlevideo.com/videoplayback...
    NSURL *respUrl = [arg1 URL];
    if (isYoutubeAdsVideo_current(respUrl)){
        iosLogInfo("arg1=%@,userInfo=%@,request=%@ -> hamewur=%@", arg1, arg2, arg3, hamewur);

        iosLogInfo("isYoutubeAdsVideo_current: respUrl=%@", respUrl);
        gNoUse = 1;

        if (isYoutubeAdsVideo_ctierA(respUrl)){
            iosLogInfo("isYoutubeAdsVideo_ctierA: respUrl=%@", respUrl);
            gNoUse = 1;
        }
    }
    return hamewur;
}

+ (id)HAMErrorWithCode:(long long)arg1{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld -> hamewc=%@", arg1, hamewc);
    return hamewc;
}

+ (id)ml_mediaErrorWithCode:(long long)arg1 details:(id)arg2{
    id mmewc = %orig;
    iosLogInfo("arg1=%lld,details=%@ -> mmewc=%@", arg1, arg2, mmewc);
    // 2022-07-12 15:30:56.336617+0800 YouTube[32505:3444891] hook_ youtubeError.xm NSError$ml_mediaErrorWithCode$details$: arg1=714,details=140_1638179577538068 -> mmewc=Error Domain=YTMediaError Code=714 "(null)" UserInfo={YTMediaErrorDetails=140_1638179577538068}
    return mmewc;
}

// following seems not trigged

+ (id)HAMErrorWithURLError:(id)arg1 userInfo:(id)arg2 request:(id)arg3{
    id hamewue = %orig;
    iosLogInfo("arg1=%@,userInfo=%@,request=%@ -> hamewur=%@", arg1, arg2, arg3, hamewue);
    return hamewue;
}

+ (id)HAMErrorWithCode:(long long)arg1 exception:(id)arg2{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,exception=%@ -> hamewc=%@", arg1, arg2, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 OSStatus:(int)arg3{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,OSStatus=%d -> hamewc=%@", arg1, arg2, arg3, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 OSStatus:(int)arg3 format:(id)arg4 periodID:(long long)arg5{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,OSStatus=%d,format=%@,periodID=%lld -> hamewc=%@", arg1, arg2, arg3, arg4, arg5, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 userInfo:(id)arg2 details:(id)arg3 underlyingError:(id)arg4{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,userInfo=%@,details=%@,underlyingError=%@ -> hamewc=%@", arg1, arg2, arg3, arg4, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 underlyingError:(id)arg3{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,underlyingError=%@ -> hamewc=%@", arg1, arg2, arg3, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 underlyingError:(id)arg3 periodID:(long long)arg4{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,underlyingError=%@,periodID=%lld -> hamewc=%@", arg1, arg2, arg3, arg4, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 OSStatus:(int)arg3 format:(id)arg4{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,OSStatus=%d,format=%@ -> hamewc=%@", arg1, arg2, arg3, arg4, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 format:(id)arg3{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,format=%@ -> hamewc=%@", arg1, arg2, arg3, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@ -> hamewc=%@", arg1, arg2, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 details:(id)arg2 format:(id)arg3 periodID:(long long)arg4{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,format=%@,periodID=%lld -> hamewc=%@", arg1, arg2, arg3, arg4, hamewc);
    return hamewc;
}

+ (id)HAMErrorWithCode:(long long)arg1 periodID:(long long)arg2{
    id hamewc = %orig;
    iosLogInfo("arg1=%lld,periodID=%lld -> hamewc=%@", arg1, arg2, hamewc);
    return hamewc;
}

+ (id)playbackErrorWithMediaError:(id)arg1{
    id pewme = %orig;
    iosLogInfo("arg1=%@ -> pewme=%@", arg1, pewme);
    return pewme;
}

+ (id)ml_mediaErrorWithCode:(long long)arg1 details:(id)arg2 underlyingError:(id)arg3{
    id mmewc = %orig;
    iosLogInfo("arg1=%lld,details=%@,underlyingError=%@ -> mmewc=%@", arg1, arg2, arg3, mmewc);
    return mmewc;
}

+ (id)ml_mediaErrorWithCode:(long long)arg1 userInfo:(id)arg2{
    id mmewc = %orig;
    iosLogInfo("arg1=%lld,userInfo=%@ -> mmewc=%@", arg1, arg2, mmewc);
    return mmewc;
}

%end
