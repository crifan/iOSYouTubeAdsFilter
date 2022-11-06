__int64 __fastcall sub_194D5C0(__int64 a1)
{
  __int64 v1; // x0
  __int64 v2; // x19
  __int64 v3; // x0
  __int64 v4; // x0
  void *v5; // x0
  __int64 v6; // x21
  __int64 v7; // x0
  __int64 v8; // x0
  __int64 v9; // x0
  __int64 v10; // x0
  void **v12; // [xsp+8h] [xbp-48h]
  __int64 v13; // [xsp+10h] [xbp-40h]
  __int64 (__fastcall *v14)(__int64); // [xsp+18h] [xbp-38h]
  void *v15; // [xsp+20h] [xbp-30h]
  __int64 v16; // [xsp+28h] [xbp-28h]

  v1 = j_getOffset8Value_5(a1);
  v2 = v1;
  v3 = generateUserInfo(v1);
  v4 = objc_retainAutoreleasedReturnValue(v3);
  v5 = objc_msgSend(&OBJC_CLASS___NSError, "HAMErrorWithCode:userInfo:", 10000LL, v4);
  v6 = objc_retainAutoreleasedReturnValue(v5);
  objc_msgSend(*(void **)(v2 + 80), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v2 + 72), v6);
  objc_msgSend(*(void **)(v2 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v2 + 72), v6);
  v7 = *(_QWORD *)(v2 + 80);
  *(_QWORD *)(v2 + 80) = 0LL;
  objc_release();
  v8 = *(_QWORD *)(v2 + 48);
  *(_QWORD *)(v2 + 48) = 0LL;
  objc_release();
  objc_msgSend(*(void **)(v2 + 32), "invalidate");
  v9 = *(_QWORD *)(v2 + 32);
  *(_QWORD *)(v2 + 32) = 0LL;
  objc_release();
  v10 = *(_QWORD *)(v2 + 88);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472LL;
  v14 = sub_194D9AC;
  v15 = &unk_4EA3E50;
  v16 = v2;
  dispatch_async(v10, &v12);
  objc_release();
  return objc_release();
}