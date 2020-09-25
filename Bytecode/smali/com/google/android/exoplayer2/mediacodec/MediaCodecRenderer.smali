.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lo/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final extraCallback:[B


# instance fields
.field private AudioAttributesCompatParcelizer:[Ljava/nio/ByteBuffer;

.field private AudioAttributesImplApi21Parcelizer:I

.field private AudioAttributesImplBaseParcelizer:I

.field private final ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Lo/q;

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Lo/AuthRequestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AuthRequestClass<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub:Landroid/media/MediaCodec;

.field private ICustomTabsService$Stub$Proxy:F

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:Z

.field private INotificationSideChannel$Stub:Z

.field private INotificationSideChannel$Stub$Proxy:Z

.field private IPostMessageService:F

.field private IPostMessageService$Stub:Lo/p$a;

.field private IPostMessageService$Stub$Proxy:Z

.field private IconCompatParcelizer:[Ljava/nio/ByteBuffer;

.field private MediaBrowserCompat:Ljava/nio/ByteBuffer;

.field private MediaBrowserCompat$CallbackHandler:Z

.field private MediaBrowserCompat$ConnectionCallback:Z

.field private RemoteActionCompatParcelizer:Z

.field private final asBinder:Lo/setReferrerCustomerId;

.field private final asInterface:Z

.field private cancel:Lo/isAirplaneModeOn;

.field private cancelAll:Z

.field private connect:Z

.field private disconnect:Z

.field private extraCommand:Landroid/media/MediaCrypto;

.field private getDefaultImpl:Z

.field private getExtras:Z

.field private getInterfaceDescriptor:Lo/p$a;

.field private getItem:J

.field private getRoot:I

.field private getServiceComponent:I

.field private getSessionToken:Z

.field private isConnected:I

.field private mayLaunchUrl:J

.field private newSession:Lo/p$a;

.field private notify:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private final onMessageChannelReady:Lo/getConfigURL;

.field private final onNavigationEvent:Lo/generateInviteUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/getCampaign;

.field private final onRelationshipValidationResult:F

.field private final onTransact:Lo/setReferrerCustomerId;

.field private postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lo/ApiTracker;",
            ">;"
        }
    .end annotation
.end field

.field private read:J

.field private requestPostMessageChannel:Z

.field private search:Z

.field private sendCustomAction:J

.field private setCallbacksMessenger:Z

.field private setDefaultImpl:Z

.field private subscribe:Z

.field private unsubscribe:Z

.field private updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lo/ApiTracker;",
            ">;"
        }
    .end annotation
.end field

.field private validateRelationship:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation
.end field

.field private final warmup:Landroid/media/MediaCodec$BufferInfo;

.field private write:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 285
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->asBinder(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback:[B

    return-void
.end method

.method public constructor <init>(ILo/getConfigURL;Lo/generateInviteUrl;ZZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getConfigURL;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;ZZF)V"
        }
    .end annotation

    .line 374
    invoke-direct {p0, p1}, Lo/c$a;-><init>(I)V

    .line 375
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getConfigURL;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady:Lo/getConfigURL;

    .line 376
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent:Lo/generateInviteUrl;

    .line 377
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback:Z

    .line 378
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asInterface:Z

    .line 379
    iput p6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onRelationshipValidationResult:F

    .line 380
    new-instance p1, Lo/setReferrerCustomerId;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/setReferrerCustomerId;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    .line 381
    invoke-static {}, Lo/setReferrerCustomerId;->extraCallback()Lo/setReferrerCustomerId;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onTransact:Lo/setReferrerCustomerId;

    .line 382
    new-instance p1, Lo/q;

    invoke-direct {p1}, Lo/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub:Lo/q;

    .line 383
    new-instance p1, Lo/AuthRequestClass;

    invoke-direct {p1}, Lo/AuthRequestClass;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService:Lo/AuthRequestClass;

    .line 384
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    .line 385
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    .line 386
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 387
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    .line 388
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 389
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 390
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub$Proxy:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 391
    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mayLaunchUrl:J

    return-void
.end method

.method private AudioAttributesCompatParcelizer()V
    .locals 2

    const/4 v0, -0x1

    .line 940
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private AudioAttributesImplApi21Parcelizer()V
    .locals 1

    .line 1372
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1373
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    .line 1374
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    :cond_0
    return-void
.end method

.method private AudioAttributesImplBaseParcelizer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1538
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    .line 1539
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    .line 1540
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1542
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer:Z

    return-void

    .line 1545
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDefaultImpl:Z

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    .line 1546
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1548
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;)I
    .locals 2

    .line 1751
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "SM-T585"

    .line 1752
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "SM-A520"

    .line 1753
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 1755
    :cond_1
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1756
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "flounder"

    .line 1757
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "grouper"

    .line 1758
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lo/ApiTracker;",
            ">;)V"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 951
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 952
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/isAirplaneModeOn;Landroid/media/MediaCrypto;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 832
    iget-object v1, p1, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    .line 834
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub$Proxy:F

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    .line 837
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage()[Lo/p$a;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(FLo/p$a;[Lo/p$a;)F

    move-result v0

    .line 838
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onRelationshipValidationResult:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const/4 v0, 0x0

    .line 842
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-string v3, "createCodec:"

    .line 843
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 844
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 845
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    const-string v3, "configureCodec"

    .line 846
    invoke-static {v3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 847
    iget-object v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v8, p2

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lo/isAirplaneModeOn;Landroid/media/MediaCodec;Lo/p$a;Landroid/media/MediaCrypto;F)V

    .line 848
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    const-string/jumbo p2, "startCodec"

    .line 849
    invoke-static {p2}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 851
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    .line 852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 853
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Landroid/media/MediaCodec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    .line 863
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancel:Lo/isAirplaneModeOn;

    .line 864
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService:F

    .line 865
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 866
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel:I

    .line 867
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancelAll:Z

    .line 868
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Ljava/lang/String;Lo/p$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy:Z

    .line 869
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub$Proxy:Z

    .line 870
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub:Z

    .line 871
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Default:Z

    .line 872
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 873
    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Ljava/lang/String;Lo/p$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getDefaultImpl:Z

    .line 875
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent(Lo/isAirplaneModeOn;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancel()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->write:Z

    .line 877
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V

    .line 878
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer()V

    .line 880
    invoke-virtual {p0}, Lo/c$a;->q_()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    goto :goto_4

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read:J

    .line 883
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getSessionToken:Z

    .line 884
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 885
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    .line 886
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    .line 887
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    .line 888
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    .line 889
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl:Z

    .line 890
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer:Z

    .line 891
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect:Z

    .line 892
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect:Z

    .line 893
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$ConnectionCallback:Z

    .line 895
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget v0, p1, Lo/getCampaign;->onPostMessage:I

    add-int/2addr v0, p2

    iput v0, p1, Lo/getCampaign;->onPostMessage:I

    sub-long p1, v3, v10

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, p1

    .line 897
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Ljava/lang/String;JJ)V

    return-void

    :catch_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 856
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancelAll()V

    .line 857
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 859
    :cond_5
    throw p1
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Lo/p$a;)Z
    .locals 2

    .line 1864
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    iget p1, p1, Lo/p$a;->ICustomTabsService$Stub:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1865
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private ICustomTabsCallback(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onTransact:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->onMessageChannelReady()V

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub:Lo/q;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onTransact:Lo/setReferrerCustomerId;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 733
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub:Lo/q;

    iget-object p1, p1, Lo/q;->onMessageChannelReady:Lo/p$a;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lo/p$a;)V

    return v0

    :cond_0
    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    .line 735
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onTransact:Lo/setReferrerCustomerId;

    invoke-virtual {p1}, Lo/getChannel;->r_()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 736
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->unsubscribe:Z

    .line 737
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private IconCompatParcelizer()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->unsubscribe:Z

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 976
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    .line 977
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    if-gez v0, :cond_1

    return v1

    .line 981
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 982
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->onMessageChannelReady()V

    .line 985
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 988
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->write:Z

    if-nez v0, :cond_3

    .line 991
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    .line 992
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 993
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V

    .line 995
    :cond_3
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    return v1

    .line 999
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl:Z

    if-eqz v0, :cond_5

    .line 1000
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl:Z

    .line 1001
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-object v0, v0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1002
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    const/4 v5, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback:[B

    array-length v6, v0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1003
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V

    .line 1004
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    return v2

    .line 1010
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCallbacksMessenger:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_1

    .line 1016
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    if-ne v0, v2, :cond_8

    const/4 v0, 0x0

    .line 1017
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    iget-object v4, v4, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 1018
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    iget-object v4, v4, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1019
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-object v5, v5, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_7
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 1023
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-object v0, v0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 1024
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub:Lo/q;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    .line 1027
    :goto_1
    invoke-virtual {p0}, Lo/c$a;->onTransact()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1029
    iget-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getItem:J

    iput-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sendCustomAction:J

    :cond_9
    const/4 v5, -0x3

    if-ne v0, v5, :cond_a

    return v1

    :cond_a
    const/4 v5, -0x5

    if-ne v0, v5, :cond_c

    .line 1036
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    if-ne v0, v3, :cond_b

    .line 1039
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->onMessageChannelReady()V

    .line 1040
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 1042
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub:Lo/q;

    iget-object v0, v0, Lo/q;->onMessageChannelReady:Lo/p$a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lo/p$a;)V

    return v2

    .line 1047
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->r_()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1048
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    if-ne v0, v3, :cond_d

    .line 1052
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->onMessageChannelReady()V

    .line 1053
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 1055
    :cond_d
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->unsubscribe:Z

    .line 1056
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    if-nez v0, :cond_e

    .line 1057
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    return v1

    .line 1061
    :cond_e
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->write:Z

    if-nez v0, :cond_f

    .line 1064
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    .line 1065
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1066
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return v1

    :catch_0
    move-exception v0

    .line 1069
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 1073
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$ConnectionCallback:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/getChannel;->onMessageChannelReady()V

    .line 1075
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    if-ne v0, v3, :cond_11

    .line 1078
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    :cond_11
    return v2

    .line 1082
    :cond_12
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$ConnectionCallback:Z

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v0}, Lo/setReferrerCustomerId;->onTransact()Z

    move-result v0

    .line 1084
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCallbacksMessenger:Z

    if-eqz v3, :cond_13

    return v1

    .line 1088
    :cond_13
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy:Z

    if-eqz v3, :cond_15

    if-nez v0, :cond_15

    .line 1089
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-object v3, v3, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lo/setViewPool;->onNavigationEvent(Ljava/nio/ByteBuffer;)V

    .line 1090
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-object v3, v3, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    if-nez v3, :cond_14

    return v2

    .line 1093
    :cond_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy:Z

    .line 1096
    :cond_15
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-wide v9, v3, Lo/setReferrerCustomerId;->onPostMessage:J

    .line 1097
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v3}, Lo/getChannel;->onNavigationEvent()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1098
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_16
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$CallbackHandler:Z

    if-eqz v3, :cond_17

    .line 1101
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService:Lo/AuthRequestClass;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    invoke-virtual {v3, v9, v10, v5}, Lo/AuthRequestClass;->onNavigationEvent(JLjava/lang/Object;)V

    .line 1102
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$CallbackHandler:Z

    .line 1104
    :cond_17
    iget-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getItem:J

    .line 1105
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getItem:J

    .line 1107
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {v3}, Lo/setReferrerCustomerId;->asBinder()V

    .line 1108
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lo/setReferrerCustomerId;)V

    if-eqz v0, :cond_18

    .line 1111
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lo/setReferrerCustomerId;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v8

    .line 1113
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_2

    .line 1115
    :cond_18
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer:I

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder:Lo/setReferrerCustomerId;

    iget-object v0, v0, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1117
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V

    .line 1118
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    .line 1119
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget v1, v0, Lo/getCampaign;->onNavigationEvent:I

    add-int/2addr v1, v2

    iput v1, v0, Lo/getCampaign;->onNavigationEvent:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 1122
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_19
    :goto_3
    return v1
.end method

.method private MediaBrowserCompat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1347
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 1351
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub$Proxy:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 1352
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage()[Lo/p$a;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(FLo/p$a;[Lo/p$a;)F

    move-result v0

    .line 1353
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService:F

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 1358
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect()V

    return-void

    :cond_1
    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 1359
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onRelationshipValidationResult:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 1363
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 1364
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1365
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 1366
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService:F

    :cond_3
    return-void
.end method

.method private RemoteActionCompatParcelizer()V
    .locals 1

    const/4 v0, -0x1

    .line 945
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplBaseParcelizer:I

    const/4 v0, 0x0

    .line 946
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private asBinder(J)Z
    .locals 6

    .line 1682
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1684
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 1685
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private cancelAll()V
    .locals 2

    .line 913
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IconCompatParcelizer:[Ljava/nio/ByteBuffer;

    .line 915
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1385
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect()V

    return-void

    .line 1390
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1391
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    const/4 v0, 0x2

    .line 1392
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    return-void

    .line 1395
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getSessionToken()V

    return-void
.end method

.method private disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1406
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1407
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    const/4 v0, 0x3

    .line 1408
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    return-void

    .line 1411
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected()V

    return-void
.end method

.method private static extraCallback(Lo/setReferrerCustomerId;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 1694
    iget-object p0, p0, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    invoke-virtual {p0}, Lo/setDeeplinkPath;->ICustomTabsCallback()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 1701
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1702
    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 1704
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method private extraCallback(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady:Lo/getConfigURL;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    .line 807
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Lo/getConfigURL;Lo/p$a;Z)Ljava/util/List;

    move-result-object v0

    .line 808
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 813
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady:Lo/getConfigURL;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    const/4 v1, 0x0

    .line 814
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Lo/getConfigURL;Lo/p$a;Z)Ljava/util/List;

    move-result-object v0

    .line 815
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Drm session requires secure decoder for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    iget-object v1, v1, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private extraCallback(Landroid/media/MediaCrypto;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 748
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Z)Ljava/util/List;

    move-result-object v0

    .line 749
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    .line 750
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asInterface:Z

    if-eqz v3, :cond_0

    .line 751
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 752
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->notify:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 757
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lo/p$a;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 765
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 773
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isAirplaneModeOn;

    .line 775
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lo/isAirplaneModeOn;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 779
    :cond_3
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Lo/isAirplaneModeOn;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 781
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to initialize decoder: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, v3, v2}, Lo/JusPayWrapper;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 785
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 786
    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    iget-object v0, v0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {v3, v4, v2, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lo/p$a;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->notify:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v0, :cond_4

    .line 790
    iput-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->notify:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_3

    .line 793
    :cond_4
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;->onNavigationEvent(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->notify:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 795
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 796
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->notify:Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p1

    .line 801
    :cond_6
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    return-void

    .line 766
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lo/p$a;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lo/ApiTracker;",
            ">;)V"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 957
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 958
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method private extraCallback(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 1421
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->write()Z

    move-result v0

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_b

    .line 1423
    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Default:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    if-eqz v0, :cond_1

    .line 1425
    :try_start_0
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1428
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    .line 1429
    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->search:Z

    if-eqz v0, :cond_0

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V

    :cond_0
    return v13

    .line 1436
    :cond_1
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    if-gez v0, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 1442
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplBaseParcelizer()V

    return v15

    :cond_2
    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 1445
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot()V

    return v15

    .line 1449
    :cond_3
    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->write:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->unsubscribe:Z

    if-nez v0, :cond_4

    iget v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1451
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    :cond_5
    return v13

    .line 1457
    :cond_6
    iget-boolean v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer:Z

    if-eqz v1, :cond_7

    .line 1458
    iput-boolean v13, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer:Z

    .line 1459
    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v15

    .line 1461
    :cond_7
    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_8

    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 1464
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    return v13

    .line 1468
    :cond_8
    iput v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplBaseParcelizer:I

    .line 1469
    invoke-direct {v14, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 1473
    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1474
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat:Ljava/nio/ByteBuffer;

    iget-object v1, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1476
    :cond_9
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v14, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->asBinder(J)Z

    move-result v0

    iput-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect:Z

    .line 1477
    iget-wide v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sendCustomAction:J

    iget-object v2, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect:Z

    .line 1479
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(J)Lo/p$a;

    .line 1483
    :cond_b
    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Default:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    if-eqz v0, :cond_d

    .line 1485
    :try_start_1
    iget-object v5, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget-object v6, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat:Ljava/nio/ByteBuffer;

    iget v7, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplBaseParcelizer:I

    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect:Z

    iget-boolean v12, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect:Z

    iget-object v3, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->newSession:Lo/p$a;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v16, v3

    move-wide/from16 v3, p3

    const/16 v17, 0x0

    move-object/from16 v13, v16

    .line 1486
    :try_start_2
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLo/p$a;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    nop

    goto :goto_2

    :catch_2
    const/16 v17, 0x0

    .line 1498
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    .line 1499
    iget-boolean v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->search:Z

    if-eqz v0, :cond_c

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V

    :cond_c
    return v17

    :cond_d
    const/16 v17, 0x0

    .line 1506
    iget-object v5, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget-object v6, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat:Ljava/nio/ByteBuffer;

    iget v7, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplBaseParcelizer:I

    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect:Z

    iget-boolean v12, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect:Z

    iget-object v13, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->newSession:Lo/p$a;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1507
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLo/p$a;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_10

    .line 1521
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(J)V

    .line 1522
    iget-object v0, v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->warmup:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    const/4 v13, 0x1

    goto :goto_4

    :cond_e
    const/4 v13, 0x0

    .line 1523
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer()V

    if-nez v13, :cond_f

    return v15

    .line 1527
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras()V

    :cond_10
    return v17
.end method

.method private static extraCallback(Ljava/lang/String;)Z
    .locals 2

    .line 1828
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v1, "hb2000"

    .line 1830
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "stvm8"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 1831
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 1832
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getExtras()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1620
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1632
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->search:Z

    .line 1633
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel()V

    return-void

    .line 1622
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected()V

    return-void

    .line 1625
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getSessionToken()V

    return-void

    .line 1628
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub$Proxy()Z

    return-void
.end method

.method private getRoot()V
    .locals 2

    .line 1555
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private getServiceComponent()Z
    .locals 2

    .line 1713
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 1714
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 1715
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getSessionToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->ICustomTabsCallback$Stub()Lo/AxisUpi$1;

    move-result-object v0

    check-cast v0, Lo/ApiTracker;

    if-nez v0, :cond_0

    .line 1653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected()V

    return-void

    .line 1656
    :cond_0
    sget-object v1, Lo/$$c;->extraCallback:Ljava/util/UUID;

    iget-object v2, v0, Lo/ApiTracker;->onMessageChannelReady:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1659
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected()V

    return-void

    .line 1663
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub$Proxy()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1670
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    iget-object v0, v0, Lo/ApiTracker;->onPostMessage:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 1675
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    .line 1676
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    return-void

    :catch_0
    move-exception v0

    .line 1672
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private isConnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy()V

    return-void
.end method

.method private onMessageChannelReady(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 920
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IconCompatParcelizer:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)Z
    .locals 2

    .line 1847
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Lo/p$a;)Z
    .locals 2

    .line 1791
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1792
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationEvent(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 928
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private onNavigationEvent(J)Z
    .locals 5

    .line 901
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mayLaunchUrl:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mayLaunchUrl:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Z
    .locals 2

    .line 1777
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onNavigationEvent(Lo/isAirplaneModeOn;)Z
    .locals 3

    .line 1808
    iget-object v0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    .line 1809
    sget v1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget v1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 1810
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 1811
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lo/isAirplaneModeOn;->onTransact:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private onPostMessage(Landroid/media/MediaCodec;)V
    .locals 2

    .line 906
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 907
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IconCompatParcelizer:[Ljava/nio/ByteBuffer;

    .line 908
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lo/ApiTracker;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent:Lo/generateInviteUrl;

    invoke-interface {v0, p1}, Lo/generateInviteUrl;->onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    :cond_0
    return-void
.end method

.method private static onPostMessage(Ljava/lang/String;)Z
    .locals 2

    .line 1730
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 1732
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1733
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1734
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private onPostMessage(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1131
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->extraCallback()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    return v1

    .line 1133
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->asBinder()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method private write()Z
    .locals 1

    .line 936
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplBaseParcelizer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected ICustomTabsCallback(J)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public ICustomTabsService$Stub$Proxy()Z
    .locals 5

    .line 1307
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCallbacksMessenger:Z

    if-nez v0, :cond_1

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->write()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected INotificationSideChannel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected final INotificationSideChannel$Default()Landroid/media/MediaCodec;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public INotificationSideChannel$Stub()V
    .locals 5

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship:Ljava/util/ArrayDeque;

    .line 595
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancel:Lo/isAirplaneModeOn;

    .line 596
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V

    .line 598
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer()V

    .line 599
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancelAll()V

    const/4 v1, 0x0

    .line 600
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCallbacksMessenger:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 601
    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read:J

    .line 602
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    .line 603
    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getItem:J

    .line 604
    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sendCustomAction:J

    .line 606
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget v3, v2, Lo/getCampaign;->onMessageChannelReady:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lo/getCampaign;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 609
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 612
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 615
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    .line 617
    :try_start_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 621
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    .line 622
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel:Z

    .line 623
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :catchall_1
    move-exception v2

    .line 621
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    .line 622
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel:Z

    .line 623
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 624
    throw v2

    :catchall_2
    move-exception v2

    .line 615
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    .line 617
    :try_start_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 621
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    .line 622
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel:Z

    .line 623
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 625
    throw v2

    :catchall_3
    move-exception v2

    .line 621
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    .line 622
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel:Z

    .line 623
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 624
    throw v2
.end method

.method protected final INotificationSideChannel$Stub$Proxy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy()V

    :cond_0
    return v0
.end method

.method public IPostMessageService$Stub()Z
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->search:Z

    return v0
.end method

.method protected final IPostMessageService$Stub$Proxy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    iget-object v0, v0, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_5

    .line 476
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 477
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->ICustomTabsCallback$Stub()Lo/AxisUpi$1;

    move-result-object v1

    check-cast v1, Lo/ApiTracker;

    if-nez v1, :cond_1

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->asBinder()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 489
    :cond_1
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lo/ApiTracker;->onMessageChannelReady:Ljava/util/UUID;

    iget-object v5, v1, Lo/ApiTracker;->onPostMessage:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    iget-boolean v1, v1, Lo/ApiTracker;->ICustomTabsCallback:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    .line 495
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 498
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->extraCallback()I

    move-result v0

    if-eq v0, v3, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    return-void

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->asBinder()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 510
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method protected cancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback(Lo/p$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady:Lo/getConfigURL;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent:Lo/generateInviteUrl;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Lo/getConfigURL;Lo/generateInviteUrl;Lo/p$a;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 418
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected final extraCallback(J)Lo/p$a;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService:Lo/AuthRequestClass;

    invoke-virtual {v0, p1, p2}, Lo/AuthRequestClass;->ICustomTabsCallback(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/p$a;

    if-eqz p1, :cond_0

    .line 537
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->newSession:Lo/p$a;

    :cond_0
    return-object p1
.end method

.method protected extraCallback(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method protected abstract extraCallback(Lo/isAirplaneModeOn;Landroid/media/MediaCodec;Lo/p$a;Landroid/media/MediaCrypto;F)V
.end method

.method protected extraCallback(Lo/isAirplaneModeOn;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public extraCommand()V
    .locals 2

    const/4 v0, 0x0

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 590
    throw v1
.end method

.method protected final getDefaultImpl()Lo/isAirplaneModeOn;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancel:Lo/isAirplaneModeOn;

    return-object v0
.end method

.method public mayLaunchUrl()V
    .locals 0

    return-void
.end method

.method protected onMessageChannelReady(FLo/p$a;[Lo/p$a;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected abstract onMessageChannelReady(Lo/getConfigURL;Lo/generateInviteUrl;Lo/p$a;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getConfigURL;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;",
            "Lo/p$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected abstract onMessageChannelReady(Lo/getConfigURL;Lo/p$a;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getConfigURL;",
            "Lo/p$a;",
            "Z)",
            "Ljava/util/List<",
            "Lo/isAirplaneModeOn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public onMessageChannelReady(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 640
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->search:Z

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel()V

    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 649
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy()V

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "drainAndFeed"

    .line 652
    invoke-static {v2}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 653
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCallback(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 654
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IconCompatParcelizer()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent(J)Z

    move-result p1

    if-nez p1, :cond_3

    .line 655
    :cond_4
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    goto :goto_0

    .line 657
    :cond_5
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p4, p3, Lo/getCampaign;->ICustomTabsCallback:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lo/getCampaign;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Z)Z

    .line 664
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {p1}, Lo/getCampaign;->onPostMessage()V

    return-void
.end method

.method protected onMessageChannelReady(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public onMessageChannelReady(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 552
    new-instance p1, Lo/getCampaign;

    invoke-direct {p1}, Lo/getCampaign;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    return-void
.end method

.method public final onNavigationEvent(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 565
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub$Proxy:F

    .line 566
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lo/c$a;->q_()I

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat()V

    :cond_0
    return-void
.end method

.method protected abstract onNavigationEvent(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLo/p$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected onPostMessage(Landroid/media/MediaCodec;Lo/isAirplaneModeOn;Lo/p$a;Lo/p$a;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 557
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->unsubscribe:Z

    .line 558
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->search:Z

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub$Proxy()Z

    .line 560
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService:Lo/AuthRequestClass;

    invoke-virtual {p1}, Lo/AuthRequestClass;->extraCallback()V

    return-void
.end method

.method public onPostMessage(Lo/p$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    .line 1161
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    const/4 v1, 0x1

    .line 1162
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$CallbackHandler:Z

    .line 1164
    iget-object v2, p1, Lo/p$a;->warmup:Lo/generateLink;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lo/p$a;->warmup:Lo/generateLink;

    .line 1165
    :goto_0
    invoke-static {v2, v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1167
    iget-object v0, p1, Lo/p$a;->warmup:Lo/generateLink;

    if-eqz v0, :cond_4

    .line 1168
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent:Lo/generateInviteUrl;

    if-eqz v0, :cond_3

    .line 1173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p1, Lo/p$a;->warmup:Lo/generateLink;

    invoke-interface {v0, v2, v3}, Lo/generateInviteUrl;->onPostMessage(Landroid/os/Looper;Lo/generateLink;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object v0

    .line 1174
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne v0, v2, :cond_2

    .line 1177
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onNavigationEvent:Lo/generateInviteUrl;

    invoke-interface {v2, v0}, Lo/generateInviteUrl;->onPostMessage(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1179
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 1169
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->validateRelationship()I

    move-result v0

    .line 1169
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 1181
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 1185
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    .line 1186
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub$Proxy()V

    return-void

    .line 1193
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v0, :cond_a

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancel:Lo/isAirplaneModeOn;

    iget-boolean v0, v0, Lo/isAirplaneModeOn;->onTransact:Z

    if-eqz v0, :cond_a

    :cond_9
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v2, :cond_b

    .line 1200
    :cond_a
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect()V

    return-void

    .line 1204
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancel:Lo/isAirplaneModeOn;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Landroid/media/MediaCodec;Lo/isAirplaneModeOn;Lo/p$a;Lo/p$a;)I

    move-result v0

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 1236
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 1237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat()V

    .line 1238
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v0, :cond_11

    .line 1239
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect()V

    return-void

    .line 1243
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1218
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->cancelAll:Z

    if-eqz v0, :cond_e

    .line 1219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect()V

    return-void

    .line 1221
    :cond_e
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getSessionToken:Z

    .line 1222
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    .line 1223
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel:I

    if-eq v0, v2, :cond_10

    if-ne v0, v1, :cond_f

    iget v0, p1, Lo/p$a;->getInterfaceDescriptor:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    iget v2, v2, Lo/p$a;->getInterfaceDescriptor:I

    if-ne v0, v2, :cond_f

    iget v0, p1, Lo/p$a;->newSession:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    iget v2, v2, Lo/p$a;->newSession:I

    if-ne v0, v2, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl:Z

    .line 1228
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 1229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat()V

    .line 1230
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v0, :cond_11

    .line 1231
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect()V

    :cond_11
    return-void

    .line 1209
    :cond_12
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub:Lo/p$a;

    .line 1210
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat()V

    .line 1211
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq p1, v0, :cond_13

    .line 1212
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect()V

    return-void

    .line 1214
    :cond_13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesImplApi21Parcelizer()V

    return-void

    .line 1206
    :cond_14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect()V

    return-void
.end method

.method protected onPostMessage(Lo/setReferrerCustomerId;)V
    .locals 0

    return-void
.end method

.method protected read()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestPostMessageChannel()V
    .locals 0

    return-void
.end method

.method public setDefaultImpl()Z
    .locals 6

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 695
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub$Proxy:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 703
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->AudioAttributesCompatParcelizer()V

    .line 704
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 705
    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->read:J

    .line 706
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->subscribe:Z

    .line 707
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getExtras:Z

    .line 708
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->MediaBrowserCompat$ConnectionCallback:Z

    .line 709
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl:Z

    .line 710
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->RemoteActionCompatParcelizer:Z

    .line 711
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->disconnect:Z

    .line 712
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->connect:Z

    .line 714
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setCallbacksMessenger:Z

    .line 715
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 716
    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getItem:J

    .line 717
    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->sendCustomAction:J

    .line 718
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getServiceComponent:I

    .line 719
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getRoot:I

    .line 723
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getSessionToken:Z

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->isConnected:I

    return v1

    .line 698
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->INotificationSideChannel$Stub()V

    return v3
.end method

.method public updateVisuals()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->getInterfaceDescriptor:Lo/p$a;

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->postMessage:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->setDefaultImpl()Z

    return-void

    .line 578
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand()V

    return-void
.end method
