.class public Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/trackCrossPromoteImpression;

.field private final onNavigationEvent:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final onPostMessage:Lo/CrossPromotionHelper;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onNavigationEvent:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 127
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    new-instance v0, Lo/trackCrossPromoteImpression;

    invoke-direct {v0}, Lo/trackCrossPromoteImpression;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onMessageChannelReady:Lo/trackCrossPromoteImpression;

    .line 134
    new-instance v0, Lo/CrossPromotionHelper;

    invoke-direct {v0}, Lo/CrossPromotionHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onPostMessage:Lo/CrossPromotionHelper;

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onNavigationEvent:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onMessageChannelReady:Lo/trackCrossPromoteImpression;

    aput-object v3, v1, v2

    .line 136
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v0, v1, p1

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()J
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onMessageChannelReady:Lo/trackCrossPromoteImpression;

    invoke-virtual {v0}, Lo/trackCrossPromoteImpression;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v0

    return-wide v0
.end method

.method public onMessageChannelReady(Lo/r;)Lo/r;
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onMessageChannelReady:Lo/trackCrossPromoteImpression;

    iget-boolean v1, p1, Lo/r;->extraCallback:Z

    invoke-virtual {v0, v1}, Lo/trackCrossPromoteImpression;->onMessageChannelReady(Z)V

    .line 147
    new-instance v0, Lo/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onPostMessage:Lo/CrossPromotionHelper;

    iget v2, p1, Lo/r;->ICustomTabsCallback:F

    .line 148
    invoke-virtual {v1, v2}, Lo/CrossPromotionHelper;->onMessageChannelReady(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onPostMessage:Lo/CrossPromotionHelper;

    iget v3, p1, Lo/r;->onNavigationEvent:F

    .line 149
    invoke-virtual {v2, v3}, Lo/CrossPromotionHelper;->extraCallback(F)F

    move-result v2

    iget-boolean p1, p1, Lo/r;->extraCallback:Z

    invoke-direct {v0, v1, v2, p1}, Lo/r;-><init>(FFZ)V

    return-object v0
.end method

.method public onPostMessage(J)J
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onPostMessage:Lo/CrossPromotionHelper;

    invoke-virtual {v0, p1, p2}, Lo/CrossPromotionHelper;->ICustomTabsCallback(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public onPostMessage()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$onPostMessage;->onNavigationEvent:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method
