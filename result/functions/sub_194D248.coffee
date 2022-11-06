__int64 __fastcall sub_194D248(__int64 a1)
{
  __int64 v1; // x19
  __int64 v2; // x0
  __int64 v3; // x0
  __int64 v4; // x0
  __int64 v5; // x0
  void **v7; // [xsp+8h] [xbp-38h]
  __int64 v8; // [xsp+10h] [xbp-30h]
  __int64 (__fastcall *v9)(__int64); // [xsp+18h] [xbp-28h]
  void *v10; // [xsp+20h] [xbp-20h]
  __int64 v11; // [xsp+28h] [xbp-18h]

  v1 = j_getOffset8Value_5(a1);
  objc_msgSend(*(void **)(v1 + 80), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v1 + 72), 0LL);
  objc_msgSend(*(void **)(v1 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v1 + 72), 0LL);
  v2 = *(_QWORD *)(v1 + 80);
  *(_QWORD *)(v1 + 80) = 0LL;
  objc_release();
  v3 = *(_QWORD *)(v1 + 48);
  *(_QWORD *)(v1 + 48) = 0LL;
  objc_release();
  objc_msgSend(*(void **)(v1 + 32), "invalidate");
  v4 = *(_QWORD *)(v1 + 32);
  *(_QWORD *)(v1 + 32) = 0LL;
  objc_release();
  v5 = *(_QWORD *)(v1 + 88);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472LL;
  v9 = sub_194D9AC;
  v10 = &unk_4EA3E50;
  v11 = v1;
  return dispatch_async(v5, &v7);
}