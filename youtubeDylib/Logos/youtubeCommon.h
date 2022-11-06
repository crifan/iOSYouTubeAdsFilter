/*
 File: youtubeCommon.h
 Function: Youtube hook common part header
*/

#ifndef youtubeCommon_h
#define youtubeCommon_h

#import <UIKit/UIKit.h>
#import <objc/objc-runtime.h>
#import "CrifanLibiOS.h"
//#import "libs/iOS/CrifanLibiOS.h"

/*==============================================================================
 Global Constant
==============================================================================*/
extern long long ServiceNumber_AdBreak;

extern long long AdsVideoYTMediaErrorCode;

extern Class NSMutableURLRequestClass;
extern Class NSErrorClass;
extern Class NSDictionaryClass;

extern Class HAMCronetDataLoadTaskClass;

/*==============================================================================
 Global Config
==============================================================================*/

// output one log every N time
extern long LOG_ONCE_PER_NUM;

/*==============================================================================
 Global Variable
==============================================================================*/

extern double smallStartTime;

extern long gCurLogNum;

extern long gNoUse;

/*==============================================================================
 Class Declaration
==============================================================================*/


@interface YTIClientInfo : NSObject
+ (id)descriptor;
// Remaining properties
@property(copy, nonatomic) NSString *hl; // @dynamic hl;
@property(copy, nonatomic) NSString *gl; // @dynamic gl;
@property(copy, nonatomic) NSString *deviceMake; // @dynamic deviceMake;
@end

@interface YTIInnerTubeContext : NSObject
+ (id)descriptor;
// Remaining properties
@property(retain, nonatomic) YTIClientInfo *remoteClient; // @dynamic remoteClient;
@end

@interface HAMRange : NSObject
@property(readonly, nonatomic) long long length; // @synthesize length=_length;
@property(readonly, nonatomic) long long location; // @synthesize location=_location;
@end

@interface HAMRangedURL : NSObject
@property(readonly, nonatomic) HAMRange *range; // @synthesize range=_range;
@property(readonly, nonatomic) NSURL *URL; // @synthesize URL=_URL;
@end


@interface HAMDataLoadRequest : NSObject
@property(readonly, nonatomic) _Bool idempotent; // @synthesize idempotent=_idempotent;
@property(readonly, nonatomic) NSData *HTTPBody; // @synthesize HTTPBody=_HTTPBody;
@property(readonly, nonatomic) NSString *HTTPContentType; // @synthesize HTTPContentType=_HTTPContentType;
@property(readonly, nonatomic) NSString *HTTPMethod; // @synthesize HTTPMethod=_HTTPMethod;
@property(readonly, nonatomic) double timeoutInterval; // @synthesize timeoutInterval=_timeoutInterval;
@property(readonly, nonatomic) HAMRangedURL *rangedURL; // @synthesize rangedURL=_rangedURL;
@end

@interface MLOnesieUMPFetcherTask : NSObject
{
    NSURLRequest *_playerRequest;
}
@end

@interface HAMChunk : NSObject
@end


@interface MLServerABRLoader : NSObject
@end

@interface MLServerABRDataLoader : NSObject
{
    NSObject<OS_dispatch_queue> *_queue;
}
@end

@interface MLServerABRDataLoadTask : NSObject
{
    MLServerABRDataLoader *_dataLoader;
//    long long _requestNumber;
//    id <HAMDataLoadTask> _task;
//    id <HAMDataLoadTaskDelegate> _delegate;
//    id <HAMNetworkRequestObserver> _networkRequestObserver;
}
@end

@interface HAMTimer : NSObject
    @property(readonly, nonatomic) long long startNanoseconds; // @synthesize startNanoseconds=_startNanoseconds;
@end

@interface HAMCronetDataLoadTask : NSObject
    @property(readonly, nonatomic) double timeoutInterval; // @synthesize timeoutInterval=_timeoutInterval;
    @property(readonly, nonatomic) NSDictionary *userInfo; // @synthesize userInfo=_userInfo;
    @property(readonly, nonatomic) double startTime; // @synthesize startTime=_startTime;
    @property(readonly, nonatomic) NSURLRequest *request; // @synthesize request=_request;
    @property(readonly, nonatomic) long long countOfBytesReceived;
    - (void)cancel;
    - (void)startWithDelegate:(id)arg1 delegateQueue:(id)arg2;
    @property(readonly, nonatomic) NSURLResponse *response;
    @property(readonly, nonatomic) double currentAbsoluteTime;
    - (id)initWithRequest:(id)arg1 timeoutInterval:(double)arg2 idempotent:(_Bool)arg3 userInfo:(id)arg4 engine:(struct Cronet_Engine *)arg5;
@end

@interface MLPlayerItemEventCenter : NSObject
{
//    id <MLPlayerItem> _playerItem;
    NSHashTable *_formatObservers;
    NSHashTable *_QOEErrorObservers;
    NSHashTable *_networkRequestResponseObservers;
    NSHashTable *_networkRequestDataTransferObservers;
    NSHashTable *_networkRequestCompletionObservers;
    NSHashTable *_offlineStatusObservers;
    NSHashTable *_hostFallbackObservers;
    NSHashTable *_crossVideoTransitionObservers;
    NSHashTable *_videoFormatConstraintObservers;
    NSHashTable *_QOEClientTemporaryValueObservers;
    NSHashTable *_cacheLoadObservers;
}
@end

//@interface YTIOnesieHotConfig : GPBMessage
@interface YTIOnesieHotConfig : NSObject
@property(copy, nonatomic) NSString *baseURL; // @dynamic baseURL;
@end

// header_ModuleFramework/CDStructures.h
typedef struct {
    double time;
    double productionTime;
    double absoluteTime;
} CDStruct_d60ef703;

typedef struct {
    long long value;
    int timescale;
    unsigned int flags;
    long long epoch;
} CDStruct_1b6d18a9;

typedef struct {
    CDStruct_1b6d18a9 time;
    double productionTime;
    double absoluteTime;
} CDStruct_576a8307;

typedef struct {
    unsigned long long playerLoopTimerInterval;
    unsigned long long playerLoopTimerLeeway;
    double liveAVSyncTolerance;
    double liveReadaheadSeconds;
    _Bool stopTrackRendererBeforeDisabling;
} CDStruct_cd0888f5;

typedef struct {
    CDStruct_1b6d18a9 start;
    CDStruct_1b6d18a9 duration;
} CDStruct_e83c9415;

/*==============================================================================
 Global Functions
==============================================================================*/

bool isMLServerABRDataLoadTaskClass(id curObj);
NSURL* getDataLoadTaskReqUrl(id curDataLoadTask);

bool isTryResetTimeoutTimer(long long startNanoseconds);
bool isTryResetTimeoutTimer(HAMTimer* curHAMTimer);

bool isNeedDebug();

//NSURL* getHamErrReqUrl(NSError* curError);
NSURL* getHamErrReqUrl(id erroOrDict);

BOOL containCtier(NSString *urlStr);
BOOL containCtierA(NSString *urlStr);

BOOL isYoutubeAdsVideo_ctierA(NSString *curUrlStr);
BOOL isYoutubeAdsVideo_ctierA(NSURL *curUrl);

BOOL isYoutubeAdsVideo_ctier(NSString *curUrlStr);
BOOL isYoutubeAdsVideo_ctier(NSURL *curUrl);

BOOL isYoutubeAdsVideo_oad(NSURL *curUrl);
BOOL isYoutubeAdsVideo_oad(NSString *curUrlStr);

BOOL isYoutubeAdsVideo(NSString *curUrlStr);
BOOL isYoutubeAdsVideo(NSURL *curUrl);

BOOL isYoutubeAdsVideo_adBreak(NSString *urlStr);
BOOL isYoutubeAdsVideo_adBreak(NSURL *curUrl);

BOOL isYoutubeAdsVideo_current(NSString *curUrlStr);
BOOL isYoutubeAdsVideo_current(NSURL *curUrl);

BOOL is1SecondVideo(NSString *urlStr);
BOOL is1SecondVideo(NSURL *curUrl);

BOOL isFirstAdsVideo(NSString *urlStr);
BOOL isFirstAdsVideo(NSURL *curUrl);

#endif /* youtubeCommon_h */
