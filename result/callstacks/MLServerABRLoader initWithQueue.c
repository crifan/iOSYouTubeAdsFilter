// Call stack functions for MLServerABRLoader initWithQueue

//----- (0000000001947DC8) ----------------------------------------------------
void __cdecl -[GPCPromise resolveChild:](GPCPromise *self, SEL a2, id a3)
{
  GPCPromise *v3; // x20
  __int64 v4; // x19

  v3 = self;
  v4 = objc_retain();
  if ( v3->_blockQueue )
  {
    objc_retain();
    dispatch_async();
    objc_release();
  }
  else
  {
    -[GPCPromise processResult:](v3, "processResult:", v4);
  }
  objc_release();
}

//----- (0000000000F520B4) ----------------------------------------------------
void __cdecl -[YTVideoResolver registerCompletionBlocksOnPlaybackDataLoader](YTVideoResolver *self, SEL a2)
{
  YTVideoResolver *v2; // x19
  void *v3; // x20
  void **v4; // [xsp+8h] [xbp-88h]
  __int64 v5; // [xsp+10h] [xbp-80h]
  __int64 (*v6)(); // [xsp+18h] [xbp-78h]
  void *v7; // [xsp+20h] [xbp-70h]
  void **v8; // [xsp+30h] [xbp-60h]
  __int64 v9; // [xsp+38h] [xbp-58h]
  __int64 (*v10)(); // [xsp+40h] [xbp-50h]
  void *v11; // [xsp+48h] [xbp-48h]

  v2 = self;
  objc_initWeak();
  -[YTPlaybackDataLoader playbackDataPromise](v2->_playbackDataLoader, "playbackDataPromise");
  v3 = (void *)objc_retainAutoreleasedReturnValue();
  objc_retain();
  v8 = _NSConcreteStackBlock;
  v9 = 3254779904LL;
  v10 = sub_F5220C;
  v11 = &unk_4EDB1B0;
  objc_copyWeak();
  v4 = _NSConcreteStackBlock;
  v5 = 3254779904LL;
  v6 = sub_F5226C;
  v7 = &unk_4EB43C0;
  objc_copyWeak();
  objc_msgSend(v3, "withQueue:onSuccess:onFailure:", &_dispatch_main_q, &v8, &v4);
  objc_unsafeClaimAutoreleasedReturnValue();
  objc_release();
  objc_release();
  objc_destroyWeak();
  objc_destroyWeak();
  objc_destroyWeak();
}

//----- (0000000000F523B8) ----------------------------------------------------
void __cdecl -[YTVideoResolver didLoadVideoWithPlaybackData:](YTVideoResolver *self, SEL a2, id a3)
{
  YTVideoResolver *v3; // x20
  __int64 v4; // x21
  YTPlaybackData *v5; // x19

  v3 = self;
  v4 = objc_retain();
  objc_storeStrong();
  v5 = v3->_originalPlaybackData;
  v3->_originalPlaybackData = (YTPlaybackData *)v4;
  objc_retain();
  objc_release();
  -[YTVideoResolver sendTimingEventForDidReceivePlayerResponse](v3, "sendTimingEventForDidReceivePlayerResponse");
  -[YTVideoResolver resolvePlayability](v3, "resolvePlayability");
  objc_release();
}

//----- (0000000000F52348) ----------------------------------------------------
void __cdecl -[YTVideoResolver changeToState:](YTVideoResolver *self, SEL a2, signed __int64 a3)
{
  signed __int64 v3; // x20
  signed __int64 v4; // x19
  YTVideoResolver *v5; // x21
  void *v6; // x0

  v3 = self->_state;
  if ( v3 != a3 )
  {
    v4 = a3;
    v5 = self;
    self->_state = a3;
    v6 = (void *)objc_loadWeakRetained();
    objc_msgSend(v6, "videoResolver:didChangeFromState:toState:", v5, v3, v4);
    objc_release();
  }
}

//----- (0000000000EE424C) ----------------------------------------------------
void __cdecl -[YTLocalPlaybackController videoResolver:didChangeFromState:toState:](YTLocalPlaybackController *self, SEL a2, id a3, signed __int64 a4, signed __int64 a5)
{
  signed __int64 v5; // x21
  YTLocalPlaybackController *v6; // x20
  YTVideoResolver *v7; // x19
  void *v8; // x21
  __int64 v9; // x0
  __int64 v10; // x22
  YTVideoResolver *v11; // x0
  __int64 v12; // x0
  void *v13; // x21
  __int64 v14; // x0

  v5 = a5;
  v6 = self;
  v7 = (YTVideoResolver *)objc_retain();
  if ( v6->_earlyFetchVideoResolver != v7 && v6->_activeVideoResolver == v7 )
  {
    switch ( v5 )
    {
      case 4LL:
        -[YTVideoResolver QOEController](v7, "QOEController");
        v8 = (void *)objc_retainAutoreleasedReturnValue();
        if ( v8 )
        {
          -[YTVideoResolver error](v7, "error");
          v9 = objc_retainAutoreleasedReturnValue();
          +[MLQOEError QOEErrorWithCode:underlyingError:](
            &OBJC_CLASS___MLQOEError,
            "QOEErrorWithCode:underlyingError:",
            CFSTR("metadata.net.retryexhausted"),
            v9);
          v10 = objc_retainAutoreleasedReturnValue();
          objc_release();
          objc_msgSend(v8, "recordQOEError:fatal:", v10, 1LL);
          objc_msgSend(v8, "stop");
          objc_release();
        }
        objc_release();
        v11 = v6->_activeVideoResolver;
        goto LABEL_7;
      case 5LL:
LABEL_7:
        v6->_activeVideoResolver = 0LL;
        objc_release();
        -[YTVideoResolver error](v7, "error");
        v12 = objc_retainAutoreleasedReturnValue();
        -[YTLocalPlaybackController failWithError:](v6, "failWithError:", v12);
        goto LABEL_9;
      case 6LL:
        v6->_userIntentToPlayTime = 0.0;
        -[YTLocalPlaybackController setContentPlaybackDataForOfflinePlayerResponse](
          v6,
          "setContentPlaybackDataForOfflinePlayerResponse");
        v13 = (void *)objc_loadWeakRetained();
        -[YTVideoResolver userActionRequest](v6->_activeVideoResolver, "userActionRequest");
        v14 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(
          v13,
          "playbackController:requiresUserActionForPlayabilityResolutionWithUserActionRequest:",
          v6,
          v14);
        objc_release();
LABEL_9:
        objc_release();
        break;
      case 7LL:
        if ( v6->_state == 1 )
        {
          v6->_activeVideoResolver = 0LL;
          objc_release();
          -[YTLocalPlaybackController startPlaybackWithVideoResolver:internallyPrebufferedVideoController:](
            v6,
            "startPlaybackWithVideoResolver:internallyPrebufferedVideoController:",
            v7,
            0LL);
        }
        break;
      default:
        break;
    }
  }
  objc_release();
}

//----- (0000000000EE86B4) ----------------------------------------------------
void __cdecl -[YTLocalPlaybackController startPlaybackWithVideoResolver:internallyPrebufferedVideoController:](YTLocalPlaybackController *self, SEL a2, id a3, id a4)
{
  YTLocalPlaybackController *v4; // x21
  void *v5; // x19
  __int64 v6; // x20
  __int64 v7; // x0
  YTPlaybackData *v8; // x8
  char **v9; // x19
  __int64 v10; // x28
  void *v11; // x25
  __int64 v12; // x0
  void *v13; // x20
  __int64 v14; // x26
  void *v15; // x0
  void *v16; // x0
  __int64 v17; // x0
  __int64 v18; // x0
  YTPlaybackData *v19; // x8
  void *v20; // x0
  void *v21; // x0
  void *v22; // x0
  __int64 v23; // x24
  void *v24; // x0
  const char *v25; // x23
  void *v26; // x0
  void *v27; // x0
  int v28; // w27
  __int64 v29; // x0
  YTSingleVideoTime *v30; // x8
  void *v31; // x20
  void *v32; // x0
  void *v33; // x0
  YTSingleVideoSequencer *v34; // x0
  YTSingleVideoSequencer *v35; // x8
  YTSingleVideoSequencer *v36; // x20
  void *v37; // x0
  __int64 v38; // x0
  YTAdsPlaybackCoordinator *v39; // x8
  YTAdsPlaybackCoordinator *v40; // x20
  __int64 v41; // x22
  __int64 v42; // x0
  void *v43; // x0
  void *v44; // x0
  int v45; // w25
  __int64 v46; // x0
  void *v47; // x0
  int v48; // w22
  void *v49; // x0
  YTPlayerTransition *v50; // x20
  void *v51; // x0
  void *v52; // x0
  __int64 v53; // x0
  char v54; // w26
  void *v55; // x2
  void *v56; // x0
  void *v57; // x0
  void *v58; // x0
  void *v59; // x0
  void *v60; // x0
  int v61; // w28
  __int64 v62; // x26
  void *v63; // x0
  void *v64; // x0
  void *v65; // x0
  void *v66; // x0
  void *v67; // x0
  int v68; // w24
  __int64 v69; // x20
  const char *v70; // x1
  void *v71; // x0
  __int64 v72; // x2
  const char *v73; // x1
  __int64 v74; // [xsp+0h] [xbp-60h]
  void *v75; // [xsp+8h] [xbp-58h]

  v4 = self;
  v5 = (void *)objc_retain();
  v6 = objc_retain();
  v75 = v5;
  objc_msgSend(v5, "playbackData");
  v7 = objc_retainAutoreleasedReturnValue();
  v8 = v4->_contentPlaybackData;
  v4->_contentPlaybackData = (YTPlaybackData *)v7;
  objc_release();
  v9 = &selRef_noopTapEndpointsArray_Count;
  v74 = v6;
  if ( v6 )
  {
    v10 = objc_retain();
  }
  else
  {
    InjectYTPlayerPrebufferController();
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    -[YTPlaybackData playerResponse](v4->_contentPlaybackData, "playerResponse", 0LL);
    v12 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v11, "acquirePrebufferedVideoControllerForPlayerResponse:", v12);
    v13 = (void *)objc_retainAutoreleasedReturnValue();
    objc_release();
    objc_release();
    if ( v13 )
    {
      -[YTPlaybackData playerResponse](v4->_contentPlaybackData, "playerResponse");
      v14 = objc_retainAutoreleasedReturnValue();
      objc_msgSend(v13, "singleVideo");
      v15 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v15, "playbackData");
      v16 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v16, "CPN");
      v17 = objc_retainAutoreleasedReturnValue();
      +[YTPlaybackData playbackDataWithPlayerResponse:CPN:](
        &OBJC_CLASS___YTPlaybackData,
        "playbackDataWithPlayerResponse:CPN:",
        v14,
        v17);
      v18 = objc_retainAutoreleasedReturnValue();
      v19 = v4->_contentPlaybackData;
      v4->_contentPlaybackData = (YTPlaybackData *)v18;
      objc_release();
      objc_release();
      objc_release();
      v10 = (__int64)v13;
      v9 = &selRef_noopTapEndpointsArray_Count;
      objc_release();
      objc_release();
      objc_msgSend(v13, "singleVideo");
      v20 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v20, "playbackData");
      v21 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v21, "playerResponse");
      v22 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v22, "QOEController");
      v23 = objc_retainAutoreleasedReturnValue();
      -[YTPlaybackData playerResponse](v4->_contentPlaybackData, "playerResponse");
      v24 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v24, "setQOEController:", v23);
      objc_release();
      objc_release();
      objc_release();
      objc_release();
      objc_release();
    }
    else
    {
      v10 = 0LL;
    }
  }
  if ( (unsigned int)objc_msgSend((void *)v4->_config, "respondsToSelector:", "resetLiveVideoSavedMediaTime", v74)
    && !((unsigned __int64)objc_msgSend((void *)v4->_config, "resetLiveVideoSavedMediaTime") & 1) )
  {
    v25 = v9[307];
  }
  else
  {
    v25 = v9[307];
    objc_msgSend(v4->_contentPlaybackData, v9[307]);
    v26 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v26, "playerData");
    v27 = (void *)objc_retainAutoreleasedReturnValue();
    v28 = (unsigned __int64)objc_msgSend(v27, "isLivePlayback");
    objc_release();
    objc_release();
    if ( v28 )
    {
      +[YTSingleVideoTime zero](&OBJC_CLASS___YTSingleVideoTime, "zero");
      v29 = objc_retainAutoreleasedReturnValue();
      v30 = v4->_savedContentTime;
      v4->_savedContentTime = (YTSingleVideoTime *)v29;
      objc_release();
    }
  }
  v31 = -[YTLocalPlaybackController playerCompatibilityWithPlaybackData:](
          v4,
          "playerCompatibilityWithPlaybackData:",
          v4->_contentPlaybackData);
  objc_msgSend(v4->_contentPlaybackData, v25);
  v32 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v32, "setPlayerCompatibility:", v31);
  objc_release();
  v33 = (void *)objc_alloc();
  v34 = (YTSingleVideoSequencer *)objc_msgSend(
                                    v33,
                                    "initWithDelegate:videoControllerDelegate:playerView:viewportSizeProvider:",
                                    v4,
                                    v4,
                                    v4->_playerView,
                                    v4->_viewportSizeProvider);
  v35 = v4->_videoSequencer;
  v4->_videoSequencer = v34;
  objc_release();
  v36 = v4->_videoSequencer;
  v37 = -[YTLocalPlaybackController isExternalPlaybackAllowed](v4, "isExternalPlaybackAllowed");
  -[YTSingleVideoSequencer setExternalPlaybackAllowed:](v36, "setExternalPlaybackAllowed:", v37);
  -[YTSingleVideoSequencer setContentPlaybackData:initialContentTime:playerTransition:playbackConfig:prebufferedContentVideo:userIntentToPlayTime:](
    v4->_videoSequencer,
    "setContentPlaybackData:initialContentTime:playerTransition:playbackConfig:prebufferedContentVideo:userIntentToPlayTime:",
    v4->_contentPlaybackData,
    v4->_savedContentTime,
    v4->_playerTransition,
    v4->_playbackConfig,
    v10,
    v4->_userIntentToPlayTime);
  -[YTLocalPlaybackController adsPlaybackCoordinatorForNewPlayback](v4, "adsPlaybackCoordinatorForNewPlayback");
  v38 = objc_retainAutoreleasedReturnValue();
  v39 = v4->_adsPlaybackCoordinator;
  v4->_adsPlaybackCoordinator = (YTAdsPlaybackCoordinator *)v38;
  objc_release();
  v40 = v4->_adsPlaybackCoordinator;
  -[YTSingleVideoSequencer contentVideo](v4->_videoSequencer, "contentVideo");
  v41 = objc_retainAutoreleasedReturnValue();
  -[YTSingleVideoSequencer playbackTimeline](v4->_videoSequencer, "playbackTimeline");
  v42 = objc_retainAutoreleasedReturnValue();
  objc_msgSend((void *)v40, "setContentSingleVideo:playbackTimeline:", v41, v42);
  objc_release();
  objc_release();
  objc_msgSend(v4->_contentPlaybackData, v25);
  v43 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v43, "playerData");
  v44 = (void *)objc_retainAutoreleasedReturnValue();
  v45 = (unsigned __int64)objc_msgSend(v44, "isLivePlayback");
  objc_release();
  objc_release();
  if ( v45 )
  {
    objc_msgSend((void *)v4->_adsPlaybackCoordinator, "adsCuepointObserver");
    v46 = objc_retainAutoreleasedReturnValue();
    -[YTLocalPlaybackController addContentCuepointObserver:](v4, "addContentCuepointObserver:", v46);
    objc_release();
  }
  v47 = (void *)objc_loadWeakRetained();
  v48 = (unsigned __int64)objc_msgSend(v47, "respondsToSelector:", "playbackController:didLoadContentPlaybackData:");
  objc_release();
  if ( v48 )
  {
    v49 = (void *)objc_loadWeakRetained();
    objc_msgSend(v49, "playbackController:didLoadContentPlaybackData:", v4, v4->_contentPlaybackData);
    objc_release();
  }
  if ( !v4->_shouldDeferInteractionLogging )
  {
    v4->_shouldDeferInteractionLogging = 0;
    v50 = v4->_playerTransition;
    objc_msgSend(v75, "originalPlaybackData");
    v51 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v51, v25);
    v52 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v52, "playerData");
    v53 = objc_retainAutoreleasedReturnValue();
    -[YTLocalPlaybackController logPlaybackForInteractionLoggingWithPlayerTransition:playerResponse:](
      v4,
      "logPlaybackForInteractionLoggingWithPlayerTransition:playerResponse:",
      v50,
      v53);
    objc_release();
    objc_release();
    objc_release();
  }
  v54 = (unsigned __int64)-[YTPlaybackData isPlayableInBackground](v4->_contentPlaybackData, "isPlayableInBackground");
  if ( v54 & 1 )
  {
    v55 = &dword_0 + 1;
  }
  else
  {
    objc_msgSend(v4->_contentPlaybackData, v25);
    v56 = (void *)objc_retainAutoreleasedReturnValue();
    v55 = objc_msgSend(v56, "isPlayableInPictureInPicture");
  }
  -[YTPlaybackBackgroundTaskController setContentPlayableInBackground:](
    v4->_backgroundTaskController,
    "setContentPlayableInBackground:",
    v55);
  if ( !(v54 & 1) )
    objc_release();
  objc_msgSend(v4->_contentPlaybackData, v25);
  v57 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v57, "playerData");
  v58 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v58, "playerConfig");
  v59 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v59, "playbackStartConfig");
  v60 = (void *)objc_retainAutoreleasedReturnValue();
  v61 = (unsigned __int64)objc_msgSend(v60, "startPaused");
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  if ( v61 )
    v4->_startPlaybackWhenAVideoIsActivated = 0;
  -[YTPlaybackData trailer](v4->_contentPlaybackData, "trailer");
  v62 = objc_retainAutoreleasedReturnValue();
  objc_release();
  objc_msgSend(v4->_contentPlaybackData, v25);
  v63 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v63, "playerData");
  v64 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v64, "playabilityStatus");
  v65 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v65, "liveStreamability");
  v66 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v66, "liveStreamabilityRenderer");
  v67 = (void *)objc_retainAutoreleasedReturnValue();
  v68 = (unsigned __int64)objc_msgSend(v67, "hasOfflineSlate");
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  switch ( (unsigned __int64)objc_msgSend(v75, "resolvedReason") )
  {
    case 0uLL:
      objc_msgSend(&OBJC_CLASS___NSError, "playbackErrorWithCode:", 0LL);
      v69 = objc_retainAutoreleasedReturnValue();
      v70 = "failWithError:";
      v71 = v4;
      v72 = v69;
      goto LABEL_30;
    case 1uLL:
      goto LABEL_32;
    case 2uLL:
      if ( v62 )
        goto LABEL_32;
      if ( v68 )
        goto LABEL_33;
      v73 = "failPlaybackDueToUnplayableVideo";
      goto LABEL_34;
    case 3uLL:
      v71 = (void *)objc_loadWeakRetained();
      v70 = "playbackControllerDidCancelPlayabilityResolution:";
      v72 = (__int64)v4;
LABEL_30:
      objc_msgSend(v71, v70, v72);
      objc_release();
      break;
    case 4uLL:
      if ( v62 )
LABEL_32:
        v73 = "initializePlayback";
      else
LABEL_33:
        v73 = "initializeOrFailForOfflineLiveStream";
LABEL_34:
      objc_msgSend(v4, v73);
      break;
    default:
      break;
  }
  objc_release();
  objc_release();
  objc_release();
}

//----- (000000000075D19C) ----------------------------------------------------
void __cdecl -[YTAdsControlFlowPlaybackCoordinator startPrerollAdBreak](YTAdsControlFlowPlaybackCoordinator *self, SEL a2)
{
  YTAdsControlFlowPlaybackCoordinator *v2; // x19
  void *v3; // x0
  void *v4; // x0
  int v5; // w22
  YTPlayerAdEventTriggerAdapter *v6; // x20
  __int64 v7; // x0

  v2 = self;
  self->_startUpState = 0LL;
  if ( self->_isInlineMutedPlayback )
  {
    -[YTAdsControlFlowPlaybackCoordinator doneWithPlayerBytesSlotWithBreakType:](
      self,
      "doneWithPlayerBytesSlotWithBreakType:",
      1LL);
  }
  else
  {
    if ( (unsigned int)-[YTAdsControlFlowPlaybackCoordinator autoplayEnabled](self, "autoplayEnabled") )
    {
      -[YTPlaybackData playerResponse](v2->_currentPlaybackData, "playerResponse");
      v3 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v3, "playerData");
      v4 = (void *)objc_retainAutoreleasedReturnValue();
      v5 = (unsigned __int64)objc_msgSend(v4, "isMonetized");
      objc_release();
      objc_release();
      if ( v5 )
        -[YTFrequencyCapTracker incrementAutoplaysSinceLastAd](
          v2->_frequencyCapTracker,
          "incrementAutoplaysSinceLastAd");
    }
    -[YTAdsControlFlowPlaybackCoordinator checkAdBreakStatus:andMaybeFinishAdBreakWithBreakType:](
      v2,
      "checkAdBreakStatus:andMaybeFinishAdBreakWithBreakType:",
      v2->_prerollStatus,
      1LL);
  }
  v6 = v2->_playerAdEventTriggerAdapter;
  -[YTAdsControlFlowPlaybackCoordinator currentContentCPN](v2, "currentContentCPN");
  v7 = objc_retainAutoreleasedReturnValue();
  -[YTPlayerAdEventTriggerAdapter handleBeforeContentVideoStartedWithContentCPN:](
    v6,
    "handleBeforeContentVideoStartedWithContentCPN:",
    v7);
  objc_release();
}

//----- (000000000075D19C) ----------------------------------------------------
void __cdecl -[YTAdsControlFlowPlaybackCoordinator startPrerollAdBreak](YTAdsControlFlowPlaybackCoordinator *self, SEL a2)
{
  YTAdsControlFlowPlaybackCoordinator *v2; // x19
  void *v3; // x0
  void *v4; // x0
  int v5; // w22
  YTPlayerAdEventTriggerAdapter *v6; // x20
  __int64 v7; // x0

  v2 = self;
  self->_startUpState = 0LL;
  if ( self->_isInlineMutedPlayback )
  {
    -[YTAdsControlFlowPlaybackCoordinator doneWithPlayerBytesSlotWithBreakType:](
      self,
      "doneWithPlayerBytesSlotWithBreakType:",
      1LL);
  }
  else
  {
    if ( (unsigned int)-[YTAdsControlFlowPlaybackCoordinator autoplayEnabled](self, "autoplayEnabled") )
    {
      -[YTPlaybackData playerResponse](v2->_currentPlaybackData, "playerResponse");
      v3 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v3, "playerData");
      v4 = (void *)objc_retainAutoreleasedReturnValue();
      v5 = (unsigned __int64)objc_msgSend(v4, "isMonetized");
      objc_release();
      objc_release();
      if ( v5 )
        -[YTFrequencyCapTracker incrementAutoplaysSinceLastAd](
          v2->_frequencyCapTracker,
          "incrementAutoplaysSinceLastAd");
    }
    -[YTAdsControlFlowPlaybackCoordinator checkAdBreakStatus:andMaybeFinishAdBreakWithBreakType:](
      v2,
      "checkAdBreakStatus:andMaybeFinishAdBreakWithBreakType:",
      v2->_prerollStatus,
      1LL);
  }
  v6 = v2->_playerAdEventTriggerAdapter;
  -[YTAdsControlFlowPlaybackCoordinator currentContentCPN](v2, "currentContentCPN");
  v7 = objc_retainAutoreleasedReturnValue();
  -[YTPlayerAdEventTriggerAdapter handleBeforeContentVideoStartedWithContentCPN:](
    v6,
    "handleBeforeContentVideoStartedWithContentCPN:",
    v7);
  objc_release();
}

//----- (000000000075FD6C) ----------------------------------------------------
void __cdecl -[YTAdsControlFlowPlaybackCoordinator doneWithPlayerBytesSlotWithBreakType:](YTAdsControlFlowPlaybackCoordinator *self, SEL a2, signed __int64 a3)
{
  signed __int64 v3; // x19
  YTAdsControlFlowPlaybackCoordinator *v4; // x20
  YTPlayerCurrentAdsState *v5; // x0
  YTSinglePlayerBytesEventListener *v6; // x0
  void *v7; // x0

  v3 = a3;
  v4 = self;
  v5 = self->_currentAdsState;
  v4->_currentAdsState = 0LL;
  objc_release();
  v6 = v4->_adListener;
  v4->_adListener = 0LL;
  objc_release();
  v7 = (void *)objc_loadWeakRetained();
  objc_msgSend(v7, "adsPlaybackCoordinator:didFinishBreakWithBreakType:", v4, v3);
  objc_release();
}

//----- (0000000000EE64C4) ----------------------------------------------------
void __cdecl -[YTLocalPlaybackController adsPlaybackCoordinator:didFinishBreakWithBreakType:](YTLocalPlaybackController *self, SEL a2, id a3, signed __int64 a4)
{
  signed __int64 v4; // x20
  YTLocalPlaybackController *v5; // x19
  YTAdInterrupt *v6; // x0

  v4 = a4;
  v5 = self;
  v6 = self->_adInterrupt;
  v5->_adInterrupt = 0LL;
  objc_release();
  if ( !((unsigned __int64)-[YTLocalPlaybackController isContentSequenceActive](v5, "isContentSequenceActive") & 1) )
    -[YTLocalPlaybackController loadOrActivateContentSequence](v5, "loadOrActivateContentSequence");
  if ( v4 == 3 )
    -[YTLocalPlaybackController finishPlayback](v5, "finishPlayback");
}

//----- (0000000000F03F64) ----------------------------------------------------
void __cdecl -[YTSingleVideoSequencer activateContentSequence](YTSingleVideoSequencer *self, SEL a2)
{
  YTSingleVideoSequencer *v2; // x19
  __int64 v3; // x20
  int v4; // w8
  void *v5; // x0
  YTSingleVideoController *v6; // x0

  if ( self->_contentVideoController )
  {
    v2 = self;
    if ( !self->_activeVideoController )
    {
      if ( self->_queuePlayer )
      {
        self->_suspendedTimelineVideoController = 0LL;
        v3 = objc_retain();
        objc_release();
        v4 = (unsigned __int64)-[YTQueuePlayer hasEnqueuedPlaybackTimeline:](
                                 v2->_queuePlayer,
                                 "hasEnqueuedPlaybackTimeline:",
                                 v2->_playbackTimeline);
        v5 = v2->_queuePlayer;
        if ( !v4 )
        {
          objc_msgSend(v5, "enqueuePlaybackTimeline:reloadContext:", v2->_playbackTimeline, 0LL);
LABEL_12:
          objc_release();
          return;
        }
      }
      else
      {
        if ( self->_suspendedTimelineVideoController )
        {
          v3 = objc_retain();
        }
        else
        {
          objc_msgSend((void *)self->_contentTimeline, "firstObject");
          v3 = objc_retainAutoreleasedReturnValue();
          v6 = v2->_suspendedTimelineVideoController;
        }
        v2->_suspendedTimelineVideoController = 0LL;
        objc_release();
        v5 = v2;
      }
      objc_msgSend(v5, "activateVideoController:", v3);
      goto LABEL_12;
    }
  }
}

//----- (0000000000F05980) ----------------------------------------------------
void __cdecl -[YTSingleVideoSequencer activateVideoController:reloadContext:](YTSingleVideoSequencer *self, SEL a2, id a3, id a4)
{
  YTSingleVideoSequencer *v4; // x20
  YTSingleVideoController *v5; // x22
  __int64 v6; // x19
  void *v7; // x0
  void *v8; // x0
  void *v9; // x21
  MLViewportSizeProvider *v10; // x24
  void *v11; // x0
  __int64 v12; // x0
  double v13; // d0
  YTPlayerView *v14; // x25
  void *v15; // x0
  void *v16; // x0
  __int64 v17; // ST00_8
  void *v18; // x19
  void *v19; // x0
  void *v20; // x0
  __int64 v21; // x0
  YTSingleVideoController *v22; // x19
  __int64 v23; // x22
  void *v24; // x0

  v4 = self;
  v5 = (YTSingleVideoController *)objc_retain();
  v6 = objc_retain();
  v7 = (void *)objc_loadWeakRetained();
  objc_msgSend(v7, "videoSequencer:willActivateVideo:", v4, v5);
  objc_release();
  -[YTSingleVideoController setExternalPlaybackAllowed:](
    v5,
    "setExternalPlaybackAllowed:",
    v4->_externalPlaybackAllowed);
  v8 = (void *)objc_loadWeakRetained();
  objc_msgSend(v8, "playerStatusForVideoSequencer:", v4);
  v9 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  if ( !-[YTSingleVideoController lifecycleState](v5, "lifecycleState") )
  {
    v10 = v4->_viewportSizeProvider;
    v11 = objc_msgSend(v9, "visibility");
    -[YTSingleVideoController initializeAndLoadWithViewportSizeProvider:playerVisibility:reloadContext:](
      v5,
      "initializeAndLoadWithViewportSizeProvider:playerVisibility:reloadContext:",
      v10,
      v11,
      v6);
  }
  -[YTSingleVideoController setSequencerDelegate:](v5, "setSequencerDelegate:", v4);
  v12 = objc_loadWeakRetained();
  -[YTSingleVideoController setDelegate:](v5, "setDelegate:", v12);
  objc_release();
  LODWORD(v13) = 0;
  -[YTSingleVideoController setPeakBitrateFraction:](v5, "setPeakBitrateFraction:", v13);
  -[YTSingleVideoController setPreferredMaxReadahead:](v5, "setPreferredMaxReadahead:", 0.0);
  v14 = v4->_playerView;
  -[YTSingleVideoController singleVideo](v5, "singleVideo");
  v15 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v15, "playerTransition");
  v16 = (void *)objc_retainAutoreleasedReturnValue();
  v17 = v6;
  v18 = objc_msgSend(v16, "autoplay");
  -[YTSingleVideoController singleVideo](v5, "singleVideo", v17);
  v19 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v19, "playerTransition");
  v20 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v20, "playlistID");
  v21 = objc_retainAutoreleasedReturnValue();
  -[YTSingleVideoController activateWithPlayerView:playerStatus:autoplay:playlistID:](
    v5,
    "activateWithPlayerView:playerStatus:autoplay:playlistID:",
    v14,
    v9,
    v18,
    v21);
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  v22 = v4->_activeVideoController;
  v4->_activeVideoController = v5;
  v23 = objc_retain();
  objc_release();
  v24 = (void *)objc_loadWeakRetained();
  objc_msgSend(v24, "videoSequencer:didActivateVideo:", v4, v23);
  objc_release();
  objc_release();
  objc_release();
  objc_release();
}

//----- (0000000000EFA838) ----------------------------------------------------
void __cdecl -[YTSingleVideoController initializeAndLoadWithViewportSizeProvider:playerVisibility:reloadContext:](YTSingleVideoController *self, SEL a2, id a3, int a4, id a5)
{
  YTSingleVideoController *v5; // x20
  __int64 v6; // x24
  __int64 v7; // x28
  void *v8; // x23
  void *v9; // x0
  __int64 v10; // x25
  __int64 v11; // x26
  __int64 v12; // x22
  MLPlayerStickySettings *v13; // x28
  void *v14; // x0
  void *v15; // x0
  __int64 v16; // x0
  __int64 v17; // x0
  MLPlayer *v18; // x8
  void *v19; // x0
  void *v20; // x0
  void *v21; // x0
  MLPlayer *v22; // x3
  YTSingleVideoControllerTime *v23; // x0
  YTSingleVideoControllerTime *v24; // x8
  int v25; // w19
  void *v26; // x0
  double v27; // d0
  double v28; // d8
  MLPlayer *v29; // x0
  const char *v30; // x1
  double v31; // d0
  unsigned int v32; // [xsp+4h] [xbp-6Ch]

  v32 = a4;
  v5 = self;
  v6 = objc_retain();
  v7 = objc_retain();
  if ( v5->_lifecycleState || v5->_player )
    goto LABEL_13;
  InjectMLPlayerPool();
  v8 = (void *)objc_retainAutoreleasedReturnValue();
  -[YTSingleVideo playbackData](v5->_singleVideo, "playbackData");
  v9 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v9, "video");
  v10 = objc_retainAutoreleasedReturnValue();
  -[YTSingleVideo mediaPlayerConfig](v5->_singleVideo, "mediaPlayerConfig");
  v11 = objc_retainAutoreleasedReturnValue();
  v12 = v7;
  v13 = v5->_mediaStickySettings;
  -[YTSingleVideo playbackData](v5->_singleVideo, "playbackData");
  v14 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v14, "playerResponse");
  v15 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v15, "latencyLogger");
  v16 = objc_retainAutoreleasedReturnValue();
  objc_msgSend(
    v8,
    "acquirePlayerForVideo:playerConfig:stickySettings:latencyLogger:reloadContext:",
    v10,
    v11,
    v13,
    v16,
    v12);
  v17 = objc_retainAutoreleasedReturnValue();
  v18 = v5->_player;
  v5->_player = (MLPlayer *)v17;
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  InjectYTPlayerViewControllerConfig();
  v19 = (void *)objc_retainAutoreleasedReturnValue();
  v20 = objc_msgSend(v19, "fullscreenPlaybackOnExternalScreenEnabled");
  objc_msgSend((void *)v5->_player, "setExternalPlaybackFullscreen:", v20);
  objc_release();
  v21 = (void *)objc_alloc();
  v22 = v5->_player;
  v23 = (YTSingleVideoControllerTime *)objc_msgSend(v21, "initWithVideoData:player:playerItem:", v5->_singleVideo);
  v24 = v5->_videoControllerTime;
  v5->_videoControllerTime = v23;
  objc_release();
  -[YTSingleVideoController initializePlayerLoggingForNewPlayerWithPlayerVisibility:isPrefetch:isPrebuffer:](
    v5,
    "initializePlayerLoggingForNewPlayerWithPlayerVisibility:isPrefetch:isPrebuffer:",
    v32,
    0LL,
    0LL);
  -[YTSingleVideoController setViewportSizeProvider:](v5, "setViewportSizeProvider:", v6);
  -[YTSingleVideoController updateCuepointObserversForNewPlayer](v5, "updateCuepointObserversForNewPlayer");
  -[YTSingleVideoController updateExternalPlaybackAllowedForNewPlayer](v5, "updateExternalPlaybackAllowedForNewPlayer");
  -[YTSingleVideoController updateVideoFormatConstraintForNewPlayer](v5, "updateVideoFormatConstraintForNewPlayer");
  -[YTSingleVideoController setInitialAudioAndVideoConstraints](v5, "setInitialAudioAndVideoConstraints");
  objc_msgSend((void *)v5->_player, "setPlayerVisibility:", v32);
  if ( !objc_msgSend((void *)v5->_player, "state") )
  {
    v25 = (unsigned __int64)-[YTSingleVideo isLivePlayback](v5->_singleVideo, "isLivePlayback");
    -[YTSingleVideo initialTime](v5->_singleVideo, "initialTime");
    v26 = (void *)objc_retainAutoreleasedReturnValue();
    if ( v25 )
    {
      objc_msgSend(v26, "productionTime");
      v28 = v27;
      objc_release();
      if ( v28 > 0.0 )
      {
        v29 = v5->_player;
        v30 = "seekToProductionTime:seekSource:";
LABEL_9:
        objc_msgSend((void *)v29, v30, 0LL, v28);
        goto LABEL_10;
      }
    }
    else
    {
      objc_msgSend(v26, "time");
      v28 = v31;
      objc_release();
      if ( v28 > 0.0 )
      {
        v29 = v5->_player;
        v30 = "seekToTime:seekSource:";
        goto LABEL_9;
      }
    }
  }
LABEL_10:
  if ( !objc_msgSend((void *)v5->_player, "state") )
    objc_msgSend((void *)v5->_player, "load");
  -[YTSingleVideoController updateLifecycleState:](v5, "updateLifecycleState:", 1LL);
LABEL_13:
  objc_release();
  objc_release();
}

//----- (0000000000F82788) ----------------------------------------------------
void __cdecl -[MLHAMQueuePlayer load](MLHAMQueuePlayer *self, SEL a2)
{
  double v2; // d9
  double v3; // d10
  double v4; // d11
  double v5; // d12
  MLHAMQueuePlayer *v6; // x20
  void *v7; // x0
  void *v8; // x19
  void *v9; // x0
  void *v10; // x22
  __int64 v11; // x24
  unsigned __int64 v12; // x26
  MLHAMPlayerItemSegment *v13; // x0
  void *v14; // x0
  __int64 v15; // x0
  void *v16; // x21
  void *v17; // x0
  void *v18; // x22
  __int64 v19; // x23
  __int128 v20; // q0
  __int128 v21; // q1
  id v22; // x24
  void *v23; // x27
  __int64 v24; // x0
  HAMEventCenter *v25; // x4
  OS_dispatch_queue *v26; // x5
  OS_dispatch_queue *v27; // x0
  double v28; // d8
  void *v29; // x0
  void *v30; // x24
  void *v31; // x0
  int v32; // w26
  void *v33; // x0
  void *v34; // x0
  void *v35; // x25
  int v36; // w27
  char v37; // w0
  char v38; // w28
  double v39; // d0
  MLHAMPlayerItemSegment *v40; // x26
  void *v41; // x0
  __int64 v42; // x25
  double v43; // d1
  double v44; // d2
  MLHAMPlayerItemSegment *v45; // x2
  int v46; // w24
  void *v47; // x0
  double v48; // d0
  signed int v49; // w8
  __int64 v50; // x27
  char v51; // w28
  __int64 v52; // x0
  __int64 v53; // x26
  HAMPlayerInternal *v54; // x0
  OS_dispatch_queue *v55; // x25
  __int64 v56; // [xsp+A8h] [xbp-248h]
  void **v57; // [xsp+B0h] [xbp-240h]
  __int64 v58; // [xsp+B8h] [xbp-238h]
  void *(__fastcall *v59)(__int64); // [xsp+C0h] [xbp-230h]
  void *v60; // [xsp+C8h] [xbp-228h]
  MLHAMQueuePlayer *v61; // [xsp+D0h] [xbp-220h]
  __int64 v62; // [xsp+D8h] [xbp-218h]
  __int64 v63; // [xsp+E0h] [xbp-210h]
  void **v64; // [xsp+E8h] [xbp-208h]
  __int64 v65; // [xsp+F0h] [xbp-200h]
  __int64 (__fastcall *v66)(__int64); // [xsp+F8h] [xbp-1F8h]
  void *v67; // [xsp+100h] [xbp-1F0h]
  MLHAMQueuePlayer *v68; // [xsp+108h] [xbp-1E8h]
  __int128 v69; // [xsp+110h] [xbp-1E0h]
  __int128 v70; // [xsp+120h] [xbp-1D0h]
  __int64 v71; // [xsp+130h] [xbp-1C0h]
  __int128 v72; // [xsp+140h] [xbp-1B0h]
  __int128 v73; // [xsp+150h] [xbp-1A0h]
  __int64 v74; // [xsp+160h] [xbp-190h]
  char v75; // [xsp+168h] [xbp-188h]
  __int128 v76; // [xsp+178h] [xbp-178h]
  __int64 v77; // [xsp+188h] [xbp-168h]
  __int128 v78; // [xsp+190h] [xbp-160h]
  __int128 v79; // [xsp+1A0h] [xbp-150h]
  __int128 v80; // [xsp+1B0h] [xbp-140h]
  __int128 v81; // [xsp+1C0h] [xbp-130h]
  char v82; // [xsp+1D8h] [xbp-118h]
  __int64 v83; // [xsp+258h] [xbp-98h]

  v6 = self;
  -[MLHAMQueuePlayerSegmentList items](self->_segmentList, "items");
  v7 = (void *)objc_retainAutoreleasedReturnValue();
  v8 = v7;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v9 = objc_msgSend(v7, "countByEnumeratingWithState:objects:count:", &v78, &v82, 16LL);
  if ( v9 )
  {
    v10 = v9;
    v11 = *(_QWORD *)v79;
    do
    {
      v12 = 0LL;
      do
      {
        if ( *(_QWORD *)v79 != v11 )
          objc_enumerationMutation();
        objc_msgSend(*(void **)(*((_QWORD *)&v78 + 1) + 8 * v12++), "load");
      }
      while ( v12 < (unsigned __int64)v10 );
      v10 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v78, &v82, 16LL);
    }
    while ( v10 );
  }
  v13 = v6->_currentSegment;
  if ( !v13 )
  {
    -[MLHAMQueuePlayerSegmentList allSegments](v6->_segmentList, "allSegments");
    v14 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v14, "firstObject");
    v15 = objc_retainAutoreleasedReturnValue();
    -[MLHAMQueuePlayer setCurrentSegment:](v6, "setCurrentSegment:", v15);
    objc_release();
    objc_release();
    v13 = v6->_currentSegment;
  }
  -[MLHAMPlayerItemSegment playerItem](v13, "playerItem");
  v16 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v16, "config");
  v17 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v17, "hamplayerConfig");
  v18 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  if ( (unsigned __int64)objc_msgSend(v18, "deprecateStallPredictor") & 1 )
  {
    v19 = 0LL;
  }
  else
  {
    objc_msgSend(v16, "stallPredictor");
    v19 = objc_retainAutoreleasedReturnValue();
  }
  v20 = *(_OWORD *)&v6->_playerConfiguration.playerLoopTimerInterval;
  v21 = *(_OWORD *)&v6->_playerConfiguration.liveAVSyncTolerance;
  v74 = *(_QWORD *)&v6->_playerConfiguration.stopTrackRendererBeforeDisabling;
  v72 = v20;
  v73 = v21;
  sub_F7FF44(&v72, (__int64)&v75);
  v22 = v6->_playerInternalCreationBlock;
  if ( !v22 )
  {
    v23 = (void *)objc_alloc();
    objc_msgSend(v16, "resyncPolicy");
    v24 = objc_retainAutoreleasedReturnValue();
    v26 = v6->_playerQueue;
    v25 = v6->_hamEventCenter;
    v69 = *(_OWORD *)&v75;
    v70 = v76;
    v71 = v77;
    objc_msgSend(
      v23,
      "initWithStallPredictor:resyncPolicy:eventCenter:playerQueue:configuration:",
      v19,
      v24,
      v25,
      v26,
      &v69);
    objc_storeStrong();
    goto LABEL_17;
  }
  ((void (__fastcall *)(id))v22[2].isa)(v6->_playerInternalCreationBlock);
  objc_retainAutoreleasedReturnValue();
  objc_storeStrong();
  if ( !v22 )
LABEL_17:
    objc_release();
  objc_release();
  -[MLHAMQueuePlayer setupAudio](v6, "setupAudio");
  -[MLHAMQueuePlayer setupVideo](v6, "setupVideo");
  -[MLHAMQueuePlayer setupText](v6, "setupText");
  -[MLHAMQueuePlayer updateVolume](v6, "updateVolume");
  -[MLHAMQueuePlayerSegmentList loadWithVideoSampleSource:audioSampleSource:textSampleBufferSource:playerInternal:](
    v6->_segmentList,
    "loadWithVideoSampleSource:audioSampleSource:textSampleBufferSource:playerInternal:",
    v6->_rootVideoSampleBufferSource,
    v6->_rootAudioSampleBufferSource,
    v6->_rootTextSampleBufferSource,
    v6->_player);
  v27 = v6->_playerQueue;
  v64 = _NSConcreteGlobalBlock;
  v65 = 3498049536LL;
  v66 = sub_F830C4;
  v67 = &unk_4EA3E90;
  v68 = v6;
  dispatch_sync();
  -[MLHAMQueuePlayer registerWithEventCenter](v6, "registerWithEventCenter");
  if ( !(unsigned int)objc_msgSend(v16, "isLive") )
  {
    v39 = v6->_initialSeekTime;
    if ( v39 <= 0.0 )
    {
      v40 = v6->_currentSegment;
      -[MLHAMQueuePlayerSegmentList allSegments](v6->_segmentList, "allSegments");
      v41 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v41, "firstObject");
      v42 = objc_retainAutoreleasedReturnValue();
      objc_release();
      objc_release();
      if ( v40 == (MLHAMPlayerItemSegment *)v42 )
        goto LABEL_56;
      v39 = v6->_initialSeekTime;
    }
    v43 = v6->_initialSeekToleranceBefore;
    v44 = v6->_initialSeekToleranceAfter;
    v45 = v6->_currentSegment;
    v56 = 0LL;
    v46 = (unsigned __int64)-[MLHAMQueuePlayer seekToTime:toleranceBefore:toleranceAfter:inSegment:error:](
                              v6,
                              "seekToTime:toleranceBefore:toleranceAfter:inSegment:error:",
                              v45,
                              &v56,
                              v39,
                              v43,
                              v44);
    if ( objc_retain() && !v46 )
    {
      objc_retain();
      dispatch_async();
      objc_release();
    }
    goto LABEL_56;
  }
  v28 = nan("");
  objc_msgSend(v16, "config");
  v29 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v29, "playbackStartConfig");
  v30 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  objc_msgSend(v30, "startPosition");
  v31 = (void *)objc_retainAutoreleasedReturnValue();
  v32 = (unsigned __int64)objc_msgSend(v31, "hasStreamTimeMillis");
  objc_release();
  v4 = 0.0;
  v2 = v28;
  v3 = 0.0;
  if ( v32 )
  {
    objc_msgSend(v30, "startPosition");
    v33 = (void *)objc_retainAutoreleasedReturnValue();
    v2 = (double)(signed __int64)objc_msgSend(v33, "streamTimeMillis") / 1000.0;
    objc_release();
    v3 = v2;
  }
  objc_msgSend(v16, "config");
  v34 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v34, "manifestlessWindowedLiveConfig");
  v35 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  v5 = 0.0;
  if ( !v35 )
    goto LABEL_50;
  v36 = (unsigned __int64)objc_msgSend(v35, "hasMinDvrMediaTimeMs");
  v37 = (unsigned __int64)objc_msgSend(v35, "hasMaxDvrMediaTimeMs");
  v38 = v37;
  if ( v36 )
  {
    v5 = (double)(signed __int64)objc_msgSend(v35, "minDvrMediaTimeMs") / 1000.0;
    if ( !(v38 & 1) )
    {
LABEL_24:
      if ( v32 & 1 )
      {
        if ( (unsigned __int8)v36 & (v3 < v5) )
          v2 = v5;
        else
          v2 = v3;
        v4 = 0.0;
        goto LABEL_50;
      }
      v49 = 0;
      v4 = 0.0;
LABEL_47:
      if ( v36 & v49 )
        v2 = v5;
      else
        v2 = v28;
      goto LABEL_50;
    }
  }
  else
  {
    v5 = 0.0;
    if ( !(v37 & 1) )
      goto LABEL_24;
  }
  v47 = objc_msgSend(v35, "maxDvrMediaTimeMs");
  v4 = (double)(signed __int64)v47 / 1000.0;
  if ( !(v32 & 1) )
  {
    v49 = 1;
    goto LABEL_47;
  }
  if ( (unsigned __int8)v36 & (v3 < v5) )
    v48 = v5;
  else
    v48 = v3;
  if ( v48 >= v4 )
    v2 = (double)(signed __int64)v47 / 1000.0;
  else
    v2 = v48;
LABEL_50:
  -[MLHAMQueuePlayerSegmentList segmentForItemTime:playerItem:](
    v6->_segmentList,
    "segmentForItemTime:playerItem:",
    v16,
    v2);
  v50 = objc_retainAutoreleasedReturnValue();
  if ( !v50 )
  {
    objc_msgSend(
      &OBJC_CLASS___NSString,
      "stringWithFormat:",
      CFSTR("min=%f|max=%f|seekTime=%f|playbackStartTime=%f"),
      *(_QWORD *)&v5,
      *(_QWORD *)&v4,
      *(_QWORD *)&v2,
      *(_QWORD *)&v3);
    v52 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(&OBJC_CLASS___NSError, "ml_mediaErrorWithCode:details:", 923LL, v52);
    v53 = objc_retainAutoreleasedReturnValue();
    objc_release();
    if ( v53 )
      goto LABEL_63;
  }
  v63 = 0LL;
  v51 = (unsigned __int64)-[MLHAMQueuePlayer seekToTime:toleranceBefore:toleranceAfter:inSegment:error:](
                            v6,
                            "seekToTime:toleranceBefore:toleranceAfter:inSegment:error:",
                            v50,
                            &v63,
                            v2,
                            0.0,
                            0.0);
  objc_retain();
  if ( !(v51 & 1) )
  {
LABEL_63:
    v57 = _NSConcreteStackBlock;
    v58 = 3254779904LL;
    v59 = sub_F83320;
    v60 = &unk_4EB1E38;
    v61 = v6;
    v62 = objc_retain();
    dispatch_async();
    objc_release();
  }
  while ( 1 )
  {
    objc_release();
    objc_release();
    objc_release();
LABEL_56:
    -[MLHAMQueuePlayer updateActiveTrackRenderers](v6, "updateActiveTrackRenderers");
    v54 = v6->_player;
    objc_retain();
    v55 = v6->_playerQueue;
    objc_retain();
    dispatch_async();
    if ( v6->_playerError )
      dispatch_async();
    -[MLHAMQueuePlayer setState:](v6, "setState:", 1LL);
    -[MLHAMQueuePlayer setUpCaptionDisplayController](v6, "setUpCaptionDisplayController");
    -[MLHAMQueuePlayer screenCapturedStatusDidChange](v6, "screenCapturedStatusDidChange");
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    if ( __stack_chk_guard == v83 )
      break;
    if ( !(unsigned int)-[MLHAMPlayerItemSegment playToEnd](v6->_currentSegment, "playToEnd") )
      goto LABEL_50;
    -[MLHAMQueuePlayer seekToEndWithSeekSource:](v6, "seekToEndWithSeekSource:", 0LL);
  }
}

//----- (0000000000F7777C) ----------------------------------------------------
void __cdecl -[MLHAMPlayerItem load](MLHAMPlayerItem *self, SEL a2)
{
  MLHAMPlayerItem *v2; // x20
  void *v3; // x0
  void *v4; // x21
  __int64 v5; // x0
  void *v6; // x22
  void *v7; // x19
  __int64 v8; // x0
  char *v9; // x21
  void *v10; // x0
  int v11; // w21
  char **v12; // x22
  void *v13; // x28
  int v14; // w19
  void *v15; // x0
  __int64 v16; // x22
  OS_dispatch_queue *v17; // x0
  YTIHamplayerConfig *v18; // x1
  char v19; // w25
  __int64 v20; // x0
  void *v21; // x0
  HAMCache *v22; // x0
  id v23; // x21
  BOOL v24; // w19
  id v25; // x0
  HAMNetworkStatsProvider *v26; // x1
  YTIHamplayerConfig *v27; // x0
  HAMNetworkStatsProvider *v28; // x1
  __int64 v29; // x0
  HAMTrackRendererResyncPolicy *v30; // x8
  void *v31; // x0
  MLChunkFactoryProvider *v32; // x0
  MLChunkFactoryProvider *v33; // x8
  void *v34; // x0
  __int64 v35; // x21
  MLVideo *v36; // x25
  YTIHamplayerConfig *v37; // x28
  __int64 v38; // x22
  __int64 v39; // x19
  MLChunkFactoryProvider *v40; // x23
  MLOnesieVideoData *v41; // x27
  char v42; // w24
  __int64 v43; // x0
  void *v44; // x28
  void *v45; // x0
  void *v46; // x22
  void *v47; // x0
  void *v48; // x0
  void *v49; // x24
  void *v50; // x19
  __int64 v51; // x23
  void *v52; // x0
  MLPlayerItemEventCenter *v53; // x7
  MLMediaDataLoader *v54; // x0
  MLMediaDataLoader *v55; // x8
  MLMediaDataLoader *v56; // x0
  __int64 v57; // x26
  void *v58; // x0
  void *v59; // x21
  void *v60; // x27
  void *v61; // x0
  __int64 v62; // x23
  __int64 v63; // x0
  MLChunkLoader *v64; // x8
  OS_dispatch_queue *v65; // x0
  void *v66; // x0
  __int64 v67; // x23
  __int64 v68; // x0
  NSURL *v69; // x8
  void *v70; // x0
  __int64 v71; // x0
  void *v72; // ST70_8
  MLPlayerItemEventCenter *v73; // ST90_8
  __int64 v74; // STC8_8
  MLOnesieVideoData *v75; // ST78_8
  YTIHamplayerConfig *v76; // ST80_8
  __int64 v77; // x25
  __int64 v78; // x19
  __int64 v79; // x24
  YTLatencyTickLoggerProtocol *v80; // x23
  __int64 v81; // ST88_8
  __int64 v82; // [xsp+10h] [xbp-1A0h]
  __int64 v83; // [xsp+20h] [xbp-190h]
  OS_dispatch_queue *v84; // [xsp+A8h] [xbp-108h]
  void *v85; // [xsp+B0h] [xbp-100h]
  BOOL v86; // [xsp+BCh] [xbp-F4h]
  char v87; // [xsp+C0h] [xbp-F0h]
  __int64 v88; // [xsp+D0h] [xbp-E0h]
  __int64 v89; // [xsp+D8h] [xbp-D8h]
  __int64 v90; // [xsp+E0h] [xbp-D0h]
  __int64 v91; // [xsp+E8h] [xbp-C8h]
  char *v92; // [xsp+110h] [xbp-A0h]
  __int64 v93; // [xsp+118h] [xbp-98h]
  void *v94; // [xsp+120h] [xbp-90h]
  void *v95; // [xsp+128h] [xbp-88h]

  if ( self->_itemState )
    return;
  v2 = self;
  -[MLVideo streamingData](self->_video, "streamingData");
  v95 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend((void *)v2->_config, "livePlayerConfig");
  v93 = objc_retainAutoreleasedReturnValue();
  InjectOptionalMLOfflineRepoFactory();
  v3 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v3, "offlineRepo");
  v4 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  -[MLVideo ID](v2->_video, "ID");
  v5 = objc_retainAutoreleasedReturnValue();
  objc_msgSend(v4, "assetForVideo:", v5);
  v6 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  objc_msgSend(v6, "formatStreamsArray");
  v94 = (void *)objc_retainAutoreleasedReturnValue();
  if ( (unsigned int)-[YTHotConfig iosLogCotnForOfflinePlaybacks](v2->_hotConfig, "iosLogCotnForOfflinePlaybacks")
    && (unsigned int)objc_msgSend(v6, "hasCotn") )
  {
    v7 = (void *)objc_loadWeakRetained();
    objc_msgSend(v6, "cotn");
    v8 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v7, "recordCOTN:", v8);
    objc_release();
    objc_release();
  }
  v2->_currentVideoIsLocal = objc_msgSend(v94, "count") != 0LL;
  v9 = (char *)-[MLOnesieVideoData lastRequestNumber](v2->_onesieVideoData, "lastRequestNumber") + 1;
  if ( (unsigned int)objc_msgSend(v2->_hamplayerConfig, "useReloadContextRequestNumber")
    && (signed __int64)-[MLPlayerReloadContext firstRequestNumber](v2->_reloadContext, "firstRequestNumber") >= 1 )
  {
    v9 = (char *)-[MLPlayerReloadContext firstRequestNumber](v2->_reloadContext, "firstRequestNumber");
  }
  v92 = v9;
  objc_msgSend((void *)v2->_config, "mediaCommonConfig");
  v10 = (void *)objc_retainAutoreleasedReturnValue();
  v11 = (unsigned __int64)objc_msgSend(v10, "useServerDrivenAbr");
  objc_release();
  v12 = &selRef_removeScrubbingObserver_;
  if ( v11 )
  {
    objc_msgSend(v2->_hamplayerConfig, "serverAbrConfig");
    v13 = (void *)objc_retainAutoreleasedReturnValue();
    v14 = (unsigned __int64)objc_msgSend(v13, "useReloadContextForFallback");
    if ( v2->_currentVideoIsLocal && !((unsigned __int64)objc_msgSend(v13, "enableLocalStreams") & 1) )
    {
      +[MLQOEError QOEErrorWithCode:](&OBJC_CLASS___MLQOEError, "QOEErrorWithCode:", CFSTR("sabr.nooffline"));
LABEL_20:
      v20 = objc_retainAutoreleasedReturnValue();
      -[MLHAMPlayerItem emitQOEError:fatal:](v2, "emitQOEError:fatal:", v20, 0LL);
LABEL_30:
      objc_release();
      objc_release();
      v12 = &selRef_removeScrubbingObserver_;
      goto LABEL_31;
    }
    if ( v14 )
    {
      if ( (unsigned __int64)-[MLPlayerReloadContext disableSABR](v2->_reloadContext, "disableSABR") & 1 )
      {
LABEL_19:
        +[MLQOEError QOEErrorWithCode:](&OBJC_CLASS___MLQOEError, "QOEErrorWithCode:", CFSTR("sabr.backoff"));
        goto LABEL_20;
      }
    }
    else if ( *(double *)&qword_65F2F50 != 0.0 && YTClockMonotonicRawApproxTime() <= *(double *)&qword_65F2F50 )
    {
      goto LABEL_19;
    }
    InjectMLHAMDataLoaderProvider();
    v15 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v15, "dataLoader");
    v16 = objc_retainAutoreleasedReturnValue();
    objc_release();
    objc_msgSend((void *)v2->_config, "mediaCommonConfig");
    v91 = objc_retainAutoreleasedReturnValue();
    v17 = v2->_playerQueue;
    v18 = v2->_hamplayerConfig;
    sub_FF7430();
    v90 = objc_retainAutoreleasedReturnValue();
    if ( (unsigned __int64)-[MLHAMPlayerItem playerResponseIsLive](v2, "playerResponseIsLive") & 1 )
    {
      v19 = 1;
    }
    else
    {
      -[MLVideo videoDetails](v2->_video, "videoDetails");
      v21 = (void *)objc_retainAutoreleasedReturnValue();
      v19 = (unsigned __int64)objc_msgSend(v21, "isPostLiveDvr");
      objc_release();
    }
    if ( (unsigned int)-[YTHotConfig iosClientGlobalConfigIosSabrCacheWhileStreaming](
                         v2->_hotConfig,
                         "iosClientGlobalConfigIosSabrCacheWhileStreaming") )
    {
      v22 = v2->_cache;
      v89 = objc_retain();
      v23 = v2->_serverABRLoaderCreationBlock;
      if ( v23 )
        goto LABEL_24;
    }
    else
    {
      v89 = objc_retain();
      v23 = v2->_serverABRLoaderCreationBlock;
      if ( v23 )
      {
LABEL_24:
        ((void (__fastcall *)(id))v23[2].isa)(v23);
        objc_retainAutoreleasedReturnValue();
        v24 = 0;
        objc_storeStrong();
        if ( v23 )
          goto LABEL_26;
        goto LABEL_25;
      }
    }
    v71 = objc_alloc();
    v86 = v2->_useHAMPlayerStatusForClientAbrStateFiller == 0;
    v87 = v19;
    v84 = v2->_playerQueue;
    v85 = (void *)v71;
    if ( v2->_useHAMPlayerStatusForClientAbrStateFiller )
    {
      v88 = 0LL;
    }
    else
    {
      v72 = (void *)objc_loadWeakRetained();
      objc_msgSend(v72, "playerEventCenter");
      v88 = objc_retainAutoreleasedReturnValue();
    }
    v73 = v2->_playerItemEventCenter;
    -[MLVideo streamingData](v2->_video, "streamingData");
    v74 = objc_retainAutoreleasedReturnValue();
    v75 = v2->_onesieVideoData;
    v76 = v2->_hamplayerConfig;
    v77 = objc_loadWeakRetained();
    objc_msgSend((void *)v2->_config, "manifestlessWindowedLiveConfig");
    v78 = objc_retainAutoreleasedReturnValue();
    -[MLHAMPlayerItem metadataCollector](v2, "metadataCollector");
    v79 = objc_retainAutoreleasedReturnValue();
    v80 = v2->_latencyLogger;
    objc_msgSend((void *)v2->_config, "watchEndpointUstreamerConfig");
    v81 = objc_retainAutoreleasedReturnValue();
    LOBYTE(v83) = v87;
    objc_msgSend(
      v85,
      "initWithQueue:dataLoader:playerEventCenter:playerItemEventCenter:streamingData:mediaCommonConfig:hamplayerConfig:o"
      "nesieVideoData:QOEController:loadRetryPolicy:isLiveSource:livePlayerConfig:windowedLiveConfig:metadataRelay:delega"
      "te:latencyLogger:watchEndpointUstreamerConfig:periodID:firstRequestNumber:cache:",
      v84,
      v16,
      v88,
      v73,
      v74,
      v91,
      v76,
      v75,
      v77,
      v90,
      v83,
      v93,
      v78,
      v79,
      v2,
      v80,
      v81,
      v2->_periodID,
      v92,
      v89);
    v24 = v86;
    objc_storeStrong();
    if ( v23 )
    {
LABEL_26:
      if ( v24 )
      {
        objc_release();
        objc_release();
        if ( !v23 )
          goto LABEL_29;
      }
      else if ( !v23 )
      {
LABEL_29:
        objc_release();
        objc_release();
        objc_release();
        goto LABEL_30;
      }
      objc_release();
      goto LABEL_29;
    }
LABEL_25:
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    goto LABEL_26;
  }
LABEL_31:
  v25 = v2->_stallPredictorCreationBlock;
  if ( v25 )
  {
    ((void (*)(void))v25[2].isa)();
  }
  else
  {
    v26 = v2->_networkStatsProvider;
    sub_F7F8F8(v2->_hamplayerConfig);
  }
  objc_retainAutoreleasedReturnValue();
  objc_storeStrong();
  objc_release();
  v27 = v2->_hamplayerConfig;
  v28 = v2->_networkStatsProvider;
  sub_F7FAD0();
  v29 = objc_retainAutoreleasedReturnValue();
  v30 = v2->_resyncPolicy;
  v2->_resyncPolicy = (HAMTrackRendererResyncPolicy *)v29;
  objc_release();
  v31 = (void *)objc_alloc();
  v32 = (MLChunkFactoryProvider *)objc_msgSend(v31, "init");
  v33 = v2->_chunkFactoryProvider;
  v2->_chunkFactoryProvider = v32;
  objc_release();
  InjectMLHAMDataLoaderProvider();
  v34 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v34, "dataLoader");
  v35 = objc_retainAutoreleasedReturnValue();
  objc_release();
  v36 = v2->_video;
  v37 = v2->_hamplayerConfig;
  objc_msgSend((void *)v2->_config, v12[73]);
  v38 = objc_retainAutoreleasedReturnValue();
  objc_msgSend((void *)v2->_config, "playbackStartConfig");
  v39 = objc_retainAutoreleasedReturnValue();
  v40 = v2->_chunkFactoryProvider;
  v41 = v2->_onesieVideoData;
  v42 = (unsigned __int64)objc_msgSend((void *)v2->_config, "offline");
  -[MLHAMPlayerItem metadataCollector](v2, "metadataCollector");
  v43 = objc_retainAutoreleasedReturnValue();
  LOBYTE(v82) = v42;
  objc_msgSend(
    v95,
    "DASHMPDWithVideo:config:livePlayerConfig:windowedLiveConfig:playbackStartConfig:chunkFactoryProvider:onesieVideoData"
    ":offlineStreams:offlineOnly:metadataRelay:decoratedURLProvider:playerQueue:",
    v36,
    v37,
    v93,
    v38,
    v39,
    v40,
    v41,
    v94,
    v82,
    v43,
    v2->_decoreatedURLProvider,
    v2->_playerQueue);
  v44 = (void *)objc_retainAutoreleasedReturnValue();
  objc_release();
  objc_release();
  objc_release();
  v45 = (void *)objc_alloc();
  v46 = objc_msgSend(v45, "initWithContext:MPD:", v2->_context, v44);
  -[MLHAMPlayerItem updateLocalStateFromMPD:](v2, "updateLocalStateFromMPD:", v44);
  objc_msgSend((void *)v2->_config, "mediaCommonConfig");
  v47 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v47, "mediaUstreamerRequestConfig");
  v48 = (void *)objc_retainAutoreleasedReturnValue();
  v49 = objc_msgSend(v48, "videoPlaybackUseUmp");
  objc_release();
  objc_release();
  v50 = (void *)objc_alloc();
  objc_msgSend(v2->_hamplayerConfig, "chunkLoaderConfig");
  v51 = objc_retainAutoreleasedReturnValue();
  v52 = -[MLBitrateCap formatPacingBitrateCap](v2->_bitrateCap, "formatPacingBitrateCap");
  v53 = v2->_playerItemEventCenter;
  v54 = (MLMediaDataLoader *)objc_msgSend(
                               v50,
                               "initWithDataLoader:config:firstRequestNumber:useUMP:formatPacingBitrateCap:networkRequest"
                               "Observer:hostFallbackObserver:serverStitcheDAIDelegate:",
                               v35,
                               v51,
                               v92,
                               v49,
                               v52,
                               v2->_playerItemEventCenter,
                               v2->_decoreatedURLProvider);
  v55 = v2->_mediaDataLoader;
  v2->_mediaDataLoader = v54;
  objc_release();
  objc_release();
  v56 = v2->_mediaDataLoader;
  v57 = objc_retain();
  objc_release();
  v58 = objc_msgSend(&OBJC_CLASS___MLHAMDASHManifestlessMPD, "class");
  v59 = objc_msgSend(v44, "isKindOfClass:", v58);
  if ( !(_DWORD)v59 )
  {
    v60 = 0LL;
    goto LABEL_40;
  }
  v60 = (void *)objc_retain();
  objc_msgSend(v60, "setSegmentIndexDelegate:", v2);
  objc_msgSend(v60, "audioTimeline");
  v61 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v61, "segmentTimeline");
  v62 = objc_retainAutoreleasedReturnValue();
  if ( !v62 )
  {
    objc_msgSend(v60, "videoTimeline");
    v70 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v70, "segmentTimeline");
    objc_retainAutoreleasedReturnValue();
    objc_storeStrong();
    goto LABEL_37;
  }
  objc_storeStrong();
  if ( !v62 )
  {
LABEL_37:
    objc_release();
    objc_release();
  }
  objc_release();
  objc_release();
LABEL_40:
  -[MLHAMPlayerItem createChunkLoaderWithDataLoader:manifestlessMPD:](
    v2,
    "createChunkLoaderWithDataLoader:manifestlessMPD:",
    v57,
    v60);
  v63 = objc_retainAutoreleasedReturnValue();
  v64 = v2->_chunkLoader;
  v2->_chunkLoader = (MLChunkLoader *)v63;
  objc_release();
  -[MLHAMPlayerItem setupVideoWithMPDProvider:](v2, "setupVideoWithMPDProvider:", v46);
  -[MLHAMPlayerItem setupAudioWithMPDProvider:](v2, "setupAudioWithMPDProvider:", v46);
  -[MLHAMPlayerItem setupTextWithMPDProvider:isManifestless:](v2, "setupTextWithMPDProvider:isManifestless:", v46, v59);
  v2->_itemState = 1LL;
  v65 = v2->_playerQueue;
  dispatch_sync();
  -[MLVideo streamingData](v2->_video, "streamingData");
  v66 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v66, "DRMParams");
  v67 = objc_retainAutoreleasedReturnValue();
  objc_release();
  objc_release();
  if ( v67 )
    -[MLDRMController prepare](v2->_DRMController, "prepare");
  objc_msgSend(v95, "probeURL");
  v68 = objc_retainAutoreleasedReturnValue();
  v69 = v2->_probeURLOnVideoPlay;
  v2->_probeURLOnVideoPlay = (NSURL *)v68;
  objc_release();
  -[MLHAMPlayerItem registerWithEventCenter](v2, "registerWithEventCenter");
  -[MLHAMPlayerItem setUpCaptionDisplayController](v2, "setUpCaptionDisplayController");
  if ( (_DWORD)v59
    && (unsigned int)-[MLHAMPlayerItem playerResponseIsLive](v2, "playerResponseIsLive")
    && (unsigned int)objc_msgSend((void *)v2->_config, "fetchManifestWhenNotActive") )
  {
    if ( (unsigned int)objc_msgSend(v2->_hamplayerHotConfig, "enableMetadataFetcher") )
      -[MLHAMPlayerItem setupManifestlessMetadataFetcherWithMPD:](v2, "setupManifestlessMetadataFetcherWithMPD:", v44);
  }
  -[MLHAMPlayerItem updateTextTrackDisabled](v2, "updateTextTrackDisabled");
  -[MLHAMPlayerItem updateVideoTrackDisabled](v2, "updateVideoTrackDisabled");
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
}

//----- (0000000001075434) ----------------------------------------------------
MLServerABRLoader *__cdecl -[MLServerABRLoader initWithQueue:dataLoader:playerEventCenter:playerItemEventCenter:streamingData:mediaCommonConfig:hamplayerConfig:onesieVideoData:QOEController:loadRetryPolicy:isLiveSource:livePlayerConfig:windowedLiveConfig:metadataRelay:delegate:latencyLogger:watchEndpointUstreamerConfig:periodID:firstRequestNumber:cache:](MLServerABRLoader *self, SEL a2, id a3, id a4, id a5, id a6, id a7, id a8, id a9, id a10, id a11, id a12, bool a13, id a14, id a15, id a16, id a17, id a18, id a19, signed __int64 a20, signed __int64 a21, id a22)
{
  MLServerABRLoader *v22; // STF8_8
  __int64 v23; // x24
  unsigned __int8 *v24; // x22
  __int64 v25; // x0
  __int64 v26; // x8
  __int64 v27; // x0
  __int64 v28; // x8
  __int64 v29; // x0
  __int64 v30; // x8
  void *v31; // x0
  void *v32; // x0
  __int64 v33; // x8
  void *v34; // x0
  void *v35; // x20
  void *v36; // x20
  void *v37; // x19
  void *v38; // x2
  __int64 v39; // x8
  _QWORD *v40; // x3
  _QWORD *v41; // x19
  __int64 v42; // x8
  _QWORD *v43; // x0
  void *v44; // x21
  void *v45; // x20
  void *v46; // x2
  __int64 v47; // x8
  _QWORD *v48; // x3
  void *v49; // x0
  void *v50; // x20
  __int64 v51; // x21
  __int64 v52; // x8
  _QWORD *v53; // x0
  __int64 v54; // x0
  _QWORD *v55; // x0
  __int64 v56; // x8
  _QWORD *v57; // x0
  __int64 v58; // x0
  __int64 v59; // x8
  void *v60; // x19
  _QWORD *v61; // x20
  __int64 v62; // x8
  _QWORD *v63; // x0
  __int64 v64; // x2
  __int64 v65; // x8
  _QWORD *v66; // x0
  __int64 v67; // x0
  void *v68; // x0
  void *v69; // x0
  __int64 v70; // x8
  __int64 v71; // x0
  void *v72; // x0
  void *v73; // x28
  void *v74; // x0
  __int64 v75; // x19
  signed __int64 v76; // x27
  __int64 v77; // x20
  int v78; // w8
  void *v79; // x25
  __int64 v80; // x20
  int v81; // w8
  void *v82; // x25
  __int64 v83; // x0
  __int64 v84; // x8
  __int64 v85; // x1
  __int64 v86; // x0
  __int64 v87; // x8
  __int64 v88; // x0
  __int64 v89; // x8
  __int64 v90; // x0
  __int64 v91; // x0
  __int64 v92; // x0
  __int64 v93; // x23
  void *v94; // x0
  void *v95; // x25
  void *v96; // x0
  void *v97; // x0
  void *v98; // x24
  char *v99; // x21
  int v100; // w0
  int v101; // w8
  int v102; // w9
  void *v103; // x0
  void *v104; // x1
  void *v105; // x0
  int v106; // w24
  void *v107; // x0
  void *v108; // x0
  void *v109; // x0
  void *v110; // x26
  char *v111; // x24
  int v112; // w0
  _DWORD *v113; // x8
  __int64 v114; // x9
  __int64 v115; // x0
  __int64 v116; // x0
  void *v117; // x0
  void *v118; // x0
  __int64 v119; // x8
  void *v120; // x0
  void *v121; // x0
  __int64 v122; // x8
  __int64 v123; // x0
  __int64 v124; // x8
  void *v125; // x20
  __int64 v126; // x21
  __int64 v127; // x19
  __int64 v128; // x0
  void *v129; // x0
  __int64 v130; // x8
  void *v131; // x0
  void *v132; // x19
  signed int v133; // w20
  signed __int64 v134; // x24
  __int64 v135; // x27
  __int64 v136; // x0
  __int64 v137; // x8
  __int128 v138; // q0
  void *v140; // [xsp+38h] [xbp-2C8h]
  __int64 v141; // [xsp+68h] [xbp-298h]
  __int64 v142; // [xsp+70h] [xbp-290h]
  __int64 v143; // [xsp+78h] [xbp-288h]
  __int64 v144; // [xsp+80h] [xbp-280h]
  void *v145; // [xsp+88h] [xbp-278h]
  void *v146; // [xsp+90h] [xbp-270h]
  void *v147; // [xsp+98h] [xbp-268h]
  void *v148; // [xsp+A0h] [xbp-260h]
  void *v149; // [xsp+A8h] [xbp-258h]
  void *v150; // [xsp+B0h] [xbp-250h]
  char v151; // [xsp+C0h] [xbp-240h]
  void *v152; // [xsp+C8h] [xbp-238h]
  int v153; // [xsp+D8h] [xbp-228h]
  void *v154; // [xsp+E8h] [xbp-218h]
  void *v155; // [xsp+F8h] [xbp-208h]
  void **v156; // [xsp+100h] [xbp-200h]
  __int64 v157; // [xsp+108h] [xbp-1F8h]
  __int64 (*v158)(); // [xsp+110h] [xbp-1F0h]
  void *v159; // [xsp+118h] [xbp-1E8h]
  void **v160; // [xsp+128h] [xbp-1D8h]
  __int64 v161; // [xsp+130h] [xbp-1D0h]
  __int64 (__fastcall *v162)(__int64); // [xsp+138h] [xbp-1C8h]
  void *v163; // [xsp+140h] [xbp-1C0h]
  __int64 v164; // [xsp+148h] [xbp-1B8h]
  __int128 v165; // [xsp+150h] [xbp-1B0h]
  __int128 v166; // [xsp+160h] [xbp-1A0h]
  __int128 v167; // [xsp+170h] [xbp-190h]
  __int128 v168; // [xsp+180h] [xbp-180h]
  MLServerABRLoader *v169; // [xsp+190h] [xbp-170h]
  __objc2_class *v170; // [xsp+198h] [xbp-168h]
  __int64 (__fastcall *(**v171)[9])(); // [xsp+1A8h] [xbp-158h]
  char v172; // [xsp+208h] [xbp-F8h]
  char v173; // [xsp+210h] [xbp-F0h]
  __int64 v174; // [xsp+290h] [xbp-70h]

  v22 = self;
  v142 = objc_retain();
  v141 = objc_retain();
  v23 = objc_retain();
  objc_retain();
  v147 = (void *)objc_retain();
  v149 = (void *)objc_retain();
  v148 = (void *)objc_retain();
  v150 = (void *)objc_retain();
  v143 = objc_retain();
  objc_retain();
  v146 = (void *)objc_retain();
  objc_retain();
  objc_retain();
  objc_initWeak();
  v144 = objc_retain();
  v145 = (void *)objc_retain();
  objc_retain();
  v169 = v22;
  v170 = &OBJC_CLASS___MLServerABRLoader;
  v24 = (unsigned __int8 *)objc_msgSendSuper2(&v169, "init");
  if ( v24 )
  {
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    InjectHAMClock();
    v25 = objc_retainAutoreleasedReturnValue();
    v26 = *((_QWORD *)v24 + 4);
    *((_QWORD *)v24 + 4) = v25;
    objc_release();
    InjectMLNetworkStatsProvider();
    v27 = objc_retainAutoreleasedReturnValue();
    v28 = *((_QWORD *)v24 + 5);
    *((_QWORD *)v24 + 5) = v27;
    objc_release();
    objc_storeStrong();
    v24[688] = a13;
    *((_QWORD *)v24 + 10) = a20;
    objc_msgSend(v148, "serverAbrConfig");
    v29 = objc_retainAutoreleasedReturnValue();
    v30 = *((_QWORD *)v24 + 78);
    *((_QWORD *)v24 + 78) = v29;
    objc_release();
    v24[889] = (unsigned __int64)objc_msgSend(*((void **)v24 + 78), "keepStallForLiveWhenCloseToSeekableEnd");
    v31 = (void *)objc_alloc();
    v32 = objc_msgSend(v31, "initWithQueue:playerEventCenter:", *((_QWORD *)v24 + 1), v23);
    v33 = *((_QWORD *)v24 + 7);
    *((_QWORD *)v24 + 7) = v32;
    objc_release();
    objc_storeStrong();
    objc_loadWeakRetained();
    objc_storeWeak();
    objc_release();
    objc_msgSend(v149, "mediaUstreamerRequestConfig");
    v34 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v34, "videoPlaybackUstreamerConfig");
    v35 = (void *)objc_retainAutoreleasedReturnValue();
    objc_release();
    if ( objc_msgSend(v35, "length") )
    {
      v36 = (void *)objc_retainAutorelease();
      v37 = objc_msgSend(v36, "bytes");
      v38 = objc_msgSend(v36, "length");
      *((_DWORD *)v24 + 38) |= 8u;
      v39 = *((_QWORD *)v24 + 18);
      v40 = (_QWORD *)(v39 & 0xFFFFFFFFFFFFFFFCLL);
      if ( v39 & 1 )
        v40 = (_QWORD *)*v40;
      sub_3886328((signed __int64 *)v24 + 41, v37, (size_t)v38, (__int64)v40);
    }
    if ( objc_msgSend(v145, "length") )
    {
      v171 = &off_65DEFB8;
      *((_DWORD *)v24 + 38) |= 2u;
      v41 = (_QWORD *)*((_QWORD *)v24 + 39);
      if ( !v41 )
      {
        v42 = *((_QWORD *)v24 + 18);
        v43 = (_QWORD *)(v42 & 0xFFFFFFFFFFFFFFFCLL);
        if ( v42 & 1 )
          v43 = (_QWORD *)*v43;
        v41 = sub_32D8478((__int64)v43);
        *((_QWORD *)v24 + 39) = v41;
      }
      v44 = (void *)objc_retainAutorelease();
      v45 = objc_msgSend(v44, "bytes");
      v46 = objc_msgSend(v44, "length");
      *((_DWORD *)v41 + 4) |= 8u;
      v47 = v41[1];
      v48 = (_QWORD *)(v47 & 0xFFFFFFFFFFFFFFFCLL);
      if ( v47 & 1 )
        v48 = (_QWORD *)*v48;
      sub_3886328(v41 + 6, v45, (size_t)v46, (__int64)v48);
    }
    InjectYTHotConfig();
    v140 = (void *)objc_retainAutoreleasedReturnValue();
    if ( (unsigned int)objc_msgSend(v140, "iosClientGlobalConfigIosFillMediaCapabilities") )
    {
      InjectMLMediaCapabilitiesProvider();
      v49 = (void *)objc_retainAutoreleasedReturnValue();
      v50 = objc_msgSend(v49, "mediaCapabilities");
      v171 = &off_65DF218;
      *((_DWORD *)v24 + 38) |= 1u;
      v51 = *((_QWORD *)v24 + 38);
      if ( !v51 )
      {
        v52 = *((_QWORD *)v24 + 18);
        v53 = (_QWORD *)(v52 & 0xFFFFFFFFFFFFFFFCLL);
        if ( v52 & 1 )
          v53 = (_QWORD *)*v53;
        sub_32DE85C((__int64)v53);
        v51 = v54;
        *((_QWORD *)v24 + 38) = v54;
      }
      v171 = &off_65DF388;
      *(_DWORD *)(v51 + 16) |= 0x20000000u;
      v55 = *(_QWORD **)(v51 + 176);
      if ( !v55 )
      {
        v56 = *(_QWORD *)(v51 + 8);
        v57 = (_QWORD *)(v56 & 0xFFFFFFFFFFFFFFFCLL);
        if ( v56 & 1 )
          v57 = (_QWORD *)*v57;
        v55 = sub_32E0D7C((__int64)v57);
        *(_QWORD *)(v51 + 176) = v55;
      }
      sub_32E0CEC((__int64)v55, (__int64)v50);
      objc_release();
    }
    if ( (unsigned int)objc_msgSend(v140, "iosClientGlobalConfigIosFillClientInfo") )
    {
      InjectMLClientInfoFiller();
      v58 = objc_retainAutoreleasedReturnValue();
      v59 = *((_QWORD *)v24 + 6);
      *((_QWORD *)v24 + 6) = v58;
      objc_release();
      v60 = (void *)*((_QWORD *)v24 + 6);
      v171 = &off_65DEFB8;
      *((_DWORD *)v24 + 38) |= 2u;
      v61 = (_QWORD *)*((_QWORD *)v24 + 39);
      if ( !v61 )
      {
        v62 = *((_QWORD *)v24 + 18);
        v63 = (_QWORD *)(v62 & 0xFFFFFFFFFFFFFFFCLL);
        if ( v62 & 1 )
          v63 = (_QWORD *)*v63;
        v61 = sub_32D8478((__int64)v63);
        *((_QWORD *)v24 + 39) = v61;
      }
      v171 = (__int64 (__fastcall *(**)[9])())&off_65DF738;
      *((_DWORD *)v61 + 4) |= 1u;
      v64 = v61[3];
      if ( !v64 )
      {
        v65 = v61[1];
        v66 = (_QWORD *)(v65 & 0xFFFFFFFFFFFFFFFCLL);
        if ( v65 & 1 )
          v66 = (_QWORD *)*v66;
        sub_3302AA0((signed __int64)v66);
        v64 = v67;
        v61[3] = v67;
      }
      objc_msgSend(v60, "fillStaticClientInfo:", v64);
    }
    *((_DWORD *)v24 + 32) = 31;
    objc_msgSend(v147, "adaptiveStreams");
    v68 = (void *)objc_retainAutoreleasedReturnValue();
    v69 = objc_msgSend(v68, "copy");
    v70 = *((_QWORD *)v24 + 11);
    *((_QWORD *)v24 + 11) = v69;
    objc_release();
    objc_release();
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v155 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v154 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v152 = (void *)objc_retainAutoreleasedReturnValue();
    v151 = (unsigned __int64)objc_msgSend(v146, "hasSubfragmentedFmp4");
    v153 = (unsigned __int64)objc_msgSend(v146, "hasSubfragmentedWebm");
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v71 = *((_QWORD *)v24 + 11);
    v72 = (void *)objc_retain();
    v73 = v72;
    v74 = objc_msgSend(v72, "countByEnumeratingWithState:objects:count:", &v165, &v173, 16LL);
    if ( v74 )
    {
      v75 = *(_QWORD *)v166;
      do
      {
        if ( (unsigned __int64)v74 <= 1 )
          v76 = 1LL;
        else
          v76 = (signed __int64)v74;
        if ( v151 & 1 )
        {
          v77 = 0LL;
          do
          {
            if ( *(_QWORD *)v166 != v75 )
              objc_enumerationMutation();
            v79 = *(void **)(*((_QWORD *)&v165 + 1) + 8 * v77);
            if ( (unsigned __int64)objc_msgSend(*(void **)(*((_QWORD *)&v165 + 1) + 8 * v77), "isVideo") & 1 )
            {
              objc_msgSend(v155, "addObject:", v79);
            }
            else if ( (unsigned __int64)objc_msgSend(v79, "isAudio") & 1 )
            {
              objc_msgSend(v154, "addObject:", v79);
            }
            else if ( (unsigned int)objc_msgSend(v79, "isText") )
            {
              objc_msgSend(v152, "addObject:", v79);
              if ( (unsigned int)objc_msgSend(v79, "itag") == 386 )
                v24[840] = 1;
            }
            if ( v24[688] )
            {
              if ( v24[704] || (unsigned __int64)objc_msgSend(v79, "MP4Format") & 1 )
                LOBYTE(v78) = 1;
              else
                v78 = v153 & (unsigned __int64)objc_msgSend(v79, "webMFormat");
              v24[704] = v78;
            }
            ++v77;
          }
          while ( v76 != v77 );
        }
        else
        {
          v80 = 0LL;
          do
          {
            if ( *(_QWORD *)v166 != v75 )
              objc_enumerationMutation();
            v82 = *(void **)(*((_QWORD *)&v165 + 1) + 8 * v80);
            if ( (unsigned int)objc_msgSend(*(void **)(*((_QWORD *)&v165 + 1) + 8 * v80), "isVideo") )
            {
              objc_msgSend(v155, "addObject:", v82);
            }
            else if ( (unsigned int)objc_msgSend(v82, "isAudio") )
            {
              objc_msgSend(v154, "addObject:", v82);
            }
            else if ( (unsigned int)objc_msgSend(v82, "isText") )
            {
              objc_msgSend(v152, "addObject:", v82);
              if ( (unsigned int)objc_msgSend(v82, "itag") == 386 )
                v24[840] = 1;
            }
            if ( v24[688] )
            {
              if ( v24[704] )
              {
                LOBYTE(v81) = 1;
              }
              else
              {
                objc_msgSend(v82, "MP4Format");
                v81 = v153 & (unsigned __int64)objc_msgSend(v82, "webMFormat");
              }
              v24[704] = v81;
            }
            ++v80;
          }
          while ( v76 != v80 );
        }
        v74 = objc_msgSend(v73, "countByEnumeratingWithState:objects:count:", &v165, &v173, 16LL);
      }
      while ( v74 );
    }
    objc_release();
    sub_FEF620();
    v83 = objc_retainAutoreleasedReturnValue();
    v84 = *((_QWORD *)v24 + 12);
    *((_QWORD *)v24 + 12) = v83;
    objc_release();
    v85 = *((_QWORD *)v24 + 77);
    sub_FEFB20();
    v86 = objc_retainAutoreleasedReturnValue();
    v87 = *((_QWORD *)v24 + 13);
    *((_QWORD *)v24 + 13) = v86;
    objc_release();
    sub_FF09DC();
    v88 = objc_retainAutoreleasedReturnValue();
    v89 = *((_QWORD *)v24 + 14);
    *((_QWORD *)v24 + 14) = v88;
    objc_release();
    v90 = *((_QWORD *)v24 + 12);
    v171 = &off_65DF5A8;
    sub_1076634(v90, (__int64)(v24 + 208));
    v91 = *((_QWORD *)v24 + 13);
    v171 = &off_65DF5A8;
    sub_1076634(v91, (__int64)(v24 + 160));
    v92 = *((_QWORD *)v24 + 14);
    v171 = &off_65DF5A8;
    sub_1076634(v92, (__int64)(v24 + 280));
    v160 = _NSConcreteStackBlock;
    v161 = 3254779904LL;
    v162 = sub_10767EC;
    v163 = &unk_4EA3DE0;
    v93 = objc_retain();
    v164 = v93;
    dispatch_async();
    objc_msgSend(v149, "sabrClientConfig");
    v94 = (void *)objc_retainAutoreleasedReturnValue();
    *(_DWORD *)(v93 + 668) = (unsigned __int64)objc_msgSend(v94, "defaultBackOffTimeMs");
    objc_release();
    objc_msgSend(v149, "serverReadaheadConfig");
    v95 = (void *)objc_retainAutoreleasedReturnValue();
    if ( v150 && (objc_msgSend(v150, "nextRequestPolicy"), v172) )
    {
      sub_3303044(&v171);
      objc_msgSend(v150, "nextRequestPolicy");
      if ( !v172 )
        goto LABEL_105;
      sub_330396C(v93 + 344, (__int64)&v171);
      if ( v172 )
        sub_3303044(&v171);
    }
    else if ( (unsigned int)objc_msgSend(v95, "hasNextRequestPolicy") )
    {
      objc_msgSend(v95, "nextRequestPolicy");
      v96 = (void *)objc_retainAutoreleasedReturnValue();
      objc_msgSend(v96, "data");
      if ( objc_retainAutoreleasedReturnValue() )
      {
        v97 = (void *)objc_retainAutorelease();
        if ( objc_msgSend(v97, "bytes") )
        {
          v98 = (void *)objc_retainAutorelease();
          v99 = (char *)objc_msgSend(v98, "bytes");
          v100 = (unsigned __int64)objc_msgSend(v98, "length");
          sub_3891760(v93 + 344, v99, v100);
        }
      }
      objc_release();
      objc_release();
    }
    else
    {
      v101 = *(_DWORD *)(v93 + 364);
      *(int32x2_t *)(v93 + 400) = vdup_n_s32(0xEA60u);
      v102 = *(_DWORD *)(v93 + 668);
      *(_DWORD *)(v93 + 364) = v101 | 0x16;
      *(_DWORD *)(v93 + 412) = v102;
    }
    objc_msgSend(v149, "serverPlaybackStartConfig");
    v103 = (void *)objc_retainAutoreleasedReturnValue();
    *(_BYTE *)(v93 + 440) = (unsigned __int64)objc_msgSend(v103, "enable");
    objc_release();
    if ( *(_BYTE *)(v93 + 440) )
    {
      v104 = objc_msgSend(v150, "playbackStartPolicy");
      if ( v104 )
      {
        sub_3304918(v93 + 448, (__int64)v104);
      }
      else
      {
        objc_msgSend(v149, "serverPlaybackStartConfig");
        v105 = (void *)objc_retainAutoreleasedReturnValue();
        v106 = (unsigned __int64)objc_msgSend(v105, "hasPlaybackStartPolicy");
        objc_release();
        if ( v106 )
        {
          objc_msgSend(v149, "serverPlaybackStartConfig");
          v107 = (void *)objc_retainAutoreleasedReturnValue();
          objc_msgSend(v107, "playbackStartPolicy");
          v108 = (void *)objc_retainAutoreleasedReturnValue();
          objc_msgSend(v108, "data");
          if ( objc_retainAutoreleasedReturnValue() )
          {
            v109 = (void *)objc_retainAutorelease();
            if ( objc_msgSend(v109, "bytes") )
            {
              v110 = (void *)objc_retainAutorelease();
              v111 = (char *)objc_msgSend(v110, "bytes");
              v112 = (unsigned __int64)objc_msgSend(v110, "length");
              sub_3891760(v93 + 448, v111, v112);
            }
          }
          objc_release();
          objc_release();
          objc_release();
        }
        else
        {
          v113 = *(_DWORD **)(v93 + 488);
          if ( v113 && (v114 = *(signed int *)(v93 + 480), (signed int)v114 < *v113) )
          {
            *(_DWORD *)(v93 + 480) = v114 + 1;
            v115 = *(_QWORD *)&v113[2 * v114 + 2];
          }
          else
          {
            v116 = sub_3304090(*(_QWORD *)(v93 + 472));
            v115 = sub_3897598(v93 + 472, v116);
          }
          *(_DWORD *)(v115 + 16) |= 2u;
          *(_DWORD *)(v115 + 32) = 5000;
        }
      }
    }
    objc_msgSend((void *)v93, "setQOEController:", v143);
    if ( v150 )
    {
      v117 = (void *)objc_alloc();
      v118 = objc_msgSend(
               v117,
               "initWithFormats:onesieVideoData:queue:delegate:latencyLogger:isLiveSource:playerItemEventCenter:cache:",
               *((_QWORD *)v24 + 13),
               v150,
               *((_QWORD *)v24 + 1),
               v93,
               v144,
               v24[688],
               *((_QWORD *)v24 + 2),
               *((_QWORD *)v24 + 114));
      v119 = *(_QWORD *)(v93 + 648);
      *(_QWORD *)(v93 + 648) = v118;
      objc_release();
      v120 = (void *)objc_alloc();
      v121 = objc_msgSend(
               v120,
               "initWithFormats:onesieVideoData:queue:delegate:latencyLogger:isLiveSource:playerItemEventCenter:cache:",
               *((_QWORD *)v24 + 12),
               v150,
               *((_QWORD *)v24 + 1),
               v93,
               v144,
               v24[688],
               *((_QWORD *)v24 + 2),
               *((_QWORD *)v24 + 114));
      v122 = *(_QWORD *)(v93 + 656);
      *(_QWORD *)(v93 + 656) = v121;
      objc_release();
    }
    InjectYTNetworkActiveController();
    v123 = objc_retainAutoreleasedReturnValue();
    v124 = *(_QWORD *)(v93 + 72);
    *(_QWORD *)(v93 + 72) = v123;
    objc_release();
    v125 = (void *)objc_alloc();
    v126 = *((_QWORD *)v24 + 2);
    objc_msgSend(v147, "serverABRStreamingURL");
    v127 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v149, "sabrClientConfig");
    v128 = objc_retainAutoreleasedReturnValue();
    v129 = objc_msgSend(
             v125,
             "initWithQueue:dataLoader:playerItemEventCenter:serverABRStreamingURL:SABRClientConfig:nextRequestNumber:",
             v142,
             v141,
             v126,
             v127,
             v128,
             a21);
    v130 = *(_QWORD *)(v93 + 696);
    *(_QWORD *)(v93 + 696) = v129;
    objc_release();
    objc_release();
    objc_release();
    objc_msgSend(v148, "stallPredictor");
    v131 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v131, "hamplayerDefaultStallPredictorConfig");
    v132 = (void *)objc_retainAutoreleasedReturnValue();
    objc_release();
    *(double *)(v93 + 856) = (double)(signed int)objc_msgSend(v132, "maxBufferReadaheadMs") / 1000.0;
    *(double *)(v93 + 864) = (double)(signed int)objc_msgSend(v132, "minBufferReadaheadMs") / 1000.0;
    v133 = (unsigned __int64)objc_msgSend(*((void **)v24 + 78), "continueLoadingTimerIntervalMs");
    if ( v133 >= 1 )
    {
      objc_initWeak();
      v134 = 1000000LL * (signed int)objc_msgSend(*((void **)v24 + 78), "continueLoadingTimerLeewayMs");
      v135 = *((_QWORD *)v24 + 1);
      v156 = _NSConcreteStackBlock;
      v157 = 3254779904LL;
      v158 = sub_1076834;
      v159 = &unk_4EB1AF0;
      objc_copyWeak();
      +[HAMTimer repeatingTimerWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:block:](
        &OBJC_CLASS___HAMTimer,
        "repeatingTimerWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:block:",
        v135,
        1000000LL * v133,
        1000000LL * v133,
        v134,
        &v156);
      v136 = objc_retainAutoreleasedReturnValue();
      v137 = *(_QWORD *)(v93 + 880);
      *(_QWORD *)(v93 + 880) = v136;
      objc_release();
      objc_destroyWeak();
      objc_destroyWeak();
    }
    *(_BYTE *)(v93 + 888) = (unsigned __int64)objc_msgSend(*((void **)v24 + 78), "coverChunkDiscontinuity");
    v138 = *(_OWORD *)kCMTimeInvalid;
    *(_QWORD *)(v93 + 592) = kCMTimeInvalid[2];
    *(_OWORD *)(v93 + 576) = v138;
    *(_BYTE *)(v93 + 689) = (unsigned __int64)objc_msgSend(v146, "isLiveHeadPlayable");
    *(_BYTE *)(v93 + 890) = (unsigned __int64)objc_msgSend(*((void **)v24 + 78), "allowMultipleServerSeek");
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
  }
  objc_release();
  objc_release();
  objc_release();
  objc_destroyWeak();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  objc_release();
  if ( __stack_chk_guard != v174 )
LABEL_105:
    sub_107BC5C();
  return (MLServerABRLoader *)v24;
}