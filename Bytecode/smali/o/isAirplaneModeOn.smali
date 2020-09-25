.class public final Lo/isAirplaneModeOn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Z

.field public final asInterface:Z

.field public final extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Z

.field public final onRelationshipValidationResult:Z

.field public final onTransact:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lo/isAirplaneModeOn;->onMessageChannelReady:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 157
    iput-boolean p5, p0, Lo/isAirplaneModeOn;->onRelationshipValidationResult:Z

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p6, :cond_0

    if-eqz p4, :cond_0

    .line 158
    invoke-static {p4}, Lo/isAirplaneModeOn;->ICustomTabsCallback(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iput-boolean p5, p0, Lo/isAirplaneModeOn;->onPostMessage:Z

    if-eqz p4, :cond_1

    .line 159
    invoke-static {p4}, Lo/isAirplaneModeOn;->onMessageChannelReady(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    iput-boolean p5, p0, Lo/isAirplaneModeOn;->asInterface:Z

    if-nez p7, :cond_3

    if-eqz p4, :cond_2

    .line 160
    invoke-static {p4}, Lo/isAirplaneModeOn;->extraCallback(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lo/isAirplaneModeOn;->onTransact:Z

    .line 161
    invoke-static {p2}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lo/isAirplaneModeOn;
    .locals 9

    .line 135
    new-instance v8, Lo/isAirplaneModeOn;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lo/isAirplaneModeOn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v8
.end method

.method private static ICustomTabsCallback(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 493
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lo/isAirplaneModeOn;->onNavigationEvent(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ICustomTabsCallback$Stub(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string/jumbo v0, "secure-playback"

    .line 516
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static extraCallback(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 459
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    if-lez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "audio/mpeg"

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/3gpp"

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/amr-wb"

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/mp4a-latm"

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/vorbis"

    .line 467
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/opus"

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/raw"

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/flac"

    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-alaw"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-mlaw"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/gsm"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "audio/ac3"

    .line 479
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const-string v0, "audio/eac3"

    .line 481
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e

    .line 487
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssumedMaxChannelAdjustment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_1
    return p2
.end method

.method private static extraCallback(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 511
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lo/isAirplaneModeOn;->ICustomTabsCallback$Stub(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssumedSupport ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static onMessageChannelReady(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 502
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lo/isAirplaneModeOn;->onPostMessage(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Lo/isAirplaneModeOn;
    .locals 9

    .line 105
    new-instance v8, Lo/isAirplaneModeOn;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lo/isAirplaneModeOn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZ)V

    return-object v8
.end method

.method private static onNavigationEvent(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "adaptive-playback"

    .line 498
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 529
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 523
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private onPostMessage(Ljava/lang/String;)V
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NoSupport ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static onPostMessage(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string/jumbo v0, "tunneled-playback"

    .line 507
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(IID)Z
    .locals 4

    .line 342
    iget-object v0, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "sizeAndRate.caps"

    .line 343
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    .line 346
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "sizeAndRate.vCaps"

    .line 348
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    .line 351
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lo/isAirplaneModeOn;->onNavigationEvent(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "x"

    if-ge p1, p2, :cond_3

    .line 356
    invoke-static {v0, p2, p1, p3, p4}, Lo/isAirplaneModeOn;->onNavigationEvent(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 360
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sizeAndRate.rotated, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sizeAndRate.support, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final ICustomTabsCallback(Lo/p$a;Lo/p$a;Z)Z
    .locals 4

    .line 300
    iget-boolean v0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    iget-object v3, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lo/p$a;->postMessage:I

    iget v3, p2, Lo/p$a;->postMessage:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lo/isAirplaneModeOn;->onPostMessage:Z

    if-nez v0, :cond_0

    iget v0, p1, Lo/p$a;->getInterfaceDescriptor:I

    iget v3, p2, Lo/p$a;->getInterfaceDescriptor:I

    if-ne v0, v3, :cond_3

    iget v0, p1, Lo/p$a;->newSession:I

    iget v3, p2, Lo/p$a;->newSession:I

    if-ne v0, v3, :cond_3

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p2, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    if-eqz p3, :cond_2

    :cond_1
    iget-object p1, p1, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    iget-object p2, p2, Lo/p$a;->ICustomTabsService$Stub$Proxy:Lo/getRewardDetails;

    .line 306
    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2

    .line 308
    :cond_4
    iget-object p3, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    iget-object v0, p2, Lo/p$a;->onTransact:Ljava/lang/String;

    .line 309
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget p3, p1, Lo/p$a;->ICustomTabsService$Stub:I

    iget v0, p2, Lo/p$a;->ICustomTabsService$Stub:I

    if-ne p3, v0, :cond_7

    iget p3, p1, Lo/p$a;->validateRelationship:I

    iget v0, p2, Lo/p$a;->validateRelationship:I

    if-eq p3, v0, :cond_5

    goto :goto_0

    .line 315
    :cond_5
    iget-object p1, p1, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 316
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 317
    iget-object p2, p2, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 318
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_0

    .line 322
    :cond_6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 323
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/16 p3, 0x2a

    if-ne p1, p3, :cond_7

    if-ne p2, p3, :cond_7

    return v1

    :cond_7
    :goto_0
    return v2
.end method

.method public final extraCallback(I)Z
    .locals 2

    .line 404
    iget-object v0, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "sampleRate.caps"

    .line 405
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    .line 408
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "sampleRate.aCaps"

    .line 410
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    .line 413
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sampleRate.support, "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 235
    iget-object v1, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 238
    :cond_0
    invoke-static {p1}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 242
    :cond_1
    iget-object v2, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "codec.mime "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v4

    .line 246
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    .line 251
    :cond_3
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 252
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 253
    iget-boolean v6, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback$Stub:Z

    if-nez v6, :cond_4

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_4

    return v0

    .line 258
    :cond_4
    invoke-virtual {p0}, Lo/isAirplaneModeOn;->onMessageChannelReady()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 259
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_5

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v9, v2, :cond_5

    return v0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 263
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "codec.profileLevel, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v4

    :cond_7
    :goto_1
    return v0
.end method

.method public final onMessageChannelReady(I)Z
    .locals 4

    .line 430
    iget-object v0, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "channelCount.caps"

    .line 431
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "channelCount.aCaps"

    .line 436
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    .line 439
    :cond_1
    iget-object v2, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p0, Lo/isAirplaneModeOn;->onNavigationEvent:Ljava/lang/String;

    .line 440
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    .line 439
    invoke-static {v2, v3, v0}, Lo/isAirplaneModeOn;->extraCallback(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 442
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channelCount.support, "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final onMessageChannelReady(Lo/p$a;)Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 279
    iget-boolean p1, p0, Lo/isAirplaneModeOn;->onPostMessage:Z

    return p1

    .line 281
    :cond_0
    iget-object p1, p1, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 282
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 175
    iget-object v0, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0
.end method

.method public final onNavigationEvent(II)Landroid/graphics/Point;
    .locals 3

    .line 379
    iget-object v0, p0, Lo/isAirplaneModeOn;->extraCallback:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "align.caps"

    .line 380
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return-object v1

    .line 383
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "align.vCaps"

    .line 385
    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    return-object v1

    .line 388
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v1

    .line 389
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    .line 390
    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v1}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result p1

    mul-int p1, p1, v1

    .line 391
    invoke-static {p2, v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(II)I

    move-result p2

    mul-int p2, p2, v0

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public final onNavigationEvent(Lo/p$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 200
    iget-object v0, p1, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/isAirplaneModeOn;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 204
    :cond_0
    iget-boolean v0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback$Stub:Z

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 205
    iget v0, p1, Lo/p$a;->getInterfaceDescriptor:I

    if-lez v0, :cond_5

    iget v0, p1, Lo/p$a;->newSession:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-lt v0, v2, :cond_2

    .line 209
    iget v0, p1, Lo/p$a;->getInterfaceDescriptor:I

    iget v1, p1, Lo/p$a;->newSession:I

    iget p1, p1, Lo/p$a;->updateVisuals:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lo/isAirplaneModeOn;->ICustomTabsCallback(IID)Z

    move-result p1

    return p1

    .line 211
    :cond_2
    iget v0, p1, Lo/p$a;->getInterfaceDescriptor:I

    iget v2, p1, Lo/p$a;->newSession:I

    mul-int v0, v0, v2

    .line 212
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->ICustomTabsCallback()I

    move-result v2

    if-gt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "legacyFrameSize, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lo/p$a;->getInterfaceDescriptor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo/p$a;->newSession:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isAirplaneModeOn;->onPostMessage(Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v3

    .line 219
    :cond_6
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    if-lt v0, v2, :cond_9

    iget v0, p1, Lo/p$a;->validateRelationship:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget v0, p1, Lo/p$a;->validateRelationship:I

    .line 221
    invoke-virtual {p0, v0}, Lo/isAirplaneModeOn;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p1, Lo/p$a;->ICustomTabsService$Stub:I

    if-eq v0, v2, :cond_9

    iget p1, p1, Lo/p$a;->ICustomTabsService$Stub:I

    .line 223
    invoke-virtual {p0, p1}, Lo/isAirplaneModeOn;->onMessageChannelReady(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method
