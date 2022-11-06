__int64 __fastcall sub_194C27C(__int64 a1, __int64 a2)
{
  __int64 v2; // x19
  __int64 v3; // x20
  __int64 v4; // x0
  __int64 v5; // d0
  void **v7; // [xsp+8h] [xbp-48h]
  __int64 v8; // [xsp+10h] [xbp-40h]
  __int64 (__fastcall *v9)(_QWORD *); // [xsp+18h] [xbp-38h]
  void *v10; // [xsp+20h] [xbp-30h]
  __int64 v11; // [xsp+28h] [xbp-28h]
  __int64 v12; // [xsp+30h] [xbp-20h]
  __int64 v13; // [xsp+38h] [xbp-18h]

  v2 = a2;
  v3 = j_getOffset8Value_2();
  objc_msgSend(*(void **)(v3 + 56), "absoluteTime");
  v4 = *(_QWORD *)(v3 + 88);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472LL;
  v9 = sub_194D978;
  v10 = &unk_4EF9B38;
  v11 = v3;
  v12 = v5;
  v13 = v2;
  return dispatch_async(v4, &v7);
}