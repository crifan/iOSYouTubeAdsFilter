// 疑似decrypt body的函数
MLOnesieRequestFactory onesieRequestForPlayerRequest:dataLoader:context:cryptor:requestNumber:error:
// response callbacks
  v16 = sub_3DF91D8(
        // 检查是否要redirect
          (__int64)sub_194C9D8,
        // 检查是不是收到的response
          (__int64)sub_194CCE4,
            YTCronetSingleCompletionFetcherTask dataLoadTask:didReceiveResponse:
        // 检查response里面是不是有data，data对应的task是不是完成了
          (__int64)sub_194CFE8,
        // 检查dataLoader task是不是报错了 函数末尾调了一个dispatch_async但是没有block
          (__int64)sub_194D248,
        // 调用cronet库处理请求，此时应该还在二进制阶段
          (__int64)sub_194D310,
        // 检查dataLoader task是不是报错了
          (__int64)sub_194D5C0);

//----- (000000000194BB48) ----------------------------------------------------
void __cdecl -[HAMCronetDataLoadTask startWithDelegate:delegateQueue:](HAMCronetDataLoadTask *self, SEL a2, id a3, id a4)
{
  HAMCronetDataLoadTask *v4; // x27
  double v5; // d0
  signed __int64 v6; // x19
  NSURLRequest *v7; // x28
  double v8; // d8
  NSDictionary *v9; // x26
  HAMClock *v10; // x24
  Cronet_Engine *v11; // ST30_8
  void *v12; // x20
  __int64 v13; // x22
  __int64 v14; // x25
  __int64 *v15; // x27
  _QWORD *v16; // x21
  void *v17; // x0
  __int64 v18; // x22
  __int64 v19; // d0
  __int64 v20; // x0
  __int64 v21; // x8
  void *v22; // x19
  void *v23; // x0
  void *v24; // x0
  void *v25; // x0
  void *v26; // x0
  void *v27; // x0
  void *v28; // x0
  __int64 v29; // x5
  int v30; // w26
  __int64 v31; // x0
  __int64 v32; // x0
  BOOL v33; // [xsp+2Ch] [xbp-D4h]
  void **v34; // [xsp+70h] [xbp-90h]
  __int64 v35; // [xsp+78h] [xbp-88h]
  void (__fastcall *v36)(__int64); // [xsp+80h] [xbp-80h]
  void *v37; // [xsp+88h] [xbp-78h]
  void *v38; // [xsp+90h] [xbp-70h]

  v4 = self;
  objc_retain();
  objc_retain();
  objc_msgSend((void *)v4->_clock, "absoluteTime");
  v4->_startTime = v5;
  v6 = (signed __int64)&v4->_task;
  objc_storeStrong();
  v7 = v4->_request;
  v8 = v4->_timeoutInterval;
  v33 = v4->_idempotent;
  v9 = v4->_userInfo;
  v10 = v4->_clock;
  v11 = v4->_engine;
  v12 = (void *)objc_retain();
  objc_retain();
  v13 = objc_retain();
  v14 = objc_retain();
  objc_retain();
  objc_storeStrong();
  objc_storeStrong();
  *(double *)(v14 + 40) = v8;
  objc_storeStrong();
  objc_storeStrong();
  v15 = (__int64 *)(v14 + 104);
  objc_storeStrong();
  *(_QWORD *)(v14 + 160) = sub_3DF6D08();
  v16 = sub_3DF91D8(
          (__int64)sub_194C9D8,
          (__int64)sub_194CCE4,
          (__int64)sub_194CFE8,
          (__int64)sub_194D248,
          (__int64)sub_194D310,
          (__int64)sub_194D5C0);
  sub_3DF9198();
  *(_QWORD *)(v14 + 168) = v16;
  v17 = (void *)v13;
  v18 = v6;
  objc_msgSend(v17, "absoluteTime");
  *(_QWORD *)(v14 + 80) = v19;
  InjectOptionalHAMDataLoadTaskObserver();
  v20 = objc_retainAutoreleasedReturnValue();
  v21 = *(_QWORD *)(v14 + 64);
  *(_QWORD *)(v14 + 64) = v20;
  objc_release();
  objc_msgSend(*(void **)(v14 + 64), "dataLoadTaskDidStart:", v14);
  *(_QWORD *)(v14 + 152) = sub_3DF9004();
  sub_3DF8FF8();
  v22 = (void *)sub_3DFA39C();
  objc_msgSend(v12, "HTTPMethod");
  if ( objc_retainAutoreleasedReturnValue() )
  {
    v23 = (void *)objc_retainAutorelease();
    v24 = objc_msgSend(v23, "UTF8String");
    sub_3DFA3D0(v22, v24);
  }
  if ( v33 )
    sub_3DFA45C((__int64)v22, 1);
  objc_msgSend(v12, "allHTTPHeaderFields");
  v25 = (void *)objc_retainAutoreleasedReturnValue();
  v34 = _NSConcreteGlobalBlock;
  v35 = 3498049536LL;
  v36 = sub_194C2FC;
  v37 = &unk_4EF9AF8;
  v38 = v22;
  objc_msgSend(v25, "enumerateKeysAndObjectsUsingBlock:", &v34);
  objc_release();
  objc_msgSend(v12, "HTTPBody");
  v26 = (void *)objc_retainAutoreleasedReturnValue();
  if ( objc_msgSend(v26, "length") )
  {
    *(_QWORD *)(v14 + 176) = sub_3DF92E0();
    sub_3DF92A0();
    sub_3DFA3EC((__int64)v22, *(_QWORD *)(v14 + 176));
    sub_3DFA3F4((__int64)v22, *(_QWORD *)(v14 + 152));
  }
  objc_msgSend(v12, "URL");
  v27 = (void *)objc_retainAutoreleasedReturnValue();
  objc_msgSend(v27, "absoluteString");
  objc_retainAutoreleasedReturnValue();
  v28 = (void *)objc_retainAutorelease();
  objc_msgSend(v28, "cStringUsingEncoding:", 4LL);
  objc_release();
  objc_release();
  v29 = *(_QWORD *)(v14 + 152);
  v30 = sub_3DF931C(*(_QWORD *)(v14 + 160));
  sub_3DFA3B8(v22);
  if ( v30 )
  {
    v31 = *v15;
LABEL_11:
    dispatch_async();
    goto LABEL_12;
  }
  sub_194C704(v18);
  if ( (unsigned int)sub_3DF9338(*(_QWORD *)(v14 + 160)) )
  {
    v32 = *v15;
    goto LABEL_11;
  }
LABEL_12:
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
//----- (000000000194CCE4) ----------------------------------------------------
void __fastcall sub_194CCE4(__int64 a1, __int64 a2, __int64 a3)
{
  __int64 v3; // x21
  __int64 v4; // x20
  __int64 v5; // x0
  __int64 v6; // x19
  __int64 v7; // x0
  __int64 v8; // x8
  __int64 v9; // x20
  __int64 v10; // x0
  __int64 v11; // x0
  __int64 v12; // x0
  __int64 v13; // x0
  __int64 v14; // x21
  void *v15; // x20
  __int64 v16; // x0
  void *v17; // x23
  __int64 v18; // x24
  __int64 v19; // x20
  __int64 v20; // x0
  __int64 v21; // x0
  __int64 v22; // x0
  void *v23; // [xsp+18h] [xbp-48h]
  char v24; // [xsp+2Fh] [xbp-31h]

  v3 = a3;
  v4 = a2;
  v5 = sub_3DF919C();
  if ( !*(_BYTE *)(v5 + 8) )
  {
    v6 = v5;
    sub_194D6D8(v3);
    v7 = objc_retainAutoreleasedReturnValue();
    v8 = *(_QWORD *)v6;
    *(_QWORD *)v6 = v7;
    objc_release();
    objc_msgSend(*(void **)(v6 + 80), "dataLoadTask:didReceiveResponse:", *(_QWORD *)(v6 + 72), *(_QWORD *)v6);
    if ( (signed int)sub_3DFA210(v3) < 400 )
    {
      *(_QWORD *)(v6 + 96) = malloc(*(_QWORD *)(v6 + 120));
      sub_3DF8F44();
      sub_3DF8EFC();
      sub_194C704(v6);
      v13 = sub_3DF9370(v4);
      if ( (_DWORD)v13 )
      {
        v14 = v13;
        v24 = 4;
        LODWORD(v23) = 1684104530;
        BYTE4(v23) = 0;
        sub_194D8C8(v6);
        v15 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("%s|result=%d"), &v23, v14);
        v16 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(v15, "setObject:forKeyedSubscript:", v16, CFSTR("HAMErrorDetails"));
        objc_release();
        objc_msgSend(&OBJC_CLASS___NSError, "HAMErrorWithCode:userInfo:", 6000LL, v15);
        objc_retainAutoreleasedReturnValue();
        objc_release();
        v18 = *(_QWORD *)(v6 + 72);
        v17 = *(void **)(v6 + 80);
        v19 = objc_retain();
        objc_msgSend(v17, "dataLoadTask:didCompleteWithError:", v18, v19);
        objc_msgSend(*(void **)(v6 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v6 + 72), v19);
        objc_release();
        v20 = *(_QWORD *)(v6 + 80);
        *(_QWORD *)(v6 + 80) = 0LL;
        objc_release();
        v21 = *(_QWORD *)(v6 + 48);
        *(_QWORD *)(v6 + 48) = 0LL;
        objc_release();
        objc_msgSend(*(void **)(v6 + 32), "invalidate");
        v22 = *(_QWORD *)(v6 + 32);
        *(_QWORD *)(v6 + 32) = 0LL;
        objc_release();
        sub_194BFB8(v6);
        objc_release();
        if ( v24 & 0x80000000 )
          operator delete(v23);
      }
    }
    else
    {
      objc_msgSend(
        &OBJC_CLASS___NSError,
        "HAMErrorWithURLResponse:userInfo:request:",
        *(_QWORD *)v6,
        *(_QWORD *)(v6 + 40),
        *(_QWORD *)(v6 + 16));
      v9 = objc_retainAutoreleasedReturnValue();
      objc_msgSend(*(void **)(v6 + 80), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v6 + 72), v9);
      objc_msgSend(*(void **)(v6 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v6 + 72), v9);
      v10 = *(_QWORD *)(v6 + 80);
      *(_QWORD *)(v6 + 80) = 0LL;
      objc_release();
      v11 = *(_QWORD *)(v6 + 48);
      *(_QWORD *)(v6 + 48) = 0LL;
      objc_release();
      objc_msgSend(*(void **)(v6 + 32), "invalidate");
      v12 = *(_QWORD *)(v6 + 32);
      *(_QWORD *)(v6 + 32) = 0LL;
      objc_release();
      sub_194BFB8(v6);
      objc_release();
    }
  }
}