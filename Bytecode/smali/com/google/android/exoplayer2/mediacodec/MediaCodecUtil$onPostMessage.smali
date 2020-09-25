.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 804
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    .line 805
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 823
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 826
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;

    .line 827
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onPostMessage:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onPostMessage:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 813
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onMessageChannelReady:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 814
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$onPostMessage;->onPostMessage:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
