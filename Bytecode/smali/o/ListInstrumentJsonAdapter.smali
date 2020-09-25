.class Lo/ListInstrumentJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ListInstrumentJsonAdapter$onPostMessage;,
        Lo/ListInstrumentJsonAdapter$ICustomTabsCallback;,
        Lo/ListInstrumentJsonAdapter$onNavigationEvent;,
        Lo/ListInstrumentJsonAdapter$onMessageChannelReady;,
        Lo/ListInstrumentJsonAdapter$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ResultJsonAdapter;

.field private final ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Ljava/io/IOException;

.field private final asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final asInterface:Lo/getJuspayUpi;

.field private final extraCallback:Lo/ResultJsonAdapter;

.field private getInterfaceDescriptor:Landroid/net/Uri;

.field private newSession:[B

.field private final onMessageChannelReady:Lo/PaymentMethod;

.field private final onNavigationEvent:Lo/ListInstrument;

.field private final onPostMessage:[Landroid/net/Uri;

.field private final onRelationshipValidationResult:[Lo/p$a;

.field private final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Lo/InstrumentView;

.field private requestPostMessageChannel:Z

.field private updateVisuals:J

.field private warmup:Z


# direct methods
.method public constructor <init>(Lo/ListInstrument;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lo/p$a;Lo/NetBankingInstrumentJsonAdapter;Lo/InitPayloadJsonAdapter;Lo/PaymentMethod;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListInstrument;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Lo/p$a;",
            "Lo/NetBankingInstrumentJsonAdapter;",
            "Lo/InitPayloadJsonAdapter;",
            "Lo/PaymentMethod;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lo/ListInstrumentJsonAdapter;->onNavigationEvent:Lo/ListInstrument;

    .line 143
    iput-object p2, p0, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 144
    iput-object p3, p0, Lo/ListInstrumentJsonAdapter;->onPostMessage:[Landroid/net/Uri;

    .line 145
    iput-object p4, p0, Lo/ListInstrumentJsonAdapter;->onRelationshipValidationResult:[Lo/p$a;

    .line 146
    iput-object p7, p0, Lo/ListInstrumentJsonAdapter;->onMessageChannelReady:Lo/PaymentMethod;

    .line 147
    iput-object p8, p0, Lo/ListInstrumentJsonAdapter;->onTransact:Ljava/util/List;

    .line 148
    new-instance p1, Lo/ListInstrumentJsonAdapter$onPostMessage;

    invoke-direct {p1}, Lo/ListInstrumentJsonAdapter$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 149
    iput-wide p1, p0, Lo/ListInstrumentJsonAdapter;->updateVisuals:J

    const/4 p1, 0x1

    .line 150
    invoke-interface {p5, p1}, Lo/NetBankingInstrumentJsonAdapter;->ICustomTabsCallback(I)Lo/ResultJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/ListInstrumentJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    if-eqz p6, :cond_0

    .line 152
    invoke-interface {p1, p6}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    :cond_0
    const/4 p1, 0x3

    .line 154
    invoke-interface {p5, p1}, Lo/NetBankingInstrumentJsonAdapter;->ICustomTabsCallback(I)Lo/ResultJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback:Lo/ResultJsonAdapter;

    .line 155
    new-instance p1, Lo/getJuspayUpi;

    invoke-direct {p1, p4}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    iput-object p1, p0, Lo/ListInstrumentJsonAdapter;->asInterface:Lo/getJuspayUpi;

    .line 156
    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 157
    :goto_0
    array-length p4, p3

    if-ge p2, p4, :cond_1

    .line 158
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    new-instance p2, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;

    iget-object p3, p0, Lo/ListInstrumentJsonAdapter;->asInterface:Lo/getJuspayUpi;

    invoke-direct {p2, p3, p1}, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;-><init>(Lo/getJuspayUpi;[I)V

    iput-object p2, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_1

    .line 517
    iget-object v0, p1, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-object p0, p0, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    iget-object p1, p1, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    invoke-static {p0, p1}, Lo/ThirdPartyAuthorizeRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onMessageChannelReady(J)J
    .locals 5

    .line 480
    iget-wide v0, p0, Lo/ListInstrumentJsonAdapter;->updateVisuals:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 481
    iget-wide v0, p0, Lo/ListInstrumentJsonAdapter;->updateVisuals:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method private onNavigationEvent(Lo/OrderStatusResponseJsonAdapter;ZLo/SessionCallResponseJsonAdapter;JJ)J
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p1}, Lo/getMerchantId;->ICustomTabsCallback()J

    move-result-wide p1

    return-wide p1

    .line 459
    :cond_1
    :goto_0
    iget-wide v0, p3, Lo/SessionCallResponseJsonAdapter;->newSession:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_3

    .line 460
    iget-boolean p2, p0, Lo/ListInstrumentJsonAdapter;->warmup:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p6, p1, Lo/component3;->asInterface:J

    .line 462
    :cond_3
    :goto_1
    iget-boolean p2, p3, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-nez p2, :cond_4

    cmp-long p2, p6, v0

    if-ltz p2, :cond_4

    .line 464
    iget-wide p1, p3, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    iget-object p3, p3, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_2
    add-long/2addr p1, p3

    return-wide p1

    :cond_4
    sub-long/2addr p6, p4

    .line 467
    iget-object p2, p3, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    .line 469
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 471
    invoke-interface {p5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onNavigationEvent()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 467
    :goto_4
    invoke-static {p2, p4, p6, p1}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    goto :goto_2
.end method

.method private onNavigationEvent(Landroid/net/Uri;I)Lo/component3;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 498
    :cond_0
    iget-object v1, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object p2, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, p1, v1}, Lo/ListInstrumentJsonAdapter$onPostMessage;->onPostMessage(Landroid/net/Uri;[B)[B

    return-object v0

    .line 505
    :cond_1
    new-instance v0, Lo/PaymentRequestJsonAdapter;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 506
    new-instance p1, Lo/ListInstrumentJsonAdapter$onNavigationEvent;

    iget-object v3, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback:Lo/ResultJsonAdapter;

    iget-object v1, p0, Lo/ListInstrumentJsonAdapter;->onRelationshipValidationResult:[Lo/p$a;

    aget-object v5, v1, p2

    iget-object p2, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    .line 510
    invoke-interface {p2}, Lo/InstrumentView;->onMessageChannelReady()I

    move-result v6

    iget-object p2, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    .line 511
    invoke-interface {p2}, Lo/InstrumentView;->extraCallback()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lo/ListInstrumentJsonAdapter;->newSession:[B

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lo/ListInstrumentJsonAdapter$onNavigationEvent;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Lo/p$a;ILjava/lang/Object;[B)V

    return-object p1
.end method

.method private onPostMessage(Lo/SessionCallResponseJsonAdapter;)V
    .locals 4

    .line 487
    iget-boolean v0, p1, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p1}, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady()J

    move-result-wide v0

    iget-object p1, p0, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lo/ListInstrumentJsonAdapter;->updateVisuals:J

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsService:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->extraCallback(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 171
    :cond_1
    throw v0
.end method

.method public ICustomTabsCallback(JJLjava/util/List;Lo/ListInstrumentJsonAdapter$extraCallback;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lo/OrderStatusResponseJsonAdapter;",
            ">;",
            "Lo/ListInstrumentJsonAdapter$extraCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    .line 234
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    move-object/from16 v1, p5

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OrderStatusResponseJsonAdapter;

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_1

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->asInterface:Lo/getJuspayUpi;

    iget-object v2, v4, Lo/component3;->extraCallback:Lo/p$a;

    invoke-virtual {v0, v2}, Lo/getJuspayUpi;->onMessageChannelReady(Lo/p$a;)I

    move-result v0

    move v5, v0

    :goto_1
    sub-long v2, v6, p1

    .line 237
    invoke-direct/range {p0 .. p2}, Lo/ListInstrumentJsonAdapter;->onMessageChannelReady(J)J

    move-result-wide v12

    if-eqz v4, :cond_2

    .line 238
    iget-boolean v0, v8, Lo/ListInstrumentJsonAdapter;->warmup:Z

    if-nez v0, :cond_2

    .line 245
    invoke-virtual {v4}, Lo/component3;->onPostMessage()J

    move-result-wide v14

    sub-long/2addr v2, v14

    const-wide/16 v10, 0x0

    .line 246
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v16

    if-eqz v0, :cond_2

    sub-long/2addr v12, v14

    .line 248
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v15, v2

    move-wide/from16 v17, v10

    goto :goto_2

    :cond_2
    move-wide v15, v2

    move-wide/from16 v17, v12

    .line 253
    :goto_2
    invoke-virtual {v8, v4, v6, v7}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Lo/OrderStatusResponseJsonAdapter;J)[Lo/component2;

    move-result-object v20

    .line 254
    iget-object v12, v8, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    move-wide/from16 v13, p1

    move-object/from16 v19, p5

    invoke-interface/range {v12 .. v20}, Lo/InstrumentView;->extraCallback(JJJLjava/util/List;[Lo/component2;)V

    .line 256
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    invoke-interface {v0}, Lo/InstrumentView;->onTransact()I

    move-result v10

    const/4 v11, 0x0

    if-eq v5, v10, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 259
    :goto_3
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->onPostMessage:[Landroid/net/Uri;

    aget-object v13, v0, v10

    .line 260
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v13}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 261
    iput-object v13, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    .line 262
    iget-boolean v0, v8, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    iget-object v1, v8, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    .line 263
    iput-object v13, v8, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    return-void

    .line 267
    :cond_4
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    const/4 v1, 0x1

    .line 268
    invoke-interface {v0, v13, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->extraCallback(Landroid/net/Uri;Z)Lo/SessionCallResponseJsonAdapter;

    move-result-object v14

    .line 269
    iget-boolean v0, v14, Lo/ShortCircuitInfoJsonAdapter;->updateVisuals:Z

    iput-boolean v0, v8, Lo/ListInstrumentJsonAdapter;->warmup:Z

    .line 271
    invoke-direct {v8, v14}, Lo/ListInstrumentJsonAdapter;->onPostMessage(Lo/SessionCallResponseJsonAdapter;)V

    .line 274
    iget-wide v0, v14, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-object v2, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 275
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage()J

    move-result-wide v2

    sub-long v15, v0, v2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move-object v3, v14

    move-object/from16 v25, v4

    move/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v6, p3

    .line 277
    invoke-direct/range {v0 .. v7}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Lo/OrderStatusResponseJsonAdapter;ZLo/SessionCallResponseJsonAdapter;JJ)J

    move-result-wide v0

    .line 279
    iget-wide v2, v14, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    if-eqz v25, :cond_5

    if-eqz v12, :cond_5

    .line 283
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->onPostMessage:[Landroid/net/Uri;

    aget-object v0, v0, v17

    .line 284
    iget-object v1, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    const/4 v2, 0x1

    .line 285
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->extraCallback(Landroid/net/Uri;Z)Lo/SessionCallResponseJsonAdapter;

    move-result-object v1

    .line 286
    iget-wide v2, v1, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-object v4, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 287
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 288
    invoke-virtual/range {v25 .. v25}, Lo/getMerchantId;->ICustomTabsCallback()J

    move-result-wide v4

    move-wide v15, v2

    move-object v3, v0

    move-object v2, v1

    move-wide v0, v4

    move/from16 v5, v17

    goto :goto_4

    :cond_5
    move v5, v10

    move-object v3, v13

    move-object v2, v14

    .line 291
    :goto_4
    iget-wide v6, v2, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    .line 292
    new-instance v0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v8, Lo/ListInstrumentJsonAdapter;->ICustomTabsService:Ljava/io/IOException;

    return-void

    .line 296
    :cond_6
    iget-wide v6, v2, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    sub-long/2addr v0, v6

    long-to-int v1, v0

    .line 297
    iget-object v0, v2, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    .line 298
    iget-boolean v0, v2, Lo/SessionCallResponseJsonAdapter;->onTransact:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->onMessageChannelReady:Z

    return-void

    .line 301
    :cond_7
    iput-object v3, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    .line 302
    iget-boolean v0, v8, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    iget-object v1, v8, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    .line 303
    iput-object v3, v8, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    return-void

    .line 308
    :cond_8
    iput-boolean v11, v8, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    const/4 v0, 0x0

    .line 309
    iput-object v0, v8, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    .line 312
    iget-object v0, v2, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    .line 315
    iget-object v4, v0, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    invoke-static {v2, v4}, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;)Landroid/net/Uri;

    move-result-object v4

    .line 316
    invoke-direct {v8, v4, v5}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Landroid/net/Uri;I)Lo/component3;

    move-result-object v6

    iput-object v6, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    .line 317
    iget-object v6, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    if-eqz v6, :cond_9

    return-void

    .line 320
    :cond_9
    invoke-static {v2, v0}, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback(Lo/SessionCallResponseJsonAdapter;Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;)Landroid/net/Uri;

    move-result-object v0

    .line 321
    invoke-direct {v8, v0, v5}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Landroid/net/Uri;I)Lo/component3;

    move-result-object v6

    iput-object v6, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    .line 322
    iget-object v6, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    if-eqz v6, :cond_a

    return-void

    .line 326
    :cond_a
    iget-object v12, v8, Lo/ListInstrumentJsonAdapter;->onNavigationEvent:Lo/ListInstrument;

    iget-object v13, v8, Lo/ListInstrumentJsonAdapter;->extraCallback:Lo/ResultJsonAdapter;

    iget-object v6, v8, Lo/ListInstrumentJsonAdapter;->onRelationshipValidationResult:[Lo/p$a;

    aget-object v14, v6, v5

    iget-object v5, v8, Lo/ListInstrumentJsonAdapter;->onTransact:Ljava/util/List;

    iget-object v6, v8, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    .line 336
    invoke-interface {v6}, Lo/InstrumentView;->onMessageChannelReady()I

    move-result v21

    iget-object v6, v8, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    .line 337
    invoke-interface {v6}, Lo/InstrumentView;->extraCallback()Ljava/lang/Object;

    move-result-object v22

    iget-boolean v6, v8, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    iget-object v7, v8, Lo/ListInstrumentJsonAdapter;->onMessageChannelReady:Lo/PaymentMethod;

    iget-object v10, v8, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

    .line 341
    invoke-virtual {v10, v0}, Lo/ListInstrumentJsonAdapter$onPostMessage;->extraCallback(Ljava/lang/Object;)[B

    move-result-object v26

    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

    .line 342
    invoke-virtual {v0, v4}, Lo/ListInstrumentJsonAdapter$onPostMessage;->extraCallback(Ljava/lang/Object;)[B

    move-result-object v27

    move-object/from16 v17, v2

    move/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    .line 327
    invoke-static/range {v12 .. v27}, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsCallback(Lo/ListInstrument;Lo/ResultJsonAdapter;Lo/p$a;JLo/SessionCallResponseJsonAdapter;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLo/PaymentMethod;Lo/OrderStatusResponseJsonAdapter;[B[B)Lo/OrderStatusResponseJsonAdapter;

    move-result-object v0

    iput-object v0, v9, Lo/ListInstrumentJsonAdapter$extraCallback;->extraCallback:Lo/component3;

    return-void
.end method

.method public extraCallback()Lo/InstrumentView;
    .locals 1

    .line 196
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    return-object v0
.end method

.method public onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsService:Ljava/io/IOException;

    return-void
.end method

.method public onNavigationEvent()Lo/getJuspayUpi;
    .locals 1

    .line 182
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter;->asInterface:Lo/getJuspayUpi;

    return-object v0
.end method

.method public onNavigationEvent(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public onNavigationEvent(Lo/OrderStatusResponseJsonAdapter;J)[Lo/component2;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->asInterface:Lo/getJuspayUpi;

    iget-object v1, v9, Lo/component3;->extraCallback:Lo/p$a;

    invoke-virtual {v0, v1}, Lo/getJuspayUpi;->onMessageChannelReady(Lo/p$a;)I

    move-result v0

    move v10, v0

    .line 411
    :goto_0
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    invoke-interface {v0}, Lo/InstrumentView;->onRelationshipValidationResult()I

    move-result v11

    new-array v12, v11, [Lo/component2;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_4

    .line 413
    iget-object v0, v8, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    invoke-interface {v0, v14}, Lo/InstrumentView;->extraCallback(I)I

    move-result v0

    .line 414
    iget-object v1, v8, Lo/ListInstrumentJsonAdapter;->onPostMessage:[Landroid/net/Uri;

    aget-object v1, v1, v0

    .line 415
    iget-object v2, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    sget-object v0, Lo/component2;->extraCallback:Lo/component2;

    aput-object v0, v12, v14

    goto :goto_3

    .line 419
    :cond_1
    iget-object v2, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 420
    invoke-interface {v2, v1, v13}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->extraCallback(Landroid/net/Uri;Z)Lo/SessionCallResponseJsonAdapter;

    move-result-object v15

    .line 421
    iget-wide v1, v15, Lo/SessionCallResponseJsonAdapter;->onMessageChannelReady:J

    iget-object v3, v8, Lo/ListInstrumentJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 422
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage()J

    move-result-wide v3

    sub-long v6, v1, v3

    if-eq v0, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, p2

    .line 425
    invoke-direct/range {v0 .. v7}, Lo/ListInstrumentJsonAdapter;->onNavigationEvent(Lo/OrderStatusResponseJsonAdapter;ZLo/SessionCallResponseJsonAdapter;JJ)J

    move-result-wide v0

    .line 427
    iget-wide v2, v15, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 428
    sget-object v0, Lo/component2;->extraCallback:Lo/component2;

    aput-object v0, v12, v14

    goto :goto_3

    .line 431
    :cond_3
    iget-wide v2, v15, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 432
    new-instance v0, Lo/ListInstrumentJsonAdapter$ICustomTabsCallback;

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v2, v3, v1}, Lo/ListInstrumentJsonAdapter$ICustomTabsCallback;-><init>(Lo/SessionCallResponseJsonAdapter;JI)V

    aput-object v0, v12, v14

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v12
.end method

.method public onPostMessage(Lo/InstrumentView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    return-void
.end method

.method public onPostMessage(Lo/component3;)V
    .locals 2

    .line 352
    instance-of v0, p1, Lo/ListInstrumentJsonAdapter$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Lo/ListInstrumentJsonAdapter$onNavigationEvent;

    .line 354
    invoke-virtual {p1}, Lo/getMerchantChannelId;->ICustomTabsCallback()[B

    move-result-object v0

    iput-object v0, p0, Lo/ListInstrumentJsonAdapter;->newSession:[B

    .line 355
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter;->ICustomTabsCallback$Stub:Lo/ListInstrumentJsonAdapter$onPostMessage;

    iget-object v1, p1, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    iget-object v1, v1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {p1}, Lo/ListInstrumentJsonAdapter$onNavigationEvent;->asBinder()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/ListInstrumentJsonAdapter$onPostMessage;->onPostMessage(Landroid/net/Uri;[B)[B

    :cond_0
    return-void
.end method

.method public onPostMessage(Landroid/net/Uri;J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 383
    :goto_0
    iget-object v2, p0, Lo/ListInstrumentJsonAdapter;->onPostMessage:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    .line 384
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x1

    if-ne v1, v4, :cond_2

    return v2

    .line 392
    :cond_2
    iget-object v3, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    invoke-interface {v3, v1}, Lo/InstrumentView;->onPostMessage(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    return v2

    .line 396
    :cond_3
    iget-boolean v3, p0, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    iget-object v4, p0, Lo/ListInstrumentJsonAdapter;->getInterfaceDescriptor:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Lo/ListInstrumentJsonAdapter;->requestPostMessageChannel:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    .line 397
    iget-object p1, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    .line 398
    invoke-interface {p1, v1, p2, p3}, Lo/InstrumentView;->ICustomTabsCallback(IJ)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v2
.end method

.method public onPostMessage(Lo/component3;J)Z
    .locals 2

    .line 369
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter;->postMessage:Lo/InstrumentView;

    iget-object v1, p0, Lo/ListInstrumentJsonAdapter;->asInterface:Lo/getJuspayUpi;

    iget-object p1, p1, Lo/component3;->extraCallback:Lo/p$a;

    .line 370
    invoke-virtual {v1, p1}, Lo/getJuspayUpi;->onMessageChannelReady(Lo/p$a;)I

    move-result p1

    invoke-interface {v0, p1}, Lo/InstrumentView;->onPostMessage(I)I

    move-result p1

    .line 369
    invoke-interface {v0, p1, p2, p3}, Lo/InstrumentView;->ICustomTabsCallback(IJ)Z

    move-result p1

    return p1
.end method
