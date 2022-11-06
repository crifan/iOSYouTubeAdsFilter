#line 1 "/Users/crifan/dev/dev_root/company/deeper/youtube/XCode/YouTube_1708/block-youtube-ads/youtubeDylib/Logos/youtubeCommon.xm"






#import <UIKit/UIKit.h>
#import "youtubeCommon.h"





long long ServiceNumber_AdBreak = 46;

long long AdsVideoYTMediaErrorCode = 2000;

Class NSURLRequestClass = objc_getClass("NSURLRequest");
Class NSMutableURLRequestClass = objc_getClass("NSMutableURLRequest");
Class NSErrorClass = objc_getClass("NSError");
Class NSDictionaryClass = objc_getClass("NSDictionary");

Class HAMCronetDataLoadTaskClass = objc_getClass("HAMCronetDataLoadTask");

Class MLServerABRDataLoadTaskClass = objc_getClass("MLServerABRDataLoadTask");

long long TryResetTimeoutTimer_startNanoseconds = 15000000000;








long LOG_ONCE_PER_NUM = 100;






double smallStartTime = 0.001;

long gCurLogNum = 0;


long gNoUse = 0;





bool isMLServerABRDataLoadTaskClass(id curObj){
    bool isABRClass = [curObj isKindOfClass: MLServerABRDataLoadTaskClass];
    return isABRClass;
}

NSURL* getDataLoadTaskReqUrl(id curDataLoadTask){
    NSURL* reqUrl = NULL;

    SEL requestSelector = @selector(request);
    
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


NSURL* getHamErrReqUrl(id erroOrDict){
    NSURL* curUrl = NULL;

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

        
        BOOL isContainCtierEqual = [urlStr containsString: @"ctier="];
        
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

    return isYoutubeAdsVideo_oad(urlStr);



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
    
    
    BOOL containInitplayBack = [urlStr containsString: @".googlevideo.com/initplayback"];
    BOOL containSn = [urlStr containsString: @"---sn-"];
    
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
