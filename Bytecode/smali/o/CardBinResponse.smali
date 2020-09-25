.class public Lo/CardBinResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CryptLib;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CardBinResponse$ICustomTabsCallback;,
        Lo/CardBinResponse$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/PaymentRequest;

.field private ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:Z

.field private asBinder:Z

.field private asInterface:Lo/CardBinResponse$ICustomTabsCallback;

.field private final extraCallback:Lo/CardBinRequestJsonAdapter;

.field private getInterfaceDescriptor:J

.field private newSession:Lo/p$a;

.field private final onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

.field private final onNavigationEvent:I

.field private final onPostMessage:Lo/DreamAppGlideModule;

.field private onRelationshipValidationResult:Lo/p$a;

.field private onTransact:Lo/CardBinResponse$ICustomTabsCallback;

.field private warmup:Lo/CardBinResponse$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/PaymentRequest;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback:Lo/PaymentRequest;

    .line 81
    invoke-interface {p1}, Lo/PaymentRequest;->extraCallback()I

    move-result p1

    iput p1, p0, Lo/CardBinResponse;->onNavigationEvent:I

    .line 82
    new-instance p1, Lo/CardBinRequestJsonAdapter;

    invoke-direct {p1}, Lo/CardBinRequestJsonAdapter;-><init>()V

    iput-object p1, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    .line 83
    new-instance p1, Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    invoke-direct {p1}, Lo/CardBinRequestJsonAdapter$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/CardBinResponse;->onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    .line 84
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    .line 85
    new-instance p1, Lo/CardBinResponse$ICustomTabsCallback;

    iget v0, p0, Lo/CardBinResponse;->onNavigationEvent:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lo/CardBinResponse$ICustomTabsCallback;-><init>(JI)V

    iput-object p1, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    .line 86
    iput-object p1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    .line 87
    iput-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    return-void
.end method

.method private ICustomTabsCallback(I)I
    .locals 6

    .line 640
    iget-object v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-boolean v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->extraCallback:Z

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v1, p0, Lo/CardBinResponse;->ICustomTabsCallback:Lo/PaymentRequest;

    invoke-interface {v1}, Lo/PaymentRequest;->onMessageChannelReady()Lo/PaymentJsonAdapter;

    move-result-object v1

    new-instance v2, Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v3, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v3, v3, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    iget v5, p0, Lo/CardBinResponse;->onNavigationEvent:I

    invoke-direct {v2, v3, v4, v5}, Lo/CardBinResponse$ICustomTabsCallback;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lo/CardBinResponse$ICustomTabsCallback;->extraCallback(Lo/PaymentJsonAdapter;Lo/CardBinResponse$ICustomTabsCallback;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    iget-wide v2, p0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private ICustomTabsCallback(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 451
    invoke-direct {p0, p1, p2}, Lo/CardBinResponse;->extraCallback(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 454
    iget-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 455
    iget-object v1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    .line 456
    iget-object v1, v1, Lo/PaymentJsonAdapter;->onMessageChannelReady:[B

    iget-object v2, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    invoke-virtual {v2, p1, p2}, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 459
    iget-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 460
    iget-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    iput-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extraCallback(J)V
    .locals 3

    .line 494
    :goto_0
    iget-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 495
    iget-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    iput-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMessageChannelReady(J[BI)V
    .locals 5

    .line 473
    invoke-direct {p0, p1, p2}, Lo/CardBinResponse;->extraCallback(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 476
    iget-object v1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 477
    iget-object v2, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v2, v2, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    .line 478
    iget-object v2, v2, Lo/PaymentJsonAdapter;->onMessageChannelReady:[B

    iget-object v3, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    invoke-virtual {v3, p1, p2}, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 482
    iget-object v1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 483
    iget-object v1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    iput-object v1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(Lo/CardBinResponse$ICustomTabsCallback;)V
    .locals 5

    .line 614
    iget-boolean v0, p1, Lo/CardBinResponse$ICustomTabsCallback;->extraCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-boolean v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->extraCallback:Z

    iget-object v1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->onMessageChannelReady:J

    iget-wide v3, p1, Lo/CardBinResponse$ICustomTabsCallback;->onMessageChannelReady:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iget v1, p0, Lo/CardBinResponse;->onNavigationEvent:I

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 622
    new-array v1, v0, [Lo/PaymentJsonAdapter;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 625
    iget-object v3, p1, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    aput-object v3, v1, v2

    .line 626
    invoke-virtual {p1}, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback()Lo/CardBinResponse$ICustomTabsCallback;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 628
    :cond_1
    iget-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback:Lo/PaymentRequest;

    invoke-interface {p1, v1}, Lo/PaymentRequest;->ICustomTabsCallback([Lo/PaymentJsonAdapter;)V

    return-void
.end method

.method private onMessageChannelReady(Lo/setReferrerCustomerId;Lo/CardBinRequestJsonAdapter$onNavigationEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 379
    iget-wide v3, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onPostMessage:J

    .line 382
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 383
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lo/CardBinResponse;->onMessageChannelReady(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 385
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 390
    iget-object v9, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    iget-object v9, v9, Lo/setDeeplinkPath;->extraCallback:[B

    if-nez v9, :cond_1

    .line 391
    iget-object v9, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lo/setDeeplinkPath;->extraCallback:[B

    .line 393
    :cond_1
    iget-object v9, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    iget-object v9, v9, Lo/setDeeplinkPath;->extraCallback:[B

    invoke-direct {v0, v3, v4, v9, v5}, Lo/CardBinResponse;->onMessageChannelReady(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_2

    .line 399
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 400
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lo/CardBinResponse;->onMessageChannelReady(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 402
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v6

    move v10, v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    .line 408
    :goto_1
    iget-object v5, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    iget-object v5, v5, Lo/setDeeplinkPath;->onPostMessage:[I

    if-eqz v5, :cond_3

    .line 409
    array-length v6, v5

    if-ge v6, v10, :cond_4

    .line 410
    :cond_3
    new-array v5, v10, [I

    :cond_4
    move-object v11, v5

    .line 412
    iget-object v5, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    iget-object v5, v5, Lo/setDeeplinkPath;->ICustomTabsCallback:[I

    if-eqz v5, :cond_5

    .line 413
    array-length v6, v5

    if-ge v6, v10, :cond_6

    .line 414
    :cond_5
    new-array v5, v10, [I

    :cond_6
    move-object v12, v5

    if-eqz v8, :cond_7

    mul-int/lit8 v5, v10, 0x6

    .line 418
    iget-object v6, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v6, v5}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 419
    iget-object v6, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v6, v6, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lo/CardBinResponse;->onMessageChannelReady(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 421
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v5, v7}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    :goto_2
    if-ge v7, v10, :cond_8

    .line 423
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v5

    aput v5, v11, v7

    .line 424
    iget-object v5, v0, Lo/CardBinResponse;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v5}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 427
    :cond_7
    aput v7, v11, v7

    .line 428
    iget v5, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    iget-wide v8, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onPostMessage:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    .line 432
    :cond_8
    iget-object v5, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onMessageChannelReady:Lo/CryptLib$extraCallback;

    .line 433
    iget-object v9, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    iget-object v13, v5, Lo/CryptLib$extraCallback;->extraCallback:[B

    iget-object v1, v1, Lo/setReferrerCustomerId;->ICustomTabsCallback:Lo/setDeeplinkPath;

    iget-object v14, v1, Lo/setDeeplinkPath;->extraCallback:[B

    iget v15, v5, Lo/CryptLib$extraCallback;->onNavigationEvent:I

    iget v1, v5, Lo/CryptLib$extraCallback;->onPostMessage:I

    iget v5, v5, Lo/CryptLib$extraCallback;->ICustomTabsCallback:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lo/setDeeplinkPath;->onNavigationEvent(I[I[I[B[BIII)V

    .line 438
    iget-wide v5, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onPostMessage:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 439
    iget-wide v3, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onPostMessage:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onPostMessage:J

    .line 440
    iget v3, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    sub-int/2addr v3, v1

    iput v3, v2, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method

.method private static onNavigationEvent(Lo/p$a;J)Lo/p$a;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 670
    iget-wide v0, p0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 671
    iget-wide v0, p0, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lo/p$a;->onPostMessage(J)Lo/p$a;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private onNavigationEvent(I)V
    .locals 4

    .line 653
    iget-wide v0, p0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    .line 654
    iget-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v2, p1, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 655
    iget-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object p1, p1, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    iput-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    :cond_0
    return-void
.end method

.method private onPostMessage(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 513
    iget-object v0, p0, Lo/CardBinResponse;->ICustomTabsCallback:Lo/PaymentRequest;

    iget-object v1, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    invoke-interface {v0, v1}, Lo/PaymentRequest;->extraCallback(Lo/PaymentJsonAdapter;)V

    .line 514
    iget-object v0, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback()Lo/CardBinResponse$ICustomTabsCallback;

    move-result-object v0

    iput-object v0, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    goto :goto_0

    .line 518
    :cond_1
    iget-object p1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide p1, p1, Lo/CardBinResponse$ICustomTabsCallback;->onMessageChannelReady:J

    iget-object v0, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->onMessageChannelReady:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 519
    iget-object p1, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    iput-object p1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    :cond_2
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()I
    .locals 1

    .line 203
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->onMessageChannelReady()I

    move-result v0

    return v0
.end method

.method public ICustomTabsCallback(JZZ)I
    .locals 1

    .line 300
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/CardBinRequestJsonAdapter;->extraCallback(JZZ)I

    move-result p1

    return p1
.end method

.method public ICustomTabsCallback(Lo/CardBinResponse$onMessageChannelReady;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lo/CardBinResponse;->warmup:Lo/CardBinResponse$onMessageChannelReady;

    return-void
.end method

.method public ICustomTabsCallback$Stub()I
    .locals 1

    .line 283
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->onRelationshipValidationResult()I

    move-result v0

    return v0
.end method

.method public asInterface()V
    .locals 2

    .line 274
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/CardBinResponse;->onPostMessage(J)V

    return-void
.end method

.method public extraCallback(Lo/q;Lo/setReferrerCustomerId;ZZJ)I
    .locals 7

    .line 339
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    iget-object v5, p0, Lo/CardBinResponse;->onRelationshipValidationResult:Lo/p$a;

    iget-object v6, p0, Lo/CardBinResponse;->onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lo/CardBinRequestJsonAdapter;->onMessageChannelReady(Lo/q;Lo/setReferrerCustomerId;ZZLo/p$a;Lo/CardBinRequestJsonAdapter$onNavigationEvent;)I

    move-result p3

    const/4 p4, -0x5

    if-eq p3, p4, :cond_5

    const/4 p1, -0x4

    if-eq p3, p1, :cond_1

    const/4 p1, -0x3

    if-ne p3, p1, :cond_0

    return p1

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 346
    :cond_1
    invoke-virtual {p2}, Lo/getChannel;->r_()Z

    move-result p3

    if-nez p3, :cond_4

    .line 347
    iget-wide p3, p2, Lo/setReferrerCustomerId;->onPostMessage:J

    cmp-long v0, p3, p5

    if-gez v0, :cond_2

    const/high16 p3, -0x80000000

    .line 348
    invoke-virtual {p2, p3}, Lo/getChannel;->extraCallback(I)V

    .line 350
    :cond_2
    invoke-virtual {p2}, Lo/setReferrerCustomerId;->onRelationshipValidationResult()Z

    move-result p3

    if-nez p3, :cond_4

    .line 352
    invoke-virtual {p2}, Lo/setReferrerCustomerId;->onTransact()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 353
    iget-object p3, p0, Lo/CardBinResponse;->onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    invoke-direct {p0, p2, p3}, Lo/CardBinResponse;->onMessageChannelReady(Lo/setReferrerCustomerId;Lo/CardBinRequestJsonAdapter$onNavigationEvent;)V

    .line 356
    :cond_3
    iget-object p3, p0, Lo/CardBinResponse;->onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    iget p3, p3, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    invoke-virtual {p2, p3}, Lo/setReferrerCustomerId;->onPostMessage(I)V

    .line 357
    iget-object p3, p0, Lo/CardBinResponse;->onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    iget-wide p3, p3, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onPostMessage:J

    iget-object p2, p2, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    iget-object p5, p0, Lo/CardBinResponse;->onMessageChannelReady:Lo/CardBinRequestJsonAdapter$onNavigationEvent;

    iget p5, p5, Lo/CardBinRequestJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    invoke-direct {p0, p3, p4, p2, p5}, Lo/CardBinResponse;->ICustomTabsCallback(JLjava/nio/ByteBuffer;I)V

    :cond_4
    return p1

    .line 343
    :cond_5
    iget-object p1, p1, Lo/q;->onMessageChannelReady:Lo/p$a;

    iput-object p1, p0, Lo/CardBinResponse;->onRelationshipValidationResult:Lo/p$a;

    return p4
.end method

.method public extraCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lo/CardBinResponse;->ICustomTabsService:Z

    return-void
.end method

.method public extraCallback(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0, p1}, Lo/CardBinRequestJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method

.method public extraCallback(Lo/DreamAppGlideModule;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 577
    invoke-direct {p0, p2}, Lo/CardBinResponse;->ICustomTabsCallback(I)I

    move-result v0

    .line 578
    iget-object v1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v1, v1, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    iget-object v1, v1, Lo/PaymentJsonAdapter;->onMessageChannelReady:[B

    iget-object v2, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v3, p0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    .line 579
    invoke-virtual {v2, v3, v4}, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage(J)I

    move-result v2

    .line 578
    invoke-virtual {p1, v1, v2, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    sub-int/2addr p2, v0

    .line 581
    invoke-direct {p0, v0}, Lo/CardBinResponse;->onNavigationEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageChannelReady()I
    .locals 1

    .line 193
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->extraCallback()I

    move-result v0

    return v0
.end method

.method public onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V
    .locals 11

    move-object v0, p0

    .line 592
    iget-boolean v1, v0, Lo/CardBinResponse;->asBinder:Z

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, v0, Lo/CardBinResponse;->newSession:Lo/p$a;

    invoke-virtual {p0, v1}, Lo/CardBinResponse;->onPostMessage(Lo/p$a;)V

    .line 595
    :cond_0
    iget-wide v1, v0, Lo/CardBinResponse;->ICustomTabsCallback$Stub$Proxy:J

    add-long v4, p1, v1

    .line 596
    iget-boolean v1, v0, Lo/CardBinResponse;->ICustomTabsService:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 597
    iget-object v1, v0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v1, v4, v5}, Lo/CardBinRequestJsonAdapter;->extraCallback(J)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 600
    iput-boolean v1, v0, Lo/CardBinResponse;->ICustomTabsService:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    :goto_1
    iget-wide v1, v0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    move v9, p4

    int-to-long v6, v9

    sub-long/2addr v1, v6

    move/from16 v3, p5

    int-to-long v6, v3

    sub-long v7, v1, v6

    .line 603
    iget-object v3, v0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    move v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lo/CardBinRequestJsonAdapter;->extraCallback(JIJILo/CryptLib$extraCallback;)V

    return-void
.end method

.method public onNavigationEvent(Lo/Event$Action;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 561
    invoke-direct {p0, p2}, Lo/CardBinResponse;->ICustomTabsCallback(I)I

    move-result p2

    .line 562
    iget-object v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-object v0, v0, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    iget-object v0, v0, Lo/PaymentJsonAdapter;->onMessageChannelReady:[B

    iget-object v1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    iget-wide v2, p0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    .line 563
    invoke-virtual {v1, v2, v3}, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage(J)I

    move-result v1

    .line 562
    invoke-interface {p1, v0, v1, p2}, Lo/Event$Action;->ICustomTabsCallback([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 568
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 570
    :cond_1
    invoke-direct {p0, p1}, Lo/CardBinResponse;->onNavigationEvent(I)V

    return p1
.end method

.method public onNavigationEvent(J)V
    .locals 3

    .line 541
    iget-wide v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub$Proxy:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 542
    iput-wide p1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub$Proxy:J

    const/4 p1, 0x1

    .line 543
    iput-boolean p1, p0, Lo/CardBinResponse;->asBinder:Z

    :cond_0
    return-void
.end method

.method public onNavigationEvent(JZZ)V
    .locals 1

    .line 260
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/CardBinRequestJsonAdapter;->onMessageChannelReady(JZZ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lo/CardBinResponse;->onPostMessage(J)V

    return-void
.end method

.method public onNavigationEvent()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public onPostMessage()Lo/p$a;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->onNavigationEvent()Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(Lo/p$a;)V
    .locals 2

    .line 549
    iget-wide v0, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub$Proxy:J

    invoke-static {p1, v0, v1}, Lo/CardBinResponse;->onNavigationEvent(Lo/p$a;J)Lo/p$a;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v1, v0}, Lo/CardBinRequestJsonAdapter;->onNavigationEvent(Lo/p$a;)Z

    move-result v1

    .line 551
    iput-object p1, p0, Lo/CardBinResponse;->newSession:Lo/p$a;

    const/4 p1, 0x0

    .line 552
    iput-boolean p1, p0, Lo/CardBinResponse;->asBinder:Z

    .line 553
    iget-object p1, p0, Lo/CardBinResponse;->warmup:Lo/CardBinResponse$onMessageChannelReady;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 554
    invoke-interface {p1, v0}, Lo/CardBinResponse$onMessageChannelReady;->onMessageChannelReady(Lo/p$a;)V

    :cond_0
    return-void
.end method

.method public onPostMessage(Z)V
    .locals 3

    .line 108
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0, p1}, Lo/CardBinRequestJsonAdapter;->ICustomTabsCallback(Z)V

    .line 109
    iget-object p1, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    invoke-direct {p0, p1}, Lo/CardBinResponse;->onMessageChannelReady(Lo/CardBinResponse$ICustomTabsCallback;)V

    .line 110
    new-instance p1, Lo/CardBinResponse$ICustomTabsCallback;

    iget v0, p0, Lo/CardBinResponse;->onNavigationEvent:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lo/CardBinResponse$ICustomTabsCallback;-><init>(JI)V

    iput-object p1, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    .line 111
    iput-object p1, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    .line 112
    iput-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback$Stub:Lo/CardBinResponse$ICustomTabsCallback;

    .line 113
    iput-wide v1, p0, Lo/CardBinResponse;->getInterfaceDescriptor:J

    .line 114
    iget-object p1, p0, Lo/CardBinResponse;->ICustomTabsCallback:Lo/PaymentRequest;

    invoke-interface {p1}, Lo/PaymentRequest;->onPostMessage()V

    return-void
.end method

.method public onRelationshipValidationResult()V
    .locals 1

    .line 245
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->onTransact()V

    .line 246
    iget-object v0, p0, Lo/CardBinResponse;->onTransact:Lo/CardBinResponse$ICustomTabsCallback;

    iput-object v0, p0, Lo/CardBinResponse;->asInterface:Lo/CardBinResponse$ICustomTabsCallback;

    return-void
.end method

.method public onTransact()J
    .locals 2

    .line 224
    iget-object v0, p0, Lo/CardBinResponse;->extraCallback:Lo/CardBinRequestJsonAdapter;

    invoke-virtual {v0}, Lo/CardBinRequestJsonAdapter;->asInterface()J

    move-result-wide v0

    return-wide v0
.end method
