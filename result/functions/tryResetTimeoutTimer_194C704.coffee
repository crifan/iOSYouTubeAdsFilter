void __fastcall tryResetTimeoutTimer_194C704(CronetDataLoadTask *CronetDataLoadTask)
{
  CronetDataLoadTask *CronetDataLoadTask_; // x19
  HAMTimer *timeoutTimer; // x0
  struct objc_object *retainedBlock; // x0
  struct objc_object *curBlock; // x20
  struct objc_object *newTimeoutTimer; // x0
  id newTimeoutTimer_; // x0
  struct objc_object *oldTimeoutTimer; // x8
  void **NSConcreteStackBlock; // [xsp+8h] [xbp-38h]
  __int64 blockFlags; // [xsp+10h] [xbp-30h]
  void (__fastcall *blockInvoke)(__int64); // [xsp+18h] [xbp-28h]
  void *blockDescriptor; // [xsp+20h] [xbp-20h]
  CronetDataLoadTask *importedVariable1; // [xsp+28h] [xbp-18h]

  if ( CronetDataLoadTask->timeoutInterval_ != 0.0 )
  {
    CronetDataLoadTask_ = CronetDataLoadTask;
    timeoutTimer = CronetDataLoadTask->timeoutTimer_;
    if ( timeoutTimer )
    {
      ((void (__cdecl *)(HAMTimer *, SEL))objc_msgSend_3E84298)(timeoutTimer, "reset");
    }
    else
    {
      NSConcreteStackBlock = _NSConcreteStackBlock;
      blockFlags = 0xC0000000LL;
      blockInvoke = reportErrorAndCancelDataLoadTask_194D9BC;
      blockDescriptor = &unk_4EA3E50;
      importedVariable1 = CronetDataLoadTask_;
      retainedBlock = objc_retainBlock_3E842F8((id)&NSConcreteStackBlock);
      curBlock = retainedBlock;
      newTimeoutTimer = ((id (__cdecl *)(HAMTimer_meta *, SEL, id, signed __int64, unsigned __int64, id))objc_msgSend_3E84298)(
                          (HAMTimer_meta *)&OBJC_CLASS___HAMTimer,
                          "timerWithQueue:startNanoseconds:leewayNanoseconds:block:",
                          (id)CronetDataLoadTask_->queue_,
                          (signed __int64)(CronetDataLoadTask_->timeoutInterval_ * 1000000000.0),
                          100000000uLL,
                          retainedBlock);
      newTimeoutTimer_ = objc_retainAutoreleasedReturnValue_3E842EC(newTimeoutTimer);
      oldTimeoutTimer = (struct objc_object *)CronetDataLoadTask_->timeoutTimer_;
      CronetDataLoadTask_->timeoutTimer_ = (HAMTimer *)newTimeoutTimer_;
      objc_release_3E842BC(oldTimeoutTimer);
      objc_release_3E842BC(curBlock);
    }
  }
}