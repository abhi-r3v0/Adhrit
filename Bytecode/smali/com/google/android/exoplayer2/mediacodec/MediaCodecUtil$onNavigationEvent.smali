.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private onNavigationEvent:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 718
    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->ICustomTabsCallback:I

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->onNavigationEvent:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->ICustomTabsCallback:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->onNavigationEvent:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 750
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 732
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->onMessageChannelReady()V

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->onNavigationEvent:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 726
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->onMessageChannelReady()V

    .line 727
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onNavigationEvent;->onNavigationEvent:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 744
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
