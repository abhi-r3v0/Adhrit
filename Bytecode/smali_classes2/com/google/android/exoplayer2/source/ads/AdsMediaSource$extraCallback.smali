.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CredUpiInstrumentBankStatusJsonAdapter$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "extraCallback"
.end annotation


# instance fields
.field private volatile extraCallback:Z

.field final synthetic onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private final onNavigationEvent:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;->extraCallback:Z

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$extraCallback;->onNavigationEvent:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
