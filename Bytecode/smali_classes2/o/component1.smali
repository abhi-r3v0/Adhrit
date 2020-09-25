.class public final Lo/component1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private final onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/component1;->extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lo/component1;->onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/component1;->extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object v1, p0, Lo/component1;->onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->extraCallback(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;)V

    return-void
.end method
