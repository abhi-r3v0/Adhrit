.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultOptions$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private final onMessageChannelReady:Landroid/net/Uri;

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;II)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onMessageChannelReady:Landroid/net/Uri;

    .line 439
    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onNavigationEvent:I

    .line 440
    iput p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Ljava/io/IOException;)V
    .locals 15

    move-object v0, p0

    .line 445
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;

    move-result-object v2

    new-instance v3, Lo/PaymentRequestJsonAdapter;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onMessageChannelReady:Landroid/net/Uri;

    invoke-direct {v3, v1}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;)V

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onMessageChannelReady:Landroid/net/Uri;

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 454
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->onMessageChannelReady(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v13

    const/4 v6, 0x6

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    .line 446
    invoke-virtual/range {v2 .. v14}, Lo/Account$extraCallback;->onMessageChannelReady(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 456
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onPostMessage(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/getAxisHmacKey;

    move-object/from16 v3, p2

    invoke-direct {v2, p0, v3}, Lo/getAxisHmacKey;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/io/IOException;)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->extraCallback:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->ICustomTabsCallback(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lo/CredUpiInstrumentBankStatusJsonAdapter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onNavigationEvent:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ICustomTabsCallback;->onPostMessage:I

    invoke-interface {v0, v1, v2, p1}, Lo/CredUpiInstrumentBankStatusJsonAdapter;->extraCallback(IILjava/io/IOException;)V

    return-void
.end method
