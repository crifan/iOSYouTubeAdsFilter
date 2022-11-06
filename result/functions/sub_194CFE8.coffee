__int64 __fastcall sub_194CFE8(__int64 a1, __int64 a2, __int64 a3, __int64 a4, size_t a5)
{
  size_t v5; // x23
  __int64 v6; // x22
  __int64 v7; // x0
  __int64 v8; // x20
  __int64 v9; // x0
  size_t v10; // x0
  unsigned __int64 v11; // x8
  unsigned __int64 v12; // x9
  bool v13; // cf
  __int64 v14; // x0
  __int64 v15; // x22
  __int64 v16; // x0
  void *v17; // x21
  void *v18; // x0
  __int64 v19; // x0
  void *v20; // x0
  void *v21; // x24
  __int64 v22; // x25
  __int64 v23; // x21
  __int64 v24; // x0
  __int64 v25; // x0
  __int64 v26; // x0
  void *v28; // [xsp+18h] [xbp-58h]
  char v29; // [xsp+2Fh] [xbp-41h]

  v5 = a5;
  v6 = a2;
  v7 = j_getOffset8Value_5(a1);
  v8 = v7;
  v9 = dispatch_data_create(*(_QWORD *)(v7 + 96), v5, 0LL, _dispatch_data_destructor_free);
  *(_QWORD *)(v8 + 96) = 0LL;
  *(_QWORD *)(v8 + 168) += v5;
  objc_msgSend(*(void **)(v8 + 80), "dataLoadTask:didReceiveData:", *(_QWORD *)(v8 + 72), v9);
  v10 = *(_QWORD *)(v8 + 120);
  if ( v10 == v5 )
  {
    v11 = 2 * v5;
    v12 = *(_QWORD *)(v8 + 112);
    v13 = v12 >= 2 * v5;
LABEL_5:
    if ( v13 )
      v10 = v11;
    else
      v10 = v12;
    *(_QWORD *)(v8 + 120) = v10;
    goto LABEL_9;
  }
  v11 = v10 >> 1;
  if ( v10 >> 1 > v5 )
  {
    v12 = *(_QWORD *)(v8 + 104);
    v13 = v11 >= v12;
    goto LABEL_5;
  }
LABEL_9:
  *(_QWORD *)(v8 + 96) = malloc(v10);
  sub_194C704((double *)v8);
  v14 = sub_3DF9370(v6);
  if ( (_DWORD)v14 )
  {
    v15 = v14;
    v29 = 4;
    LODWORD(v28) = 1684104530;
    BYTE4(v28) = 0;
    v16 = generateUserInfo(v8);
    v17 = (void *)objc_retainAutoreleasedReturnValue(v16);
    v18 = objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("%s|result=%d"), &v28, v15);
    v19 = objc_retainAutoreleasedReturnValue(v18);
    objc_msgSend(v17, "setObject:forKeyedSubscript:", v19, CFSTR("HAMErrorDetails"));
    objc_release();
    v20 = objc_msgSend(&OBJC_CLASS___NSError, "HAMErrorWithCode:userInfo:", 6000LL, v17);
    objc_retainAutoreleasedReturnValue(v20);
    objc_release();
    v22 = *(_QWORD *)(v8 + 72);
    v21 = *(void **)(v8 + 80);
    v23 = objc_retain();
    objc_msgSend(v21, "dataLoadTask:didCompleteWithError:", v22, v23);
    objc_msgSend(*(void **)(v8 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v8 + 72), v23);
    objc_release();
    v24 = *(_QWORD *)(v8 + 80);
    *(_QWORD *)(v8 + 80) = 0LL;
    objc_release();
    v25 = *(_QWORD *)(v8 + 48);
    *(_QWORD *)(v8 + 48) = 0LL;
    objc_release();
    objc_msgSend(*(void **)(v8 + 32), "invalidate");
    v26 = *(_QWORD *)(v8 + 32);
    *(_QWORD *)(v8 + 32) = 0LL;
    objc_release();
    sub_194BFB8(v8);
    objc_release();
    if ( v29 & 0x80000000 )
      operator delete(v28);
  }
  return objc_release();
}