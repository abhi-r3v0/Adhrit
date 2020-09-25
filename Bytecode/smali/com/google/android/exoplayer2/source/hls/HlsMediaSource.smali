.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lo/newIoExceptionForInBitmapAssertion;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/resetOptions;

.field private final ICustomTabsCallback$Stub:Z

.field private asBinder:Lo/InitPayloadJsonAdapter;

.field private final asInterface:Ljava/lang/Object;

.field private final extraCallback:Lo/ListInstrument;

.field private final onMessageChannelReady:Lo/ViewContainerJsonAdapter;

.field private final onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

.field private final onPostMessage:Landroid/net/Uri;

.field private final onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 55
    invoke-static {v0}, Lo/Purchase;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lo/NetBankingInstrumentJsonAdapter;Lo/ListInstrument;Lo/resetOptions;Lo/ViewContainerJsonAdapter;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Lo/newIoExceptionForInBitmapAssertion;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onPostMessage:Landroid/net/Uri;

    .line 325
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    .line 326
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extraCallback:Lo/ListInstrument;

    .line 327
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->ICustomTabsCallback:Lo/resetOptions;

    .line 328
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    .line 329
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 330
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->ICustomTabsCallback$Stub:Z

    .line 331
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onTransact:Z

    .line 332
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->asInterface:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lo/NetBankingInstrumentJsonAdapter;Lo/ListInstrument;Lo/resetOptions;Lo/ViewContainerJsonAdapter;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$2;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lo/NetBankingInstrumentJsonAdapter;Lo/ListInstrument;Lo/resetOptions;Lo/ViewContainerJsonAdapter;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onMessageChannelReady()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    .locals 0

    .line 371
    check-cast p1, Lo/PayCallResponse;

    invoke-virtual {p1}, Lo/PayCallResponse;->asInterface()V

    return-void
.end method

.method public final extraCallback(Lo/InitPayloadJsonAdapter;)V
    .locals 2

    .line 343
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->asBinder:Lo/InitPayloadJsonAdapter;

    const/4 p1, 0x0

    .line 344
    invoke-virtual {p0, p1}, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onPostMessage:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->ICustomTabsCallback(Landroid/net/Uri;Lo/Account$extraCallback;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->ICustomTabsCallback()V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;
    .locals 11

    .line 355
    invoke-virtual {p0, p1}, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;

    move-result-object v6

    .line 356
    new-instance p1, Lo/PayCallResponse;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extraCallback:Lo/ListInstrument;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onNavigationEvent:Lo/NetBankingInstrumentJsonAdapter;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->asBinder:Lo/InitPayloadJsonAdapter;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->ICustomTabsCallback:Lo/resetOptions;

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->ICustomTabsCallback$Stub:Z

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onTransact:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v10}, Lo/PayCallResponse;-><init>(Lo/ListInstrument;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lo/NetBankingInstrumentJsonAdapter;Lo/InitPayloadJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/Account$extraCallback;Lo/PaymentRequest;Lo/resetOptions;ZZ)V

    return-object p1
.end method

.method public final onNavigationEvent(Lo/SessionCallResponseJsonAdapter;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 382
    iget-boolean v2, v1, Lo/SessionCallResponseJsonAdapter;->asInterface:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    invoke-static {v5, v6}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 386
    :goto_0
    iget v2, v1, Lo/SessionCallResponseJsonAdapter;->onPostMessage:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    iget v2, v1, Lo/SessionCallResponseJsonAdapter;->onPostMessage:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 391
    :goto_2
    iget-wide v12, v1, Lo/SessionCallResponseJsonAdapter;->extraCallback:J

    .line 392
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 393
    iget-wide v14, v1, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 394
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage()J

    move-result-wide v18

    sub-long v18, v14, v18

    .line 395
    iget-boolean v2, v1, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz v2, :cond_3

    iget-wide v14, v1, Lo/SessionCallResponseJsonAdapter;->newSession:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 397
    :goto_3
    iget-object v2, v1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    cmp-long v5, v12, v3

    if-nez v5, :cond_5

    .line 399
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 400
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    iget-wide v2, v2, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    move-wide/from16 v16, v2

    :goto_4
    move-wide/from16 v2, v16

    goto :goto_5

    :cond_5
    move-wide v2, v12

    .line 402
    :goto_5
    new-instance v4, Lo/CredUpiInstrument;

    iget-wide v12, v1, Lo/SessionCallResponseJsonAdapter;->newSession:J

    const/16 v20, 0x1

    iget-boolean v5, v1, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    xor-int/lit8 v21, v5, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->asInterface:Ljava/lang/Object;

    move-object v7, v4

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v2

    move-object/from16 v22, v5

    invoke-direct/range {v7 .. v22}, Lo/CredUpiInstrument;-><init>(JJJJJJZZLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    cmp-long v2, v12, v3

    if-nez v2, :cond_7

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v12

    .line 417
    :goto_6
    new-instance v4, Lo/CredUpiInstrument;

    iget-wide v12, v1, Lo/SessionCallResponseJsonAdapter;->newSession:J

    iget-wide v14, v1, Lo/SessionCallResponseJsonAdapter;->newSession:J

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->asInterface:Ljava/lang/Object;

    move-object v7, v4

    move-object/from16 v22, v2

    invoke-direct/range {v7 .. v22}, Lo/CredUpiInstrument;-><init>(JJJJJJZZLjava/lang/Object;)V

    .line 429
    :goto_7
    new-instance v2, Lo/PayCallRequestJsonAdapter;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->onRelationshipValidationResult:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->extraCallback()Lo/ShortCircuitInfo;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lo/PayCallRequestJsonAdapter;-><init>(Lo/ShortCircuitInfo;Lo/SessionCallResponseJsonAdapter;)V

    invoke-virtual {v0, v4, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->ICustomTabsCallback(Lo/t;Ljava/lang/Object;)V

    return-void
.end method
