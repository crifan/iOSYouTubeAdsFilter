//----- (0000000003DF5A2C) ----------------------------------------------------
__int64 __fastcall sub_3DF5A2C(__int64 a1, __int64 a2)
{
  __int64 v2; // x20
  __int64 v3; // x21
  void *v4; // x22
  __int64 *v5; // x23
  int v6; // w0
  int v7; // w8
  __int64 v8; // x0
  int v9; // w1
  __int64 v10; // x0
  __int64 v11; // x20

  v3 = a2;
  // 调用栈1
  sub_3DF8DB0(a1);
  if ( !*(_BYTE *)(v2 + 98) )
  {
    v8 = *(_QWORD *)(v2 + 232);
    v9 = -209;
    goto LABEL_9;
  }
  *(_BYTE *)(v2 + 98) = 0;
  if ( *(_BYTE *)(v2 + 96) && !*(_QWORD *)(v2 + 88) )
  {
    // 调用栈2
    sub_3DF8EF0(v3);
    v8 = *(_QWORD *)(v2 + 232);
    goto LABEL_8;
  }
  // 调用栈3
  v4 = sub_3E34500(0x20uLL);
  // 调用栈4
  sub_3DF3C3C();
  v5 = *(__int64 **)(v2 + 88);
  // 调用栈5
  v6 = sub_3DF8F0C(v3);
  // 调用栈6
  v7 = sub_3D98AA0(v5, (__int64)v4, v6);
  v8 = *(_QWORD *)(v2 + 232);
  if ( v7 )
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }
  v9 = -210;
LABEL_9:
  sub_3DF11DC(v8, v9);
  v11 = v10;
  sub_3DF8E00();
  return v11;
}

//----- (0000000003DF11DC) ----------------------------------------------------
void __fastcall sub_3DF11DC(__int64 a1, int a2)
{
  if ( a2 )
  {
    if ( *(_BYTE *)(a1 + 16) )
    {
      sub_3DF3B74();
      sub_3DF11FC();
    }
  }
}

//----- (0000000003DF11FC) ----------------------------------------------------
void sub_3DF11FC()
{
  unsigned int v0; // off
  char v1; // [xsp+8h] [xbp-28h]

  v0 = __ldar((unsigned __int8 *)&unk_66DE2D8);
  if ( !((unsigned __int64)&unk_66DE2D8 & 1) )
  {
    if ( (unsigned int)sub_3E47A5C(&unk_66DE2D8) )
    {
      sub_38FC07C((__int64)&v1, "100.0.4863.0");
      sub_38FCF84(&v1);
      sub_3E34E00((__int64)&v1);
      sub_39BC31C((pthread_mutex_t *)&unk_66DE2F8);
      unk_66DE338 = 0u;
      unk_66DE348 = 0u;
      dword_66DE358 = 1065353216;
      sub_3E47BB4(&unk_66DE2D8);
    }
  }
}
// 68: using guessed type section_64 stru_68;
// 38FCF84: using guessed type __int64 __fastcall sub_38FCF84(_QWORD);
// 3E47A5C: using guessed type __int64 __fastcall sub_3E47A5C(_QWORD);
// 3E47BB4: using guessed type __int64 __fastcall sub_3E47BB4(_QWORD);
// 66DE358: using guessed type int dword_66DE358;

//----- (0000000003DF3B74) ----------------------------------------------------
void sub_3DF3B74()
{
  __break(0);
  __asm { HLT             #0 }
  __break(1u);
}

//----- (0000000003DF8DB0) ----------------------------------------------------
__int64 *__fastcall sub_3DF8DB0(__int64 a1)
{
  return sub_38F9014((pthread_mutex_t *)(a1 + 16));
}

//----- (00000000038F9014) ----------------------------------------------------
__int64 *__fastcall sub_38F9014(pthread_mutex_t *a1)
{
  pthread_mutex_t *v1; // x19
  __int64 *result; // x0

  v1 = a1;
  result = (__int64 *)sub_38F9048(a1);
  if ( !((unsigned __int8)result & 1) )
    result = sub_39BC3E8(v1);
  return result;
}

//----- (0000000003DF8F0C) ----------------------------------------------------
__int64 __fastcall sub_3DF8F0C(__int64 a1)
{
  return (*(__int64 (**)(void))(*(_QWORD *)a1 + 32LL))();
}

//----- (00000000038F9048) ----------------------------------------------------
bool __fastcall sub_38F9048(pthread_mutex_t *a1)
{
  return pthread_mutex_trylock(a1) == 0;
}

//----- (0000000003DF8EF0) ----------------------------------------------------
__int64 __fastcall sub_3DF8EF0(__int64 result)
{
  if ( result )
    result = sub_3DF95E4(result);
  return result;
}

//----- (0000000003DF95E4) ----------------------------------------------------
__int64 __fastcall sub_3DF95E4(__int64 a1)
{
  return (*(__int64 (**)(void))(*(_QWORD *)a1 + 8LL))();
}

//----- (0000000003D98AA0) ----------------------------------------------------
signed __int64 __fastcall sub_3D98AA0(__int64 *a1, __int64 a2, int a3)
{
  __int64 *v3; // x19
  __int64 v4; // t1
  __int64 v5; // x0
  unsigned int *v6; // x8
  unsigned int *v7; // x8
  _QWORD *v9; // [xsp+0h] [xbp-60h]
  unsigned int **(__usercall *v10)@<X0>(__int64 *@<X0>, __int64@<X1>, __int64@<X2>, unsigned int *@<X8>); // [xsp+8h] [xbp-58h]
  __int64 v11; // [xsp+10h] [xbp-50h]
  char v12; // [xsp+20h] [xbp-40h]
  __int64 v13; // [xsp+40h] [xbp-20h]
  int v14; // [xsp+4Ch] [xbp-14h]

  v3 = a1;
  v14 = a3;
  v13 = -6148914691236517206LL;
  sub_3900728(&v13, a2, (unsigned int *)0xAAAAAAAAAAAAAAAALL);
  v4 = *v3;
  sub_391EE44((__int64)"ReadData", (__int64)"../../components/cronet/cronet_url_request.cc", 147, (__int64)&v12);
  v10 = sub_3D98B38;
  v11 = 0LL;
  v9 = v3 + 1;
  v5 = sub_3D99A18((__int64)sub_3D99A08, &v10, (unsigned int **)&v9, &v13, &v14);
  sub_3D99EB0(v5, v6, (__int64)v9, (__int64)v10, v11);
  sub_3D99ED4(v7, (__int64)v9, (__int64)v10, v11);
  sub_3DF8820((unsigned int **)&v13);
  return 1LL;
}

//----- (0000000003900728) ----------------------------------------------------
_QWORD *__usercall sub_3900728@<X0>(_QWORD *a1@<X0>, __int64 a2@<X1>, unsigned int *a3@<X8>)
{
  _QWORD *v3; // x19

  v3 = a1;
  *a1 = a2;
  if ( a2 )
    sub_392528C((unsigned int *)(a2 + 8), a3);
  return v3;
}

//----- (0000000003D99A18) ----------------------------------------------------
__int64 __fastcall sub_3D99A18(__int64 a1, _OWORD *a2, unsigned int **a3, __int64 *a4, _DWORD *a5)
{
  _DWORD *v5; // x19
  __int64 *v6; // x20
  unsigned int **v7; // x21
  _OWORD *v8; // x22
  __int64 v9; // x23
  void *v10; // x0

  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = sub_3E34500(0x48uLL);
  return sub_3D99AE0((__int64)v10, v9, v8, v7, v6, v5);
}

//----- (0000000003D99AE0) ----------------------------------------------------
__int64 __fastcall sub_3D99AE0(__int64 a1, __int64 a2, _OWORD *a3, unsigned int **a4, __int64 *a5, _DWORD *a6)
{
  _DWORD *v6; // x19
  __int64 *v7; // x20
  unsigned int **v8; // x21
  _OWORD *v9; // x22
  __int64 v10; // x23
  __int64 v11; // x0

  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = sub_39031F8(a1, a2, (__int64)sub_3D99B48);
  *(_OWORD *)(v11 + 32) = *v9;
  sub_3D99B74((unsigned int **)(v11 + 48), v8, v7, v6);
  return v10;
}

//----- (0000000003D99B74) ----------------------------------------------------
unsigned int **__fastcall sub_3D99B74(unsigned int **a1, unsigned int **a2, __int64 *a3, _DWORD *a4)
{
  _DWORD *v4; // x19
  unsigned int **v5; // x20
  unsigned int *v6; // x8

  v4 = a4;
  v5 = a1;
  v6 = *a2;
  *a1 = *a2;
  sub_3900720(a1 + 1, a3, v6);
  *((_DWORD *)v5 + 4) = *v4;
  return v5;
}

//----- (0000000003900720) ----------------------------------------------------
_QWORD *__usercall sub_3900720@<X0>(_QWORD *a1@<X0>, __int64 *a2@<X1>, unsigned int *a3@<X8>)
{
  return sub_3900728(a1, *a2, a3);
}

//----- (0000000003900728) ----------------------------------------------------
_QWORD *__usercall sub_3900728@<X0>(_QWORD *a1@<X0>, __int64 a2@<X1>, unsigned int *a3@<X8>)
{
  _QWORD *v3; // x19

  v3 = a1;
  *a1 = a2;
  if ( a2 )
    sub_392528C((unsigned int *)(a2 + 8), a3);
  return v3;
}

//----- (000000000392528C) ----------------------------------------------------
unsigned int *__usercall sub_392528C@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X8>)
{
  unsigned int v2; // off

  do
  {
    v2 = __ldxr(a2);
    a2 = (unsigned int *)(unsigned int)((_DWORD)a2 + 1);
  }
  while ( __stxr((unsigned int)a2, result) );
  return result;
}

//----- (0000000003E34500) ----------------------------------------------------
void *__fastcall sub_3E34500(size_t a1)
{
  size_t v1; // x19
  void *result; // x0
  unsigned __int64 *v3; // x0
  _QWORD *v4; // x0
  _QWORD *v5; // x0

  if ( a1 )
    v1 = a1;
  else
    v1 = 1LL;
  while ( 1 )
  {
    result = malloc(v1);
    if ( result )
      break;
    v3 = sub_3E3B098(0LL);
    if ( !v3 )
    {
      v4 = (_QWORD *)sub_3E346D0();
      v5 = sub_3E3CFB0(v4);
      sub_3E3AA78((__int64)v5, (__int64)&`typeinfo for'std::bad_alloc, (__int64)nullsub_3554);
    }
    ((void (*)(void))v3)();
  }
  return result;
}
// 3E3CFC0: using guessed type __int64 __fastcall nullsub_3554();
// 4FFD998: using guessed type __int64 *`typeinfo for'std::bad_alloc;

//----- (00000000039BC3E8) ----------------------------------------------------
__int64 *__fastcall sub_39BC3E8(pthread_mutex_t *a1)
{
  pthread_mutex_t *v1; // x19
  __int64 v2; // x0
  __int64 v4; // [xsp+8h] [xbp-28h]
  __int64 v5; // [xsp+10h] [xbp-20h]
  __int64 v6; // [xsp+18h] [xbp-18h]

  v1 = a1;
  v5 = -6148914691236517206LL;
  v6 = -6148914691236517206LL;
  v4 = -6148914691236517206LL;
  v2 = sub_391EE64();
  sub_390C06C((__int64)&v4, v2, (__int64)v1);
  pthread_mutex_lock(v1);
  return sub_390A140(&v4);
}

//----- (000000000390A140) ----------------------------------------------------
__int64 *__fastcall sub_390A140(__int64 *a1)
{
  unsigned __int64 v1; // x10
  __int64 v2; // x22
  __int64 *v3; // x19
  __int64 v4; // x8
  __int64 v5; // x9
  unsigned __int64 v6; // off
  __int64 v7; // x23
  __int64 v8; // x24
  __int64 v9; // x8
  int v10; // w21
  unsigned __int64 v11; // x8
  __int64 v12; // x0
  __int64 v13; // x8
  unsigned int *v14; // x9
  unsigned int v15; // off
  unsigned int *v16; // x8
  unsigned int v17; // off

  v3 = a1;
  v4 = *a1;
  if ( *a1 )
  {
    v5 = *((unsigned int *)a1 + 2);
    v1 = *(unsigned int *)(v4 + 24);
    if ( (unsigned int)v1 > (unsigned int)v5 )
    {
      if ( *(_DWORD *)(*(_QWORD *)(v4 + 16) + (v5 << 7) + 104) )
      {
        v6 = __ldar((unsigned __int64 *)v2);
        if ( pthread_mutex_trylock((pthread_mutex_t *)(v2 + 248)) )
          sub_39BC3E8((pthread_mutex_t *)(v2 + 248));
        v7 = *v3;
        v8 = *((unsigned int *)v3 + 2);
        if ( *(_DWORD *)(*v3 + 24) > (unsigned int)v8 )
        {
          v9 = *(_QWORD *)(v7 + 16) + (v8 << 7);
          v10 = *(_DWORD *)(v9 + 104);
          if ( v10 )
          {
            sub_393A224(*(_QWORD *)(v2 + 176), *(_DWORD *)(v9 + 104), *(_DWORD *)(v2 + 188), *(_DWORD *)(v2 + 184), 1);
            v11 = *(_QWORD *)(v2 + 240);
            if ( v11 < *(_QWORD *)(v2 + 200) )
            {
              *(_QWORD *)(v2 + 240) = v11 + 1;
              *(_DWORD *)(*(_QWORD *)(v2 + 232) + 4 * v11) = v10;
            }
            *(_DWORD *)(*(_QWORD *)(v7 + 16) + (v8 << 7) + 104) = 0;
          }
        }
        pthread_mutex_unlock((pthread_mutex_t *)(v2 + 248));
      }
    }
  }
  v12 = v3[2];
  v3[2] = 0LL;
  if ( v12 )
    (*(void (**)(void))(*(_QWORD *)v12 + 8LL))();
  v13 = *v3;
  if ( *v3 )
  {
    v14 = (unsigned int *)(*(_QWORD *)(v13 + 8) + 56LL);
    do
    {
      v15 = __ldxr((unsigned int *)v1);
      v1 = (unsigned int)(v1 - 1);
    }
    while ( __stxr(v1, v14) );
    v16 = (unsigned int *)(*(_QWORD *)(v13 + 8) + 60LL);
    do
    {
      v17 = __ldxr(v14);
      v14 = (unsigned int *)(unsigned int)((_DWORD)v14 + 1);
    }
    while ( __stlxr((unsigned int)v14, v16) );
  }
  return v3;
}

//----- (000000000391EE44) ----------------------------------------------------
__int64 __usercall sub_391EE44@<X0>(__int64 result@<X0>, __int64 a2@<X1>, int a3@<W2>, __int64 a4@<X8>)
{
  __int64 v4; // x30

  __asm { HINT            #7 }
  *(_QWORD *)a4 = result;
  *(_QWORD *)(a4 + 8) = a2 + 6;
  *(_DWORD *)(a4 + 16) = a3;
  *(_QWORD *)(a4 + 24) = v4;
  return result;
}

//----- (0000000003D99A18) ----------------------------------------------------
__int64 __fastcall sub_3D99A18(__int64 a1, _OWORD *a2, unsigned int **a3, __int64 *a4, _DWORD *a5)
{
  _DWORD *v5; // x19
  __int64 *v6; // x20
  unsigned int **v7; // x21
  _OWORD *v8; // x22
  __int64 v9; // x23
  void *v10; // x0

  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = sub_3E34500(0x48uLL);
  return sub_3D99AE0((__int64)v10, v9, v8, v7, v6, v5);
}

//----- (0000000003D99EB0) ----------------------------------------------------
unsigned int **__usercall sub_3D99EB0@<X0>(__int64 a1@<X0>, unsigned int *a2@<X8>, __int64 a3, __int64 a4, __int64 a5, ...)
{
  __int64 v5; // x20
  __int64 v7; // [xsp+18h] [xbp+18h]
  va_list va; // [xsp+18h] [xbp+18h]
  va_list va1; // [xsp+20h] [xbp+20h]

  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, _QWORD);
  v7 = a1;
  return sub_3D9AD6C(v5, (__int64)va1, (__int64 *)va, a2);
}

//----- (0000000003D9AD6C) ----------------------------------------------------
unsigned int **__usercall sub_3D9AD6C@<X0>(__int64 a1@<X0>, __int64 a2@<X1>, _QWORD *a3@<X2>, unsigned int *a4@<X8>)
{
  _QWORD *v4; // x19
  __int64 v5; // x20
  __int64 v6; // x21
  __int64 v7; // x0
  __int64 (***v8)(void); // x22
  __int64 v9; // x0
  unsigned int *v10; // x8
  __int64 v12; // [xsp+0h] [xbp-50h]
  __int64 v13; // [xsp+8h] [xbp-48h]
  signed __int64 (__fastcall *v14)(__int64, __int64 *); // [xsp+10h] [xbp-40h]
  __int64 v15; // [xsp+18h] [xbp-38h]
  __int64 v16; // [xsp+20h] [xbp-30h]
  __int64 v17; // [xsp+28h] [xbp-28h]

  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = sub_3D9A170(a1, a4);
  v8 = (__int64 (***)(void))v7;
  v17 = v7;
  v14 = sub_3D9B0F4;
  v15 = 0LL;
  v13 = *(_QWORD *)(v6 + 40);
  sub_3D9BF08((__int64)sub_3D9BEF8, (__n128 *)&v14, &v13, v4);
  v16 = v9;
  sub_3981A60(v8, v5, &v16);
  sub_3D9C9D4(v10, v12, v13, (__int64)v14, v15);
  return sub_38FC018((unsigned int **)&v17);
}

//----- (00000000038FC018) ----------------------------------------------------
unsigned int **__fastcall sub_38FC018(unsigned int **a1)
{
  unsigned int **v1; // x19

  v1 = a1;
  if ( *a1 )
    sub_38FC048(*a1 + 2, *a1);
  return v1;
}

//----- (00000000038FC048) ----------------------------------------------------
__int64 __usercall sub_38FC048@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X8>)
{
  unsigned int *v2; // x19
  __int64 result; // x0

  v2 = a1;
  result = sub_3925274(a1, a2);
  if ( (_DWORD)result )
    result = sub_3981B50((__int64)(v2 - 2));
  return result;
}

//----- (0000000003981B50) ----------------------------------------------------
__int64 __fastcall sub_3981B50(__int64 a1)
{
  return (*(__int64 (**)(void))(*(_QWORD *)a1 + 24LL))();
}

//----- (0000000003925274) ----------------------------------------------------
bool __usercall sub_3925274@<W0>(unsigned int *a1@<X0>, unsigned int *a2@<X8>)
{
  unsigned int v2; // off

  do
  {
    v2 = __ldaxr(a2);
    a2 = (unsigned int *)(unsigned int)((_DWORD)a2 - 1);
  }
  while ( __stlxr((unsigned int)a2, a1) );
  return (_DWORD)a2 == 0;
}

//----- (0000000003D9C9D4) ----------------------------------------------------
unsigned int **__usercall sub_3D9C9D4@<X0>(unsigned int *a1@<X8>, __int64 a2, __int64 a3, __int64 a4, __int64 a5, ...)
{
  va_list va; // [xsp+20h] [xbp+20h]

  va_start(va, a5);
  return sub_3903450((unsigned int **)va, a1);
}

//----- (0000000003981A60) ----------------------------------------------------
__int64 __fastcall sub_3981A60(__int64 (***a1)(void), __int64 a2, __int64 *a3)
{
  __int64 v3; // x19
  unsigned int *v4; // x8
  __int64 v6; // [xsp+8h] [xbp-18h]

  v6 = *a3;
  *a3 = 0LL;
  v3 = (**a1)();
  sub_3903450((unsigned int **)&v6, v4);
  return v3;
}

//----- (0000000003903450) ----------------------------------------------------
unsigned int **__usercall sub_3903450@<X0>(unsigned int **a1@<X0>, unsigned int *a2@<X8>)
{
  unsigned int **v2; // x19
  unsigned int *v3; // x20

  v2 = a1;
  v3 = *a1;
  if ( *a1 && sub_3925274(*a1, a2) )
    (*((void (__fastcall **)(unsigned int *))v3 + 2))(v3);
  return v2;
}

//----- (0000000003925274) ----------------------------------------------------
bool __usercall sub_3925274@<W0>(unsigned int *a1@<X0>, unsigned int *a2@<X8>)
{
  unsigned int v2; // off

  do
  {
    v2 = __ldaxr(a2);
    a2 = (unsigned int *)(unsigned int)((_DWORD)a2 - 1);
  }
  while ( __stlxr((unsigned int)a2, a1) );
  return (_DWORD)a2 == 0;
}

//----- (0000000003D9BF08) ----------------------------------------------------
__n128 __fastcall sub_3D9BF08(__int64 a1, __n128 *a2, _QWORD *a3, _QWORD *a4)
{
  _QWORD *v4; // x19
  _QWORD *v5; // x20
  __n128 *v6; // x21
  __int64 v7; // x22
  void *v8; // x0

  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = sub_3E34500(0x40uLL);
  return sub_3D9BFDC((__int64)v8, v7, v6, v5, v4);
}

//----- (0000000003D9BFDC) ----------------------------------------------------
__n128 __fastcall sub_3D9BFDC(__int64 a1, __int64 a2, __n128 *a3, _QWORD *a4, _QWORD *a5)
{
  _QWORD *v5; // x19
  _QWORD *v6; // x20
  __n128 *v7; // x21
  __int64 v8; // x0
  __n128 result; // q0

  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = sub_39031F8(a1, a2, (__int64)sub_3D9C030);
  result = *v7;
  *(__n128 *)(v8 + 32) = *v7;
  *(_QWORD *)(v8 + 48) = *v6;
  *(_QWORD *)(v8 + 56) = *v5;
  *v5 = 0LL;
  return result;
}

//----- (00000000039031F8) ----------------------------------------------------
__int64 __fastcall sub_39031F8(__int64 result, __int64 a2, __int64 a3)
{
  *(_DWORD *)result = 1;
  *(_QWORD *)(result + 8) = a2;
  *(_QWORD *)(result + 16) = a3;
  *(_QWORD *)(result + 24) = sub_3903214;
  return result;
}

//----- (0000000003903214) ----------------------------------------------------
bool __fastcall sub_3903214(__int64 a1, int a2)
{
  return a2 != 0;
}
// 调用栈1
sub_3DF8DB0
  sub_38F9014
    sub_38F9048 & sub_39BC3E8
      sub_390A140(获取线程锁pthread lock相关的东西)
// 调用栈2
sub_3DF5A2C
  sub_3DF8EF0
    sub_3DF95E4(一些指针操作，解引用之类的)

// 调用栈3
sub_3DF5A2C
  sub_3E34500(bad_alloc memory相关的东西)

// 调用栈4
sub_3DF5A2C
  sub_3DF3C3C(没有定义)

// 调用栈5
sub_3DF5A2C
  sub_3DF8F0C(一些指针操作，解引用之类的)

// 调用栈6
sub_3DF5A2C
  sub_3D98AA0
    sub_3900728(简单的数学运算) & sub_391EE44(简单的数学运算) & sub_3D99A18(bad_alloc) & sub_3D99EB0(一些指针运算) & sub_3D99ED4 & sub_3DF8820