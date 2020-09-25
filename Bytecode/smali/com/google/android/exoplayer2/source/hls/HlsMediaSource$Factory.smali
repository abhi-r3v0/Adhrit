.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

.field private asBinder:Z

.field private asInterface:Z

.field private extraCallback:Lo/ListInstrument;

.field private onMessageChannelReady:Lo/SessionCallResponse;

.field private final onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

.field private onPostMessage:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;

.field private onRelationshipValidationResult:Lo/resetOptions;

.field private onTransact:Z


# direct methods
.method public constructor <init>(Lo/NetBankingInstrumentJsonAdapter;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/NetBankingInstrumentJsonAdapter;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    .line 93
    new-instance p1, Lo/RetryInfo;

    invoke-direct {p1}, Lo/RetryInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onMessageChannelReady:Lo/SessionCallResponse;

    .line 94
    sget-object p1, Lo/PaymentStatus;->extraCallback:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onPostMessage:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;

    .line 95
    sget-object p1, Lo/ListInstrument;->ICustomTabsCallback:Lo/ListInstrument;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extraCallback:Lo/ListInstrument;

    .line 96
    new-instance p1, Lo/SurchargeInfo;

    invoke-direct {p1}, Lo/SurchargeInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

    .line 97
    new-instance p1, Lo/releaseOptions;

    invoke-direct {p1}, Lo/releaseOptions;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onRelationshipValidationResult:Lo/resetOptions;

    return-void
.end method

.method public constructor <init>(Lo/ResultJsonAdapter$onNavigationEvent;)V
    .locals 1

    .line 82
    new-instance v0, Lo/OrderStatusResponse;

    invoke-direct {v0, p1}, Lo/OrderStatusResponse;-><init>(Lo/ResultJsonAdapter$onNavigationEvent;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lo/NetBankingInstrumentJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 14

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->asBinder:Z

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Lo/PaymentStatusJsonAdapter;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onMessageChannelReady:Lo/SessionCallResponse;

    invoke-direct {v1, v2, v0}, Lo/PaymentStatusJsonAdapter;-><init>(Lo/SessionCallResponse;Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onMessageChannelReady:Lo/SessionCallResponse;

    .line 266
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extraCallback:Lo/ListInstrument;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onRelationshipValidationResult:Lo/resetOptions;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->ICustomTabsCallback$Stub:Lo/ViewContainerJsonAdapter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onPostMessage:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onMessageChannelReady:Lo/SessionCallResponse;

    .line 272
    invoke-interface {v1, v5, v8, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;->onNavigationEvent(Lo/NetBankingInstrumentJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/SessionCallResponse;)Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onTransact:Z

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->asInterface:Z

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lo/NetBankingInstrumentJsonAdapter;Lo/ListInstrument;Lo/resetOptions;Lo/ViewContainerJsonAdapter;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$2;)V

    return-object v0
.end method

.method public final extraCallback(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->asBinder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 236
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->onTransact:Z

    return-object p0
.end method

.method public final synthetic onMessageChannelReady(Landroid/net/Uri;)Lo/InstrumentsCompleteJsonAdapter;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public final setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;"
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->asBinder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 189
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->ICustomTabsCallback:Ljava/util/List;

    return-object p0
.end method
