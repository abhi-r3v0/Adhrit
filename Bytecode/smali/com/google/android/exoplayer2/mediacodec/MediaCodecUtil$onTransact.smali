.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/isAirplaneModeOn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$5;)V
    .locals 0

    .line 839
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;-><init>()V

    return-void
.end method

.method private static onNavigationEvent(Lo/isAirplaneModeOn;)I
    .locals 2

    .line 846
    iget-object p0, p0, Lo/isAirplaneModeOn;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 847
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 839
    check-cast p1, Lo/isAirplaneModeOn;

    check-cast p2, Lo/isAirplaneModeOn;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;->onMessageChannelReady(Lo/isAirplaneModeOn;Lo/isAirplaneModeOn;)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Lo/isAirplaneModeOn;Lo/isAirplaneModeOn;)I
    .locals 0

    .line 842
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;->onNavigationEvent(Lo/isAirplaneModeOn;)I

    move-result p1

    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onTransact;->onNavigationEvent(Lo/isAirplaneModeOn;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
