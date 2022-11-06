/*
 File: youtubeCommon.xm
 Function: Youtube hook common part implementation
*/

//#include <stdio.h>
#import <UIKit/UIKit.h>
#import "youtubeCommon.h"

/*==============================================================================
 Global Constant
==============================================================================*/

long long ServiceNumber_AdBreak = 46;

long long AdsVideoYTMediaErrorCode = 2000;

Class NSURLRequestClass = objc_getClass("NSURLRequest");
Class NSMutableURLRequestClass = objc_getClass("NSMutableURLRequest");
Class NSErrorClass = objc_getClass("NSError");
Class NSDictionaryClass = objc_getClass("NSDictionary");

Class HAMCronetDataLoadTaskClass = objc_getClass("HAMCronetDataLoadTask");

Class MLServerABRDataLoadTaskClass = objc_getClass("MLServerABRDataLoadTask");

long long TryResetTimeoutTimer_startNanoseconds = 15000000000;

/*==============================================================================
 Global Config
==============================================================================*/

// output one log every N time
//long LOG_ONCE_PER_NUM = 10;
//long LOG_ONCE_PER_NUM = 20;
long LOG_ONCE_PER_NUM = 100;

/*==============================================================================
 Global Variable
==============================================================================*/

//double smallStartTime = 0.1;
double smallStartTime = 0.001;

long gCurLogNum = 0;

//only for debug
long gNoUse = 0;

/*==============================================================================
 Global Functions
==============================================================================*/

bool isMLServerABRDataLoadTaskClass(id curObj){
    bool isABRClass = [curObj isKindOfClass: MLServerABRDataLoadTaskClass];
    return isABRClass;
}

NSURL* getDataLoadTaskReqUrl(id curDataLoadTask){
    NSURL* reqUrl = NULL;
//    if(isMLServerABRDataLoadTaskClass(curDataLoadTask)) {
    SEL requestSelector = @selector(request);
    // MLServerABRDataLoadTask, HAMCronetDataLoadTask, ...
    if([curDataLoadTask respondsToSelector: requestSelector]){
        NSURLRequest* request = [curDataLoadTask request];
        reqUrl = [request URL];
    } else {
        gNoUse = 1;
    }

    return reqUrl;
}

bool isTryResetTimeoutTimer(long long startNanoseconds){
    bool isTryResetTimer = startNanoseconds == TryResetTimeoutTimer_startNanoseconds;
    return isTryResetTimer;
}

bool isTryResetTimeoutTimer(HAMTimer* curHAMTimer){
    long long curStartNanoseconds = [curHAMTimer startNanoseconds];
    return isTryResetTimeoutTimer(curStartNanoseconds);
}


bool isNeedDebug(){
    bool isNeed = (gCurLogNum % LOG_ONCE_PER_NUM) == 0;
    return isNeed;
}

//NSURL* getHamErrReqUrl(NSError* curError){
NSURL* getHamErrReqUrl(id erroOrDict){
    NSURL* curUrl = NULL;
//    if (curError) {
    if (erroOrDict) {
        NSDictionary* curUserInfo = NULL;
        if ([erroOrDict isKindOfClass: NSErrorClass]){
            curUserInfo = [erroOrDict userInfo];
        } else if ([erroOrDict isKindOfClass: NSDictionaryClass]) {
            curUserInfo = (NSDictionary*)erroOrDict;
        }

        if (curUserInfo) {
            id hamErrUrlReq = curUserInfo[@"HAMErrorURLRequest"];
            if (hamErrUrlReq != NULL) {
                BOOL isUrlReq = [hamErrUrlReq isKindOfClass: NSMutableURLRequestClass];
                if (isUrlReq) {
                    curUrl = [hamErrUrlReq URL];
                }
            }
        }
    }

    return curUrl;
}


BOOL containCtier(NSString *urlStr){
    BOOL isContainCtier = FALSE;
    if (urlStr) {
//        isContainCtier = [urlStr containsString: @"ctier="];
        // https://rr2---sn-a5meknsy.googlevideo.com/videoplayback?expire=1657110332&ei=3CrFYrS3B8qlkwbDk6m4Dg&ip=76.170.156.167&id=o-AN990KkuGRjkOtpS0zvkbcCippQdwVTosh4W04OICinJ&source=youtube&requiressl=yes&hcs=ir,&mh=v4&mm=31,26&mn=sn-a5meknsy,sn-q4flrnez&ms=au,onr&mv=m&mvi=2&pl=17&rmhost=rr3---sn-a5meknsy.googlevideo.com,&ctier=L&initcwndbps=2142500&svpuc=1&sabr=1&mt=1657088457&fvip=5&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIhAPXZb_XYMsCV_fhO5opM85fJbwUAdMIXGhBCYe3yDHi6AiBAwpSbmd53tjQZadmgq3rLdyX-Nd5447nkXP6NBPXNHQ%3D%3D&lsparams=hcs,mh,mm,mn,ms,mv,mvi,pl,rmhost,initcwndbps&lsig=AG3C_xAwRQIhAP22VWdWbIIxrvp9iCm3NMY8QQ4TS3UrFwJFxyxZH7C2AiAhnv2jgK4Nj0SwXmhuddVSWSRvX8iGYRtWZJsfBG03XQ%3D%3D&cpn=5ofB6P6ORRZhJUE8&rn=7&probe=1
        BOOL isContainCtierEqual = [urlStr containsString: @"ctier="];
        // https://r2---sn-q4flrnez.googlevideo.com/videoplayback/expire/1657108318/ei/_iLFYofvH72QsfIPy56rkA0/ip/76.170.156.167/id/o-AIPVOknUnDee3HugNutm3ybodjkv230I_U-FbZP3qt_k/source/youtube/requiressl/yes/mh/sw/mm/31,26/mn/sn-a5meknzs,sn-q4flrnez/ms/au,onr/mv/m/mvi/5/pl/17/ctier/L/initcwndbps/2056250/svpuc/1/sabr/1/mt/1657086303/fvip/2/keepalive/yes/fexp/24001373,24007246/c/IOS/sparams/expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr/sig/AOq0QJ8wRgIhALUv6hCXG_Dq8gwMkYfOxUAcH6KUBSZBcf6CikscQYp1AiEAkcLG_OxZHTcNs4tzkRl09AwqcVwYXQ374k3kyGOPZ-0=/lsparams/mh,mm,mn,ms,mv,mvi,pl,initcwndbps/lsig/AG3C_xAwRAIgH8N-m_KKOvrdVXq7KWBgjV27TWKPn48MQjYw9qWlP1ACIFk-KqOBGsauP4fBIHDVfLC6w78LrlgHmuKzWXwKgVIt/cpn/vTddLlWhp7fI_1Ze/fallback_count/1/?rn=6
        BOOL isContainCtierSlash = [urlStr containsString: @"ctier/"];
        isContainCtier = isContainCtierEqual || isContainCtierSlash;
    }
    return isContainCtier;
}

BOOL containCtierA(NSString *urlStr){
    BOOL isContainCtierA = FALSE;
    if (urlStr) {
        isContainCtierA = [urlStr containsString: @"ctier=A"];
    }
    return isContainCtierA;
}

// https://rr3---sn-vgqsknek.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=553003fe2eb8727c&initcwndbps=1680000&mt=1655903589&ack=1&cpn=jcLGzlc6c8LsaaDH&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
BOOL isYoutubeAdsVideo_oad(NSString *urlStr){
    BOOL isAdsVideo_oad = FALSE;
    if (urlStr) {
        BOOL isContainOad = [urlStr containsString: @"oad="];
        BOOL isContainInitplayback = [urlStr containsString: @".googlevideo.com/initplayback"];
        isAdsVideo_oad = isContainOad && isContainInitplayback;
    }
    return isAdsVideo_oad;
}

BOOL isYoutubeAdsVideo_oad(NSURL *curUrl){
    BOOL isAdsVideo_oad = FALSE;
    if (curUrl) {
        NSString *urlStr = [curUrl absoluteString];
        isAdsVideo_oad = isYoutubeAdsVideo_oad(urlStr);
    }
    return isAdsVideo_oad;
}


BOOL isYoutubeAdsVideo_ctierA(NSString *urlStr){
    BOOL isAdsVideo_ctierA = FALSE;
    if (urlStr) {
        //        [urlStr containsString: @"ctier=A"];
        BOOL isContainCtierA = containCtierA(urlStr);
        BOOL isContainVideoPlayback = [urlStr containsString: @".googlevideo.com/videoplayback"];
        isAdsVideo_ctierA = isContainVideoPlayback && isContainCtierA;
    }
    return isAdsVideo_ctierA;
}

BOOL isYoutubeAdsVideo_ctierA(NSURL *curUrl){
    BOOL isAdsVideo_ctierA = FALSE;
    if (curUrl) {
        NSString *urlStr = [curUrl absoluteString];
        isAdsVideo_ctierA = isYoutubeAdsVideo_ctierA(urlStr);
    }
    return isAdsVideo_ctierA;
}

BOOL isYoutubeAdsVideo_ctier(NSString *urlStr){
    BOOL isAdsVideo_ctier = FALSE;
    if (urlStr) {
//        BOOL isContainCtier = [urlStr containsString: @"ctier="];
        BOOL isContainCtier = containCtier(urlStr);
        BOOL isContainVideoPlayback = [urlStr containsString: @".googlevideo.com/videoplayback"];
        isAdsVideo_ctier = isContainVideoPlayback && isContainCtier;
    }
    return isAdsVideo_ctier;
}

BOOL isYoutubeAdsVideo_ctier(NSURL *curUrl){
    BOOL isAdsVideo_ctier = FALSE;
    if (curUrl){
        NSString *urlStr = [curUrl absoluteString];
        isAdsVideo_ctier = isYoutubeAdsVideo_ctier(urlStr);
    }
    return isAdsVideo_ctier;
}

BOOL isYoutubeAdsVideo(NSString *urlStr){
    BOOL isAdsVideo = FALSE;
    if (urlStr) {
        BOOL isContainCtier = isYoutubeAdsVideo_ctier(urlStr);
        BOOL isContainOad = isYoutubeAdsVideo_oad(urlStr);
        isAdsVideo = isContainCtier || isContainOad;
    }
    return isAdsVideo;
}

BOOL isYoutubeAdsVideo(NSURL *curUrl){
    BOOL isAdsVideo = FALSE;
    if (curUrl){
        NSString *urlStr = [curUrl absoluteString];
        isAdsVideo = isYoutubeAdsVideo(urlStr);
    }
    return isAdsVideo;
}

BOOL isYoutubeAdsVideo_adBreak(NSString *urlStr){
    BOOL isAdsVideo_adBreak = FALSE;
    if (urlStr) {
//        * iOS app
//            * https://youtubei.googleapis.com/youtubei/v1/player/ad_break?key=AIzaSyB-63vPrdThhKuerbB2N_l7Kwwcxj6yUAc
//        * web
//            * https://www.youtube.com/youtubei/v1/player/ad_break?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8&prettyPrint=false
        isAdsVideo_adBreak = [urlStr containsString: @"player/ad_break"];
    }
    return isAdsVideo_adBreak;
}

BOOL isYoutubeAdsVideo_adBreak(NSURL *curUrl){
    BOOL isAdsVideo_adBreak = FALSE;
    if (curUrl){
        NSString *urlStr = [curUrl absoluteString];
        isAdsVideo_adBreak = isYoutubeAdsVideo_adBreak(urlStr);
    }
    return isAdsVideo_adBreak;
}

BOOL isYoutubeAdsVideo_current(NSString *urlStr){
//    return isYoutubeAdsVideo_ctier(urlStr);
    return isYoutubeAdsVideo_oad(urlStr);
//    return isYoutubeAdsVideo(urlStr);
//    return isFirstAdsVideo(urlStr);
//    return isYoutubeAdsVideo_adBreak(urlStr);
}

BOOL isYoutubeAdsVideo_current(NSURL *curUrl){
    BOOL isAdsVideo_current = FALSE;
    if (curUrl){
        NSString *urlStr = [curUrl absoluteString];
        isAdsVideo_current = isYoutubeAdsVideo_current(urlStr);
    }
    return isAdsVideo_current;
}


BOOL is1SecondVideo(NSString *urlStr){
    BOOL is1SecV = [urlStr containsString: @".googlevideo.com/initplayback"];
    return is1SecV;
}

BOOL is1SecondVideo(NSURL *curUrl){
    BOOL is1SecV = FALSE;
    if (curUrl){
        NSString *urlStr = [curUrl absoluteString];
        is1SecV = is1SecondVideo(urlStr);
    }
    return is1SecV;
}

BOOL isFirstAdsVideo(NSString *urlStr){
    // https://rr3---sn-p5qlsnrl.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&rbqsm=fr&msp=1&odeak=1&odepv=1&osfc=1&id=38d955056e41c6f3&initcwndbps=1773750&mt=1660872059&pxtags=Cg4KAnR4EggyNDE5NzI3NQ&rxtags=Cg4KAnR4EggyNDE5NzI3NQ,Cg4KAnR4EggyNDE5NzI3Ng,Cg4KAnR4EggyNDE5NzI3Nw&por=1&ack=1&cpn=Ue9EzcEjFz1U69y4&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
    // https://rr2---sn-p5qs7nzr.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&rbqsm=fr&msp=1&odeak=1&odepv=1&osfc=1&id=1b7704ff149f7420&initcwndbps=1838750&mt=1660897988&pxtags=Cg4KAnR4EggyNDE5NzI3NQ&rxtags=Cg4KAnR4EggyNDE5NzI3NQ,Cg4KAnR4EggyNDE5NzI3Ng,Cg4KAnR4EggyNDE5NzI3Nw&ack=1&cpn=uljIyqBJr_YCs6WZ&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
    BOOL containInitplayBack = [urlStr containsString: @".googlevideo.com/initplayback"];
    BOOL containSn = [urlStr containsString: @"---sn-"];
    // https://redirector.googlevideo.com/initplayback?source=youtube&itag=0&pvi=0&pai=0&owc=yes&cmo=rnp%3Drr&id=0000000000002409
    BOOL isRedirector = [urlStr containsString: @"redirector.googlevideo.com/initplayback"];
    BOOL isFirstAd = containInitplayBack && containSn && (!isRedirector);
    return isFirstAd;
}

BOOL isFirstAdsVideo(NSURL *curUrl){
    BOOL isFirstAd = FALSE;
    if (curUrl){
        NSString *urlStr = [curUrl absoluteString];
        isFirstAd = isFirstAdsVideo(urlStr);
    }
    return isFirstAd;
}
