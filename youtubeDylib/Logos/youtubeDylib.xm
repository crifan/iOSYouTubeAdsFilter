/*
 File: youtubeDylib.xm
 Function: Youtube hook main part
*/

// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"

#import "youtubeCommon.h"

/*==============================================================================
 Class Declaration
==============================================================================*/

@interface YTWatchController : NSObject

- (id)activeVideoID;

@end

@protocol MDXChannelMessageCommonFields <NSObject>
    @property(readonly, nonatomic) long long heartbeatInterval;
    @property(readonly, nonatomic) double heartbeatSentTime;
    @property(readonly, nonatomic) double liveIngestionTime;
    @property(readonly, nonatomic) double seekableEndTime;
    @property(readonly, nonatomic) double seekableStartTime;
    @property(readonly, nonatomic) NSString *audioTrackID;
    @property(readonly, nonatomic) NSString *listID;
    @property(readonly, nonatomic) long long adInfoVisibilityState;
    @property(readonly, nonatomic) NSString *adNextParams;
    @property(readonly, nonatomic) NSString *adVideoID;
    @property(readonly, nonatomic) long long adState;
    @property(readonly, nonatomic) _Bool isSkippable;
    @property(readonly, nonatomic) _Bool hasNext;
    @property(readonly, nonatomic) _Bool hasPrevious;
    @property(readonly, nonatomic) double duration;
    @property(readonly, nonatomic) long long volume;
    @property(readonly, nonatomic) long long currentIndex;
    @property(readonly, nonatomic) double currentTime;
    @property(readonly, nonatomic) NSString *firstVideoID;
    @property(readonly, nonatomic) NSString *videoID;
    @property(readonly, nonatomic) NSString *screenID;
@end

@interface MDXChannelMessageCommonFieldsImpl : NSObject <MDXChannelMessageCommonFields>
{
    NSDictionary *_body;
}

//    - (void).cxx_destruct;
    - (id)objectForFirstOfKeys:(id)arg1;
    @property(readonly, nonatomic) long long heartbeatInterval;
    @property(readonly, nonatomic) double heartbeatSentTime;
    @property(readonly, nonatomic) double liveIngestionTime;
    @property(readonly, nonatomic) double seekableEndTime;
    @property(readonly, nonatomic) double seekableStartTime;
    @property(readonly, nonatomic) NSString *audioTrackID;
    @property(readonly, nonatomic) NSString *listID;
    @property(readonly, nonatomic) long long adInfoVisibilityState;
    @property(readonly, nonatomic) NSString *adNextParams;
    @property(readonly, nonatomic) NSString *adVideoID;
    @property(readonly, nonatomic) long long adState;
    @property(readonly, nonatomic) _Bool isSkippable;
    @property(readonly, nonatomic) _Bool hasNext;
    @property(readonly, nonatomic) _Bool hasPrevious;
    @property(readonly, nonatomic) double duration;
    @property(readonly, nonatomic) long long volume;
    @property(readonly, nonatomic) long long currentIndex;
    @property(readonly, nonatomic) double currentTime;
    @property(readonly, nonatomic) NSString *firstVideoID;
    @property(readonly, nonatomic) NSString *videoID;
    @property(readonly, nonatomic) NSString *screenID;
    - (id)initWithBody:(id)arg1;

    // Remaining properties
    @property(readonly, copy) NSString *debugDescription;
    @property(readonly, copy) NSString *description;
    @property(readonly) unsigned long long hash;
    @property(readonly) Class superclass;

@end


@interface YTWatchBreakController : NSObject
{
//    YTMonotonicDate *_playbackStartTime;
    double _watchTime;
}

@property(nonatomic) double watchTime; // @synthesize watchTime=_watchTime;
//@property(retain, nonatomic) YTMonotonicDate *playbackStartTime; // @synthesize playbackStartTime=_playbackStartTime;

- (void)resetWatchTime;
- (void)saveWatchTime;

- (id)init;

@end

@interface YTSingleVideoTime : NSObject

+ (id)timeWithTime:(double)arg1 productionTime:(double)arg2;
+ (id)timeWithTime:(double)arg1;
+ (id)invalid;
+ (id)zero;
@property(readonly, nonatomic) double absoluteTime; // @synthesize absoluteTime=_absoluteTime;
@property(readonly, nonatomic) double productionTime; // @synthesize productionTime=_productionTime;
@property(readonly, nonatomic) double time; // @synthesize time=_time;
- (id)absoluteTimeString;
- (id)productionTimeString;
- (id)timeString;
- (id)description;
- (id)initWithTime:(double)arg1 productionTime:(double)arg2 absoluteTime:(double)arg3;
@end


//@interface HAMPlayerInternal : NSObject
//{
////    @public NSArray *_allTrackRenderers;
//    NSArray *_allTrackRenderers;
//}
//@end

/*==============================================================================
 Hook YouTube Class
==============================================================================*/

/*------------------------------------------------------------------------------
 YTAdsControlFlowPlaybackCoordinator
------------------------------------------------------------------------------*/

%hook YTAdsControlFlowPlaybackCoordinator

- (id)currentAdRequestConfig{
    id carc = %orig;
    iosLogInfo("carc=%@", carc);
    return carc;
}

- (void)didFailToPlayAdWithPlaybackError:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (void)didSkipOrCompleteAd:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (void)didStopPlayingAd{
    iosLogInfo("%s", "");
    %orig;
}

- (void)startPostrollAdBreak{
    iosLogInfo("%s", "");
    %orig;
}

- (void)startPrerollAdBreak{
    iosLogInfo("%s", "");
    %orig;
}

- (void)playbackControllerWillActivatePrebufferingAdTransitionWithBufferedMediaTime:(double)arg1{
    iosLogInfo("arg1=%f", arg1);
    %orig;
}

%end


/*------------------------------------------------------------------------------
 NSURLSessionTaskDelegate
------------------------------------------------------------------------------*/

%hook NSURLSessionTaskDelegate

//- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 didFinishCollectingMetrics:(NSURLSessionTaskMetrics *)arg3;
//- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 needNewBodyStream:(void (^)(NSInputStream *))arg3;
//- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 didReceiveChallenge:(NSURLAuthenticationChallenge *)arg3 completionHandler:(void (^)(long long, NSURLCredential *))arg4;
//- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 willPerformHTTPRedirection:(NSHTTPURLResponse *)arg3 newRequest:(NSURLRequest *)arg4 completionHandler:(void (^)(NSURLRequest *))arg5;
//- (void)URLSession:(NSURLSession *)arg1 taskIsWaitingForConnectivity:(NSURLSessionTask *)arg2;
//- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 willBeginDelayedRequest:(NSURLRequest *)arg3 completionHandler:(void (^)(long long, NSURLRequest *))arg4;

- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 didCompleteWithError:(NSError *)arg3{
    iosLogInfo("arg1=%p, task=%p, didCompleteWithError=%p", arg1, arg2, arg3);
    %orig;
}

- (void)URLSession:(NSURLSession *)arg1 task:(NSURLSessionTask *)arg2 didSendBodyData:(long long)arg3 totalBytesSent:(long long)arg4 totalBytesExpectedToSend:(long long)arg5{
    iosLogInfo("arg1=%p, task=%p, didSendBodyData=%lld, totalBytesSent=%lld, totalBytesExpectedToSend=%lld", arg1, arg2, arg3,arg4, arg5);
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTSingleVideoTime
------------------------------------------------------------------------------*/

%hook YTSingleVideoTime

//@property(readonly, nonatomic) double productionTime; // @synthesize productionTime=_productionTime;
-(double)productionTime{
    double pt = %orig;

    if (pt < smallStartTime){
        gNoUse = 1;
//        iosLogInfo("productionTime < %f, maybe reset?", pt);
    }

    return pt;
}

//@property(readonly, nonatomic) double time; // @synthesize time=_time;
-(double)time{
    double tm = %orig;

    if (tm < smallStartTime){
        gNoUse = 1;
//        iosLogInfo("time < %f, maybe reset?", tm);
    }

    return tm;
}

//+ (id)timeWithTime:(double)arg1 productionTime:(double)arg2;
+ (id)timeWithTime:(double)arg1 productionTime:(double)arg2{
    id twt = %orig;
    iosLogInfo("arg1=%f,productionTime=%f", arg1, arg2);
    return twt;
}

//- (id)initWithTime:(double)arg1 productionTime:(double)arg2 absoluteTime:(double)arg3;
- (id)initWithTime:(double)arg1 productionTime:(double)arg2 absoluteTime:(double)arg3{
    id iwt = %orig;
    gNoUse = 1;
//    iosLogInfo("arg1=%f,productionTime=%f,absoluteTime=%f -> iwt=%@", arg1, arg2, arg3, iwt);
    return iwt;
}

//+ (id)timeWithTime:(double)arg1;
+ (id)timeWithTime:(double)arg1{
    id twt = %orig;
//    iosLogInfo("arg1=%f", arg1);
    gNoUse = 1;
    return twt;
}

//+ (id)invalid;
+ (id)invalid {
    id ivt = %orig;
    iosLogInfo("ivt=%@", ivt);
    return ivt;
}

//+ (id)zero;
+ (id)zero{
    id zt = %orig;
    iosLogInfo("zt=%@", zt);
    return zt;
}

%end

/*------------------------------------------------------------------------------
 YTSingleVideoController
------------------------------------------------------------------------------*/

%hook YTSingleVideoController

//     @property(readonly, nonatomic) YTSingleVideoTime *currentVideoTime;
-(YTSingleVideoTime *)currentVideoTime{
    YTSingleVideoTime * ytsvt = %orig;
    iosLogInfo("ytsvt=%p", ytsvt);
    return ytsvt;
}

%end


/*------------------------------------------------------------------------------
 YTWatchBreakController
------------------------------------------------------------------------------*/

%hook YTWatchBreakController

- (id)init{
    id ytwbcObj = %orig;
    iosLogInfo("ytwbcObj=%@", ytwbcObj);
    return ytwbcObj;
}

////@property(retain, nonatomic) YTMonotonicDate *playbackStartTime; // @synthesize playbackStartTime=_playbackStartTime;
//-(YTMonotonicDate *)playbackStartTime{
//
//}

//@property(nonatomic) double watchTime; // @synthesize watchTime=_watchTime;
-(double)watchTime{
    double wt = %orig;
    
    if (wt < smallStartTime){
        iosLogInfo("watchTime < %f, maybe reset?", wt);
    }

    return wt;
}

//- (void)resetWatchTime;
- (void)resetWatchTime{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)saveWatchTime;
- (void)saveWatchTime{
    iosLogDebug("%s", "");

//    double curWatchTime =  [self _watchTime];
    double curWatchTime =  [self watchTime];
    iosLogInfo("curWatchTime=%f", curWatchTime);

//    id curPlaybackStartTime =  [self _playbackStartTime];
//    iosLogInfo("curPlaybackStartTime=%@", curPlaybackStartTime);

    %orig;
}

%end

/*------------------------------------------------------------------------------
 MDXChannelMessageCommonFieldsImpl
------------------------------------------------------------------------------*/

%hook MDXChannelMessageCommonFieldsImpl

//@property(readonly, nonatomic) double currentTime;
-(double)currentTime{
    double ct = %orig;
    iosLogInfo("ct=%f", ct);
    return ct;
}

//@property(readonly, nonatomic) double duration;
-(double)duration{
    double dr = %orig;
    iosLogInfo("dr=%f", dr);
    return dr;
}

//@property(readonly, nonatomic) _Bool isSkippable;
-(_Bool)isSkippable{
    double is = %orig;
    iosLogInfo("is=%f", is);
    return is;
}

//@property(readonly, nonatomic) long long adInfoVisibilityState;
-(long long)adInfoVisibilityState{
    long long aivs = %orig;
    iosLogInfo("aivs=%llu", aivs);
    return aivs;
}

//@property(readonly, nonatomic) NSString *adNextParams;
-(NSString *)adNextParams{
    NSString * anp = %orig;
    iosLogInfo("anp=%@", anp);
    return anp;
}

//@property(readonly, nonatomic) NSString *adVideoID;
-(NSString *)adVideoID{
    NSString * avi = %orig;
    iosLogInfo("avi=%@", avi);
    return avi;
}

//@property(readonly, nonatomic) long long adState;
-(long long)adState{
    long long as = %orig;
    iosLogInfo("as=%llu", as);
    return as;
}

//@property(readonly, nonatomic) double heartbeatSentTime;
-(double)heartbeatSentTime{
    double hst = %orig;
    iosLogInfo("hst=%f", hst);
    return hst;
}

//@property(readonly, nonatomic) double liveIngestionTime;
-(double)liveIngestionTime{
    double lit = %orig;
    iosLogInfo("lit=%f", lit);
    return lit;
}

//@property(readonly, nonatomic) double seekableEndTime;
-(double)seekableEndTime{
    double set = %orig;
    iosLogInfo("set=%f", set);
    return set;
}

//@property(readonly, nonatomic) double seekableStartTime;
-(double)seekableStartTime{
    double sst = %orig;
    iosLogInfo("sst=%f", sst);
    return sst;
}

%end

/*------------------------------------------------------------------------------
 MDXSession
------------------------------------------------------------------------------*/

%hook MDXSession

//- (void)onAdStateChange:(id)arg1;
- (void)onAdStateChange:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

//- (void)onAdInfoChange:(id)arg1;
- (void)onAdInfoChange:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

//- (void)adPlaying:(id)arg1;
- (void)adPlaying:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

//@property(readonly, nonatomic, getter=isPlayingAd) _Bool playingAd;
-(_Bool)playingAd{
    _Bool pa = %orig;
    iosLogInfo("pa=%s", boolToStr(pa));
    return pa;
}

//@property(readonly, nonatomic) NSString *currentVideoID; // @synthesize currentVideoID=_currentVideoID;
-(NSString*)currentVideoID{
    NSString* cvi = %orig;
    iosLogInfo("cvi=%@", cvi);
    return cvi;
}

//@property(readonly, nonatomic) double currentContentVideoProgress;
-(double)currentContentVideoProgress{
    double ccvp = %orig;
    iosLogInfo("ccvp=%f", ccvp);
    return ccvp;
}

//@property(readonly, nonatomic) double currentVideoProgress;
-(double)currentVideoProgress{
    double cvp = %orig;
    iosLogInfo("cvp=%f", cvp);
    return cvp;
}

//@property(readonly, nonatomic) double videoLiveIngestionTime;
-(double)videoLiveIngestionTime{
    double vlit = %orig;
    iosLogInfo("vlit=%f", vlit);
    return vlit;
}

//@property(readonly, nonatomic) double videoSeekableEnd;
-(double)videoSeekableEnd{
    double vse = %orig;
    iosLogInfo("vse=%f", vse);
    return vse;
}

//@property(readonly, nonatomic) double videoSeekableStart;
-(double)videoSeekableStart{
    double vss = %orig;
    iosLogInfo("vss=%f", vss);
    return vss;
}

//- (double)timeSinceLastReceivedContentVideoTime;
-(double)timeSinceLastReceivedContentVideoTime{
    double tslrcvt = %orig;
    iosLogInfo("tslrcvt=%f", tslrcvt);
    return tslrcvt;
}

//- (double)timeSinceLastReceivedVideoTime;
-(double)timeSinceLastReceivedVideoTime{
    double tslrvt = %orig;
    iosLogInfo("tslrvt=%f", tslrvt);
    return tslrvt;
}

//- (void)skipAd;
- (void)skipAd{
    iosLogInfo("%s", "");
    %orig;
}

%end


/*------------------------------------------------------------------------------
 MDXChannelMessage
------------------------------------------------------------------------------*/

%hook MDXChannelMessage

//+ (id)messageByParsingJSONString:(id)arg1 error:(id *)arg2;
+ (id)messageByParsingJSONString:(id)arg1 error:(id *)arg2{
    id mbpjs = %orig;
    iosLogInfo("arg1=%@,arg2=%p -> mbpjs=%@", arg1, arg2, mbpjs);
    return mbpjs;
}

//+ (id)messageByParsingJSONData:(id)arg1 error:(id *)arg2;
+ (id)messageByParsingJSONData:(id)arg1 error:(id *)arg2{
    id mbpjd = %orig;
    iosLogInfo("arg1=%@,arg2=%p -> mbpjd=%@", arg1, arg2, mbpjd);
    return mbpjd;
}

//+ (id)messageByDecodingObjectArray:(id)arg1 error:(id *)arg2;
+ (id)messageByDecodingObjectArray:(id)arg1 error:(id *)arg2{
    id mbdoa = %orig;
    iosLogInfo("arg1=%@,arg2=%p -> mbdoa=%@", arg1, arg2, mbdoa);
    return mbdoa;
}

//+ (id)messageWithName:(id)arg1 body:(id)arg2;
+ (id)messageWithName:(id)arg1 body:(id)arg2{
    id mwn = %orig;
    iosLogInfo("arg1=%@,arg2=%@ -> mwn=%@", arg1, arg2, mwn);
    return mwn;
}

//+ (id)messageWithName:(id)arg1;
+ (id)messageWithName:(id)arg1{
    id mwn = %orig;
    iosLogInfo("arg1=%@-> mwn=%@", arg1, mwn);
    return mwn;
}

//- (id)initWithName:(id)arg1 body:(id)arg2;
- (id)initWithName:(id)arg1 body:(id)arg2{
    id iwn = %orig;
    iosLogInfo("arg1=%@,arg2=%@-> iwn=%@", arg1, arg2, iwn);
    return iwn;
}

//@property(readonly, nonatomic) NSDictionary *body; // @synthesize body=_body;
-(NSDictionary *)body{
    NSDictionary * bd = %orig;
    iosLogInfo("bd=%@", bd);
    return bd;
}

//@property(readonly, nonatomic) NSString *name; // @synthesize name=_name;
-(NSString *)name{
    NSString * nm = %orig;
    iosLogInfo("nm=%@", nm);
    return nm;
}

//     MDXChannelMessageCommonFieldsImpl *_commonFields;
//@property(readonly, nonatomic) id <MDXChannelMessageCommonFields> commonFields;
//-(id <MDXChannelMessageCommonFields>)commonFields{
-(MDXChannelMessageCommonFieldsImpl *)commonFields{
//    id <MDXChannelMessageCommonFields> cfList = %orig;
    MDXChannelMessageCommonFieldsImpl* cfList = %orig;
    iosLogInfo("cfList=%@", cfList);
    return cfList;
}

%end


/*------------------------------------------------------------------------------
 MDXPlaybackController
------------------------------------------------------------------------------*/

%hook MDXPlaybackController

//- (void)didShowSkipAd;
-(void)didShowSkipAd{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)didPressSkipAd;
- (void)didPressSkipAd{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)didPressSkipAdWithTouchPoint:(struct CGPoint)arg1;
- (void)didPressSkipAdWithTouchPoint:(struct CGPoint)arg1{
    iosLogInfo("arg1.x=%f, arg1.y=%f", arg1.x, arg1.y);
    %orig;
}

//- (void)didPressAdThumbnail;
- (void)didPressAdThumbnail{
    iosLogInfo("%s", "");
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTWatchController
------------------------------------------------------------------------------*/

%hook YTWatchController

- (void)playbackControllerDidPlay {
//    NSLog(@"playbackControllerDidPlay");
    iosLogInfo("%s", "");
    %orig;
}

- (double)contentVideoTotalTime {
    double cvtt = %orig;
    iosLogInfo("cvtt=%f", cvtt);
    return cvtt;
}

- (double)contentVideoCurrentTime{
    double cvct = %orig;
    iosLogInfo("cvct=%f", cvct);
    return cvct;
}

- (id)activeVideoCurrentTime{
    id avct = %orig;
    iosLogInfo("avct=%@", avct);
    return avct;
}

- (double)activeVideoMediaTime{
    double avmt = %orig;
    iosLogInfo("avmt=%f", avmt);
    return avmt;
}

- (id)activeVideoID{
    id avid = %orig;
    iosLogInfo("avid=%@", avid);
    return avid;
}

- (_Bool)isPlaybackFinished{
    _Bool ipf = %orig;
    iosLogInfo("ipf=%s", boolToStr(ipf));
    return ipf;
}

//- (void)playbackControllerDidFinishPlayingAd;
- (void)playbackControllerDidFinishPlayingAd{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)playbackControllerPlayerStateDidChange;
- (void)playbackControllerPlayerStateDidChange{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)playbackControllerDidLoadPlayerWithPlaybackData:(id)arg1;
- (void)playbackControllerDidLoadPlayerWithPlaybackData:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

//- (void)playbackControllerDidPause;
- (void)playbackControllerDidPause{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)playbackControllerDidPressPlay;
- (void)playbackControllerDidPressPlay{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)playbackControllerStateDidChange;
- (void)playbackControllerStateDidChange{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)playbackControllerDidFinishPlayback;
- (void)playbackControllerDidFinishPlayback{
    iosLogInfo("%s", "");
    %orig;
}

//- (void)playbackControllerCurrentVideoMediaTimeDidChange:(double)arg1;
- (void)playbackControllerCurrentVideoMediaTimeDidChange:(double)arg1{
//    iosLogInfo("arg1=%f", arg1);
    gNoUse = 1;
    
    if (arg1 < smallStartTime){
//        iosLogInfo("into smallStartTime: arg1=%f", arg1);
        gNoUse = 1;
    }

    %orig;
}

//@property(readonly, nonatomic) _Bool videoEnded; // @synthesize videoEnded=_videoEnded;
- (_Bool)videoEnded{
    _Bool ve = %orig;
    iosLogInfo("ve=%d", ve);
    return ve;
}

- (_Bool)isPlaybackVideoPlayingAd{
    _Bool ipvpd = %orig;
    iosLogInfo("ipvpd=%d", ipvpd);
    if (ipvpd) {
        iosLogInfo("Playing Ads, activeVideoID=%@", [self activeVideoID]);
    }

    return ipvpd;
}

- (_Bool)isPlaybackVideoPlaying{
    _Bool ipvp = %orig;
    iosLogInfo("ipvp=%d", ipvp);
    if (!ipvp) {
        iosLogInfo("NOT Playing video, activeVideoID=%@", [self activeVideoID]);
    }

    return ipvp;
}

%end

/*------------------------------------------------------------------------------
 YTWatchMiniBarViewController
------------------------------------------------------------------------------*/

%hook YTWatchMiniBarViewController

- (void)playbackControllerCurrentVideoMediaTimeDidChange:(double)arg1 {
//    iosLogDebug("arg1=%f", arg1);
    gNoUse = 1;
    
    if (arg1 < smallStartTime){
//        iosLogInfo("into smallStartTime: arg1=%f", arg1);
        gNoUse = 1;
    }

    %orig;
}

// @property(nonatomic) _Bool adPlaying; // @synthesize adPlaying=_adPlaying;
- (_Bool)adPlaying {
    _Bool ap = %orig;
    iosLogInfo("ap=%s", boolToStr(ap));
    return ap;
}

// @property(nonatomic, getter=isActivated) _Bool activated; // @synthesize activated=_activated;
- (_Bool)activated {
    _Bool at = %orig;
    iosLogInfo("at=%s", boolToStr(at));
    return at;
}

// - (void)updateMiniBarSkipAdStatus;
- (void)updateMiniBarSkipAdStatus{
    iosLogInfo("%s", "");
    %orig;
}

// - (_Bool)isSkipAdEnabled;
- (_Bool)isSkipAdEnabled {
    _Bool isae = %orig;
    iosLogInfo("isae=%s", boolToStr(isae));
    if( isae ){
        iosLogInfo("%s", "isSkipAdEnabled is True");
    }
    return isae;
}

// - (void)playbackControllerDidLoadPlayerWithPlaybackData:(id)arg1;
- (void)playbackControllerDidLoadPlayerWithPlaybackData:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

// - (void)playbackControllerStateDidChange;
- (void)playbackControllerStateDidChange{
    iosLogInfo("%s", "");
    %orig;
}

// - (void)playbackControllerWillFailWithError:(id)arg1;
- (void)playbackControllerWillFailWithError:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

// - (void)playbackControllerPlayerStateDidChange;
- (void)playbackControllerPlayerStateDidChange{
    iosLogInfo("%s", "");
    %orig;
}

// - (void)miniBarControlsViewDidTapPause:(id)arg1;
- (void)miniBarControlsViewDidTapPause:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

// - (void)viewDidLoad;
- (void)viewDidLoad{
    iosLogInfo("%s", "");
    %orig;
}

// - (void)loadView;
- (void)loadView{
    iosLogInfo("%s", "");
    %orig;
}

// - (void)startPlayback;
- (void)startPlayback{
    iosLogInfo("%s", "");
    %orig;
}

// - (void)setVideoDetails:(id)arg1;
- (void)setVideoDetails:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

// - (void)updateVideoDetails;
- (void)updateVideoDetails{
    iosLogInfo("%s", "");
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTPlayerBarController
------------------------------------------------------------------------------*/

%hook YTPlayerBarController

// double _maximumSeekableTime;
-(double)_maximumSeekableTime{
    double mst = %orig;
    iosLogInfo("mst=%f", mst);
    return mst;
}

//double _totalTime;
-(double)_totalTime{
    double tt = %orig;
    iosLogInfo("tt=%f", tt);
    return tt;
}

//double _minimumSeekableTime;
-(double)_minimumSeekableTime{
    double mst = %orig;
    iosLogInfo("mst=%f", mst);
    return mst;
}

//double _currentMediaTime;
-(double)_currentMediaTime{
    double cmt = %orig;
    iosLogInfo("cmt=%f", cmt);
    return cmt;
}

//- (id)titleForTime:(double)arg1;
- (id)titleForTime:(double)arg1{
    id origTFT = %orig;
    iosLogInfo("arg1=%f -> origTFT=%@", arg1, origTFT);
    return origTFT;
}

//- (void)setCurrentTimeTitleString:(id)arg1;
- (void)setCurrentTimeTitleString:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

//- (void)setMinimumSeekableTime:(double)arg1 maximumSeekableTime:(double)arg2;
- (void)setMinimumSeekableTime:(double)arg1 maximumSeekableTime:(double)arg2{
    iosLogDebug("arg1=%f,arg2=%f", arg1, arg2);
    // 2022-03-29 23:21:40.871045+0800 YouTube[27539:2904183] hook_ youtubeDylib.xm YTPlayerBarController$setMinimumSeekableTime$maximumSeekableTime$: arg1=0.000000,arg2=2970.088000
    %orig;
}

//- (void)setDownloadedTime:(double)arg1;
- (void)setDownloadedTime:(double)arg1{
    iosLogDebug("arg1=%f", arg1);
    // 2022-03-29 23:21:41.348584+0800 YouTube[27539:2904183] hook_ youtubeDylib.xm YTPlayerBarController$setDownloadedTime$: arg1=0.240000
    // 2022-03-29 23:21:42.388640+0800 YouTube[27539:2904183] hook_ youtubeDylib.xm YTPlayerBarController$setDownloadedTime$: arg1=7.760000
    // 2022-03-29 23:21:52.357416+0800 YouTube[27539:2904183] hook_ youtubeDylib.xm YTPlayerBarController$setDownloadedTime$: arg1=51.780499
    // 2022-03-29 23:21:52.443500+0800 YouTube[27539:2904183] hook_ youtubeDylib.xm YTPlayerBarController$setDownloadedTime$: arg1=59.907483
    %orig;
}

//- (void)setMediaTime:(double)arg1;
- (void)setMediaTime:(double)arg1{
    iosLogInfo("arg1=%f", arg1);
    
    if (arg1 < smallStartTime){
        iosLogInfo("setMediaTime < %f, maybe reset?", arg1);
    }

    %orig;
}

//- (void)setAdMarkers:(id)arg1;
- (void)setAdMarkers:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTWatchLayerViewController
------------------------------------------------------------------------------*/

%hook YTWatchLayerViewController

-(double) _lastWatchMediaTime {
    double lwmt = %orig;
    iosLogInfo("lwmt=%f", lwmt);
    return lwmt;
}

%end

/*------------------------------------------------------------------------------
 YTWatchFlowController
------------------------------------------------------------------------------*/

%hook YTWatchFlowController

- (void)contentVideoMediaTimeDidChangeToTime:(double)arg1 totalMediaTime:(double)arg2{
//    iosLogInfo("arg1=%f,arg2=%f", arg1, arg2);
    gNoUse = 1;
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTPlaybackControllerEventsDelegate-Protocol
------------------------------------------------------------------------------*/

//%hook YTPlaybackControllerEventsDelegate-Protocol
%hook YTPlaybackControllerEventsDelegate

// - (void)playbackControllerDidFinishPlayingAd;
- (void)playbackControllerDidFinishPlayingAd{
    iosLogInfo("%s", "");
    %orig;
}

// - (void)playbackControllerDidPressPause;
- (void)playbackControllerDidPressPause{
    iosLogInfo("%s", "");
    %orig;
}

%end

/*------------------------------------------------------------------------------
 YTPlaybackControllerUIDelegate-Protocol
------------------------------------------------------------------------------*/

//%hook YTPlaybackControllerUIDelegate-Protocol
%hook YTPlaybackControllerUIDelegate

- (void)adDidComplete:(long long)arg1{
//    iosLogInfo("arg1=%ll", arg1);
//    NSLog(@"YTPlaybackControllerUIDelegate adDidComplete: arg1=%llu", arg1);
    %orig;
}

%end

/*------------------------------------------------------------------------------
 MDXVideoProgressController
------------------------------------------------------------------------------*/

%hook MDXVideoProgressController

- (void)startVideoProgressTimer {
    iosLogInfo("%s", "");
    %orig;
}

- (void)mediaTimesDidChangeForMDXSession:(id)arg1{
    iosLogInfo("arg1=%@", arg1);
    %orig;
}

- (double)currentVideoMediaTime{
    double origCurrentVideoMediaTime = %orig;
    iosLogInfo("origCurrentVideoMediaTime=%f", origCurrentVideoMediaTime);
    return origCurrentVideoMediaTime;
}

%end

/*------------------------------------------------------------------------------
 MDXSingleVideoController
------------------------------------------------------------------------------*/

%hook MDXSingleVideoController

- (void)startAdOverlay{
    iosLogInfo("%s", "");
    %orig;
}

-(BOOL)isContentVideoLoadedOnScreen{
    double origIsContentVideoLoadedOnScreen = %orig;
    iosLogInfo("origIsContentVideoLoadedOnScreen=%f", origIsContentVideoLoadedOnScreen);
    return origIsContentVideoLoadedOnScreen;
}

%end

/*==============================================================================
 Ctor
==============================================================================*/

%ctor
{
    @autoreleasepool
    {
        iosLogInfo("%s", "youtubeDylib ctor");
        
        gCurLogNum = 0;
    }
}
