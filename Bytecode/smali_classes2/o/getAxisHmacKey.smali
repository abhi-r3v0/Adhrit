.class public final Lo/getAxisHmacKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Ljava/io/IOException;

.field private final onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getAxisHmacKey;->onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;

    iput-object p2, p0, Lo/getAxisHmacKey;->ICustomTabsCallback:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/getAxisHmacKey;->onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;

    iget-object v1, p0, Lo/getAxisHmacKey;->ICustomTabsCallback:Ljava/io/IOException;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onMessageChannelReady(Ljava/io/IOException;)V

    return-void
.end method
