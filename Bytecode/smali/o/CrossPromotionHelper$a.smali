.class public Lo/CrossPromotionHelper$a;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source ""

# interfaces
.implements Lo/setEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrossPromotionHelper$a$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/w$onMessageChannelReady;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:I

.field private asBinder:Landroid/media/MediaFormat;

.field private asInterface:Z

.field private final extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private extraCommand:J

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:I

.field private newSession:I

.field private final onMessageChannelReady:[J

.field private final onNavigationEvent:Landroid/content/Context;

.field private onRelationshipValidationResult:Z

.field private onTransact:I

.field private postMessage:Z

.field private updateVisuals:Z

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/getConfigURL;Lo/generateInviteUrl;ZZLandroid/os/Handler;Lo/w;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/getConfigURL;",
            "Lo/generateInviteUrl<",
            "Lo/ApiTracker;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Lo/w;",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 287
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILo/getConfigURL;Lo/generateInviteUrl;ZZF)V

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/CrossPromotionHelper$a;->onNavigationEvent:Landroid/content/Context;

    .line 295
    iput-object p8, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 296
    iput-wide p1, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 297
    iput-object p1, p0, Lo/CrossPromotionHelper$a;->onMessageChannelReady:[J

    .line 298
    new-instance p1, Lo/w$onMessageChannelReady;

    invoke-direct {p1, p6, p7}, Lo/w$onMessageChannelReady;-><init>(Landroid/os/Handler;Lo/w;)V

    iput-object p1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    .line 299
    new-instance p1, Lo/CrossPromotionHelper$a$ICustomTabsCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/CrossPromotionHelper$a$ICustomTabsCallback;-><init>(Lo/CrossPromotionHelper$a;Lo/CrossPromotionHelper$a$3;)V

    invoke-interface {p8, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->onMessageChannelReady(Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;)V

    return-void
.end method

.method private static RemoteActionCompatParcelizer()Z
    .locals 2

    .line 894
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 895
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "AXON 7 mini"

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

.method private onMessageChannelReady(Lo/isAirplaneModeOn;Lo/p$a;)I
    .locals 1

    .line 809
    iget-object p1, p1, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 814
    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lo/CrossPromotionHelper$a;->onNavigationEvent:Landroid/content/Context;

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 818
    :cond_1
    iget p1, p2, Lo/p$a;->ICustomTabsCallback$Stub:I

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/CrossPromotionHelper$a;)Lo/w$onMessageChannelReady;
    .locals 0

    .line 69
    iget-object p0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;)Z
    .locals 2

    .line 906
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v0, "samsung"

    .line 907
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    .line 908
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 909
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/CrossPromotionHelper$a;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lo/CrossPromotionHelper$a;->updateVisuals:Z

    return p1
.end method

.method private static onPostMessage(Ljava/lang/String;)Z
    .locals 2

    .line 919
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.mp3.dec"

    .line 920
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v0, "samsung"

    .line 921
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "baffin"

    .line 922
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "grand"

    .line 923
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "fortuna"

    .line 924
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "gprimelte"

    .line 925
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "j2y18lte"

    .line 926
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->extraCallback:Ljava/lang/String;

    const-string v0, "ms01"

    .line 927
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private write()V
    .locals 5

    .line 877
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->onNavigationEvent(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 879
    iget-boolean v2, p0, Lo/CrossPromotionHelper$a;->updateVisuals:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub$Proxy:J

    .line 882
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub$Proxy:J

    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lo/CrossPromotionHelper$a;->updateVisuals:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/r;)Lo/r;
    .locals 1

    .line 663
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->onMessageChannelReady(Lo/r;)Lo/r;

    move-result-object p1

    return-object p1
.end method

.method protected ICustomTabsCallback(I)V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback(J)V
    .locals 4

    .line 688
    :goto_0
    iget v0, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrossPromotionHelper$a;->onMessageChannelReady:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 689
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback()V

    .line 690
    iget v0, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    .line 691
    iget-object v3, p0, Lo/CrossPromotionHelper$a;->onMessageChannelReady:[J

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ICustomTabsService$Stub$Proxy()Z
    .locals 1

    .line 650
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->ICustomTabsService$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public INotificationSideChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 748
    :try_start_0
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->extraCallback()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 750
    invoke-virtual {p0}, Lo/CrossPromotionHelper$a;->validateRelationship()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public IPostMessageService$Stub()Z
    .locals 1

    .line 645
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->IPostMessageService$Stub()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cancelAll()V
    .locals 0

    return-void
.end method

.method protected extraCallback(Lo/isAirplaneModeOn;Lo/p$a;[Lo/p$a;)I
    .locals 6

    .line 785
    invoke-direct {p0, p1, p2}, Lo/CrossPromotionHelper$a;->onMessageChannelReady(Lo/isAirplaneModeOn;Lo/p$a;)I

    move-result v0

    .line 786
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 791
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p3, v3

    .line 792
    invoke-virtual {p1, p2, v4, v2}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Lo/p$a;Lo/p$a;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 794
    invoke-direct {p0, p1, v4}, Lo/CrossPromotionHelper$a;->onMessageChannelReady(Lo/isAirplaneModeOn;Lo/p$a;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public extraCallback(Ljava/lang/String;JJ)V
    .locals 6

    .line 467
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/w$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;JJ)V

    return-void
.end method

.method public extraCallback(Lo/isAirplaneModeOn;Landroid/media/MediaCodec;Lo/p$a;Landroid/media/MediaCrypto;F)V
    .locals 1

    .line 403
    invoke-virtual {p0}, Lo/CrossPromotionHelper$a;->postMessage()[Lo/p$a;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lo/CrossPromotionHelper$a;->extraCallback(Lo/isAirplaneModeOn;Lo/p$a;[Lo/p$a;)I

    move-result v0

    iput v0, p0, Lo/CrossPromotionHelper$a;->onTransact:I

    .line 404
    iget-object v0, p1, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/CrossPromotionHelper$a;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CrossPromotionHelper$a;->onRelationshipValidationResult:Z

    .line 405
    iget-object v0, p1, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/CrossPromotionHelper$a;->onPostMessage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CrossPromotionHelper$a;->asInterface:Z

    .line 406
    iget-boolean v0, p1, Lo/isAirplaneModeOn;->onRelationshipValidationResult:Z

    iput-boolean v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    const-string p1, "audio/raw"

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p1, Lo/isAirplaneModeOn;->onMessageChannelReady:Ljava/lang/String;

    .line 408
    :goto_0
    iget v0, p0, Lo/CrossPromotionHelper$a;->onTransact:I

    .line 409
    invoke-virtual {p0, p3, p1, v0, p5}, Lo/CrossPromotionHelper$a;->onPostMessage(Lo/p$a;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p5, 0x0

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p2, p1, v0, p4, p5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 411
    iget-boolean p2, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub:Z

    if-eqz p2, :cond_1

    .line 413
    iput-object p1, p0, Lo/CrossPromotionHelper$a;->asBinder:Landroid/media/MediaFormat;

    .line 414
    iget-object p2, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string p3, "mime"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_1
    iput-object v0, p0, Lo/CrossPromotionHelper$a;->asBinder:Landroid/media/MediaFormat;

    return-void
.end method

.method public extraCommand()V
    .locals 2

    .line 637
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->extraCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->onTransact()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->onTransact()V

    .line 640
    throw v0
.end method

.method public mayLaunchUrl()V
    .locals 1

    .line 614
    invoke-direct {p0}, Lo/CrossPromotionHelper$a;->write()V

    .line 615
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback$Stub()V

    .line 616
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->mayLaunchUrl()V

    return-void
.end method

.method public onMessageChannelReady(FLo/p$a;[Lo/p$a;)F
    .locals 4

    .line 455
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 456
    iget v3, v3, Lo/p$a;->validateRelationship:I

    if-eq v3, v0, :cond_0

    .line 458
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v2

    mul-float p2, p2, p1

    return p2
.end method

.method protected onMessageChannelReady(ILjava/lang/String;)I
    .locals 2

    const-string v0, "audio/eac3-joc"

    .line 524
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    iget-object p2, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    const/16 v1, 0x12

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 526
    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onTransact(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "audio/eac3"

    .line 532
    :cond_1
    invoke-static {p2}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onTransact(Ljava/lang/String;)I

    move-result p2

    .line 533
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady(Lo/getConfigURL;Lo/generateInviteUrl;Lo/p$a;)I
    .locals 10
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

    .line 306
    iget-object v0, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 307
    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 310
    :cond_0
    sget v1, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 311
    :goto_0
    iget-object v3, p3, Lo/p$a;->warmup:Lo/generateLink;

    invoke-static {p2, v3}, Lo/CrossPromotionHelper$a;->onPostMessage(Lo/generateInviteUrl;Lo/generateLink;)Z

    move-result p2

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz p2, :cond_2

    .line 312
    iget v5, p3, Lo/p$a;->ICustomTabsService$Stub:I

    .line 313
    invoke-virtual {p0, v5, v0}, Lo/CrossPromotionHelper$a;->onNavigationEvent(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    invoke-interface {p1}, Lo/getConfigURL;->onNavigationEvent()Lo/isAirplaneModeOn;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_2
    const-string v5, "audio/raw"

    .line 317
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v6, p3, Lo/p$a;->ICustomTabsService$Stub:I

    iget v7, p3, Lo/p$a;->IPostMessageService:I

    .line 318
    invoke-interface {v0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback(II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v6, p3, Lo/p$a;->ICustomTabsService$Stub:I

    const/4 v7, 0x2

    .line 319
    invoke-interface {v0, v6, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback(II)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v5

    .line 324
    :cond_5
    iget-object v0, p3, Lo/p$a;->warmup:Lo/generateLink;

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 326
    :goto_1
    iget v9, v0, Lo/generateLink;->onPostMessage:I

    if-ge v6, v9, :cond_7

    .line 327
    invoke-virtual {v0, v6}, Lo/generateLink;->onPostMessage(I)Lo/generateLink$extraCallback;

    move-result-object v9

    iget-boolean v9, v9, Lo/generateLink$extraCallback;->extraCallback:Z

    or-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    .line 330
    :cond_7
    iget-object v0, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 331
    invoke-interface {p1, v0, v8, v2}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v8, :cond_8

    .line 334
    iget-object p2, p3, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 336
    invoke-interface {p1, p2, v2, v2}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 340
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    return v7

    :cond_8
    return v5

    :cond_9
    if-nez p2, :cond_a

    return v7

    .line 348
    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isAirplaneModeOn;

    .line 349
    invoke-virtual {p1, p3}, Lo/isAirplaneModeOn;->onNavigationEvent(Lo/p$a;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 351
    invoke-virtual {p1, p3}, Lo/isAirplaneModeOn;->onMessageChannelReady(Lo/p$a;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 v4, 0x10

    :cond_b
    if-eqz p2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x3

    :goto_2
    or-int p1, v4, v1

    or-int/2addr p1, v3

    return p1
.end method

.method public onMessageChannelReady()J
    .locals 2

    .line 655
    invoke-virtual {p0}, Lo/c$a;->q_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 656
    invoke-direct {p0}, Lo/CrossPromotionHelper$a;->write()V

    .line 658
    :cond_0
    iget-wide v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub$Proxy:J

    return-wide v0
.end method

.method public onMessageChannelReady(Lo/getConfigURL;Lo/p$a;Z)Ljava/util/List;
    .locals 3
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

    .line 362
    iget v0, p2, Lo/p$a;->ICustomTabsService$Stub:I

    iget-object v1, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lo/CrossPromotionHelper$a;->onNavigationEvent(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {p1}, Lo/getConfigURL;->onNavigationEvent()Lo/isAirplaneModeOn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 368
    :cond_0
    iget-object v0, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    const/4 v1, 0x0

    .line 369
    invoke-interface {p1, v0, p3, v1}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 371
    iget-object p2, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 373
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "audio/eac3"

    .line 375
    invoke-interface {p1, v0, p3, v1}, Lo/getConfigURL;->onPostMessage(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 374
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, p2

    .line 379
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 488
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->asBinder:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    const-string v1, "mime"

    .line 493
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {p0, p2, v1}, Lo/CrossPromotionHelper$a;->onMessageChannelReady(ILjava/lang/String;)I

    move-result p2

    move v2, p2

    move-object p2, p1

    goto :goto_0

    .line 496
    :cond_0
    iget p1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsService:I

    move v2, p1

    .line 498
    :goto_0
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo p1, "sample-rate"

    .line 499
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 501
    iget-boolean p1, p0, Lo/CrossPromotionHelper$a;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v3, p1, :cond_1

    iget p2, p0, Lo/CrossPromotionHelper$a;->newSession:I

    if-ge p2, p1, :cond_1

    .line 502
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 503
    :goto_1
    iget v0, p0, Lo/CrossPromotionHelper$a;->newSession:I

    if-ge p2, v0, :cond_2

    .line 504
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v6, p1

    .line 511
    :try_start_0
    iget-object v1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    const/4 v5, 0x0

    iget v7, p0, Lo/CrossPromotionHelper$a;->getInterfaceDescriptor:I

    iget v8, p0, Lo/CrossPromotionHelper$a;->warmup:I

    invoke-interface/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/AudioSink;->extraCallback(IIII[III)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p0}, Lo/CrossPromotionHelper$a;->validateRelationship()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public onMessageChannelReady(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 569
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady(Z)V

    .line 570
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {p1, v0}, Lo/w$onMessageChannelReady;->onNavigationEvent(Lo/getCampaign;)V

    .line 571
    invoke-virtual {p0}, Lo/CrossPromotionHelper$a;->IPostMessageService()Lo/Payload;

    move-result-object p1

    iget p1, p1, Lo/Payload;->extraCallback:I

    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->onPostMessage(I)V

    return-void

    .line 575
    :cond_0
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->asBinder()V

    return-void
.end method

.method public onMessageChannelReady([Lo/p$a;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onMessageChannelReady([Lo/p$a;J)V

    .line 582
    iget-wide p1, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 583
    iget p1, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    iget-object p2, p0, Lo/CrossPromotionHelper$a;->onMessageChannelReady:[J

    array-length p2, p2

    if-ne p1, p2, :cond_0

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Too many stream changes, so dropping change at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lo/CrossPromotionHelper$a;->onMessageChannelReady:[J

    iget p3, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    add-int/lit8 p3, p3, -0x1

    aget-wide v0, p2, p3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecAudioRenderer"

    invoke-static {p2, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 589
    iput p1, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    .line 591
    :goto_0
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->onMessageChannelReady:[J

    iget p2, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    add-int/lit8 p2, p2, -0x1

    iget-wide v0, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    aput-wide v0, p1, p2

    :cond_1
    return-void
.end method

.method public onNavigationEvent()Lo/setEnabled;
    .locals 0

    return-object p0
.end method

.method protected onNavigationEvent(IJJ)V
    .locals 0

    return-void
.end method

.method protected onNavigationEvent(ILjava/lang/String;)Z
    .locals 0

    .line 393
    invoke-virtual {p0, p1, p2}, Lo/CrossPromotionHelper$a;->onMessageChannelReady(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationEvent(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLo/p$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 713
    iget-boolean p1, p0, Lo/CrossPromotionHelper$a;->asInterface:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p9, p1

    if-nez p3, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p12, p1, p3

    if-eqz p12, :cond_0

    move-wide p9, p1

    .line 720
    :cond_0
    iget-boolean p1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 722
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_1
    if-eqz p11, :cond_2

    .line 727
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 728
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p2, p1, Lo/getCampaign;->onTransact:I

    add-int/2addr p2, p3

    iput p2, p1, Lo/getCampaign;->onTransact:I

    .line 729
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->ICustomTabsCallback()V

    return p3

    .line 734
    :cond_2
    :try_start_0
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p9, p10}, Lcom/google/android/exoplayer2/audio/AudioSink;->onNavigationEvent(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 735
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 736
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    iget p2, p1, Lo/getCampaign;->extraCallback:I

    add-int/2addr p2, p3

    iput p2, p1, Lo/getCampaign;->extraCallback:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_3
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 740
    :goto_0
    invoke-virtual {p0}, Lo/CrossPromotionHelper$a;->validateRelationship()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected onNavigationEvent(Lo/p$a;Lo/p$a;)Z
    .locals 2

    .line 833
    iget-object v0, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    iget-object v1, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lo/p$a;->ICustomTabsService$Stub:I

    iget v1, p2, Lo/p$a;->ICustomTabsService$Stub:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lo/p$a;->validateRelationship:I

    iget v1, p2, Lo/p$a;->validateRelationship:I

    if-ne v0, v1, :cond_0

    .line 836
    invoke-virtual {p1, p2}, Lo/p$a;->onPostMessage(Lo/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage(Landroid/media/MediaCodec;Lo/isAirplaneModeOn;Lo/p$a;Lo/p$a;)I
    .locals 2

    .line 428
    invoke-direct {p0, p2, p4}, Lo/CrossPromotionHelper$a;->onMessageChannelReady(Lo/isAirplaneModeOn;Lo/p$a;)I

    move-result p1

    iget v0, p0, Lo/CrossPromotionHelper$a;->onTransact:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2

    iget p1, p3, Lo/p$a;->IPostMessageService$Stub:I

    if-nez p1, :cond_2

    iget p1, p3, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    if-nez p1, :cond_2

    iget p1, p4, Lo/p$a;->IPostMessageService$Stub:I

    if-nez p1, :cond_2

    iget p1, p4, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 434
    invoke-virtual {p2, p3, p4, p1}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Lo/p$a;Lo/p$a;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    .line 437
    :cond_1
    invoke-virtual {p0, p3, p4}, Lo/CrossPromotionHelper$a;->onNavigationEvent(Lo/p$a;Lo/p$a;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected onPostMessage(Lo/p$a;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    .line 853
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 855
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget p2, p1, Lo/p$a;->ICustomTabsService$Stub:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 857
    iget p2, p1, Lo/p$a;->validateRelationship:I

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 858
    iget-object p2, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-static {v0, p2}, Lo/getSDKVersion;->extraCallback(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 860
    invoke-static {v0, p2, p3}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 862
    sget p2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const/4 p2, 0x0

    const-string p3, "priority"

    .line 863
    invoke-virtual {v0, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_0

    .line 864
    invoke-static {}, Lo/CrossPromotionHelper$a;->RemoteActionCompatParcelizer()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "operating-rate"

    .line 865
    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 868
    :cond_0
    sget p2, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    iget-object p1, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string p2, "audio/ac4"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const-string p2, "ac4-is-sync"

    .line 871
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public onPostMessage()Lo/r;
    .locals 1

    .line 668
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->onRelationshipValidationResult()Lo/r;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 769
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(ILjava/lang/Object;)V

    return-void

    .line 765
    :cond_0
    check-cast p2, Lo/OnSupport;

    .line 766
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->onNavigationEvent(Lo/OnSupport;)V

    return-void

    .line 761
    :cond_1
    check-cast p2, Lo/u$b;

    .line 762
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->onPostMessage(Lo/u$b;)V

    return-void

    .line 758
    :cond_2
    iget-object p1, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->extraCallback(F)V

    return-void
.end method

.method public onPostMessage(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 597
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(JZ)V

    .line 598
    iget-object p3, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->asInterface()V

    .line 599
    iput-wide p1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub$Proxy:J

    const/4 p1, 0x1

    .line 600
    iput-boolean p1, p0, Lo/CrossPromotionHelper$a;->postMessage:Z

    .line 601
    iput-boolean p1, p0, Lo/CrossPromotionHelper$a;->updateVisuals:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 602
    iput-wide p1, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    const/4 p1, 0x0

    .line 603
    iput p1, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    return-void
.end method

.method public onPostMessage(Lo/p$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 472
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage(Lo/p$a;)V

    .line 473
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/w$onMessageChannelReady;->onPostMessage(Lo/p$a;)V

    .line 476
    iget-object v0, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lo/p$a;->IPostMessageService:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsService:I

    .line 478
    iget v0, p1, Lo/p$a;->ICustomTabsService$Stub:I

    iput v0, p0, Lo/CrossPromotionHelper$a;->newSession:I

    .line 479
    iget v0, p1, Lo/p$a;->IPostMessageService$Stub:I

    iput v0, p0, Lo/CrossPromotionHelper$a;->getInterfaceDescriptor:I

    .line 480
    iget p1, p1, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    iput p1, p0, Lo/CrossPromotionHelper$a;->warmup:I

    return-void
.end method

.method public onPostMessage(Lo/setReferrerCustomerId;)V
    .locals 5

    .line 673
    iget-boolean v0, p0, Lo/CrossPromotionHelper$a;->postMessage:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/getChannel;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iget-wide v0, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v2, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub$Proxy:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 678
    iget-wide v0, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    iput-wide v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback$Stub$Proxy:J

    :cond_0
    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lo/CrossPromotionHelper$a;->postMessage:Z

    .line 682
    :cond_1
    iget-wide v0, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v2, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    return-void
.end method

.method public requestPostMessageChannel()V
    .locals 1

    .line 608
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->requestPostMessageChannel()V

    .line 609
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->onMessageChannelReady()V

    return-void
.end method

.method public updateVisuals()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 622
    :try_start_0
    iput-wide v0, p0, Lo/CrossPromotionHelper$a;->extraCommand:J

    const/4 v0, 0x0

    .line 623
    iput v0, p0, Lo/CrossPromotionHelper$a;->mayLaunchUrl:I

    .line 624
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->extraCallback:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->asInterface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 627
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    iget-object v0, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {v0, v1}, Lo/w$onMessageChannelReady;->onPostMessage(Lo/getCampaign;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {v1, v2}, Lo/w$onMessageChannelReady;->onPostMessage(Lo/getCampaign;)V

    .line 630
    throw v0

    :catchall_1
    move-exception v0

    .line 627
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->updateVisuals()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 629
    iget-object v1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {v1, v2}, Lo/w$onMessageChannelReady;->onPostMessage(Lo/getCampaign;)V

    .line 631
    throw v0

    :catchall_2
    move-exception v0

    .line 629
    iget-object v1, p0, Lo/CrossPromotionHelper$a;->ICustomTabsCallback:Lo/w$onMessageChannelReady;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->onPostMessage:Lo/getCampaign;

    invoke-virtual {v1, v2}, Lo/w$onMessageChannelReady;->onPostMessage(Lo/getCampaign;)V

    .line 630
    throw v0
.end method
