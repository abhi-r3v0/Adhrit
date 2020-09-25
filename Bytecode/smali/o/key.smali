.class public Lo/key;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/key;

.field private static final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:Lo/InstallReferrerClient$InstallReferrerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Lo/setStrokeColor;

.field private ICustomTabsService:Lo/getInstallReferrer;

.field private IPostMessageService$Stub:Lo/buildDrawingCache;

.field private asBinder:Lo/onInstallReferrerServiceDisconnected;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onInstallReferrerServiceDisconnected<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/Ι;

.field private final extraCallback:Lo/context;

.field private extraCommand:Lo/AppsFlyerLib;

.field private getInterfaceDescriptor:Lo/isEncrypt;

.field private mayLaunchUrl:Lo/ι;

.field private newSession:Lo/isLayoutRtl$onMessageChannelReady;

.field private final onMessageChannelReady:Lo/isTrackingStopped;

.field public onPostMessage:Lo/weakContext;

.field private onRelationshipValidationResult:Lo/onInstallReferrerServiceDisconnected;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onInstallReferrerServiceDisconnected<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/InstallReferrerClient$InstallReferrerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Lo/setStrokeColor;

.field private requestPostMessageChannel:Lo/getInstallReferrer;

.field private updateVisuals:Lo/setPosition;

.field private warmup:Lo/handleDeepLinkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lo/key;

    sput-object v0, Lo/key;->onNavigationEvent:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lo/context;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    if-eqz p1, :cond_0

    .line 158
    move-object v0, p1

    check-cast v0, Lo/context;

    iput-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 162
    new-instance v0, Lo/setRetainInstance$onNavigationEvent;

    .line 4319
    iget-object v1, p1, Lo/context;->asBinder:Lo/urlString;

    .line 164
    invoke-interface {v1}, Lo/urlString;->ICustomTabsCallback()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setRetainInstance$onNavigationEvent;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lo/key;->onMessageChannelReady:Lo/isTrackingStopped;

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(I)V

    .line 167
    new-instance v0, Lo/Ι;

    .line 5407
    iget-object p1, p1, Lo/context;->INotificationSideChannel:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 168
    invoke-direct {v0, p1}, Lo/Ι;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    iput-object v0, p0, Lo/key;->asInterface:Lo/Ι;

    .line 169
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method

.method private ICustomTabsCallback()Lo/InstallReferrerClient$InstallReferrerResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/InstallReferrerClient$InstallReferrerResponse<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lo/key;->ICustomTabsCallback$Stub:Lo/InstallReferrerClient$InstallReferrerResponse;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 7279
    iget-object v0, v0, Lo/context;->ICustomTabsCallback:Lo/setPivotX;

    .line 9035
    new-instance v1, Lo/newBuilder$5;

    invoke-direct {v1}, Lo/newBuilder$5;-><init>()V

    .line 9043
    new-instance v2, Lo/InstallReferrerClient$InstallReferrerResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lo/InstallReferrerClient$InstallReferrerResponse;-><init>(Lo/InstallReferrerCommons;Lo/setPivotX;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)V

    .line 196
    iput-object v2, p0, Lo/key;->ICustomTabsCallback$Stub:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 202
    :cond_0
    iget-object v0, p0, Lo/key;->ICustomTabsCallback$Stub:Lo/InstallReferrerClient$InstallReferrerResponse;

    return-object v0
.end method

.method private ICustomTabsCallback$Stub()Lo/onInstallReferrerServiceDisconnected;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/onInstallReferrerServiceDisconnected<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lo/key;->asBinder:Lo/onInstallReferrerServiceDisconnected;

    if-nez v0, :cond_1

    .line 14218
    iget-object v0, p0, Lo/key;->onTransact:Lo/InstallReferrerClient$InstallReferrerResponse;

    if-nez v0, :cond_0

    .line 14219
    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 14315
    iget-object v0, v0, Lo/context;->onRelationshipValidationResult:Lo/setPivotX;

    .line 15021
    new-instance v1, Lo/InstallReferrerClientImpl$ClientState$3;

    invoke-direct {v1}, Lo/InstallReferrerClientImpl$ClientState$3;-><init>()V

    .line 15031
    new-instance v2, Lo/InstallReferrerClient$InstallReferrerResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lo/InstallReferrerClient$InstallReferrerResponse;-><init>(Lo/InstallReferrerCommons;Lo/setPivotX;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)V

    .line 14220
    iput-object v2, p0, Lo/key;->onTransact:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 14223
    :cond_0
    iget-object v0, p0, Lo/key;->onTransact:Lo/InstallReferrerClient$InstallReferrerResponse;

    .line 232
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 15323
    iget-object v1, v1, Lo/context;->getInterfaceDescriptor:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 16021
    new-instance v2, Lo/InstallReferrerStateListener$1;

    invoke-direct {v2, v1}, Lo/InstallReferrerStateListener$1;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    .line 16039
    new-instance v1, Lo/onInstallReferrerServiceDisconnected;

    invoke-direct {v1, v0, v2}, Lo/onInstallReferrerServiceDisconnected;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampServerSeconds;)V

    .line 233
    iput-object v1, p0, Lo/key;->asBinder:Lo/onInstallReferrerServiceDisconnected;

    .line 235
    :cond_1
    iget-object v0, p0, Lo/key;->asBinder:Lo/onInstallReferrerServiceDisconnected;

    return-object v0
.end method

.method private ICustomTabsService()Lo/handleDeepLinkCallback;
    .locals 7

    .line 438
    iget-object v0, p0, Lo/key;->warmup:Lo/handleDeepLinkCallback;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lo/onPictureInPictureModeChanged$onNavigationEvent;

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50139
    iget-object v1, v1, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 50140
    iget v2, v1, Lo/intent;->onTransact:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 450
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50145
    iget-object v1, v1, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 50146
    iget-boolean v6, v1, Lo/intent;->ICustomTabsService$Stub:Z

    move-object v1, v0

    .line 451
    invoke-direct/range {v1 .. v6}, Lo/onPictureInPictureModeChanged$onNavigationEvent;-><init>(IZLo/handleDeepLinkCallback;Ljava/lang/Integer;Z)V

    iput-object v0, p0, Lo/key;->warmup:Lo/handleDeepLinkCallback;

    .line 454
    :cond_0
    iget-object v0, p0, Lo/key;->warmup:Lo/handleDeepLinkCallback;

    return-object v0
.end method

.method private asBinder()Lo/ι;
    .locals 15

    .line 383
    iget-object v0, p0, Lo/key;->mayLaunchUrl:Lo/ι;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lo/ι;

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 49295
    iget-object v1, v1, Lo/context;->onTransact:Landroid/content/Context;

    .line 386
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 387
    invoke-direct {p0}, Lo/key;->onTransact()Lo/isLayoutRtl$onMessageChannelReady;

    move-result-object v3

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 49360
    iget-object v4, v1, Lo/context;->updateVisuals:Lo/enableFacebookDeferredApplinks;

    .line 388
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 49385
    iget-boolean v5, v1, Lo/context;->IPostMessageService:Z

    const/4 v6, 0x0

    .line 390
    iget-object v7, p0, Lo/key;->onMessageChannelReady:Lo/isTrackingStopped;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 394
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50116
    iget-boolean v11, v1, Lo/context;->notify:Z

    .line 396
    invoke-direct {p0}, Lo/key;->ICustomTabsService()Lo/handleDeepLinkCallback;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    .line 398
    invoke-direct/range {v1 .. v14}, Lo/ι;-><init>(Landroid/content/ContentResolver;Lo/isLayoutRtl$onMessageChannelReady;Lo/enableFacebookDeferredApplinks;ZZLo/isTrackingStopped;ZZZZLo/handleDeepLinkCallback;ZZ)V

    iput-object v0, p0, Lo/key;->mayLaunchUrl:Lo/ι;

    .line 400
    :cond_0
    iget-object v0, p0, Lo/key;->mayLaunchUrl:Lo/ι;

    return-object v0
.end method

.method private asInterface()Lo/getInstallReferrer;
    .locals 8

    .line 273
    iget-object v0, p0, Lo/key;->ICustomTabsService:Lo/getInstallReferrer;

    if-nez v0, :cond_2

    .line 274
    new-instance v0, Lo/getInstallReferrer;

    .line 16287
    iget-object v1, p0, Lo/key;->ICustomTabsCallback$Stub$Proxy:Lo/setStrokeColor;

    if-nez v1, :cond_0

    .line 16288
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 16347
    iget-object v1, v1, Lo/context;->mayLaunchUrl:Lo/getByPosition;

    .line 16289
    iget-object v2, p0, Lo/key;->extraCallback:Lo/context;

    .line 17303
    iget-object v2, v2, Lo/context;->ICustomTabsCallback$Stub:Lo/AFEvent;

    .line 16289
    invoke-interface {v2, v1}, Lo/AFEvent;->onNavigationEvent(Lo/getByPosition;)Lo/setStrokeColor;

    move-result-object v1

    iput-object v1, p0, Lo/key;->ICustomTabsCallback$Stub$Proxy:Lo/setStrokeColor;

    .line 16291
    :cond_0
    iget-object v2, p0, Lo/key;->ICustomTabsCallback$Stub$Proxy:Lo/setStrokeColor;

    .line 276
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 17369
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 277
    iget-object v3, p0, Lo/key;->extraCallback:Lo/context;

    .line 18356
    iget v3, v3, Lo/context;->extraCommand:I

    .line 277
    invoke-virtual {v1, v3}, Lo/onInstallConversionFailureNative;->onMessageChannelReady(I)Lo/CustomVersionedParcelable;

    move-result-object v3

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 18369
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 19217
    iget-object v4, v1, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    if-nez v4, :cond_1

    .line 19218
    new-instance v4, Lo/setTitleMarginTop$ICustomTabsCallback;

    invoke-virtual {v1}, Lo/onInstallConversionFailureNative;->ICustomTabsCallback()Lo/getTranslateY;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lo/setTitleMarginTop$ICustomTabsCallback;-><init>(Lo/getTranslateY;B)V

    iput-object v4, v1, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 19220
    :cond_1
    iget-object v4, v1, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 278
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 19319
    iget-object v1, v1, Lo/context;->asBinder:Lo/urlString;

    .line 279
    invoke-interface {v1}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 20319
    iget-object v1, v1, Lo/context;->asBinder:Lo/urlString;

    .line 280
    invoke-interface {v1}, Lo/urlString;->onPostMessage()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 20323
    iget-object v7, v1, Lo/context;->getInterfaceDescriptor:Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-object v1, v0

    .line 281
    invoke-direct/range {v1 .. v7}, Lo/getInstallReferrer;-><init>(Lo/setStrokeColor;Lo/CustomVersionedParcelable;Lo/setTitleMarginTop$ICustomTabsCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    iput-object v0, p0, Lo/key;->ICustomTabsService:Lo/getInstallReferrer;

    .line 283
    :cond_2
    iget-object v0, p0, Lo/key;->ICustomTabsService:Lo/getInstallReferrer;

    return-object v0
.end method

.method private getInterfaceDescriptor()Lo/getInstallReferrer;
    .locals 8

    .line 416
    iget-object v0, p0, Lo/key;->requestPostMessageChannel:Lo/getInstallReferrer;

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Lo/getInstallReferrer;

    .line 419
    invoke-direct {p0}, Lo/key;->newSession()Lo/setStrokeColor;

    move-result-object v2

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50123
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 420
    iget-object v3, p0, Lo/key;->extraCallback:Lo/context;

    .line 50124
    iget v3, v3, Lo/context;->extraCommand:I

    .line 420
    invoke-virtual {v1, v3}, Lo/onInstallConversionFailureNative;->onMessageChannelReady(I)Lo/CustomVersionedParcelable;

    move-result-object v3

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50125
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 50126
    iget-object v4, v1, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    if-nez v4, :cond_0

    .line 50127
    new-instance v4, Lo/setTitleMarginTop$ICustomTabsCallback;

    invoke-virtual {v1}, Lo/onInstallConversionFailureNative;->ICustomTabsCallback()Lo/getTranslateY;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lo/setTitleMarginTop$ICustomTabsCallback;-><init>(Lo/getTranslateY;B)V

    iput-object v4, v1, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 50129
    :cond_0
    iget-object v4, v1, Lo/onInstallConversionFailureNative;->onNavigationEvent:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 421
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50130
    iget-object v1, v1, Lo/context;->asBinder:Lo/urlString;

    .line 422
    invoke-interface {v1}, Lo/urlString;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50131
    iget-object v1, v1, Lo/context;->asBinder:Lo/urlString;

    .line 423
    invoke-interface {v1}, Lo/urlString;->onPostMessage()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50132
    iget-object v7, v1, Lo/context;->getInterfaceDescriptor:Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-object v1, v0

    .line 424
    invoke-direct/range {v1 .. v7}, Lo/getInstallReferrer;-><init>(Lo/setStrokeColor;Lo/CustomVersionedParcelable;Lo/setTitleMarginTop$ICustomTabsCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    iput-object v0, p0, Lo/key;->requestPostMessageChannel:Lo/getInstallReferrer;

    .line 426
    :cond_1
    iget-object v0, p0, Lo/key;->requestPostMessageChannel:Lo/getInstallReferrer;

    return-object v0
.end method

.method private newSession()Lo/setStrokeColor;
    .locals 2

    .line 404
    iget-object v0, p0, Lo/key;->postMessage:Lo/setStrokeColor;

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 50121
    iget-object v0, v0, Lo/context;->ICustomTabsService$Stub:Lo/getByPosition;

    .line 406
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 50122
    iget-object v1, v1, Lo/context;->ICustomTabsCallback$Stub:Lo/AFEvent;

    .line 406
    invoke-interface {v1, v0}, Lo/AFEvent;->onNavigationEvent(Lo/getByPosition;)Lo/setStrokeColor;

    move-result-object v0

    iput-object v0, p0, Lo/key;->postMessage:Lo/setStrokeColor;

    .line 408
    :cond_0
    iget-object v0, p0, Lo/key;->postMessage:Lo/setStrokeColor;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/key;
    .locals 2

    .line 71
    sget-object v0, Lo/key;->ICustomTabsCallback:Lo/key;

    if-eqz v0, :cond_0

    check-cast v0, Lo/key;

    return-object v0

    .line 1231
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized onNavigationEvent(Lo/context;)V
    .locals 3

    const-class v0, Lo/key;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lo/key;->ICustomTabsCallback:Lo/key;

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lo/key;->onNavigationEvent:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)V

    .line 116
    :cond_0
    new-instance v1, Lo/key;

    invoke-direct {v1, p0}, Lo/key;-><init>(Lo/context;)V

    sput-object v1, Lo/key;->ICustomTabsCallback:Lo/key;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onPostMessage()Lo/onInstallReferrerServiceDisconnected;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/onInstallReferrerServiceDisconnected<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lo/key;->onRelationshipValidationResult:Lo/onInstallReferrerServiceDisconnected;

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lo/key;->ICustomTabsCallback()Lo/InstallReferrerClient$InstallReferrerResponse;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 11323
    iget-object v1, v1, Lo/context;->getInterfaceDescriptor:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 12021
    new-instance v2, Lo/InstallReferrerClient$2;

    invoke-direct {v2, v1}, Lo/InstallReferrerClient$2;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    .line 12039
    new-instance v1, Lo/onInstallReferrerServiceDisconnected;

    invoke-direct {v1, v0, v2}, Lo/onInstallReferrerServiceDisconnected;-><init>(Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampServerSeconds;)V

    .line 212
    iput-object v1, p0, Lo/key;->onRelationshipValidationResult:Lo/onInstallReferrerServiceDisconnected;

    .line 214
    :cond_0
    iget-object v0, p0, Lo/key;->onRelationshipValidationResult:Lo/onInstallReferrerServiceDisconnected;

    return-object v0
.end method

.method public static declared-synchronized onPostMessage(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lo/key;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 89
    invoke-static {p0}, Lo/context;->ICustomTabsCallback(Landroid/content/Context;)Lo/context$extraCallback;

    move-result-object p0

    .line 1707
    new-instance v1, Lo/context;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/context;-><init>(Lo/context$extraCallback;B)V

    .line 89
    invoke-static {v1}, Lo/key;->onNavigationEvent(Lo/context;)V

    .line 90
    invoke-static {}, Lo/setHostName;->onPostMessage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onRelationshipValidationResult()Lo/setPosition;
    .locals 3

    .line 327
    iget-object v0, p0, Lo/key;->updateVisuals:Lo/setPosition;

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 25369
    iget-object v0, v0, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 26336
    iget-object v1, p0, Lo/key;->extraCommand:Lo/AppsFlyerLib;

    if-nez v1, :cond_0

    .line 26337
    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 26369
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    const/4 v2, 0x0

    .line 26338
    invoke-static {v1, v2}, Lo/stopTracking;->ICustomTabsCallback(Lo/onInstallConversionFailureNative;Z)Lo/AppsFlyerLib;

    move-result-object v1

    iput-object v1, p0, Lo/key;->extraCommand:Lo/AppsFlyerLib;

    .line 26341
    :cond_0
    iget-object v1, p0, Lo/key;->extraCommand:Lo/AppsFlyerLib;

    .line 27412
    iget-object v2, p0, Lo/key;->asInterface:Lo/Ι;

    .line 329
    invoke-static {v0, v1, v2}, Lo/setTextTypeface;->onMessageChannelReady(Lo/onInstallConversionFailureNative;Lo/AppsFlyerLib;Lo/Ι;)Lo/setPosition;

    move-result-object v0

    iput-object v0, p0, Lo/key;->updateVisuals:Lo/setPosition;

    .line 332
    :cond_1
    iget-object v0, p0, Lo/key;->updateVisuals:Lo/setPosition;

    return-object v0
.end method

.method private onTransact()Lo/isLayoutRtl$onMessageChannelReady;
    .locals 25

    move-object/from16 v0, p0

    .line 345
    iget-object v1, v0, Lo/key;->newSession:Lo/isLayoutRtl$onMessageChannelReady;

    if-nez v1, :cond_3

    .line 346
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 28403
    iget-object v1, v1, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 29148
    iget-object v2, v1, Lo/intent;->ICustomTabsService:Lo/intent$extraCallback;

    .line 349
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 29295
    iget-object v3, v1, Lo/context;->onTransact:Landroid/content/Context;

    .line 351
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 29369
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 352
    invoke-virtual {v1}, Lo/onInstallConversionFailureNative;->ICustomTabsCallback()Lo/getTranslateY;

    move-result-object v4

    .line 30239
    iget-object v1, v0, Lo/key;->getInterfaceDescriptor:Lo/isEncrypt;

    if-nez v1, :cond_2

    .line 30243
    invoke-virtual/range {p0 .. p0}, Lo/key;->onMessageChannelReady()Lo/buildDrawingCache;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 30249
    iget-object v5, v0, Lo/key;->extraCallback:Lo/context;

    .line 32275
    iget-object v5, v5, Lo/context;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    .line 30249
    invoke-interface {v1, v5}, Lo/buildDrawingCache;->onNavigationEvent(Landroid/graphics/Bitmap$Config;)Lo/isEncrypt;

    move-result-object v5

    .line 30250
    iget-object v6, v0, Lo/key;->extraCallback:Lo/context;

    .line 33275
    iget-object v6, v6, Lo/context;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    .line 30250
    invoke-interface {v1, v6}, Lo/buildDrawingCache;->onPostMessage(Landroid/graphics/Bitmap$Config;)Lo/isEncrypt;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 30254
    :goto_0
    new-instance v6, Lo/getThreadPoolExecutor;

    .line 34336
    iget-object v7, v0, Lo/key;->extraCommand:Lo/AppsFlyerLib;

    if-nez v7, :cond_1

    .line 34337
    iget-object v7, v0, Lo/key;->extraCallback:Lo/context;

    .line 34369
    iget-object v7, v7, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    const/4 v8, 0x0

    .line 34338
    invoke-static {v7, v8}, Lo/stopTracking;->ICustomTabsCallback(Lo/onInstallConversionFailureNative;Z)Lo/AppsFlyerLib;

    move-result-object v7

    iput-object v7, v0, Lo/key;->extraCommand:Lo/AppsFlyerLib;

    .line 34341
    :cond_1
    iget-object v7, v0, Lo/key;->extraCommand:Lo/AppsFlyerLib;

    .line 30254
    invoke-direct {v6, v5, v1, v7}, Lo/getThreadPoolExecutor;-><init>(Lo/isEncrypt;Lo/isEncrypt;Lo/AppsFlyerLib;)V

    iput-object v6, v0, Lo/key;->getInterfaceDescriptor:Lo/isEncrypt;

    .line 30269
    :cond_2
    iget-object v5, v0, Lo/key;->getInterfaceDescriptor:Lo/isEncrypt;

    .line 353
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 37373
    iget-object v6, v1, Lo/context;->IPostMessageService$Stub:Lo/AFExecutor$1$1;

    const/4 v7, 0x0

    .line 355
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 38385
    iget-boolean v8, v1, Lo/context;->IPostMessageService:Z

    const/4 v9, 0x0

    .line 357
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 39319
    iget-object v10, v1, Lo/context;->asBinder:Lo/urlString;

    .line 358
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 39369
    iget-object v1, v1, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 359
    iget-object v11, v0, Lo/key;->extraCallback:Lo/context;

    .line 40356
    iget v11, v11, Lo/context;->extraCommand:I

    .line 359
    invoke-virtual {v1, v11}, Lo/onInstallConversionFailureNative;->onMessageChannelReady(I)Lo/CustomVersionedParcelable;

    move-result-object v11

    .line 360
    invoke-direct/range {p0 .. p0}, Lo/key;->onPostMessage()Lo/onInstallReferrerServiceDisconnected;

    move-result-object v12

    .line 361
    invoke-direct/range {p0 .. p0}, Lo/key;->ICustomTabsCallback$Stub()Lo/onInstallReferrerServiceDisconnected;

    move-result-object v13

    .line 362
    invoke-direct/range {p0 .. p0}, Lo/key;->asInterface()Lo/getInstallReferrer;

    move-result-object v14

    .line 363
    invoke-direct/range {p0 .. p0}, Lo/key;->getInterfaceDescriptor()Lo/getInstallReferrer;

    move-result-object v15

    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 41291
    iget-object v1, v1, Lo/context;->extraCallback:Lo/endConnection;

    move-object/from16 v16, v1

    .line 365
    invoke-direct/range {p0 .. p0}, Lo/key;->onRelationshipValidationResult()Lo/setPosition;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 368
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 44403
    iget-object v1, v1, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 45165
    iget v1, v1, Lo/intent;->onTransact:I

    move/from16 v21, v1

    .line 45412
    iget-object v1, v0, Lo/key;->asInterface:Lo/Ι;

    move-object/from16 v22, v1

    const/16 v23, 0x0

    .line 371
    iget-object v1, v0, Lo/key;->extraCallback:Lo/context;

    .line 47403
    iget-object v1, v1, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 48205
    iget v1, v1, Lo/intent;->INotificationSideChannel:I

    move/from16 v24, v1

    .line 350
    invoke-interface/range {v2 .. v24}, Lo/intent$extraCallback;->extraCallback(Landroid/content/Context;Lo/getTranslateY;Lo/isEncrypt;Lo/AFExecutor$1$1;ZZZLo/urlString;Lo/CustomVersionedParcelable;Lo/getReferrerClickTimestampSeconds;Lo/getReferrerClickTimestampSeconds;Lo/getInstallReferrer;Lo/getInstallReferrer;Lo/endConnection;Lo/setPosition;IIZILo/Ι;ZI)Lo/isLayoutRtl$onMessageChannelReady;

    move-result-object v1

    iput-object v1, v0, Lo/key;->newSession:Lo/isLayoutRtl$onMessageChannelReady;

    .line 374
    :cond_3
    iget-object v1, v0, Lo/key;->newSession:Lo/isLayoutRtl$onMessageChannelReady;

    return-object v1
.end method


# virtual methods
.method public final extraCallback()Lo/weakContext;
    .locals 10

    .line 309
    new-instance v9, Lo/weakContext;

    .line 310
    invoke-direct {p0}, Lo/key;->asBinder()Lo/ι;

    move-result-object v1

    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 20377
    iget-object v0, v0, Lo/context;->validateRelationship:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 311
    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 20381
    iget-object v0, v0, Lo/context;->ICustomTabsService$Stub$Proxy:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 312
    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 21343
    iget-object v4, v0, Lo/context;->warmup:Lo/setPivotX;

    .line 314
    invoke-direct {p0}, Lo/key;->onPostMessage()Lo/onInstallReferrerServiceDisconnected;

    move-result-object v5

    .line 315
    invoke-direct {p0}, Lo/key;->ICustomTabsCallback$Stub()Lo/onInstallReferrerServiceDisconnected;

    .line 316
    invoke-direct {p0}, Lo/key;->asInterface()Lo/getInstallReferrer;

    .line 317
    invoke-direct {p0}, Lo/key;->getInterfaceDescriptor()Lo/getInstallReferrer;

    iget-object v0, p0, Lo/key;->extraCallback:Lo/context;

    .line 22291
    iget-object v6, v0, Lo/context;->extraCallback:Lo/endConnection;

    .line 322
    iget-object v8, p0, Lo/key;->extraCallback:Lo/context;

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/weakContext;-><init>(Lo/ι;Ljava/util/Set;Ljava/util/Set;Lo/setPivotX;Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/onPostMessage$extraCallback;Lo/context;)V

    return-object v9
.end method

.method public final onMessageChannelReady()Lo/buildDrawingCache;
    .locals 4

    .line 176
    iget-object v0, p0, Lo/key;->IPostMessageService$Stub:Lo/buildDrawingCache;

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lo/key;->onRelationshipValidationResult()Lo/setPosition;

    move-result-object v0

    iget-object v1, p0, Lo/key;->extraCallback:Lo/context;

    .line 6319
    iget-object v1, v1, Lo/context;->asBinder:Lo/urlString;

    .line 181
    invoke-direct {p0}, Lo/key;->ICustomTabsCallback()Lo/InstallReferrerClient$InstallReferrerResponse;

    move-result-object v2

    const/4 v3, 0x0

    .line 178
    invoke-static {v0, v1, v2, v3}, Lo/setPerformanceTrackingEnabled;->onPostMessage(Lo/setPosition;Lo/urlString;Lo/InstallReferrerClient$InstallReferrerResponse;Z)Lo/buildDrawingCache;

    move-result-object v0

    iput-object v0, p0, Lo/key;->IPostMessageService$Stub:Lo/buildDrawingCache;

    .line 184
    :cond_0
    iget-object v0, p0, Lo/key;->IPostMessageService$Stub:Lo/buildDrawingCache;

    return-object v0
.end method
