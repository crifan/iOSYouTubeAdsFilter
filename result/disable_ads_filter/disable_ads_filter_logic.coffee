禁用广告过滤时，多次调试

目前的发现的逻辑是：

---

【1】即使是 oad 的 initplayback ，正常返回response，也会返回错误

(1) case 1:

请求：
NSURLRequest requestWithURL:cachePolicy:timeoutInterval
  URL=https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=be5e83dddc65db9b&initcwndbps=1127500&mt=1657589100&ack=1&cpn=j3M40XDCGhcG1Jgj&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
  cachePolicy=0
  timeoutInterval=60.000000

响应：
NSHTTPURLResponse initWithURL:statusCode:HTTPVersion:headerFields:
  url=https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=be5e83dddc65db9b&initcwndbps=1127500&mt=1657589100&ack=1&cpn=j3M40XDCGhcG1Jgj&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
  statusCode=200
  HTTPVersion=(null)
  headerFields={
    "alt-svc" = "h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"";
    "cache-control" = "public, max-age=86400";
    "client-protocol" = quic;
    "content-type" = "application/vnd.yt-ump";
    "cross-origin-resource-policy" = "cross-origin";
    date = "Tue, 12 Jul 2022 01:52:01 GMT";
    expires = "Wed, 13 Jul 2022 01:52:01 GMT";
    server = "gvs 1.0";
    vary = Origin;
    "x-content-type-options" = nosniff;
  }

但还是会报错：

NSError errorWithDomain:code:userInfo:
  errDomain=com.google.ios.hamplayer
  code=6000
  userInfo={
    HAMErrorDetails = "cronet=10|internal=-356|quic=85";
    HAMErrorURLRequest = "<NSMutableURLRequest: 0x282833ae0> 
      {
        URL: https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=be5e83dddc65db9b&initcwndbps=1127500&mt=1657589100&ack=1&cpn=j3M40XDCGhcG1Jgj&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
      }";
    HAMRequestNumberLoadTaskKey = 1;
  }

以及：

NSError ml_mediaErrorWithCode:underlyingError:
  arg1=708
  underlyingError=
    Error Domain=com.google.ios.hamplayer
    Code=6000 "(null)"
    UserInfo={
      HAMErrorDetails=cronet=10|internal=-356|quic=85
      HAMRequestNumberLoadTaskKey=1
      HAMErrorURLRequest=<NSMutableURLRequest: 0x282833ae0>
      {
        URL: https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=be5e83dddc65db9b&initcwndbps=1127500&mt=1657589100&ack=1&cpn=j3M40XDCGhcG1Jgj&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140 }} -> mmewc=Error Domain=YTMediaError Code=708 "(null)" UserInfo={NSUnderlyingError=0x283bda940 {Error Domain=com.google.ios.hamplayer Code=6000 "(null)" UserInfo={HAMErrorDetails=cronet=10|internal=-356|quic=85, HAMRequestNumberLoadTaskKey=1, HAMErrorURLRequest=<NSMutableURLRequest: 0x282833ae0> { URL: https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=be5e83dddc65db9b&initcwndbps=1127500&mt=1657589100&ack=1&cpn=j3M40XDCGhcG1Jgj&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
      }
    }

(2) case 2:

NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
  URL=https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=38d955056e41c6f3&initcwndbps=1195000&mt=1657590782&ack=1&cpn=SKSZKIy7lZZ2pxor&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
  cachePolicy=0
  timeoutInterval=60.000000

响应：

NSHTTPURLResponse initWithURL:statusCode:HTTPVersion:headerFields:
  url=https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=38d955056e41c6f3&initcwndbps=1195000&mt=1657590782&ack=1&cpn=SKSZKIy7lZZ2pxor&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
  statusCode=200
  HTTPVersion=(null)
  headerFields={
    "alt-svc" = "h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"";
    "cache-control" = "public, max-age=86400";
    "client-protocol" = quic;
    "content-type" = "application/vnd.yt-ump";
    "cross-origin-resource-policy" = "cross-origin";
    date = "Tue, 12 Jul 2022 02:00:07 GMT";
    expires = "Wed, 13 Jul 2022 02:00:07 GMT";
    server = "gvs 1.0";
    vary = Origin;
    "x-content-type-options" = nosniff;
  }

也还是会报错：

NSError errorWithDomain:code:userInfo:
  errDomain=com.google.ios.hamplayer
  code=6000
  userInfo={
    HAMErrorDetails = "cronet=10|internal=-356|quic=85";
    HAMErrorURLRequest = "<NSMutableURLRequest: 0x2828fc1b0> {
       URL: https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=38d955056e41c6f3&initcwndbps=1195000&mt=1657590782&ack=1&cpn=SKSZKIy7lZZ2pxor&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
    }";
    HAMRequestNumberLoadTaskKey = 1;
  }

以及：

NSError HAMErrorWithCode:userInfo:
  reqUrl=https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=38d955056e41c6f3&initcwndbps=1195000&mt=1657590782&ack=1&cpn=SKSZKIy7lZZ2pxor&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140

以及：

NSError ml_mediaErrorWithCode:underlyingError:
  arg1=708
  underlyingError=
    Error Domain=com.google.ios.hamplayer
    Code=6000 "(null)"
    UserInfo={
      HAMErrorDetails=cronet=10|internal=-356|quic=85
      HAMRequestNumberLoadTaskKey=1
      HAMErrorURLRequest=<NSMutableURLRequest: 0x2828fc1b0> {
        URL: https://rr2---sn-phvo-jpqe.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&msp=1&odeak=1&odepv=1&osfc=1&id=38d955056e41c6f3&initcwndbps=1195000&mt=1657590782&ack=1&cpn=SKSZKIy7lZZ2pxor&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140
      }
    }

【2】即使是 ctier=L 的 videoplayback，在 前几次请求（rn=1、rn=2等）时，正常返回response，也会报错

(1) rn=1 的 ctier=L

NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
  URL=https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657613405&ei=_dfMYqC2IuGajQTGv7PYAw&ip=162.253.45.206&id=o-AIjeweHrLqp_Pz6Ozv20T5JprNQBR0HmN6o8txqvBehU&source=youtube&requiressl=yes&mh=GE&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnlk&ms=au,rdu&mv=m&mvi=2&pl=22&ctier=L&initcwndbps=1213750&svpuc=1&sabr=1&mt=1657591502&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgVsPJepnUO4V9FcfXV3OqVZtNkVp5xDAw-jIIOVaPqpUCID1hXsWyAMG-_A41aRCm2HF5eqtfDTt5IJs_ATne2Jfz&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgTJgONnp0_iio87Dj5f9DciH8TzxX_zPCs1clwp4poqACIDPhiXjWBAuAs9GAhBSD11lyHobe7EfWyHSV4Eoixwhh&cpn=aFN2DnMpoKgorDiB&rn=1
  cachePolicy=0
  timeoutInterval=60.000000 

也还是会报错：

NSError errorWithDomain:code:userInfo:
  reqUrl=https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657613405&ei=_dfMYqC2IuGajQTGv7PYAw&ip=162.253.45.206&id=o-AIjeweHrLqp_Pz6Ozv20T5JprNQBR0HmN6o8txqvBehU&source=youtube&requiressl=yes&mh=GE&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnlk&ms=au,rdu&mv=m&mvi=2&pl=22&ctier=L&initcwndbps=1213750&svpuc=1&sabr=1&mt=1657591502&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgVsPJepnUO4V9FcfXV3OqVZtNkVp5xDAw-jIIOVaPqpUCID1hXsWyAMG-_A41aRCm2HF5eqtfDTt5IJs_ATne2Jfz&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgTJgONnp0_iio87Dj5f9DciH8TzxX_zPCs1clwp4poqACIDPhiXjWBAuAs9GAhBSD11lyHobe7EfWyHSV4Eoixwhh&cpn=aFN2DnMpoKgorDiB&rn=1

以及：

NSError HAMErrorWithCode:userInfo:
  reqUrl=https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657613405&ei=_dfMYqC2IuGajQTGv7PYAw&ip=162.253.45.206&id=o-AIjeweHrLqp_Pz6Ozv20T5JprNQBR0HmN6o8txqvBehU&source=youtube&requiressl=yes&mh=GE&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnlk&ms=au,rdu&mv=m&mvi=2&pl=22&ctier=L&initcwndbps=1213750&svpuc=1&sabr=1&mt=1657591502&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgVsPJepnUO4V9FcfXV3OqVZtNkVp5xDAw-jIIOVaPqpUCID1hXsWyAMG-_A41aRCm2HF5eqtfDTt5IJs_ATne2Jfz&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgTJgONnp0_iio87Dj5f9DciH8TzxX_zPCs1clwp4poqACIDPhiXjWBAuAs9GAhBSD11lyHobe7EfWyHSV4Eoixwhh&cpn=aFN2DnMpoKgorDiB&rn=1

(2) rn=2 的 ctier=L

正常响应，但也报错：

NSHTTPURLResponse initWithURL:statusCode:HTTPVersionLheaderFields:
  url=https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657613405&ei=_dfMYqC2IuGajQTGv7PYAw&ip=162.253.45.206&id=o-AIjeweHrLqp_Pz6Ozv20T5JprNQBR0HmN6o8txqvBehU&source=youtube&requiressl=yes&mh=GE&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnlk&ms=au,rdu&mv=m&mvi=2&pl=22&ctier=L&initcwndbps=1213750&svpuc=1&sabr=1&mt=1657591502&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgVsPJepnUO4V9FcfXV3OqVZtNkVp5xDAw-jIIOVaPqpUCID1hXsWyAMG-_A41aRCm2HF5eqtfDTt5IJs_ATne2Jfz&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgTJgONnp0_iio87Dj5f9DciH8TzxX_zPCs1clwp4poqACIDPhiXjWBAuAs9GAhBSD11lyHobe7EfWyHSV4Eoixwhh&cpn=aFN2DnMpoKgorDiB&rn=2
  statusCode=200
  HTTPVersion=(null)
  headerFields={
    "alt-svc" = "h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"";
    "cache-control" = "private, max-age=21041";
    "client-protocol" = quic;
    "content-type" = "application/vnd.yt-ump";
    "cross-origin-resource-policy" = "cross-origin";
    date = "Tue, 12 Jul 2022 02:14:24 GMT";
    expires = "Tue, 12 Jul 2022 02:14:24 GMT";
    server = "gvs 1.0";
    vary = Origin;
    "x-content-type-options" = nosniff;
  }

但也会报错：

NSError errorWithDomain:code:userInfo:

【3】当 rn=2 或 rn=3 时的 ctier=L 就正常了，不报错了，能正常返回数据了

(1) rn=3 的 ctier=L

NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
  URL=https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657613405&ei=_dfMYqC2IuGajQTGv7PYAw&ip=162.253.45.206&id=o-AIjeweHrLqp_Pz6Ozv20T5JprNQBR0HmN6o8txqvBehU&source=youtube&requiressl=yes&mh=GE&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnlk&ms=au,rdu&mv=m&mvi=2&pl=22&ctier=L&initcwndbps=1213750&svpuc=1&sabr=1&mt=1657591502&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgVsPJepnUO4V9FcfXV3OqVZtNkVp5xDAw-jIIOVaPqpUCID1hXsWyAMG-_A41aRCm2HF5eqtfDTt5IJs_ATne2Jfz&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgTJgONnp0_iio87Dj5f9DciH8TzxX_zPCs1clwp4poqACIDPhiXjWBAuAs9GAhBSD11lyHobe7EfWyHSV4Eoixwhh&cpn=aFN2DnMpoKgorDiB&rn=3
  cachePolicy=0
  timeoutInterval=60.000000

响应：

NSHTTPURLResponse initWithURL:statusCode:HTTPVersion:headerFields:
  url=https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657613405&ei=_dfMYqC2IuGajQTGv7PYAw&ip=162.253.45.206&id=o-AIjeweHrLqp_Pz6Ozv20T5JprNQBR0HmN6o8txqvBehU&source=youtube&requiressl=yes&mh=GE&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnlk&ms=au,rdu&mv=m&mvi=2&pl=22&ctier=L&initcwndbps=1213750&svpuc=1&sabr=1&mt=1657591502&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgVsPJepnUO4V9FcfXV3OqVZtNkVp5xDAw-jIIOVaPqpUCID1hXsWyAMG-_A41aRCm2HF5eqtfDTt5IJs_ATne2Jfz&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgTJgONnp0_iio87Dj5f9DciH8TzxX_zPCs1clwp4poqACIDPhiXjWBAuAs9GAhBSD11lyHobe7EfWyHSV4Eoixwhh&cpn=aFN2DnMpoKgorDiB&rn=3
  statusCode=200
  HTTPVersion=(null)
  headerFields={
    "alt-svc" = "h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"";
    "cache-control" = "private, max-age=20802";
    "client-protocol" = quic;
    "content-type" = "application/vnd.yt-ump";
    "cross-origin-resource-policy" = "cross-origin";
    date = "Tue, 12 Jul 2022 02:18:23 GMT";
    expires = "Tue, 12 Jul 2022 02:18:23 GMT";
    server = "gvs 1.0";
    vary = Origin;
    "x-content-type-options" = nosniff;
  }

(2) rn=2 的 ctier=L，且能正常返回视频数据chunks

MLServerABRLoader dataLoadTask:didReceiveResponse:
  arg1=<MLServerABRDataLoadTask: 0x285a0bb70>
  didReceiveResponse=<NSHTTPURLResponse: 0x280dae440>
    {
      URL: https://rr1---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657615602&ei=kuDMYrOaBpHDigT5y4LYDw&ip=162.253.45.206&id=o-AMkZiBzQ6p7kCJW94A6DtyMGG3HfqwKg1KnZ-fNzwp2U&source=youtube&requiressl=yes&mh=Mk&mm=31,29&mn=sn-phvo-jpql,sn-vgqsknsk&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=22&ctier=L&initcwndbps=1266250&svpuc=1&sabr=1&mt=1657593666&fvip=4&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIgAqEYZlR2jQz3cDKbLMWJKMhZa_JyTS1vtd_9O64WLDkCIQDfL32Gx3XA9C4XUvNdiiXvM8TQjClSjAv2N0B2bt-flw%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRgIhAJ8F9p0MlD7yBXsonsAKJ95tApty4njmPKzuAFqoM81WAiEAlFcqzn3LXLCxMMe_WxKUJOd4L9uLrZ7oP_BtbspIFBY%3D&cpn=tuURUWDAKHN5FNX8&rn=2
    }
    {
      Status Code: 200
      Headers {
        "Cache-Control" =     (
            "private, max-age=20896"
        );
        "Content-Type" =     (
            "application/vnd.yt-ump"
        );
        Date =     (
            "Tue, 12 Jul 2022 02:53:26 GMT"
        );
        Expires =     (
            "Tue, 12 Jul 2022 02:53:26 GMT"
        );
        Server =     (
            "gvs 1.0"
        );
        Vary =     (
            Origin
        );
        "alt-svc" =     (
            "h3=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-Q050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\""
        );
        "client-protocol" =     (
            quic
        );
        "cross-origin-resource-policy" =     (
            "cross-origin"
        );
        "x-content-type-options" =     (
            nosniff
        );
      }
    }


MLServerABRLoader dataLoadTask:didReceiveData:
  arg1=<MLServerABRDataLoadTask: 0x285a0bb70>
  didReceiveData={length = 65536, bytes = 0x235908d0 fa0610d0 fa0618e0 d4033a4b ... 4286a906 e50ad07b }

不过后续此处 rn=2 的 ctier=L 也报错了：

NSError errorWithDomain:code:userInfo:
  https://rr1---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1657615602&ei=kuDMYrOaBpHDigT5y4LYDw&ip=162.253.45.206&id=o-AMkZiBzQ6p7kCJW94A6DtyMGG3HfqwKg1KnZ-fNzwp2U&source=youtube&requiressl=yes&mh=Mk&mm=31,29&mn=sn-phvo-jpql,sn-vgqsknsk&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=22&ctier=L&initcwndbps=1266250&svpuc=1&sabr=1&mt=1657593666&fvip=4&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIgAqEYZlR2jQz3cDKbLMWJKMhZa_JyTS1vtd_9O64WLDkCIQDfL32Gx3XA9C4XUvNdiiXvM8TQjClSjAv2N0B2bt-flw%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRgIhAJ8F9p0MlD7yBXsonsAKJ95tApty4njmPKzuAFqoM81WAiEAlFcqzn3LXLCxMMe_WxKUJOd4L9uLrZ7oP_BtbspIFBY%3D&cpn=tuURUWDAKHN5FNX8&rn=2

