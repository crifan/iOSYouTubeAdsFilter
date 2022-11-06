__int64 __fastcall sub_194D310(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  unsigned int *v4; // x22
  __int64 v5; // x19
  void *newMutableArray; // x0
  void *newMutableArray_; // x20
  __int64 cronetNumber; // x0
  int cronetNumber_; // w21
  void *cronetNumberString; // x0
  __int64 cronetNumberString_; // x0
  __int64 internalNumber; // x0
  void *internalNumberString; // x0
  __int64 internalNumberString_; // x0
  __int64 quicNumber; // x0
  void *quicNumberString; // x0
  __int64 quicNumberString_; // x0
  __int64 userInfo; // x0
  void *userInfo_; // x22
  void *joinedString; // x0
  __int64 joinedString_; // x0
  signed __int64 errorCode; // x2
  void *newHamError; // x0
  __int64 newHamError_; // x21
  __int64 v25; // x0
  __int64 v26; // x0
  __int64 v27; // x0
  __int64 v28; // x0
  void **v30; // [xsp+8h] [xbp-68h]
  __int64 v31; // [xsp+10h] [xbp-60h]
  __int64 (__fastcall *v32)(__int64); // [xsp+18h] [xbp-58h]
  void *v33; // [xsp+20h] [xbp-50h]
  __int64 v34; // [xsp+28h] [xbp-48h]

  v4 = (unsigned int *)a4;
  v5 = j_getOffset8Value_5(a1);
  newMutableArray = objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
  newMutableArray_ = (void *)objc_retainAutoreleasedReturnValue(newMutableArray);
  cronetNumber = getValue(v4);
  cronetNumber_ = cronetNumber;
  cronetNumberString = objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("cronet=%d"), cronetNumber);
  cronetNumberString_ = objc_retainAutoreleasedReturnValue(cronetNumberString);
  objc_msgSend(newMutableArray_, "addObject:", cronetNumberString_);
  objc_release();
  internalNumber = getOffset32Value((__int64)v4);
  internalNumberString = objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("internal=%d"), internalNumber);
  internalNumberString_ = objc_retainAutoreleasedReturnValue(internalNumberString);
  objc_msgSend(newMutableArray_, "addObject:", internalNumberString_);
  objc_release();
  if ( cronetNumber_ == 10 )
  {
    quicNumber = getOffset40Value((__int64)v4);
    quicNumberString = objc_msgSend(&OBJC_CLASS___NSString, "stringWithFormat:", CFSTR("quic=%d"), quicNumber);
    quicNumberString_ = objc_retainAutoreleasedReturnValue(quicNumberString);
    objc_msgSend(newMutableArray_, "addObject:", quicNumberString_);
    objc_release();
  }
  userInfo = generateUserInfo(v5);
  userInfo_ = (void *)objc_retainAutoreleasedReturnValue(userInfo);
  joinedString = objc_msgSend(newMutableArray_, "componentsJoinedByString:", CFSTR("|"));
  joinedString_ = objc_retainAutoreleasedReturnValue(joinedString);
  objc_msgSend(userInfo_, "setObject:forKeyedSubscript:", joinedString_, CFSTR("HAMErrorDetails"));
  objc_release();
  if ( (unsigned int)(cronetNumber_ - 1) > 5 )
    errorCode = 6000LL;
  else
    errorCode = (signed __int64)*(&off_4956730 + cronetNumber_ - 1);
  newHamError = objc_msgSend(&OBJC_CLASS___NSError, "HAMErrorWithCode:userInfo:", errorCode, userInfo_);
  newHamError_ = objc_retainAutoreleasedReturnValue(newHamError);
  objc_msgSend(*(void **)(v5 + 80), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v5 + 72), newHamError_);
  objc_msgSend(*(void **)(v5 + 48), "dataLoadTask:didCompleteWithError:", *(_QWORD *)(v5 + 72), newHamError_);
  v25 = *(_QWORD *)(v5 + 80);
  *(_QWORD *)(v5 + 80) = 0LL;
  objc_release();
  v26 = *(_QWORD *)(v5 + 48);
  *(_QWORD *)(v5 + 48) = 0LL;
  objc_release();
  objc_msgSend(*(void **)(v5 + 32), "invalidate");
  v27 = *(_QWORD *)(v5 + 32);
  *(_QWORD *)(v5 + 32) = 0LL;
  objc_release();
  v28 = *(_QWORD *)(v5 + 88);
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472LL;
  v32 = sub_194D9AC;
  v33 = &unk_4EA3E50;
  v34 = v5;
  dispatch_async(v28, &v30);
  objc_release();
  objc_release();
  return objc_release();
}