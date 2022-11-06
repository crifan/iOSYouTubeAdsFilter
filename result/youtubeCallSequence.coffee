最后更新: 20220823

================================================================================

【第一个广告视频ID的产生来源：googlevideo.com/initplayback】

--------------------------------------------------------------------------------

最早的 initplayback 的 request (的 http body 的 data )的来源：

YTPlaybackDataLoader onlinePromise
    YTPlaybackDataLoader createPlaybackRequest
        YTPlaybackRequestFactory playbackRequestForPlayerTransition:visibility:viewportSizeProvider:mediaStickySettings:prefetchContext:
            YTPlaybackRequestFactory playbackRequestForNavigationEndpoint:autoplay:autonav:flungFromMDX:expiredForSeconds:visibility:viewportSizeProvider:mediaStickySettings:playerRequestDecorator:prefetchContext:latencyLogger:watchEndpointLoggingContext:
                YTPlaybackRequest initWithProtoRequest:URLRequestProperties:CPN:QOEController:latencyLogger:
                    参数:
                        URLRequestProperties={
                            MLOnesieRequestContext = "<MLOnesieRequestContext: 0x28240cd80>";
                            inline = 1;
                        }
                YTPlayerRequestFactory innerTubeRequestForPlayerWithVideoID:playlistID:playlistIndex:playbackContext:forOffline:clickTrackingParams:playerParams:
                    参数:
                        videoID=DpJ7BL6RdFM
                        playlistID=(null)
                        playlistIndex=0
                        playbackContext=<YTIPlaybackContext 0x282fbc480>: {
                            content_playback_context {
                                time_since_last_ad_seconds: 0
                                lact_milliseconds: 1834558
                                autoplays_since_last_ad: 0
                                conn: 3
                                vis: 5
                                fling: false
                                autoplay: true
                                adsense_client_params: "video_format=22&sdkv=i.17.08&output=xml_vast2"
                                autonav: true
                            }
                        }
                        forOffline=False
                        clickTrackingParams={length = 26, bytes = 0x08001084 67221308 95b584e3 95ddf902 ... d494091d 560607d6 }
                        playerParams=CkkIDxAGQhd3LU1FWTViSkRJUE5vOWtQaU1tdHlBa4oDKSADKAIwBzgFShMI1raF45Xd-QIVg-YoBR2IZAuZUgYIBT........TElUWV0mZ3Y9W0dPT0dMRV9WSUVXQUJJTElUWV0Y0A8YAfAEAfgEAQ%3D%3D
                    
                    返回值:
                        <YTIPlayerRequest 0x2838233a0>: {
                            context {
                                client {
                                    hl: "zh-CN"
                                    gl: "CN"
                                    device_make: "Apple"
                                    device_model: "iPhone9,1"
                                    client_name: IOS
                                    client_version: "17.08.2"
                                    os_name: "iOS"
                                    os_version: "13.3.1.17D50"
                                    raw_device_id: "FC1C0EA4-13EB-4B2E-AB49-32609F28DC8B"
                                    screen_width_points: 375
                                    screen_height_points: 667
                                    screen_pixel_density: 2
                                    client_form_factor: SMALL_FORM_FACTOR
                                    window_width_points: 375
                                    window_height_points: 667
                                    connection_type: CONN_WIFI
                                    config_info {
                                        cold_config_data: "CMvakJgGENLcrQUQjPKtBRCl760FEMaFrQUQmNStBRCFta4FEKedrgUQgYauBRDXka0FEOK5rgUQx7GtBRCHqq4FEJOvrgUQhqGuBRCBxa0FEI6lrQUQkJmuBRCvs64FEOW4rgUQz4WuBRDxuq0FEIjprQUQj5SuBRDBvK4FEIy9rgUQxZquBRDtiq0FELytrgUQjZSuBRDqna0FEL22rgUQqM-oFxCcva4FEJyxrgUQy6KuBRD0x60FEIH4rQUQuIuuBRDUg64FEKmqrgUQnv2tBRCFka4FELTPqBcQibGuBRD3iK4FEOK8rgUQ0_GtBRDYvK4FEIG4rgUQpbCuBRCboK4FENm7rQUQ4a2uBRCX-60FEMWFrgUQt8utBRDrma0FEJaarQUQzeCtBRDr5K0FEPy6rgUQ6pesBRDX9a0FEO-3rgUaMkFDS0c1cG5XU0dZOFRhMFRnNkJ5VjlieWtLUGRUVmxQUkxCWHhkRktXclJ5XzVNNmxRIjJBQ0tHNXBuV1NHWThUYTBUZzZCeVY5YnlrS1BkVFZsUFJMQlh4ZEZLV3JSeV81TTZsUSoYQ0FNU0RBMERzTXlxQWhVRGdvdTVEQT09"
                                        cold_hash_data: "CPnFk5gGEhQxMTU5NDYyMDIxMjM1NDQwNDMxOBjL2pCYBii0z6gXKOK8rgUoibGuBSj3iK4FKJugrgUogbiuBSilsK4FKNi8rgUo0_GtBSiB-K0FKMuirgUonLGuBSiFka4FKJ79rQUouIuuBSipqq4FKPTHrQUo1IOuBSj8uq4FKNf1rQUo77euBSjql6wFKJf7rQUo4a2uBSjZu60FKLfLrQUolpqtBSjr5K0FKMWFrgUo65mtBSjN4K0FKJOvrgUoh6quBSjXka0FKOK5rgUox7GtBSiOpa0FKK-zrgUokJmuBSiBxa0FKIahrgUo0tytBSinna4FKMaFrQUogYauBSil760FKIW1rgUojPKtBSjqna0FKI2UrgUovK2uBSi9tq4FKJjUrQUoxZquBSjtiq0FKKjPqBconL2uBSjxuq0FKIjprQUoj5SuBSjluK4FKIy9rgUoz4WuBSjBvK4FMjJBQ0tHNXBuV1NHWThUYTBUZzZCeVY5YnlrS1BkVFZsUFJMQlh4ZEZLV3JSeV81TTZsUToyQUNLRzVwbldTR1k4VGEwVGc2QnlWOWJ5a0tQZFRWbFBSTEJYeGRGS1dyUnlfNU02bFFCGENBTVNEQTBEc015cUFoVURnb3U1REE9PQ%3D%3D"
                                        hot_hash_data: "CPnFk5gGEhQxNjEzNDg0MTcwMTQ4MTYyODk3Nxj5xZOYBijJ-f0SKPne_RIo1P_9EiiRvv0SKIPt_RIoy639Eijc4P0SKOK__RIo0979Eii7_v0SKILG_RIopdD9Eijizv0SKNLL_RIopqr9EiiFrP0SKKXv_RIonv_8EijI8f0SKL3K_RIope39EijU-f0SKIrg_RIo4az9EiibzP0SKNfM_RIomcb9EiiLqP0SKM7A_RIolOT8EiifgP4SKLn1_BIo89_9EijC_v0SKMvs_RIoytj9EiikxP0SKNGf_RIoyvD9EiiZ-f0SKML2_RIovL79EijGsv0SKNCy_RIo3JP9EiiqtP0SKOO4_RIo4Oz9Eiir1v0SKOPJ_RIo-Pn9EiiBgv0SKKbw_RIoqar9Eii93v0SKMTs_RIyMkFDS0c1cG5XU0dZOFRhMFRnNkJ5VjlieWtLUGRUVmxQUkxCWHhkRktXclJ5XzVNNmxROjJBQ0tHNXBuV1NHWThUYTBUZzZCeVY5YnlrS1BkVFZsUFJMQlh4ZEZLV3JSeV81TTZsUUIcQ0FNU0VRMEJvdGY2RlpzcEZRRGR6OElNbk13RQ%3D%3D"
                                    }
                                    screen_density_float: 2
                                    utc_offset_minutes: 480
                                    user_interface_theme: USER_INTERFACE_THEME_DARK
                                    time_zone: "Asia/Shanghai"
                                    eml_template_context: " \313\334\314\373\331\206\352\310\001 \206\327\321\205\205\213\346\323\361\001 \212\221\203\351\370\266\265\3168 \270\361\327\226\250\315\324\301) \221\307\376\333\240\306\304\357\370\001 \204\255\254\350\361\275\307\370\203\001 \365\360\247\340\223\316\264\322\016 \263\301\327\347\206\371\271\266. \320\301\200\233\321\362\214\245\027 \220\364\314\240\332\360\264\300\314\001 \270\365\242\255\321\241\372\326y \360\322\224\360\247\344\261\322\033 \310\335\301\224\261\262\275\372> \346\261\374\316\345\221\323\350\321\001 \217\375\340\345\313\225\361\264% \206\370\205\214\332\344\367\272\247\001 \343\237\335\242\271\344\250\261\023 \333\236\251\262\323\323\306\322\200\001 \201\311\332\214\371\363\217\252\267\001 \223\240\255\221\227\300\300\301\267\001 \332\271\246\252\206\257\225\273~ \214\327\321\232\303\213\204\363\251\001 \250\321\220\302\333\240\347\222\327\001 \307\306\342\230\345\316\241\330~ \233\311\261\225\335\357\225\226\030 \214\222\262\254\377\315\326\267\365\001 \207\251\305\212\325\337\205\206\345\001 \252\207\217\352\236\264\232\265r"
                                    memory_total_kbytes: 2099249
                                    notification_permission_info {
                                        notifications_setting: NOTIFICATIONS_SETTING_ENABLED
                                        last_device_opt_in_change_time_ago_sec: 5707596
                                    }
                                    client_store_info {
                                        ios_store_country: "CHN"
                                    }
                                }
                                user {
                                }
                                request {
                                }
                                click_tracking {
                                    click_tracking_params: "\010\000\020\204g\"\023\010\225\265\204\343\225\335\371\002\025=\324\224\t\035V\006\007\326"
                                }
                                ad_signals_info {
                                    params {
                                        key: "ms"
                                        value: "zNCgkMGJRpQCc6aMdpeOGv6ez_sOHNtGlWj7lg6EjWr7O7ZqIEwzYOOSsfzRnPhx3kY3I33makVsgrtFOzKammmPQqrf9Jq_eK18MyBdl-obQx_U8oanWw-_NlQf7l191piuk2G3xzWMnXXln426o9M5jcbqwVPf5Nf8opchuOQBNPYwEbDXj6uTpkZl47lPLlO0BZpF5xWpjI14zuD3co0YMnBQHEcZv3AKQlp0UEksZdiohp69QkO1ZoUPZrZrjty7kzuy6swSY7C5Baex2ZA11fj7Qkd_oxnqRxRlsMQuxaBF5CjfVUE5DMAQyxDg3aC3iCqE83h7TJTnSRhOIQ"
                                    }
                                }
                            }
                            video_id: "DpJ7BL6RdFM"
                            playback_context {
                                content_playback_context {
                                    time_since_last_ad_seconds: 0
                                    lact_milliseconds: 1834558
                                    autoplays_since_last_ad: 0
                                    conn: 3
                                    vis: 5
                                    fling: false
                                    autoplay: true
                                    adsense_client_params: "video_format=22&sdkv=i.17.08&output=xml_vast2"
                                    autonav: true
                                    mdx_context { mdx_context {} }
                                }
                            }
                            racy_check_ok: false
                            for_offline: false
                            params: "CkkIDxAGQhd3LU1FWTViSkRJUE5vOWtQaU1tdHlBa4oDKSADKAIwBzgFShMI1raF45Xd-QIVg-YoBR2IZAuZUgYIBTABWAFoAXAJEpkaEpYaCAESkRoSDXByb21vdGVkVmlkZW9K_xkIARL6GSKpCwgTEp0LaHR0cHM6Ly93d3cuZ29vZ2xl ... ... tDTElDS19NU10mYWRfbXQ9W0FEX01UXSZhY3Z3PVtWSUVXQUJJTElUWV0mZ3Y9W0dPT0dMRV9WSUVXQUJJTElUWV0Y0A8YAfAEAfgEAQ%3D%3D"
                            cpn: "Fmq_1vPSmpZkjLS0"
                            override_muted_at_start: false
                            caption_params {
                                device_captions_on: false
                            }
                            video_quality_setting_params {
                                video_quality_setting_mobile_network: VIDEO_QUALITY_SETTING_UNKNOWN
                                video_quality_setting_wifi: VIDEO_QUALITY_SETTING_UNKNOWN
                                video_quality_last_written_ms: 0
                            }
                        }

                    YTIPlayerRequest init
                        GPBMessage


注：

GPBMessage ~= General Protocol Buffer Message


--------------------------------------------------------------------------------

调用 HAMDataLoadRequest 时 传入了 POST的application/x-protobuf的NSData：

Module_Framework`-[YTTimedAction startTimerWithFireDate:timeInterval:repeats:runLoopMode:]_block + 40
    Module_Framework`-[YTTimedAction triggerAction] + 124
        YouTube`-[YTInlineMutedPlaybackContainerController startPlaybackImmediately] + 324
            YouTube`-[YTInlineMutedPlaybackWatchController loadVideoAndAttachView:] + 256
                Module_Framework`-[YTPlayerViewController prepareToLoadWithPlayerTransition:expectedLayout:] + 276
                    Module_Framework`-[YTLocalPlaybackController prepareToLoadWithPlayerTransition:expectedLayout:] + 556
                        Module_Framework`-[YTPlaybackDataLoader startLoading] + 1060
                            Module_Framework`-[YTPlaybackDataLoader onlinePromise] + 332
                                Module_Framework`-[YTPlayerService makePlaybackRequest:responseBlock:errorBlock:] + 524
                                    Module_Framework`-[YTPlayerServiceTask sendRequest] + 248
                                        Module_Framework`-[YTInnerTubeRequestor makeInnerTubeRequest:withParser:completionBlock:retryEnabled:timeoutInterval:enableLatencyTicks:mutableSharedData:] + 28
                                            Module_Framework`-[YTInnerTubeRequestor makeInnerTubeRequest:withParser:completionBlock:retryEnabled:timeoutInterval:enableLatencyTicks:mutableSharedData:nilIdentityIsSignedOut:] + 36
                                                Module_Framework`-[YTBaseInnerTubeService makePOSTRequest:withParser:completionBlock:retryEnabled:timeoutInterval:enableLatencyTicks:mutableSharedData:nilIdentityIsSignedOut:] + 540
                                                    Module_Framework`-[YTBaseInnerTubeService performHTTPRequest:service:withIdentity:dataBlock:errorBlock:retryEnabled:nilIdentityIsSignedOut:] + 628
                                                        Module_Framework`-[YTVisitorDataRequestDecorator decorateRequest:withCompletionBlock:] + 260
                                                            sub_186AB30 = Module_Framework`___lldb_unnamed_symbol14785$$Module_Framework + 608
                                                                Module_Framework`-[YTBaseNetworkService performHTTPRequest:withAuthorizer:responseBlock:errorBlock:retryConfig:] + 184
                                                                    Module_Framework`-[YTBaseNetworkService performHTTPRequest:withAuthorizer:backgroundCompletionBlock:retryConfig:] + 928
                                                                        Module_Framework`-[MLOnesieUMPFetcherTask resume] + 208
                                                                            Module_Framework`-[MLOnesieRequestFactory onesieRequestForPlayerRequest:authorization:dataLoader:context:cryptor:requestNumber:completionHandler:] + 432
                                                                                Module_Framework`-[MLOnesieRequestFactory onesieRequestForPlayerRequest:authorization:dataLoader:context:cryptor:requestNumber:completionHandler:]_block + 64
                                                                                    Module_Framework`-[MLOnesieRequestFactory onesieRequestForPlayerRequest:dataLoader:context:cryptor:requestNumber:error:] + 5628
                                                                                        参数:
                                                                                            request=<NSMutableURLRequest: 0x282e83150> {
                                                                                                URL: "https://youtubei.googleapis.com/youtubei/v1/player?key=AIzaSyB-63vPrdThhKuerbB2N_l7Kwwcxj6yUAc&id=r17kWuxKXKs&t=DA5C7286-F10C-4EBC-942E-96B8CA551C57"
                                                                                            }
                                                                                            dataLoader=<HAMCronetDataLoader: 0x283c621f0>
                                                                                            context=<MLOnesieRequestContext: 0x2809ae3a0>
                                                                                            cryptor=<MLOnesiePlayerServiceCryptor: 0x283c68930>
                                                                                            requestNumber=1
                                                                                            error=0x16d760c08

                                                                                        HAMDataLoadRequest initWithRangedURL:timeoutInterval:HTTPMethod:HTTPContentType:HTTPBody:idempotent:
                                                                                            参数:
                                                                                                rangeUrl=<HAMRangedURL: 0x281963320>
                                                                                                    URL = "https://rr1---sn-hp57kndr.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&rbqsm=fr&msp=1&odeak=1&odepv=1&osfc=1&id=fd97bcf151a359c8&initcwndbps=1645000&mt=1661156982&pxtags=Cg4KAnR4EggyNDE5NzI3NQ&rxtags=Cg4KAnR4EggyNDE5NzI3NQ,Cg4KAnR4EggyNDE5NzI3Ng,Cg4KAnR4EggyNDE5NzI3Nw&ack=1&cpn=AuykYLjoeyBPVKWO&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140"
                                                                                                timeoutInterval=60
                                                                                                HTTPMethod="POST"
                                                                                                HTTPContentType="application/x-protobuf"
                                                                                                HTTPBody=7647 bytes
                                                                                                idempotent=true

--------------------------------------------------------------------------------

googlevideo.com/initplayback 的调用顺序：

[case 1]

MLOnesieUMPFetcherTask onRequestFactoryCompletionWithRequest:error:
    参数:
        request=<HAMDataLoadRequest: 0x282027040>
            _idempotent (BOOL): YES
            _rangedURL (HAMRangedURL*): <HAMRangedURL: 0x283831120>
            _timeoutInterval (double): 60
            _HTTPMethod (NSString*): @"POST"
            _HTTPContentType (NSString*): @"application/x-protobuf"
            _HTTPBody (NSData*): <NSConcreteData: 0x283831140>
        error=(null)

    startRequestTask_104238C = -[MLOnesieUMPFetcherTask onRequestFactoryCompletionWithRequest:error:]_block + 64
        -[HAMCronetDataLoader taskWithRequest:userInfo:] + 140
            -[HAMDataLoadRequest buildURLRequest] + 140
                NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
                    参数:
                        URL="https://rr5---sn-p5qddn76.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&rbqsm=fr&msp=1&odeak=1&odepv=1&osfc=1&id=a52feece777301a2&initcwndbps=1786250&mt=1660899670&pxtags=Cg4KAnR4EggyNDE5NzI3NQ&rxtags=Cg4KAnR4EggyNDE5NzI3NQ,Cg4KAnR4EggyNDE5NzI3Ng,Cg4KAnR4EggyNDE5NzI3Nw&ack=1&cpn=Bu494mABvg3R6sCr&rn=1&opr=1&pvi=160,133,134,135,136,137,298,299,264&pai=139,140"
                        cachePolicy=NSURLRequestUseProtocolCachePolicy
                        timeoutInterval=60

[case 2]

callPrewarmConnection_10470B8
    startTask_1048AA0 = ___lldb_unnamed_symbol12576$$Module_Framework + 72
        -[HAMCronetDataLoader taskWithRequest:userInfo:] + 140
            -[HAMDataLoadRequest buildURLRequest] + 380
                NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
                    参数:
                        URL="https://rr2---sn-p5qs7nsr.googlevideo.com/initplayback?source=youtube&orc=1&oeis=1&c=IOS&oss=1&oda=1&oad=5500&ovd=5500&oaad=11000&oavd=11000&ocs=700&oputc=1&oses=1&ofpcc=1&osbr=1&osnz=1&rbqsm=fr&msp=1&odeak=1&odepv=1&osfc=1&id=8bfb111f4c684ce5&initcwndbps=1683750&mt=1660916238&pxtags=Cg4KAnR4EggyNDE5NzI3NQ&rxtags=Cg4KAnR4EggyNDE5NzI3NQ,Cg4KAnR4EggyNDE5NzI3Ng,Cg4KAnR4EggyNDE5NzI3Nw&cpn=YCXS_oBo1TcIotC0&pai=0&pvi=0&owc=1"
                        cachePolicy=NSURLRequestUseProtocolCachePolicy
                        timeoutInterval=60

--------------------------------------------------------------------------------

MLServerABRLoader dataLoadTask:didReceiveData: 的后续response的data的parse解析过程

当 禁用广告过滤 正常加载广告时的流程：

(1) MLServerABRLoader -> HAMMP4InitializationChunk

-[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36
    -[MLServerABRDataLoadTask dataLoadTask:didReceiveData:] + 292
        MLServerABRLoader dataLoadTask:didReceiveData:
            serverABRUMPParserParseResponseData_FE2F90 = ___lldb_unnamed_symbol12192$$Module_Framework + 136
                parserParseData_32CAA84 = ___lldb_unnamed_symbol84370$$Module_Framework + 160
                    extractMediaHeaderBytes_32CAC60
                    callParseData_32CAE80 = ___lldb_unnamed_symbol84372$$Module_Framework + 52
                        sub_FE4C80 = ___lldb_unnamed_symbol12224$$Module_Framework
                            BaseUMPParser_parseData_FE37D4 = ___lldb_unnamed_symbol12209$$Module_Framework + 172
                                citer 的 videoplayback
                                    for youtube::media::ServerABRUMPParser + 16 => checkMediaHeaderUmpBadPartid_107DD4C = ___lldb_unnamed_symbol12801$$Module_Framework
                                        MLQOEError QOEErrorWithCode:details:
                                            参数：
                                                code=ump.badpartid
                                                details={ partid = 0xA; }

                                其他情况，比如: 正常流程 或  oad 的 initplayback
                                    for youtube::media::OnesieUMPParser + 504 => checkMediaHeaderUmpBadPartid_1046494 = ___lldb_unnamed_symbol12555$$Module_Framework
                                        toCallProcessMediaHeader_FE2EB0 = ___lldb_unnamed_symbol12191$$Module_Framework + 108
                                            validateMediaHeader_FE72BC = ___lldb_unnamed_symbol12318$$Module_Framework + 144
                                                parseAndSaveChunk_107D850 = ___lldb_unnamed_symbol12797$$Module_Framework + 64
                                                    -[MLServerABRLoader chunkForMediaHeader:] + 324
                                                        -[MLMP4ChunkFactory initializationChunkWithURL:] + 72
                                                            HAMMP4InitializationChunk initWithFormat:rangedURL:preferTrackTimescale:
                                                                参数： case 1
                                                                    arg1=0x0000000282ca6b80
                                                                    arg2=0x000000028116c800
                                                                    arg3=false

(2) MLOnesieUMPFetcherTask -> HAMMP4InitializationChunk

-[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36
    -[MLOnesieUMPFetcherTask dataLoadTask:didReceiveData:] + 196
        ___lldb_unnamed_symbol12192$$Module_Framework + 136
            ___lldb_unnamed_symbol84370$$Module_Framework + 160
                ___lldb_unnamed_symbol84372$$Module_Framework + 52
                    ___lldb_unnamed_symbol12209$$Module_Framework + 312
                        sub_1045904 = ___lldb_unnamed_symbol12549$$Module_Framework + 168
                            ___lldb_unnamed_symbol12191$$Module_Framework + 108
                                processOnesieMediaHeader_10482D8 = ___lldb_unnamed_symbol12575$$Module_Framework + 1120
                                    -[MLMP4ChunkFactory initializationChunkWithURL:] + 72
                                        HAMMP4InitializationChunk initWithFormat:rangedURL:preferTrackTimescale:

(3) MLServerABRDataLoadTask -> HAMChunk

-[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36
    -[MLServerABRDataLoadTask dataLoadTask:didReceiveData:] + 292
        ___lldb_unnamed_symbol12192$$Module_Framework + 136
            ___lldb_unnamed_symbol84370$$Module_Framework + 160
                ___lldb_unnamed_symbol84372$$Module_Framework + 52
                    ___lldb_unnamed_symbol12209$$Module_Framework + 336
                        sub_107DAB0 = ___lldb_unnamed_symbol12800$$Module_Framework + 232
                            HAMChunk loadDidCompleteWithError:

(4) MLOnesieChunkLoadTask -> HAMChunk

-[MLOnesieChunkLoadTask initWithRange:chunks:dataBuffer:cache:delegate:queue:latencyLogger:]_block_block + 100
    -[HAMBaseChunkLoadTask didReceiveData:error:] + 656
        -[HAMBaseChunkLoadTask currentChunkDidComplete] + 256
            -[HAMMediaChunk loadDidCompleteWithError:] + 48
                HAMChunk loadDidCompleteWithError:

(5) -> MLServerABRLoader recordInvalidFormatQOEErrorWithFormatID:extraDetails:

-[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36
    -[MLServerABRDataLoadTask dataLoadTask:didReceiveData:] + 292
        ___lldb_unnamed_symbol12192$$Module_Framework + 136
            ___lldb_unnamed_symbol84370$$Module_Framework + 160
                ___lldb_unnamed_symbol84372$$Module_Framework + 52
                    ___lldb_unnamed_symbol12209$$Module_Framework + 624
                        chekAndCallProcessMediaHeader_FE43F4 = ___lldb_unnamed_symbol12214$$Module_Framework + 276
                            ___lldb_unnamed_symbol12191$$Module_Framework + 108
                                void youtube::media::BaseUMPParser::AccumulateDataAndParseProto<video_streaming::FormatInitializationMetadata>(unsigned int, absl::string_view, video_streaming::UMPPartID, std::__1::function<void (video_streaming::FormatInitializationMetadata)>)::'lambda'(absl::string_view)::operator()(absl::string_view) const + 436
                                    sub_FE61AC = ___lldb_unnamed_symbol12275$$Module_Framework + 160
                                        callDidParseFormatInitializationMetadata_107E5FC = ___lldb_unnamed_symbol12805$$Module_Framework + 44
                                            -[MLServerABRLoader didParseFormatInitializationMetadata:] + 268
                                                MLServerABRLoader recordInvalidFormatQOEErrorWithFormatID:extraDetails:
                                                    参数:
                                                        formatID="140_1629449114196897"
                                                        extraDetails="init_metadata_badid"



相关函数:

[callParseData_32CAE80]
核心代码逻辑：
  return (*(*curServerABRUMPParserOffset0x20Value + 0x30LL))();// 
                                                // call: sub_FE4C80 = ___lldb_unnamed_symbol12224:
                                                //   x0 = curServerABRUMPParserOffset0x20Value
                                                //   x1 = curServerABRUMPParserOffset0x40Ptr
                                                //   x2 = remainBufferSizePtr
                                                //   x3 = mediaHeaderBytesPtr

[sub_FE4C80]
核心逻辑：
  return BaseUMPParser_parseData_FE37D4(*(_QWORD *)(a1 + 8), *a2, *a3, *a4);

[BaseUMPParser_parseData_FE37D4]
核心逻辑：
    result = (*(__int64 (**)(void))(*(_QWORD *)result + 0x70LL))();
    // 实际调试 = 出错流程？: checkMediaHeaderUmpBadPartid_107DD4C

[chekAndCallProcessMediaHeader_FE43F4]
核心逻辑：
    toCallProcessMediaHeader_FE2EB0(v10, v9, v8, v7, (__int64)&v21);

[toCallProcessMediaHeader_FE2EB0]
核心逻辑：
    result = (*(__int64 (**)(void))(*(_QWORD *)v9 + 0x30LL))();
    // for MLServerABRDataLoadTask(MLServerABRLoader) is: validateMediaHeader_FE72BC
    // for MLOnesieUMPFetcherTask is: processOnesieMediaHeader_10482D8

[validateMediaHeader_FE72BC]
核心逻辑：
    (*(void (__fastcall **)(__int64, char *))(*(_QWORD *)v2 + 32LL))(v2, &v10); // = parseAndSaveChunk_107D850

[parseAndSaveChunk_107D850]
核心逻辑：
  v7 = (struct objc_object *)objc_msgSend_3E84298(curMLServerABRLoader_, "chunkForMediaHeader:", mediaHeader);

[youtube::media::BaseUMPParser::AccumulateDataAndParseProto<video_streaming::FormatInitializationMetadata>(unsigned int,absl::string_view,video_streaming::UMPPartID,std::__1::function<void ()(video_streaming::FormatInitializationMetadata)>)::{lambda(absl::string_view)]
核心逻辑：
  (*(void (**)(void))(*(_QWORD *)v20 + 0x30LL))(); // sub_FE61AC

[sub_FE61AC]
核心逻辑：
  (*(void (**)(void))(**(_QWORD **)(v3 + 8) + 0x50LL))();// callDidParseFormatInitializationMetadata_107E5FC


================================================================================

ctier 重发请求 死循环的调用逻辑：

-[MLServerABRLoader continueLoading]
    shouldSendRequest==True:
        -[MLServerABRDataLoader createDataLoadTaskForRequest:] + 128
            -[MLServerABRDataLoader dataLoadTaskForHTTPBody:isPrimaryHostProbing:] + 424
                -[HAMCronetDataLoader taskWithRequest:userInfo:] + 140
                    -[HAMDataLoadRequest buildURLRequest] + 140
                        NSURLRequest requestWithURL:cachePolicy:timeoutInterval:

        -[MLServerABRDataLoadTask startWithDelegate:delegateQueue:] + 88
            HAMCronetDataLoadTask startWithDelegate:delegateQueue:
                Cronet_UrlRequestCallback_OnResponseStarted_194CCE4 = ___lldb_unnamed_symbol15676$$Module_Framework
                    generateNewHttpResponse_194D6D8 = ___lldb_unnamed_symbol15681$$Module_Framework + 376 = sub_194D6D8
                        NSHTTPURLResponse initWithURL:statusCode:HTTPVersion:headerFields: -> 创建新的 ctier 的response

                    -[MLServerABRDataLoadTask dataLoadTask:didReceiveResponse:] + 424
                        -[MLServerABRLoader dataLoadTask:didReceiveResponse:]   -> 当 ctier 报错时
                            NSError HAMErrorWithURLResponse:userInfo:request:
                                    NSError HAMErrorWithCode:userInfo:

                Cronet_UrlRequestCallback_OnSucceeded_194D248 = ___lldb_unnamed_symbol15678$$Module_Framework
                    MLServerABRDataLoadTask dataLoadTask:didCompleteWithError:
                        MLServerABRLoader dataLoadTask:didCompleteWithError:
                            MLServerABRLoader updateLoadRetryPolicyOnLoadCompletionWithError:
                                MLDefaultLoadRetryPolicy didCompleteLoadWithError:
                                    error==NULL: MLDefaultLoadRetryPolicy cancelRetryAndResetBackoff:
                                        retryID++

                                error!=NULL: MLDefaultLoadRetryPolicy scheduleRetryWithBlock:
                                    canRetry==True: callExecuteRetryBlockWithRetryID_FF3070 = -[MLDefaultLoadRetryPolicy scheduleRetryWithBlock:]_block + 44
                                        -[MLDefaultLoadRetryPolicy executeRetryBlockWithRetryID:] + 68
                                            callMLServerABRLoaderContinueLoading_107B5A8
                                                -[MLServerABRLoader continueLoading] + 924
                                                    -[MLServerABRDataLoadTask startWithDelegate:delegateQueue:] + 88
                                                        HAMCronetDataLoadTask startWithDelegate:delegateQueue: -> 进入 ctier 的死循环 重复请求

                                    canRetry==False: callMLServerABRLoaderFailWithError_107B5B8
                                        MLServerABRLoader failWithError:



================================================================================

相关函数详解：

MLServerABRLoader dataLoadTask:didCompleteWithError:
    if ( curServerABRUMPParser )
        parseResponseError_107E6B0(curServerABRUMPParser, inputError_1);

    if ( !inputError_1
        && !curMLServerABRLoader->_didReceiveChunkForCurrentRequest
        && !curMLServerABRLoader->_didReceiveNextRequestPolicyForCurrentRequest )
    {
        defaultBackOffTimeMs = curMLServerABRLoader->_defaultBackOffTimeMs;
        if ( defaultBackOffTimeMs >= 1 )
        {
            ...
        }
    }

    objc_msgSend_3E84298(curMLServerABRLoader, "updateLoadRetryPolicyOnLoadCompletionWithError:", inputError_3);


MLServerABRLoader updateLoadRetryPolicyOnLoadCompletionWithError:
    参数：
        case 1
            arg1={
                Error Domain=com.google.ios.hamplayer
                Code=10000 "(null)"
                UserInfo={
                    HAMRequestNumberLoadTaskKey=1,
                    HAMErrorURLRequest=<NSMutableURLRequest: 0x280ab2470> {
                        URL: https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=L&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=1
                    }
                }
            }

        case 2:
            arg1=domain: "com.google.ios.hamplayer" - code: 6009

        case 3:
            Error Domain=com.google.ios.hamplayer
            Code=6009 "(null)"
            UserInfo={
                HAMErrorHTTPURLResponse=<NSHTTPURLResponse: 0x28095cd60> {
                    URL: https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=L&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2
                    }
                    {
                        Status Code: 302,
                        Headers {
                            Connection = close
                            Content-Length = 0
                            Location = "https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=A&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2"
                            Server = "atomos-tproxy 1.0"
                        }
                    },
                HAMRequestNumberLoadTaskKey=2,
                HAMErrorURLRequest=<NSMutableURLRequest: 0x280ab1f50> {
                    URL: https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=L&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2
                }
            }

    核心代码逻辑：
        objc_msgSend_3E84298((void *)curMLServerABRLoader->_loadRetryPolicy, "didCompleteLoadWithError:", error_);
        if ( error_ )
        {
            if ( (unsigned int)objc_msgSend_3E84298((void *)curMLServerABRLoader->_loadRetryPolicy, "canRetry") )
            {
                blockInvoke = callMLServerABRLoaderContinueLoading_107B5A8;

                objc_msgSend_3E84298((void *)loadRetryPolicy, "scheduleRetryWithBlock:", &StackBlock);
            }
            else
            {
                blockInvoke1 = callMLServerABRLoaderFailWithError_107B5B8;
            }
        }

    调用到：
        MLDefaultLoadRetryPolicy canRetry

        MLDefaultLoadRetryPolicy didCompleteLoadWithError:

        MLDefaultLoadRetryPolicy scheduleRetryWithBlock:

        callMLServerABRLoaderContinueLoading_107B5A8

        callMLServerABRLoaderFailWithError_107B5B8


MLDefaultLoadRetryPolicy didCompleteLoadWithError:
    参数：
        case 1: error=NULL
        case 2: NSError(
                    Error Domain=com.google.ios.hamplayer
                    Code=10000 "(null)"
                    UserInfo={
                        HAMRequestNumberLoadTaskKey=1,
                        HAMErrorURLRequest=<NSMutableURLRequest: 0x2838e9480>{
                            URL: https://rr4---sn-a5msenes.googlevideo.com/videoplayback?expire=1654443385&ei=GXmcYoryCa-RsfIP1Oy_mAs&ip=104.172.170.169&id=o-ANzDZ3h7N5rZAloUCdQGuYMBEb80Uu_e4KPc7xaAyG1K&source=youtube&requiressl=yes&mh=_h&mm=31,29&mn=sn-a5msenes,sn-a5mekn6k&ms=au,rdu&mv=m&mvi=4&pl=17&ctier=L&initcwndbps=1842500&svpuc=1&sabr=1&mt=1654421335&fvip=1&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIgLJQmm-EOXj9xFFyjCBHlgn2RiukSzRseDFdGPROqJ8ACIQCdoic9p3flB3FJOu2lqys31IE4I-wBZKNPR-hjkf0HHA%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgULlnjQq0nkVEN6oLDPNPfvxUrcF1uFeiOfQiUhNE9RMCIGbuOCNl2TVJp2VegKsJVujYtW_j53A1zYzznjVe3xp3&cpn=q6v1kI3_nWlzP4Qd&rn=1 
                        }
                    }
                )
    核心代码逻辑：
        if ( inputError )
        {
            if ( objc_msgSend_3E84298(inputError, "code") != &zero_2710 && objc_msgSend_3E84298(inputError_, "code") != algn0x20_1779 )
            {
                objc_msgSend_3E84298((void *)curMLDefaultLoadRetryPolicy->_errors, "addObject:", inputError_);
                objc_msgSend_3E84298(curMLDefaultLoadRetryPolicy->_backoffCalculator, "updateInterval");
            }
        }
        else
        {
            objc_msgSend_3E84298((void *)curMLDefaultLoadRetryPolicy->_errors, "removeAllObjects");
            objc_msgSend_3E84298(curMLDefaultLoadRetryPolicy->_backoffCalculator, "resetInterval");
            objc_msgSend_3E84298(curMLDefaultLoadRetryPolicy, "cancelRetryAndResetBackoff:", 0LL);
        }
    调用到：
        MLDefaultLoadRetryPolicy cancelRetryAndResetBackoff:


MLDefaultLoadRetryPolicy cancelRetryAndResetBackoff:
    核心逻辑：
        ++self->_retryID;
        curMLDefaultLoadRetryPolicy->_retryBlock = 0LL;


MLDefaultLoadRetryPolicy scheduleRetryWithBlock:
    核心逻辑：
        curMLDefaultLoadRetryPolicy->_retryBlock = newRetryBlock_2;
        if ( !curRetryBlock )
        {
            retryID = curMLDefaultLoadRetryPolicy->_retryID;
            objc_msgSend_3E84298(curMLDefaultLoadRetryPolicy->_backoffCalculator, "interval");
            dispathTime_backoffInterval = dispatch_time(0LL, (signed __int64)(backoffInterval * 1000000000.0));

            blockInvoke = callExecuteRetryBlockWithRetryID_FF3070;
        }

    调用到：
        callExecuteRetryBlockWithRetryID_FF3070


Cronet_UrlRequestCallback_OnResponseStarted_194CCE4 = ___lldb_unnamed_symbol15676$$Module_Framework + 80 = sub_194CCE4
    代码核心逻辑：
        if ( !curCronetDataLoadTask->taskCancelled_ )
        {
            newNSHTTPURLResponse = generateNewHttpResponse_194D6D8(responseInfo_);

            objc_msgSend_3E84298(
                (void *)curCronetDataLoadTask_->delegate_,
                "dataLoadTask:didReceiveResponse:",
                curCronetDataLoadTask_->parentTask_,
                curCronetDataLoadTask_->response_
            );

            if ( (signed int)getResponseStatusCode_3DFA210(responseInfo_) < 400 )
            {
                curCronetDataLoadTask_->bufferData_ = malloc(curCronetDataLoadTask_->bufferDataSize_);

                tryResetTimeoutTimer_194C704(curCronetDataLoadTask_);

                cronetUrlRequestReadResult = callCronetUrlRequestRead_3DF9370(request_);

                if ( (_DWORD)cronetUrlRequestReadResult ) // read error
                {
                    ...
                }
            }
            else
            {
                newHamError = objc_msgSend_3E84298(
                    &OBJC_CLASS___NSError,
                    "HAMErrorWithURLResponse:userInfo:request:",
                    curCronetDataLoadTask_->response_,
                    curCronetDataLoadTask_->userInfo_,
                    curCronetDataLoadTask_->URLRequest_
                );

                objc_msgSend_3E84298(
                    (void *)curCronetDataLoadTask_->delegate_,
                    "dataLoadTask:didCompleteWithError:",
                    curCronetDataLoadTask_->parentTask_,
                    newHamError_
                );
                objc_msgSend_3E84298(
                    (void *)curCronetDataLoadTask_->observer_,
                    "dataLoadTask:didCompleteWithError:",
                    curCronetDataLoadTask_->parentTask_,
                    newHamError_
                );

                objc_msgSend_3E84298(curCronetDataLoadTask_->timeoutTimer_, "invalidate");
            }
        }

================================================================================


--------------------------------------------------------------------------------

新生成 ctier=L 的 NSMutableURLRequest 请求 的函数调用顺序：

-[HAMPlayerInternal playerLoop] + 1736
    -[HAMBaseTrackRenderer prepareAndReturnError:] + 48
        -[HAMSBARAudioTrackRenderer internalPrepareAndReturnError:] + 40
            -[HAMQueueingRootSampleBufferSource prepareAndReturnError:] + 704
                -[HAMDASHSampleBufferSource prepareAndReturnError:] + 100
                    -[MLServerABRController prepareAndReturnError:] + 40
                        -[MLServerABRLoader continueLoading] + 840
                            -[MLServerABRDataLoader createDataLoadTaskForRequest:] + 128
                                -[MLServerABRDataLoader dataLoadTaskForHTTPBody:isPrimaryHostProbing:] + 424
                                    -[HAMCronetDataLoader taskWithRequest:userInfo:] + 140
                                        -[HAMDataLoadRequest buildURLRequest] + 140
                                            NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
                                                某次参数：
                                                    URL="https://rr4---sn-nx57ynsz.googlevideo.com/videoplayback?expire=1655759112&ei=p4ywYoCpO-GMsfIP9c-j-A0&ip=72.174.144.110&id=o-AOtW_cgK5DpGSlTFzlnNQ5jG-qYf6YbO-W_J4o6Z7Bg0&source=youtube&requiressl=yes&mh=mR&mm=31,29&mn=sn-nx57ynsz,sn-nx5s7n7y&ms=au,rdu&mv=m&mvi=4&pl=19&ctier=L&initcwndbps=1712500&svpuc=1&sabr=1&mt=1655737257&fvip=1&keepalive=yes&fexp=24001373,24007246,24208264&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgdJbzVTf5BpT1a0Qd-15luRpD3uxu9oqoIBFYuNPFrw0CIHogAdP_kVZFI1gE2yvIbih1AY5458ViOpGC77ywCY1Y&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgUMelUGd_HH1szTAu1xTcLTCTp0LZCwG81qqdxbtYQoMCIB1IHI2PgnSgrenK-M60dwFaKwacbIvmjERFx0ri9OG9&cpn=G0hmRCCW6nH0wNIr&rn=1"
                                                    cachePolicy=NSURLRequestUseProtocolCachePolicy
                                                    timeoutInterval=60
                                                CFNetwork`___lldb_unnamed_symbol231$$CFNetwork + 64
                                                    NSURLRequest initWithURL:cachePolicy:timeoutInterval:
                                                        某次参数：
                                                            URL="https://rr4---sn-nx57ynsz.googlevideo.com/videoplayback?expire=1655759112&ei=p4ywYoCpO-GMsfIP9c-j-A0&ip=72.174.144.110&id=o-AOtW_cgK5DpGSlTFzlnNQ5jG-qYf6YbO-W_J4o6Z7Bg0&source=youtube&requiressl=yes&mh=mR&mm=31,29&mn=sn-nx57ynsz,sn-nx5s7n7y&ms=au,rdu&mv=m&mvi=4&pl=19&ctier=L&initcwndbps=1712500&svpuc=1&sabr=1&mt=1655737257&fvip=1&keepalive=yes&fexp=24001373,24007246,24208264&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgdJbzVTf5BpT1a0Qd-15luRpD3uxu9oqoIBFYuNPFrw0CIHogAdP_kVZFI1gE2yvIbih1AY5458ViOpGC77ywCY1Y&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRAIgUMelUGd_HH1szTAu1xTcLTCTp0LZCwG81qqdxbtYQoMCIB1IHI2PgnSgrenK-M60dwFaKwacbIvmjERFx0ri9OG9&cpn=G0hmRCCW6nH0wNIr&rn=1"
                                                            cachePolicy=NSURLRequestUseProtocolCachePolicy
                                                            timeoutInterval=60

--------------------------------------------------------------------------------

触发 HAMCronetDataLoadTask startWithDelegate:delegateQueue: 的调用顺序：

[第一次 rn=1 ctiler=L]

-[HAMPlayerInternal playerLoop] + 1736
    -[HAMBaseTrackRenderer prepareAndReturnError:] + 48
        -[HAMSBARAudioTrackRenderer internalPrepareAndReturnError:] + 40
            -[HAMQueueingRootSampleBufferSource prepareAndReturnError:] + 704
                -[HAMDASHSampleBufferSource prepareAndReturnError:] + 100
                    -[MLServerABRController prepareAndReturnError:] + 40
                        _logos_method$_ungrouped$MLServerABRLoader$continueLoading(self=0x000000012e689210, _cmd="continueLoading") at youtubeCronet.xm:289:5
                            -[MLServerABRLoader continueLoading] + 924
                                -[MLServerABRDataLoadTask startWithDelegate:delegateQueue:] + 88
                                    HAMCronetDataLoadTask startWithDelegate:delegateQueue:
                                        某次的参数：
                                            arg1=delegate=<MLServerABRDataLoadTask: 0x284243690>
                                            arg2=delegateQueue=<OS_dispatch_queue_serial: MLHAMPlayer>
                                        此时：
                                            reqUrl
                                                rn=1: https://rr1---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1658155941&ei=RR_VYqa6GJTlNsC6gIgE&ip=162.253.45.206&id=o-AGLA8-7MEt9wIIkvKGany12Vu6HmM4t-R27oa-wU3eyG&source=youtube&requiressl=yes&mh=Mk&mm=31,29&mn=sn-phvo-jpql,sn-vgqsrnsd&ms=au,rdu&mv=m&mvi=1&pl=22&ctier=L&initcwndbps=1168750&svpuc=1&sabr=1&mt=1658133649&fvip=5&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIhAMoq1fU-fdprDjIkRanRHLMJLg-mISEmElCC7_OqigFVAiBpC6IpBGXN_mWIzoPn8nG2Ah4WNEIauk5j3_y4uUJooQ%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgaeU1mBeqHILR9DlKWm0nihNijdMhZgAFvJjbZKW1FrUCIQDFRyVh1aMUMdMDCNfmmOPgasbwsu5dLSdY3JFfsKFiKw%3D%3D&cpn=2oxmwItyhlTlzWXv&rn=1

[第二次 rn=2 ctiler=L]

-[MLDefaultLoadRetryPolicy scheduleRetryWithBlock:]_block + 44
    -[MLDefaultLoadRetryPolicy executeRetryBlockWithRetryID:] + 68
        -[MLServerABRLoader continueLoading] + 924
            -[MLServerABRDataLoadTask startWithDelegate:delegateQueue:] + 88
                HAMCronetDataLoadTask startWithDelegate:delegateQueue:
                    某次的参数：
                        arg1=delegate=<MLServerABRDataLoadTask: 0x286198f00>
                        arg2=delegateQueue=<OS_dispatch_queue_serial: MLHAMPlayer[0x280218180] = { xref = 34, ref = 5, sref = 2, target = com.apple.root.user-initiated-qos.overcommit[0x11050d080], width = 0x1, state = 0x006000a500001801, enqueued, dirty, max qos 5, draining on 0x1803, in-barrier}>
                    此时：
                        reqUrl
                            rn=2时: https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1658305786&ei=mWjXYuCLOOucir4P3c6AiAQ&ip=162.253.45.206&id=o-AMnr7yIbmMhFTmywfJSN8wAIx4A4Qoq0hGO91N7dCzIp&source=youtube&requiressl=yes&mh=hx&mm=31,29&mn=sn-phvo-jpql,sn-vgqsknek&ms=au,rdu&mv=m&mvi=2&pcm2cms=yes&pl=22&ctier=L&initcwndbps=1031250&svpuc=1&sabr=1&mt=1658283891&fvip=1&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhANNsZzr74YwYCad-wykDLNs7C6jNLkdlTSuiVTHlI2v0AiEA4JnoG-7SCvNPKqt9iFwCbPDyHgfX8NtTULRDqp6HnRM%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgXZKQOPCBuuyxe3Bdk0qXJbgIxsJqr_7LpKHE7xQ1OnQCIQDq4WnBDfATQNkxbpOWAQ_RM4NEThcpb0aqUFqbjUC1vg%3D%3D&cpn=aCkM2ux19mPWYM5x&rn=2

[第三次 rn=2&rn=3 ctiler=A]
    调用顺序同上
    但是URL略有不同
                    此时：
                        reqUrl
                            rn=3时: https://rr2---sn-phvo-jpql.googlevideo.com/videoplayback?expire=1658305786&ei=mWjXYuCLOOucir4P3c6AiAQ&ip=162.253.45.206&id=o-AMnr7yIbmMhFTmywfJSN8wAIx4A4Qoq0hGO91N7dCzIp&source=youtube&requiressl=yes&mh=hx&mm=31,29&mn=sn-phvo-jpql,sn-vgqsknek&ms=au,rdu&mv=m&mvi=2&pcm2cms=yes&pl=22&ctier=A&initcwndbps=1031250&svpuc=1&sabr=1&mt=1658283891&fvip=1&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhANNsZzr74YwYCad-wykDLNs7C6jNLkdlTSuiVTHlI2v0AiEA4JnoG-7SCvNPKqt9iFwCbPDyHgfX8NtTULRDqp6HnRM%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgXZKQOPCBuuyxe3Bdk0qXJbgIxsJqr_7LpKHE7xQ1OnQCIQDq4WnBDfATQNkxbpOWAQ_RM4NEThcpb0aqUFqbjUC1vg%3D%3D&cpn=aCkM2ux19mPWYM5x&rn=2&rn=3

--------------------------------------------------------------------------------

ctier=L 的 请求 NSMutableURLRequest 也返回 NSError 出错 的函数调用顺序

-[HAMPlayerInternal playerLoop] + 1736
    -[HAMBaseTrackRenderer prepareAndReturnError:] + 48
        -[HAMPixelBufferVideoTrackRenderer internalPrepareAndReturnError:] + 40
            -[HAMVideoDecoderSampleBufferSource prepareAndReturnError:] + 80
                -[HAMQueueingRootSampleBufferSource prepareAndReturnError:] + 632
                    -[HAMDASHSampleBufferSource seekToTime:] + 140
                        -[MLServerABRController seekToTime:] + 36
                            -[MLServerABRLoader seekDidOccur] + 148
                                ___lldb_unnamed_symbol15667$$Module_Framework + 112
                                    NSError HAMErrorWithCode:userInfo:
                                        某次的参数：
                                            arg1=10000
                                            arg2={
                                                    HAMErrorURLRequest = "<NSMutableURLRequest: 0x28302c0b0> { URL: https://rr2---sn-nx5s7nel.googlevideo.com/videoplayback?expire=1655754561&ei=4HqwYt29JNSDkwbAt5vQDg&ip=72.174.144.110&id=o-AJjQlPwnnZAb4c4XmDyophxk9bxSybJHNgVtg0xPnY5B&source=youtube&requiressl=yes&mh=Vb&mm=31,29&mn=sn-nx5s7nel,sn-nx57ynsl&ms=au,rdu&mv=m&mvi=2&pl=19&ctier=L&initcwndbps=1721250&svpuc=1&sabr=1&mt=1655732690&fvip=2&keepalive=yes&fexp=24001373,24007246,24208264&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIhAIoI_-R65dCbFSiymVXG3fMpNeJO5LUNC-t_O1IRl6aJAiBy8tnuzG_Gag61Wwu-Pk1DAyQd1MvY4t2MVxvfYVA5mg%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAPgKcNRbTnALWCxhsV7ZpQ48EmZyL8VzBjUOIbM1y6SfAiAMJA2YCB4AUnlHaS9MuE1aWCkpY5JLkHyY5yooEGQU9Q%3D%3D&cpn=uDxkagKFinGD-plw&rn=1 }";
                                                    HAMRequestNumberLoadTaskKey = 1;
                                                }
                                    NSError errorWithDomain:code:userInfo:
                                        某次的参数：
                                            arg1="com.google.ios.hamplayer"
                                            arg2=10000
                                            arg3={
                                                    HAMErrorURLRequest = "<NSMutableURLRequest: 0x28302c0b0> { URL: https://rr2---sn-nx5s7nel.googlevideo.com/videoplayback?expire=1655754561&ei=4HqwYt29JNSDkwbAt5vQDg&ip=72.174.144.110&id=o-AJjQlPwnnZAb4c4XmDyophxk9bxSybJHNgVtg0xPnY5B&source=youtube&requiressl=yes&mh=Vb&mm=31,29&mn=sn-nx5s7nel,sn-nx57ynsl&ms=au,rdu&mv=m&mvi=2&pl=19&ctier=L&initcwndbps=1721250&svpuc=1&sabr=1&mt=1655732690&fvip=2&keepalive=yes&fexp=24001373,24007246,24208264&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIhAIoI_-R65dCbFSiymVXG3fMpNeJO5LUNC-t_O1IRl6aJAiBy8tnuzG_Gag61Wwu-Pk1DAyQd1MvY4t2MVxvfYVA5mg%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAPgKcNRbTnALWCxhsV7ZpQ48EmZyL8VzBjUOIbM1y6SfAiAMJA2YCB4AUnlHaS9MuE1aWCkpY5JLkHyY5yooEGQU9Q%3D%3D&cpn=uDxkagKFinGD-plw&rn=1 }";
                                                    HAMRequestNumberLoadTaskKey = 1;
                                                }

--------------------------------------------------------------------------------

说明：下面是 ctier=A 的 NSURLRequest 的调用顺序

[case 1]

-[MLDefaultLoadRetryPolicy scheduleRetryWithBlock:]
    -[MLDefaultLoadRetryPolicy scheduleRetryWithBlock:]_block + 44
        -[MLDefaultLoadRetryPolicy executeRetryBlockWithRetryID:] + 68
            某次的参数：arg1=3

            MLServerABRLoader continueLoading
                -[MLServerABRLoader continueLoading] + 840
                    -[MLServerABRDataLoader createDataLoadTaskForRequest:] + 128
                        -[MLServerABRDataLoader dataLoadTaskForHTTPBody:isPrimaryHostProbing:] + 424
                            -[HAMCronetDataLoader taskWithRequest:userInfo:] + 140
                                [HAMDataLoadRequest buildURLRequest] + 140
                                    NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
                                        某次的参数：
                                            URL="https://rr1---sn-bvvbax4pcxg-najl.googlevideo.com/videoplayback?expire=1654284469&ei=VAyaYvi5G4eHsfIPqoK1kAg&ip=136.36.116.116&id=o-AD4uH0_eMoADlcTGlFs1Uw5dhdYtelrEPN9konw5oPZb&source=youtube&requiressl=yes&mh=_u&mm=31,29&mn=sn-bvvbax4pcxg-najl,sn-o097znsl&ms=au,rdu&mv=m&mvi=1&pl=20&ctier=A&initcwndbps=1786250&svpuc=1&sabr=1&mt=1654262462&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIgRHLJbeJI4tvvoD9pV1KThMgoBW8xgE27L2nGFfXaX6YCIQC6SEOoNiuui3-5O_gkauy6nXCQZN1Es1omMAH7ZoPfyQ%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAKMDmxqaOMD0YMFLUgG8otkDKKVPLHSBRuD3yKVVpd-DAiB73wqU9tdTRN5zW-yIL3kXDXwNuQ7L4ua7n00tb6YnFA%3D%3D&cpn=WPioc6dOPwVsC718&rn=2&rn=5"
                                            cachePolicy=NSURLRequestUseProtocolCachePolicy
                                            timeoutInterval=60

                                        某次的返回值：
                                            <NSMutableURLRequest: 0x280ab2460> {
                                                URL: https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=L&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=1
                                            }

                                        CFNetwork`___lldb_unnamed_symbol231$$CFNetwork + 64

                                            NSURLRequest initWithURL:cachePolicy:timeoutInterval:
                                                参数 case 1：
                                                    URL="https://rr1---sn-bvvbax4pcxg-najl.googlevideo.com/videoplayback?expire=1654284469&ei=VAyaYvi5G4eHsfIPqoK1kAg&ip=136.36.116.116&id=o-AD4uH0_eMoADlcTGlFs1Uw5dhdYtelrEPN9konw5oPZb&source=youtube&requiressl=yes&mh=_u&mm=31,29&mn=sn-bvvbax4pcxg-najl,sn-o097znsl&ms=au,rdu&mv=m&mvi=1&pl=20&ctier=A&initcwndbps=1786250&svpuc=1&sabr=1&mt=1654262462&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIgRHLJbeJI4tvvoD9pV1KThMgoBW8xgE27L2nGFfXaX6YCIQC6SEOoNiuui3-5O_gkauy6nXCQZN1Es1omMAH7ZoPfyQ%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAKMDmxqaOMD0YMFLUgG8otkDKKVPLHSBRuD3yKVVpd-DAiB73wqU9tdTRN5zW-yIL3kXDXwNuQ7L4ua7n00tb6YnFA%3D%3D&cpn=WPioc6dOPwVsC718&rn=2&rn=5"
                                                    cachePolicy=NSURLRequestUseProtocolCachePolicy
                                                    timeoutInterval=60
                                                
                                                参数 case 2：
                                                    URL="https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=A&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2&rn=3"
                                                    cachePolicy=NSURLRequestUseProtocolCachePolicy
                                                    timeoutInterval=60

                                                return <NSMutableURLRequest: 0x28063c790> {
                                                    URL: https://rr1---sn-bvvbax4pcxg-najl.googlevideo.com/videoplayback?expire=1654284469&ei=VAyaYvi5G4eHsfIPqoK1kAg&ip=136.36.116.116&id=o-AD4uH0_eMoADlcTGlFs1Uw5dhdYtelrEPN9konw5oPZb&source=youtube&requiressl=yes&mh=_u&mm=31,29&mn=sn-bvvbax4pcxg-najl,sn-o097znsl&ms=au,rdu&mv=m&mvi=1&pl=20&ctier=A&initcwndbps=1786250&svpuc=1&sabr=1&mt=1654262462&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRQIgRHLJbeJI4tvvoD9pV1KThMgoBW8xgE27L2nGFfXaX6YCIQC6SEOoNiuui3-5O_gkauy6nXCQZN1Es1omMAH7ZoPfyQ%3D%3D&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIhAKMDmxqaOMD0YMFLUgG8otkDKKVPLHSBRuD3yKVVpd-DAiB73wqU9tdTRN5zW-yIL3kXDXwNuQ7L4ua7n00tb6YnFA%3D%3D&cpn=WPioc6dOPwVsC718&rn=2&rn=5
                                                }


[case 2]

-[HAMPlayerInternal playerLoop] + 1736
    -[HAMBaseTrackRenderer prepareAndReturnError:] + 48
        -[HAMSBARAudioTrackRenderer internalPrepareAndReturnError:] + 40
            -[HAMQueueingRootSampleBufferSource prepareAndReturnError:] + 704
                -[HAMDASHSampleBufferSource prepareAndReturnError:] + 100
                    -[MLServerABRController prepareAndReturnError:] + 40
                        -[MLServerABRLoader continueLoading] + 840
                            -[MLServerABRDataLoader createDataLoadTaskForRequest:] + 128
                                -[MLServerABRDataLoader dataLoadTaskForHTTPBody:isPrimaryHostProbing:] + 424
                                    -[HAMCronetDataLoader taskWithRequest:userInfo:] + 140
                                        -[HAMDataLoadRequest buildURLRequest] + 140
                                            NSURLRequest requestWithURL:cachePolicy:timeoutInterval:
                                                CFNetwork`___lldb_unnamed_symbol231$$CFNetwork + 64
                                                    NSURLRequest initWithURL:cachePolicy:timeoutInterval:

--------------------------------------------------------------------------------

说明：下面是 ctier=A 的 response = NSHTTPURLResponse 的调用顺序

-[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36 = sub_194D978
    ___lldb_unnamed_symbol110205$$Module_Framework + 40 = sub_38FCE24
        ___lldb_unnamed_symbol171000$$Module_Framework + 28 = sub_3DF8048
            ___lldb_unnamed_symbol170908$$Module_Framework + 52 = sub_3DF60E8
                Cronet_UrlRequestCallback_OnResponseStarted_194CCE4 = ___lldb_unnamed_symbol15676$$Module_Framework + 80 = sub_194CCE4
                    generateNewHttpResponse_194D6D8 = ___lldb_unnamed_symbol15681$$Module_Framework + 376 = sub_194D6D8
                        NSHTTPURLResponse initWithURL:statusCode:HTTPVersion:headerFields:
                            某次参数:
                                url="https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=A&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2&rn=3",
                                statusCode=200,
                                HTTPVersion=0x0000000000000000,
                                headerFields=4 key/value pairs

                            某次的返回值：
                                <NSHTTPURLResponse: 0x280ee1d00> {
                                    URL: https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=A&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2&rn=3
                                    }
                                    {
                                        Status Code: 200,
                                        Headers {
                                            Connection = "keep-alive"
                                            "Content-Length" = 0
                                            "Content-Type" = "application/vnd.yt-ump"
                                            Server = "atomos-tproxy 1.0"
                                        } 
                                    }


--------------------------------------------------------------------------------


触发了 HAMCronetDataLoadTask startWithDelegate:delegateQueue: 当第一次 ctier=A 的url 时的调用顺序：

-[MLDefaultLoadRetryPolicy scheduleRetryWithBlock:]_block + 44
    -[MLDefaultLoadRetryPolicy executeRetryBlockWithRetryID:] + 68
        某次参数：
            arg1=2
        -[MLServerABRLoader continueLoading] + 924
            -[MLServerABRDataLoadTask startWithDelegate:delegateQueue:] + 88
                某次的参数：
                    arg1=<MLServerABRDataLoadTask: 0x281226d00>
                    arg2=<OS_dispatch_queue_serial: MLHAMPlayer[0x282d34f00] = { xref = 33, ref = 6, sref = 2, target = com.apple.root.user-initiated-qos.overcommit[0x10c651080], width = 0x1, state = 0x006000a50001a401, enqueued, dirty, max qos 5, draining on 0x1a403, in-barrier}>

--------------------------------------------------------------------------------

下面是 ctier=A 的 response = NSHTTPURLResponse 在生成了之后，被调用到 statusCode 时的调用顺序

-[MLPlayerItemEventCenter networkRequestDidReceiveResponseWithEvent:] + 204
    -[MLQOEPingController networkRequestDidReceiveResponseWithEvent:] + 272
        NSHTTPURLResponse statusCode
            return 200;

--------------------------------------------------------------------------------

说明：下面是 ctier=A 的response后的，始终retry重发请求的相关的调用逻辑

[case 1]

cancelCronetDataLoadTask_194BFB8
    reportDataLoadTaskError_194DA94 = sub_194DA94 = ___lldb_unnamed_symbol15689$$Module_Framework + 40
        -[MLServerABRDataLoadTask dataLoadTask:didCompleteWithError:] + 368
            -[MLServerABRLoader dataLoadTask:didCompleteWithError:] + 260
                参数
                    case 1：
                        arg1=0x0000000281aaa490
                        arg2=domain: "com.google.ios.hamplayer" - code: 10000
                    case 2：
                        arg1=0x0000000280597a50
                        arg2=domain: "com.google.ios.hamplayer" - code: 6009

                MLServerABRLoader updateLoadRetryPolicyOnLoadCompletionWithError:

[case 2]

-[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36
    ___lldb_unnamed_symbol110205$$Module_Framework + 40
        ___lldb_unnamed_symbol171023$$Module_Framework + 32
            ___lldb_unnamed_symbol170906$$Module_Framework + 84
                Cronet_UrlRequestCallback_OnRedirectReceived_194C9D8 = ___lldb_unnamed_symbol15675$$Module_Framework + 620
                    -[MLServerABRDataLoadTask dataLoadTask:didCompleteWithError:] + 368
                        -[MLServerABRLoader dataLoadTask:didCompleteWithError:] + 260
                            MLServerABRLoader updateLoadRetryPolicyOnLoadCompletionWithError:


[case 3]

找到 死循环 多次重试的调用关系了：

callHAMTimerFire_199CFB8 = -[HAMTimer initWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:repeats:block:]_block + 36
    -[HAMTimer fire] + 52
        callMLOnesieConnectionOpenerOnPingTimer_1039FB8 = sub_1039FB8 = -[MLOnesieConnectionOpener scheduleNextRequestUsingStartDelay:]_block + 36
            -[MLOnesieConnectionOpener onPingTimer] + 180
                -[HAMCronetDataLoadTask startWithDelegate:delegateQueue:] + 932
                    tryResetTimeoutTimer_194C704 = sub_194C704 = ___lldb_unnamed_symbol15674$$Module_Framework + 200
                        +[HAMTimer timerWithQueue:startNanoseconds:leewayNanoseconds:block:] + 104
                            -[HAMTimer initWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:repeats:block:]

===>>>

-[HAMTimer initWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:repeats:block:]
    -[HAMTimer initWithQueue:startNanoseconds:intervalNanoseconds:leewayNanoseconds:repeats:block:]_block + 36
        -[HAMTimer fire] + 52
            callMLOnesieConnectionOpenerOnPingTimer_1039FB8 = sub_1039FB8 = = -[MLOnesieConnectionOpener scheduleNextRequestUsingStartDelay:]_block + 36
                -[MLOnesieConnectionOpener onPingTimer] + 180
                    -[HAMCronetDataLoadTask startWithDelegate:delegateQueue:] + 648
                        某次参数：
                            arg1=<MLOnesieConnectionOpener: 0x2829dde00>
                            delegateQueue =<OS_dispatch_queue_serial: queue_serial[0x283868800] = { xref = 8, ref = 5, sref = 2, target = com.apple.root.default-qos.overcommit[0x104664f80], width = 0x1, state = 0x006000a500012805, enqueued, dirty, max qos 5, draining on 0x12807, in-barrier}>

                        核心代码:
                            sub_3DF9004(sub_194C27C);

                        Cronet_Executor_ExecuteFunc_194C27C = sub_194C27C = ___lldb_unnamed_symbol15668
                            -[HAMCronetDataLoadTask startWithDelegate:delegateQueue:]_block_block + 36 = sub_194D978
                                ___lldb_unnamed_symbol110205$$Module_Framework + 40 = sub_38FCE24
                                    ___lldb_unnamed_symbol171000$$Module_Framework + 28 = sub_3DF8048
                                        ___lldb_unnamed_symbol170908$$Module_Framework + 52 = sub_3DF60E8
                                            Cronet_UrlRequestCallback_OnResponseStarted_194CCE4 = sub_194CCE4 = ___lldb_unnamed_symbol15676$$Module_Framework + 124
                                                -[MLServerABRDataLoadTask dataLoadTask:didReceiveResponse:] + 424
                                                    -[MLServerABRLoader dataLoadTask:didReceiveResponse:]
                                                        某次的参数：
                                                            arg1=<MLServerABRDataLoadTask: 0x2806a7060>,
                                                            arg2=<NSHTTPURLResponse: 0x280ee1d00> {
                                                                    URL: https://rr1---sn-8xgp1vo-p5ql.googlevideo.com/videoplayback?expire=1654546559&ei=HwyeYrH5DJWN_9EPouqpqA8&ip=70.110.26.104&id=o-ABMZsKNB0GJ_BmboM7YSytnAHB7ASC_Y7GC6jO056wJe&source=youtube&requiressl=yes&mh=ji&mm=31,29&mn=sn-8xgp1vo-p5ql,sn-p5qlsndz&ms=au,rdu&mv=m&mvi=1&pcm2cms=yes&pl=20&ctier=A&initcwndbps=1490000&svpuc=1&sabr=1&mt=1654524545&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRgIhAPnD2xwm1J-b9yvruQe1aozyNm_9xaCQvtdIM7n32vA5AiEA4mVXjIUgf7425J8XlwfLdVhMyDiZHFtRhRE1jHxtWZo%3D&lsparams=mh,mm,mn,ms,mv,mvi,pcm2cms,pl,initcwndbps&lsig=AG3C_xAwRQIgd3ooIz7fpF6JTB11opldSL1WIPtx4L5FaBEqhdEZBLwCIQChh18q1sc8T2XEIwlQBI8O9cF_DI2FPVLjVCNRHhRPCQ%3D%3D&cpn=sjOhS6zpDL-OE-pP&rn=2&rn=3
                                                                }
                                                                {
                                                                    Status Code: 200, Headers {
                                                                        Connection = "keep-alive"
                                                                        "Content-Length" = 0
                                                                        "Content-Type" = "application/vnd.yt-ump"
                                                                        Server = "atomos-tproxy 1.0"
                                                                    }
                                                                }

                                                        NSError HAMErrorWithURLResponse:userInfo:request:
                                                            某次的参数：
                                                                response=<NSHTTPURLResponse: 0x281464760>,
                                                                userInfo={
                                                                    HAMRequestNumberLoadTaskKey = 2;
                                                                },
                                                                request=<NSMutableURLRequest: 0x2810f1090>

                                                            v22 = objc_msgSend((void *)v7, "HAMErrorWithCode:userInfo:", v20=6000, v14=userInfoDict);
                                                                NSError HAMErrorWithCode:userInfo:
                                                                    某次的参数：
                                                                        hamErrCode=6000,
                                                                        userInfo=dict

                                                                    return (id)objc_msgSend((void *)self, "errorWithDomain:code:userInfo:", CFSTR("com.google.ios.hamplayer"), a3, a4);

                                                                    某次的返回值：
                                                                        Error Domain=com.google.ios.hamplayer
                                                                        Code=6000 "(null)"
                                                                        UserInfo={
                                                                            HAMErrorHTTPURLResponse=<NSHTTPURLResponse: 0x281ceda60> {
                                                                                    URL: https://rr5---sn-q4flrnee.googlevideo.com/videoplayback?expire=1654110110&ei=PmOXYpHwG-6Rlu8P0LO9yAQ&ip=72.179.224.229&id=o-ANJ-ePUG7jWZMQ_icM7pjIuiwW8IEgTemHHlekQlItK_&source=youtube&requiressl=yes&mh=aT&mm=31,29&mn=sn-q4flrnee,sn-q4fl6ns7&ms=au,rdu&mv=m&mvi=5&pl=21&ctier=A&initcwndbps=1480000&svpuc=1&sabr=1&mt=1654088228&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgTokhxlKrvIZN4PZHmqi4CCoCk-_Bdgi_WTIIrlx1Y7ICIGr2dSn6txZUrrMdum-VwuQ8TbwSK-HTPVVZB28aPwO-&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgGW-eIbWvW75lrbGlodLzWTMVtDL7KtlxEW-gROi_6_kCIQDwf7k8v2jZdCDAY9KKlCf_k_T4IsKDoL2nm-49RdhBfQ%3D%3D&cpn=F98L8S2i9bcH06us&rn=2&rn=3
                                                                                }
                                                                                {
                                                                                    Status Code: 200,
                                                                                    Headers {
                                                                                        Connection = "keep-alive"
                                                                                        "Content-Length" = 0
                                                                                        Server = "atomos-tproxy 1.0"
                                                                                    }
                                                                                },
                                                                            HAMRequestNumberLoadTaskKey=3,
                                                                            HAMErrorURLRequest=<NSMutableURLRequest: 0x281886580> {
                                                                                URL: https://rr5---sn-q4flrnee.googlevideo.com/videoplayback?expire=1654110110&ei=PmOXYpHwG-6Rlu8P0LO9yAQ&ip=72.179.224.229&id=o-ANJ-ePUG7jWZMQ_icM7pjIuiwW8IEgTemHHlekQlItK_&source=youtube&requiressl=yes&mh=aT&mm=31,29&mn=sn-q4flrnee,sn-q4fl6ns7&ms=au,rdu&mv=m&mvi=5&pl=21&ctier=A&initcwndbps=1480000&svpuc=1&sabr=1&mt=1654088228&fvip=2&keepalive=yes&fexp=24001373,24007246&c=IOS&sparams=expire,ei,ip,id,source,requiressl,ctier,svpuc,sabr&sig=AOq0QJ8wRAIgTokhxlKrvIZN4PZHmqi4CCoCk-_Bdgi_WTIIrlx1Y7ICIGr2dSn6txZUrrMdum-VwuQ8TbwSK-HTPVVZB28aPwO-&lsparams=mh,mm,mn,ms,mv,mvi,pl,initcwndbps&lsig=AG3C_xAwRQIgGW-eIbWvW75lrbGlodLzWTMVtDL7KtlxEW-gROi_6_kCIQDwf7k8v2jZdCDAY9KKlCf_k_T4IsKDoL2nm-49RdhBfQ%3D%3D&cpn=F98L8S2i9bcH06us&rn=2&rn=3
                                                                            }
                                                                        }

--------------------------------------------------------------------------------

当 去掉广告过滤 时，调用到 MLServerABRLoader onesieDataLoader:didCompleteChunks:withError: 的顺序：

-[MLOnesieChunkLoadTask initWithRange:chunks:dataBuffer:cache:delegate:queue:latencyLogger:]
    sub_10380F8 = -[MLOnesieChunkLoadTask initWithRange:chunks:dataBuffer:cache:delegate:queue:latencyLogger:]_block
        sub_10381F8 = -[MLOnesieChunkLoadTask initWithRange:chunks:dataBuffer:cache:delegate:queue:latencyLogger:]_block_block + 344 = 
            -[HAMBaseChunkLoadTask didCompleteWithError:] + 412
                -[MLServerABROnesieDataLoader chunks:didCompleteLoadingWithError:] + 92
                    MLServerABRLoader onesieDataLoader:didCompleteChunks:withError:
                        参数举例：
                            [case 1]: 
                                arg1=0x0000000282b42000,
                                arg2=1 element,
                                arg3=domain: "com.google.ios.hamplayer" - code: 10000
                            [case 2]: 
                                arg1=<MLServerABROnesieDataLoader: 0x282bd5e80>, 
                                arg2=<__NSSingleObjectArrayI 0x2807d1510>(
                                        <HAMMP4InitializationChunk: 0x282bc3b80>
                                    )
                                arg3=NULL

--------------------------------------------------------------------------------

下面是：MLServerABRLoader initWithQueue 的调用顺序

-[GPCPromise resolveChild:]_block + 128
    -[YTVideoResolver registerCompletionBlocksOnPlaybackDataLoader]_block + 64
        -[YTVideoResolver didLoadVideoWithPlaybackData:] + 108
            -[YTVideoResolver changeToState:] + 92
                -[YTLocalPlaybackController videoResolver:didChangeFromState:toState:] + 488
                    -[YTLocalPlaybackController startPlaybackWithVideoResolver:internallyPrebufferedVideoController:] + 2184
                        YTAdsControlFlowPlaybackCoordinator startPrerollAdBreak
                            -[YTAdsControlFlowPlaybackCoordinator startPrerollAdBreak] + 52
                                -[YTAdsControlFlowPlaybackCoordinator doneWithPlayerBytesSlotWithBreakType:] + 80
                                    -[YTLocalPlaybackController adsPlaybackCoordinator:didFinishBreakWithBreakType:] + 68
                                        -[YTSingleVideoSequencer activateContentSequence] + 224
                                            -[YTSingleVideoSequencer activateVideoController:reloadContext:] + 248
                                                -[YTSingleVideoController initializeAndLoadWithViewportSizeProvider:playerVisibility:reloadContext:] + 860
                                                    -[MLHAMQueuePlayer load] + 220
                                                        -[MLHAMPlayerItem load] + 3088

                                                            MLServerABRLoader initWithQueue:dataLoader:playerEventCenter:playerItemEventCenter:streamingData:mediaCommonConfig:hamplayerConfig:onesieVideoData:QOEController:loadRetryPolicy:isLiveSource:livePlayerConfig:windowedLiveConfig:metadata
                                                                说明：某次调试时参数：
                                                                    arg1=<OS_dispatch_queue_serial: MLHAMPlayer>,
                                                                    dataLoader=<HAMCronetDataLoader: 0x281782e20>,
                                                                    playerEventCenter=(null),
                                                                    playerItemEventCenter=<MLPlayerItemEventCenter: 0x2833eb6b0>,
                                                                    streamingData=<MLStreamingData: 0x2801f8940>,
                                                                    mediaCommonConfig=<YTIMediaCommonConfig 0x282a39200>: {
                                                                        dynamic_readahead_config {
                                                                            max_read_ahead_media_time_ms: 8000
                                                                            min_read_ahead_media_time_ms: 15000
                                                                            read_ahead_growth_rate_ms: 1000
                                                                        }
                                                                        media_ustreamer_request_config {
                                                                            video_playback_use_ump: true
                                                                            video_playback_ustreamer_config: "\n\317\003\n\326\002\010\000\020\200\005\030\350\002%\372~\252>-\000\000\200?5=\n\227?h\001r9\n\022mfs2_cmfs_v3_1_043\022\037\n\035\n\014device_model\022\r\n\013\n\tiphone9,1\030\000 \001r\026\n\022mfs2_cmfs_v3_1_043\030\000x\350\002\200\001\001\250\001\001\265\001\366(\334?\240\002\350\002\332\002\\\020\260\352\001\030\250F \240\234\001(\33060\230uH\001P\001X\001h\001p\210\'\200\001\364\003\270\001\001\300\001\001\340\001\003\370\001\001\210\002\001\220\002\001\230\002\014\240\002\001\250\002\001\260\002\001\270\002\001\300\002\001\310\002\001\320\002\002\340\002\001\350\002\002\200\003\002\220\003\001\370\265\221\345\014\001\372\002-\010\014\020\030\0302 2-\000\000pB5\000\000\214B@\001H\001P\nX\ne\000\000\200@h\300pp\001\210\001\001\315\001\000\000\200?\202\003\000\210\003\001\220\003\001\240\003\001\250\003\001\260\003\003\310\003\001\320\003\001\330\003\001\340\003\220N\270\004\001\312\004\035\n\024\010\300>\020\230u\030\350\007%\000\000\000\000(\0000\000@\001\020\340\324\003\030\320\017\360\004\001\370\004\001\030\001 \0012\014\010\211\001\020\257\267\220\271\236\212\367\0022\014\010\210\001\020\314\203\356\267\236\212\367\0022\014\010\207\001\020\343\206\301\271\236\212\367\0022\014\010\206\001\020\366\305\356\267\236\212\367\0022\014\010\205\001\020\306\327\220\271\236\212\367\0022\014\010\240\001\020\236\312\314\270\236\212\367\0022\014\010\213\001\020\217\354\253\267\236\212\367\0022\014\010\214\001\020\266\312\253\267\236\212\367\002:\000\022L\000\362\330\357\3010E\002!\000\230\215\'\203G\270\247?\020\342\310\337E\255\271;\354\266\367\210\342\0247\233~\206\3612l\177\363\200\002 ^\262\221\336\225\324\217B\213H\327r\217\352\327]\335\253E*Y_\210\216\tI\336\027bA\274\177\032\002ei"
                                                                        }
                                                                        server_readahead_config {
                                                                            enable: true
                                                                            next_request_policy {
                                                                                target_audio_readahead_ms: 120000
                                                                                target_video_readahead_ms: 120000
                                                                            }
                                                                        }
                                                                        use_server_driven_abr: true
                                                                        sabr_client_config {
                                                                            default_back_off_time_ms: 0
                                                                            enable_host_fallback: true
                                                                            primary_probing_delay_ms: 5000
                                                                            max_failure_attempts_before_fallback: 2
                                                                        }
                                                                    },
                                                                    hamplayerConfig=<YTIHamplayerConfig 0x110ca4440>: {
                                                                        enable_on_cellular: true
                                                                        qos_class: IOS_QOS_CLASS_USER_INITIATED
                                                                        decode_qos_class: IOS_QOS_CLASS_USER_INITIATED
                                                                        video_track_renderer {
                                                                            hamplayer_pixel_buffer_video_track_renderer_config {
                                                                                min_frame_queue_size: 3
                                                                                target_frame_queue_size: 22
                                                                                max_frame_fall_behind_ms: 500
                                                                                queue_more_frames_on_render: true
                                                                            }
                                                                        }
                                                                        stall_predictor {
                                                                            hamplayer_default_stall_predictor_config {
                                                                                max_buffer_readahead_ms: 8000
                                                                                min_buffer_readahead_ms: 1500
                                                                                bandwidth_tweak_scalar: 0.95
                                                                                bandwidth_tweak_constant: -48000
                                                                            }
                                                                        }
                                                                        live {
                                                                            enable_accurate_seek: false
                                                                            accurate_seek_retry_limit: 3
                                                                            enable_accurate_seek_after_prepared: false
                                                                            enable_ss_dai_emsg_parsing: true
                                                                            enable_ss_dai_update_chunk_start_time: true
                                                                            fix_post_live_head_segment: false
                                                                            finish_live_playback_if_stream_completed: false
                                                                        }
                                                                        async_decode: true
                                                                        network_stats_sampler_config {
                                                                            minimum_sample_size: 8192
                                                                            minimum_sample_duration_ms: 1
                                                                            target_sample_duration_ms: 400
                                                                        }
                                                                        decode_teardown_on_decode_queue: true
                                                                        decode_wait_for_frames_before_teardown: true
                                                                        decode_separate_queues: true
                                                                        decode_no_wait_for_terminate: true
                                                                        resync_policy_config {
                                                                            target_readahead_ms: 2000
                                                                            min_required_time_ms: 500
                                                                            max_elapsed_time_ms: 10000
                                                                            seek_tolerance_ms: 1000
                                                                        }
                                                                        audio_abr_config {
                                                                            downshift_scalar: 3
                                                                            downshift_constant: 0
                                                                            upshift_scalar: 6
                                                                            upshift_constant: 0
                                                                            max_downshift_readahead_ms: 30000
                                                                            min_upshift_readahead_ms: 0
                                                                            upshift_replace_media: false
                                                                            buffer_target_readahead: 8
                                                                            buffer_max_size_bytes: 107374182
                                                                            buffer_trim_behind: 60
                                                                            buffer_trim_ahead: 120
                                                                            max_chunks_per_request: 0
                                                                            sync_readahead: 10
                                                                            stun_duration: 0
                                                                            max_consecutive_errors: 0
                                                                            min_upshift_replace_chunks_readahead_ms: 5000
                                                                            low_memory_warn_buffer_size_bytes: 107374182
                                                                            low_memory_critical_buffer_size_bytes: 107374182
                                                                            low_memory_buffer_size_cool_down_ms: 0
                                                                            disable_hdr_in_low_power_mode: true
                                                                            observe_network_active_controller: false
                                                                        }
                                                                        video_abr_config {
                                                                            downshift_scalar: 1
                                                                            downshift_constant: 48000
                                                                            upshift_scalar: 1
                                                                            upshift_constant: 48000
                                                                            oversend_factor: 1.18
                                                                            max_downshift_readahead_ms: 30000
                                                                            min_upshift_readahead_ms: 0
                                                                            upshift_replace_media: false
                                                                            local_max_bitrate_readahead: 15
                                                                            buffer_target_readahead: 8
                                                                            buffer_max_size_bytes: 751619276
                                                                            buffer_trim_behind: 60
                                                                            buffer_trim_ahead: 120
                                                                            max_chunks_per_request: 0
                                                                            min_readahead_for_average_bitrate: 10000
                                                                            load_extra_formats: false
                                                                            sync_readahead: 10
                                                                            stun_duration: 10
                                                                            use_high_replication_formats_while_stunned: true
                                                                            max_consecutive_errors: 4
                                                                            min_upshift_replace_chunks_readahead_ms: 5000
                                                                            max_media_seconds_per_request: 11
                                                                            low_memory_warn_buffer_size_bytes: 751619276
                                                                            low_memory_critical_buffer_size_bytes: 751619276
                                                                            low_memory_buffer_size_cool_down_ms: 0
                                                                            disable_hdr_in_low_power_mode: true
                                                                            hpq_oversend_factor: 1.72
                                                                            observe_network_active_controller: false
                                                                        }
                                                                        enable_airplay_audio: true
                                                                        chunk_loader_config {
                                                                            enable_fallback_host: true
                                                                            max_failure_attempts_before_fallback: 3
                                                                            primary_probing_delay: 5000
                                                                            treat_no_media_as_cancellation: true
                                                                        }
                                                                        sbar_audio_track_renderer {
                                                                            samples_per_buffer: 10
                                                                            flush_on_return_from_background: true
                                                                            trim_priming: false
                                                                            feed_media_data: true
                                                                            handle_automatic_flush: true
                                                                            renderer_max_retry_count: 2
                                                                            use_all_tracks_for_playability_status: false
                                                                        }
                                                                        use_multiple_periods_player: true
                                                                        load_retry_config {
                                                                            max_non_network_errors: 2
                                                                        }
                                                                        render_view_type: HAMPLAYER_RENDER_VIEW_TYPE_IOSURFACE_MAIN_THREAD
                                                                        server_abr_config {
                                                                            fallback_on_error: true
                                                                            fallback_disable_server_abr_duration_seconds: 5
                                                                            enable_local_streams: false
                                                                            log_partial_chunk_eviction: false
                                                                            max_fallback_attempts: 5
                                                                            seek_through_medialib_when_receiving_partial_chunk: false
                                                                            continue_loading_timer_interval_ms: 1000
                                                                            continue_loading_timer_leeway_ms: 100
                                                                            cover_chunk_discontinuity: true
                                                                            keep_stall_for_live_when_close_to_seekable_end: false
                                                                            allow_multiple_server_seek: true
                                                                            use_reload_context_for_fallback: true
                                                                        }
                                                                        use_new_sample_buffer_source: true
                                                                        stop_track_renderer_before_disabling: true
                                                                        log_debug_details_on_long_wait_threshold_ms: 15000
                                                                        deprecate_stall_predictor: true
                                                                        player_loop_timer_interval_ms: 20
                                                                        player_loop_timer_leeway_ms: 0
                                                                        offline_config {
                                                                            downloader_apply_audio_track_filter: false
                                                                            downloader_apply_abr_filter: false
                                                                        }
                                                                        select_default_track_for_multi_audio: true
                                                                        use_reload_context_request_number: true
                                                                    },
                                                                onesieVideoData=(null),
                                                                QOEController=<MLQOEPingController: 0x115df0ef0>,
                                                                loadRetryPolicy=<MLDefaultLoadRetryPolicy: 0x28385b160>,
                                                                isLiveSource=False,
                                                                livePlayerConfig=(null),
                                                                windowedLiveConfig=(null),
                                                                metadataRelay=<MLHAMManifestlessMetadataCollector: 0x281551f80>,
                                                                delegate=<MLHAMPlayerItem: 0x122203240>,
                                                                latencyLogger=<YTWatchLatencyTickLogger: 0x2801ea200>,
                                                                watchEndpointUstreamerConfig=(null),
                                                                periodID=0,
                                                                firstRequestNumber=1,
                                                                cache=(null)


