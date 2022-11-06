__int64 __fastcall sub_194C9D8(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  __int64 v4; // x21
  __int64 v5; // x19
  __int64 v6; // x22
  __int64 v7; // x20
  __int64 v8; // x0
  __int64 v9; // x19
  void *v10; // x0
  __int64 v11; // x0
  void *v12; // x0
  __int64 v13; // x21
  __int64 v14; // x0
  __int64 v15; // x23
  __int64 v16; // x0
  void *v17; // x22
  void *v18; // x0
  __int64 v19; // x0
  void *v20; // x0
  void *v21; // x25
  __int64 v22; // x26
  __int64 v23; // x22
  __int64 v24; // x0
  __int64 v25; // x0
  __int64 v26; // x0
  void *v27; // x0
  __int64 v28; // x22
  __int64 v29; // x0
  __int64 v30; // x0
  __int64 v31; // x0
  void *v33; // [xsp+18h] [xbp-58h]
  char v34; // [xsp+2Fh] [xbp-41h]

  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = j_getOffset8Value_5(a1);
  v8 = generateNewHttpResponse(v5);
  v9 = objc_retainAutoreleasedReturnValue(v8);
  v10 = objc_msgSend(&OBJC_CLASS___NSString, "stringWithUTF8String:", v4);
  v11 = objc_retainAutoreleasedReturnValue(v10);
  v12 = objc_msgSend(&OBJC_CLASS___NSURL, "URLWithString:", v11);
  v13 = objc_retainAutoreleasedReturnValue(v12);
  objc_release();
  sub_194C704((double *)v7);
  if ( (unsigned int)objc_msgSend(
                       *(void **)(v7 + 80),
                       "dataLoadTask:shouldFollowRedirectWithResponse:toURL:",
                       *(_QWORD *)(v7 + 72),
                       v9,
                       v13) )
  {
    v14 = sub_3DF9354(v6);
    if ( (_DWORD)v14 )
    {
      v15 = v14;
      v34 = 14;
      strcpy(&v33, "FollowRedirect");
      v16 = generateUserInfo(v7);
      v17 = (void *)objc_retainAutoreleasedReturnValue(v16);
      v18 = objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("%s|result=%d"), &v33, v15);
      v19 = objc_retainAutoreleasedReturnValue(v18);
      objc_msgSend(v17, "setObject:forKeyedSubscript:", v19, CFSTR("HAMErrorDetails"));
      objc_release();
      v20 = objc_msgSend(&OBJC_CLASS___NSError, "HAMErrorWithCode:userInfo:", 6000LL, v17);
      objc_retainAutoreleasedReturnValue(v20);
      objc_release();
      v22 = *(_QWORD *)(v7 + 72);
      v21 = *(void **)(v7 + 80);
      v23 = objc_retain();
      objc_msgSend(v21, "dataLoadTask:didCompleteWithError:", v22, v23);
      objc_msgSend(*(void **)(v7 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v7 + 72), v23);
      objc_release();
      v24 = *(_QWORD *)(v7 + 80);
      *(_QWORD *)(v7 + 80) = 0LL;
      objc_release();
      v25 = *(_QWORD *)(v7 + 48);
      *(_QWORD *)(v7 + 48) = 0LL;
      objc_release();
      objc_msgSend(*(void **)(v7 + 32), "invalidate");
      v26 = *(_QWORD *)(v7 + 32);
      *(_QWORD *)(v7 + 32) = 0LL;
      objc_release();
      sub_194BFB8(v7);
      objc_release();
      if ( v34 & 0x80000000 )
        operator delete(v33);
    }
  }
  else
  {
    v27 = objc_msgSend(
            &OBJC_CLASS___NSError,
            "HAMErrorWithURLResponse:userInfo:request:",
            v9,
            *(_QWORD *)(v7 + 40),
            *(_QWORD *)(v7 + 16));
    v28 = objc_retainAutoreleasedReturnValue(v27);
    objc_msgSend(*(void **)(v7 + 80), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v7 + 72), v28);
    objc_msgSend(*(void **)(v7 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v7 + 72), v28);
    v29 = *(_QWORD *)(v7 + 80);
    *(_QWORD *)(v7 + 80) = 0LL;
    objc_release();
    v30 = *(_QWORD *)(v7 + 48);
    *(_QWORD *)(v7 + 48) = 0LL;
    objc_release();
    objc_msgSend(*(void **)(v7 + 32), "invalidate");
    v31 = *(_QWORD *)(v7 + 32);
    *(_QWORD *)(v7 + 32) = 0LL;
    objc_release();
    sub_194BFB8(v7);
    objc_release();
  }
  objc_release();
  return objc_release();
}