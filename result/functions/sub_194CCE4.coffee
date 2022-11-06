void __fastcall sub_194CCE4(__int64 a1, __int64 a2, __int64 a3)
{
  __int64 v3; // x21
  __int64 v4; // x20
  __int64 v5; // x0
  double *v6; // x19
  __int64 newNSHTTPURLResponse; // x0
  __int64 newNSHTTPURLResponse_; // x0
  __int64 v9; // x8
  void *v10; // x0
  __int64 v11; // x20
  __int64 v12; // x0
  __int64 v13; // x0
  __int64 v14; // x0
  __int64 v15; // x0
  __int64 v16; // x0
  __int64 v17; // x21
  __int64 v18; // x0
  void *v19; // x20
  void *v20; // x0
  __int64 v21; // x0
  void *v22; // x0
  void *v23; // x23
  __int64 v24; // x24
  __int64 v25; // x20
  __int64 v26; // x0
  __int64 v27; // x0
  __int64 v28; // x0
  void *v29; // [xsp+18h] [xbp-48h]
  char v30; // [xsp+2Fh] [xbp-31h]

  v3 = a3;
  v4 = a2;
  v5 = j_getOffset8Value_5(a1);
  if ( !*(_BYTE *)(v5 + 8) )
  {
    v6 = (double *)v5;
    newNSHTTPURLResponse = generateNewHttpResponse(v3);
    newNSHTTPURLResponse_ = objc_retainAutoreleasedReturnValue(newNSHTTPURLResponse);
    v9 = *(_QWORD *)v6;
    *(_QWORD *)v6 = newNSHTTPURLResponse_;
    objc_release();
    objc_msgSend(*((void **)v6 + 10), "dataLoadTask:didReceiveResponse:", *((_QWORD *)v6 + 9), *(_QWORD *)v6);
    if ( (signed int)getResponseStatusCode(v3) < 400 )
    {
      *((_QWORD *)v6 + 12) = malloc(*((_QWORD *)v6 + 15));
      v15 = sub_3DF8F44();
      sub_3DF8EFC(v15, (__int64)v6);
      sub_194C704(v6);
      v16 = sub_3DF9370(v4);
      if ( (_DWORD)v16 )
      {
        v17 = v16;
        v30 = 4;
        LODWORD(v29) = 1684104530;
        BYTE4(v29) = 0;
        v18 = generateUserInfo((__int64)v6);
        v19 = (void *)objc_retainAutoreleasedReturnValue(v18);
        v20 = objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("%s|result=%d"), &v29, v17);
        v21 = objc_retainAutoreleasedReturnValue(v20);
        objc_msgSend(v19, "setObject:forKeyedSubscript:", v21, CFSTR("HAMErrorDetails"));
        objc_release();
        v22 = objc_msgSend(&OBJC_CLASS___NSError, "HAMErrorWithCode:userInfo:", 6000LL, v19);
        objc_retainAutoreleasedReturnValue(v22);
        objc_release();
        v24 = *((_QWORD *)v6 + 9);
        v23 = (void *)*((_QWORD *)v6 + 10);
        v25 = objc_retain();
        objc_msgSend(v23, "dataLoadTask:didCompleteWithError:", v24, v25);
        objc_msgSend(*((void **)v6 + 6), "dataLoadTask:didCompleteWithError:", *((_QWORD *)v6 + 9), v25);
        objc_release();
        v26 = *((_QWORD *)v6 + 10);
        v6[10] = 0.0;
        objc_release();
        v27 = *((_QWORD *)v6 + 6);
        v6[6] = 0.0;
        objc_release();
        objc_msgSend(*((void **)v6 + 4), "invalidate");
        v28 = *((_QWORD *)v6 + 4);
        v6[4] = 0.0;
        objc_release();
        sub_194BFB8(v6);
        objc_release();
        if ( v30 & 0x80000000 )
          operator delete(v29);
      }
    }
    else
    {
      v10 = objc_msgSend(
              &OBJC_CLASS___NSError,
              "HAMErrorWithURLResponse:userInfo:request:",
              *(_QWORD *)v6,
              *((_QWORD *)v6 + 5),
              *((_QWORD *)v6 + 2));
      v11 = objc_retainAutoreleasedReturnValue(v10);
      objc_msgSend(*((void **)v6 + 10), "dataLoadTask:didCompleteWithError:", *((_QWORD *)v6 + 9), v11);
      objc_msgSend(*((void **)v6 + 6), "dataLoadTask:didCompleteWithError:", *((_QWORD *)v6 + 9), v11);
      v12 = *((_QWORD *)v6 + 10);
      v6[10] = 0.0;
      objc_release();
      v13 = *((_QWORD *)v6 + 6);
      v6[6] = 0.0;
      objc_release();
      objc_msgSend(*((void **)v6 + 4), "invalidate");
      v14 = *((_QWORD *)v6 + 4);
      v6[4] = 0.0;
      objc_release();
      sub_194BFB8(v6);
      objc_release();
    }
  }
}