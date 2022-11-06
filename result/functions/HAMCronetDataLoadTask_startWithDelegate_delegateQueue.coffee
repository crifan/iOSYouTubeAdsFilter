void __cdecl -[HAMCronetDataLoadTask startWithDelegate:delegateQueue:](HAMCronetDataLoadTask *self, SEL a2, id inputDelegate, id inputDispatchQueue)
{
  struct objc_object *dispatchQueue; // x21
  struct objc_object *curDelegate; // x20
  HAMCronetDataLoadTask *curHAMCronetDataLoadTask; // x27
  struct objc_object *dispatchQueue_; // x23
  double absoluteTime; // d0
  __int64 CronetDataLoadTask; // x19
  NSURLRequest *request; // x28
  double timeoutInterval; // d8
  NSDictionary *userInfo; // x26
  struct objc_object *clock; // x24
  Cronet_Engine *engine; // ST30_8
  id request_; // x20
  id clock_; // x22
  HAMCronetDataLoadTask *curHAMCronetDataLoadTask_; // x25
  OS_dispatch_queue **v18; // x27
  __int64 v19; // x0
  Cronet_UrlRequestCallback *cronetUrlRequestCallback; // x21
  id clock__; // x0
  CronetDataLoadTask *CronetDataLoadTask_; // x22
  double clockAbsoluteTime; // d0
  struct objc_object *v24; // x0
  HAMDataLoadTaskObserver *MLHAMDataLoadTaskObserverImpl; // x0
  struct objc_object *v26; // x8
  Cronet_Executor *Cronet_ExecutorPtr; // x0
  void *Cronet_UrlRequestParamsPtr; // x19
  struct objc_object *v29; // x0
  NSString *httpMethod; // x28
  NSString *requestMethod_1; // x0
  char *requestMethodStr; // x0
  struct objc_object *v33; // x0
  id allHTTPHeaderFields; // x21
  struct objc_object *v35; // x0
  id HTTPBody; // x21
  Cronet_UploadDataProvider *Cronet_UploadDataProviderPtr; // x0
  struct objc_object *v38; // x0
  id v39; // x0
  struct objc_object *requestUrl; // x24
  struct objc_object *v41; // x0
  struct objc_object *requestUrlNSString; // x26
  Cronet_Executor *v43; // x5
  int Cronet_RESULT_InitWithParams; // w26
  OS_dispatch_queue *v45; // x0
  void (__fastcall *blockInvokeFunc)(__int64); // x8
  struct objc_object *inputDelegate_1; // x19
  struct objc_object *userInfo_1; // x23
  struct objc_object *dispatchQueue_2; // x24
  int Cronet_RESULT_Start; // w0
  id dispatchQueue_1; // [xsp+8h] [xbp-F8h]
  id userInfo_; // [xsp+10h] [xbp-F0h]
  id inputDelegate_; // [xsp+18h] [xbp-E8h]
  BOOL idempotent; // [xsp+2Ch] [xbp-D4h]
  struct objc_object *object; // [xsp+38h] [xbp-C8h]
  void **stackBlock; // [xsp+40h] [xbp-C0h]
  InternalMetadata v57; // [xsp+48h] [xbp-B8h]
  HasBits<1> v58[2]; // [xsp+50h] [xbp-B0h]
  void *v59; // [xsp+58h] [xbp-A8h]
  CronetDataLoadTask *v60; // [xsp+60h] [xbp-A0h]
  int v61; // [xsp+68h] [xbp-98h]
  void **globalBlock; // [xsp+70h] [xbp-90h]
  __int64 blockFlags; // [xsp+78h] [xbp-88h]
  void (__fastcall *blockInvoke)(__int64, struct objc_object *, struct objc_object *); // [xsp+80h] [xbp-80h]
  void **blockDescriptor; // [xsp+88h] [xbp-78h]
  void *v66; // [xsp+90h] [xbp-70h]

  dispatchQueue = inputDispatchQueue;
  curDelegate = inputDelegate;
  curHAMCronetDataLoadTask = self;
  inputDelegate_ = objc_retain(inputDelegate);
  dispatchQueue_ = objc_retain(dispatchQueue);
  objc_msgSend_3E84298((void *)curHAMCronetDataLoadTask->_clock, "absoluteTime");
  curHAMCronetDataLoadTask->_startTime = absoluteTime;
  CronetDataLoadTask = (__int64)&curHAMCronetDataLoadTask->_task;
  objc_storeStrong((id *)&curHAMCronetDataLoadTask->_task.delegate_, curDelegate);
  request = curHAMCronetDataLoadTask->_request;
  timeoutInterval = curHAMCronetDataLoadTask->_timeoutInterval;
  idempotent = curHAMCronetDataLoadTask->_idempotent;
  userInfo = curHAMCronetDataLoadTask->_userInfo;
  clock = (struct objc_object *)curHAMCronetDataLoadTask->_clock;
  engine = curHAMCronetDataLoadTask->_engine;
  request_ = objc_retain((id)curHAMCronetDataLoadTask->_request);
  userInfo_ = objc_retain((id)userInfo);
  clock_ = objc_retain(clock);
  curHAMCronetDataLoadTask_ = (HAMCronetDataLoadTask *)objc_retain((id)curHAMCronetDataLoadTask);
  dispatchQueue_1 = objc_retain(dispatchQueue_);
  objc_storeStrong((id *)&curHAMCronetDataLoadTask_->_task.parentTask_, (id)curHAMCronetDataLoadTask);
  objc_storeStrong((id *)&curHAMCronetDataLoadTask_->_task.URLRequest_, (id)request);
  curHAMCronetDataLoadTask_->_task.timeoutInterval_ = timeoutInterval;
  objc_storeStrong((id *)&curHAMCronetDataLoadTask_->_task.userInfo_, (id)userInfo);
  objc_storeStrong((id *)&curHAMCronetDataLoadTask_->_task.clock_, clock);
  v18 = &curHAMCronetDataLoadTask_->_task.queue_;
  objc_storeStrong((id *)&curHAMCronetDataLoadTask_->_task.queue_, dispatchQueue);
  curHAMCronetDataLoadTask_->_task.request_ = (Cronet_UrlRequest *)sub_3DF6D08(v19);
  cronetUrlRequestCallback = (Cronet_UrlRequestCallback *)mallocAndSetResponseCallbacks_3DF91D8(
                                                            (__int64)Cronet_UrlRequestCallback_OnRedirectReceived_194C9D8,
                                                            (__int64)Cronet_UrlRequestCallback_OnResponseStarted_194CCE4,
                                                            (__int64)Cronet_UrlRequestCallback_OnReadCompleted_194CFE8,
                                                            (__int64)Cronet_UrlRequestCallback_OnSucceeded_194D248,
                                                            (__int64)Cronet_UrlRequestCallback_OnFailed_194D310,
                                                            (__int64)Cronet_UrlRequestCallback_OnCanceled_194D5C0);
  setOffest8Value_3DF9198((__int64)cronetUrlRequestCallback, CronetDataLoadTask);
  curHAMCronetDataLoadTask_->_task.callback_ = cronetUrlRequestCallback;
  object = clock_;
  clock__ = clock_;
  CronetDataLoadTask_ = (CronetDataLoadTask *)CronetDataLoadTask;
  objc_msgSend_3E84298(clock__, "absoluteTime");
  curHAMCronetDataLoadTask_->_task.absoluteTime_ = clockAbsoluteTime;
  v24 = (struct objc_object *)InjectOptionalHAMDataLoadTaskObserver();
  MLHAMDataLoadTaskObserverImpl = (HAMDataLoadTaskObserver *)objc_retainAutoreleasedReturnValue_3E842EC(v24);
  v26 = (struct objc_object *)curHAMCronetDataLoadTask_->_task.observer_;
  curHAMCronetDataLoadTask_->_task.observer_ = MLHAMDataLoadTaskObserverImpl;
  objc_release_3E842BC(v26);
  objc_msgSend_3E84298(
    (void *)curHAMCronetDataLoadTask_->_task.observer_,
    "dataLoadTaskDidStart:",
    curHAMCronetDataLoadTask_);
  Cronet_ExecutorPtr = (Cronet_Executor *)Cronet_Executor_CreateWith_3DF9004(Cronet_Executor_ExecuteFunc_194C27C);
  curHAMCronetDataLoadTask_->_task.executor_ = Cronet_ExecutorPtr;
  setOffest8Value_3DF8FF8((__int64)Cronet_ExecutorPtr, CronetDataLoadTask);
  Cronet_UrlRequestParamsPtr = (void *)Cronet_UrlRequestParams_Create_3DFA39C();
  v29 = (struct objc_object *)objc_msgSend_3E84298(request_, "HTTPMethod");
  httpMethod = (NSString *)objc_retainAutoreleasedReturnValue_3E842EC(v29);
  if ( httpMethod )
  {
    requestMethod_1 = (NSString *)objc_retainAutorelease_3E842D4();
    requestMethodStr = (char *)objc_msgSend_3E84298(requestMethod_1, "UTF8String");
    Cronet_UrlRequestParams_http_method_set_3DFA3D0((__int64)Cronet_UrlRequestParamsPtr, (__int64)requestMethodStr);
  }
  if ( idempotent )
    Cronet_UrlRequestParams_idempotency_set_3DFA45C((__int64)Cronet_UrlRequestParamsPtr, 1);// 1=Cronet_UrlRequestParams_IDEMPOTENCY_IDEMPOTENT
  v33 = (struct objc_object *)objc_msgSend_3E84298(request_, "allHTTPHeaderFields");
  allHTTPHeaderFields = objc_retainAutoreleasedReturnValue_3E842EC(v33);
  globalBlock = _NSConcreteGlobalBlock;
  blockFlags = 0xD0800000LL;
  blockInvoke = cornetAddHeader_194C2FC;
  blockDescriptor = (void **)&unk_4EF9AF8;
  v66 = Cronet_UrlRequestParamsPtr;
  objc_msgSend_3E84298(allHTTPHeaderFields, "enumerateKeysAndObjectsUsingBlock:", &globalBlock);
  objc_release_3E842BC(allHTTPHeaderFields);
  v35 = (struct objc_object *)objc_msgSend_3E84298(request_, "HTTPBody");
  HTTPBody = objc_retainAutoreleasedReturnValue_3E842EC(v35);
  if ( objc_msgSend_3E84298(HTTPBody, "length") )
  {
    Cronet_UploadDataProviderPtr = (Cronet_UploadDataProvider *)Cronet_UploadDataProvider_CreateWith_3DF92E0(
                                                                  (__int64)Cronet_UploadDataProvider_GetLengthFunc_194C3C4,
                                                                  (__int64)Cronet_UploadDataProvider_ReadFunc_194C418,
                                                                  (__int64)Cronet_UploadDataProvider_RewindFunc_194C4F4,
                                                                  (__int64)Cronet_UploadDataProvider_CloseFunc_194C51C);
    curHAMCronetDataLoadTask_->_task.uploadDataProvider_ = Cronet_UploadDataProviderPtr;
    setOffest8Value_3DF92A0((__int64)Cronet_UploadDataProviderPtr, (__int64)CronetDataLoadTask_);
    Cronet_UrlRequestParams_upload_data_provider_set_3DFA3EC(
      (__int64)Cronet_UrlRequestParamsPtr,
      (__int64)curHAMCronetDataLoadTask_->_task.uploadDataProvider_);
    Cronet_UrlRequestParams_upload_data_provider_executor_set_3DFA3F4(
      (__int64)Cronet_UrlRequestParamsPtr,
      (__int64)curHAMCronetDataLoadTask_->_task.executor_);
  }
  v38 = (struct objc_object *)objc_msgSend_3E84298(request_, "URL");
  v39 = objc_retainAutoreleasedReturnValue_3E842EC(v38);
  requestUrl = v39;
  v41 = (struct objc_object *)objc_msgSend_3E84298(v39, "absoluteString");
  objc_retainAutoreleasedReturnValue_3E842EC(v41);
  requestUrlNSString = (struct objc_object *)objc_retainAutorelease_3E842D4();
  objc_msgSend_3E84298(requestUrlNSString, "cStringUsingEncoding:", 4LL);
  objc_release_3E842BC(requestUrlNSString);
  objc_release_3E842BC(requestUrl);
  v43 = curHAMCronetDataLoadTask_->_task.executor_;
  Cronet_RESULT_InitWithParams = Cronet_UrlRequest_InitWithParams_3DF931C((__int64)curHAMCronetDataLoadTask_->_task.request_);
  Cronet_UrlRequestParams_Destroy_3DFA3B8(Cronet_UrlRequestParamsPtr);
  if ( Cronet_RESULT_InitWithParams )
  {
    v45 = *v18;
    stackBlock = _NSConcreteStackBlock;
    blockInvokeFunc = InitWithParamsErrorCallback_194C520;
    userInfo_1 = userInfo_;
    inputDelegate_1 = inputDelegate_;
    dispatchQueue_2 = dispatchQueue_1;
LABEL_11:
    v57.var0 = 0xC0000000LL;
    *(_QWORD *)v58[0].var0 = blockInvokeFunc;
    v59 = &unk_4EF9B18;
    v60 = CronetDataLoadTask_;
    v61 = Cronet_RESULT_InitWithParams;
    dispatch_async(v45, &stackBlock);
    goto LABEL_12;
  }
  tryResetTimeoutTimer_194C704(CronetDataLoadTask_);
  Cronet_RESULT_Start = callCronetUrlRequestStart_3DF9338((__int64)curHAMCronetDataLoadTask_->_task.request_);
  userInfo_1 = userInfo_;
  inputDelegate_1 = inputDelegate_;
  dispatchQueue_2 = dispatchQueue_1;
  if ( Cronet_RESULT_Start )
  {
    Cronet_RESULT_InitWithParams = Cronet_RESULT_Start;
    v45 = *v18;
    stackBlock = _NSConcreteStackBlock;
    blockInvokeFunc = startErrorCallback_194C7FC;
    goto LABEL_11;
  }
LABEL_12:
  objc_release_3E842BC(HTTPBody);
  objc_release_3E842BC((id)httpMethod);
  objc_release_3E842BC(dispatchQueue_2);
  objc_release_3E842BC((id)curHAMCronetDataLoadTask_);
  objc_release_3E842BC(object);
  objc_release_3E842BC(userInfo_1);
  objc_release_3E842BC(request_);
  objc_release_3E842BC(dispatchQueue_2);
  objc_release_3E842BC(inputDelegate_1);
}