.class public final Lo/EligibilityPayload$Card;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EligibilityPayload$Card$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/ResultJsonAdapter;

.field private final ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService$Stub:J

.field private asBinder:Lo/ResultJsonAdapter;

.field private final asInterface:Z

.field private final extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private extraCommand:Lo/JustPaySafePayloadJsonAdapter;

.field private getInterfaceDescriptor:Landroid/net/Uri;

.field private mayLaunchUrl:J

.field private newSession:Z

.field private final onMessageChannelReady:Lo/ResultJsonAdapter;

.field private final onNavigationEvent:Lo/ResultJsonAdapter;

.field private final onPostMessage:Lo/InstrumentAttributeUpdateRequest;

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Lo/EligibilityPayload$Card$extraCallback;

.field private postMessage:J

.field private requestPostMessageChannel:Z

.field private updateVisuals:Ljava/lang/String;

.field private warmup:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/ResultJsonAdapter;Lo/ResultJsonAdapter;Lo/PaymentSliderJsonAdapter;ILo/EligibilityPayload$Card$extraCallback;Lo/InstrumentAttributeUpdateRequest;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 235
    iput-object p3, p0, Lo/EligibilityPayload$Card;->onMessageChannelReady:Lo/ResultJsonAdapter;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    sget-object p7, Lo/ViesPayPayload;->onPostMessage:Lo/InstrumentAttributeUpdateRequest;

    :goto_0
    iput-object p7, p0, Lo/EligibilityPayload$Card;->onPostMessage:Lo/InstrumentAttributeUpdateRequest;

    and-int/lit8 p1, p5, 0x1

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 238
    :goto_1
    iput-boolean p1, p0, Lo/EligibilityPayload$Card;->onRelationshipValidationResult:Z

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 239
    :goto_2
    iput-boolean p1, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub:Z

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    .line 240
    :cond_3
    iput-boolean p3, p0, Lo/EligibilityPayload$Card;->asInterface:Z

    .line 242
    iput-object p2, p0, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    if-eqz p4, :cond_4

    .line 244
    new-instance p1, Lo/EligibilityPayload_CardJsonAdapter;

    invoke-direct {p1, p2, p4}, Lo/EligibilityPayload_CardJsonAdapter;-><init>(Lo/ResultJsonAdapter;Lo/PaymentSliderJsonAdapter;)V

    iput-object p1, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback:Lo/ResultJsonAdapter;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback:Lo/ResultJsonAdapter;

    .line 248
    :goto_3
    iput-object p6, p0, Lo/EligibilityPayload$Card;->onTransact:Lo/EligibilityPayload$Card$extraCallback;

    return-void
.end method

.method private static ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 486
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Ljava/lang/String;)Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;

    move-result-object p0

    invoke-static {p0}, Lo/CredPaymentUiBuilder$PollingStrategy;->extraCallback(Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private ICustomTabsCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 477
    iput-wide v0, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    .line 478
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Lo/VisaPayloadWrapper;

    invoke-direct {v0}, Lo/VisaPayloadWrapper;-><init>()V

    .line 480
    iget-wide v1, p0, Lo/EligibilityPayload$Card;->postMessage:J

    invoke-static {v0, v1, v2}, Lo/VisaPayloadWrapper;->onMessageChannelReady(Lo/VisaPayloadWrapper;J)Lo/VisaPayloadWrapper;

    .line 481
    iget-object v1, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Ljava/lang/String;Lo/VisaPayloadWrapper;)V

    :cond_0
    return-void
.end method

.method private ICustomTabsCallback(Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 377
    iget-boolean v0, v1, Lo/EligibilityPayload$Card;->ICustomTabsService$Stub$Proxy:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 379
    :cond_0
    iget-boolean v0, v1, Lo/EligibilityPayload$Card;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_1

    .line 381
    :try_start_0
    iget-object v0, v1, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    iget-wide v4, v1, Lo/EligibilityPayload$Card;->postMessage:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->onPostMessage(Ljava/lang/String;J)Lo/JustPaySafePayloadJsonAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 383
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 384
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 387
    :cond_1
    iget-object v0, v1, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    iget-wide v4, v1, Lo/EligibilityPayload$Card;->postMessage:J

    invoke-interface {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->onMessageChannelReady(Ljava/lang/String;J)Lo/JustPaySafePayloadJsonAdapter;

    move-result-object v0

    :goto_0
    const-wide/16 v3, -0x1

    if-nez v0, :cond_2

    .line 395
    iget-object v5, v1, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    .line 396
    new-instance v18, Lo/PaymentRequestJsonAdapter;

    iget-object v7, v1, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    iget v8, v1, Lo/EligibilityPayload$Card;->ICustomTabsService:I

    const/4 v9, 0x0

    iget-wide v12, v1, Lo/EligibilityPayload$Card;->postMessage:J

    iget-wide v14, v1, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    iget-object v10, v1, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    iget v11, v1, Lo/EligibilityPayload$Card;->warmup:I

    move-object/from16 v6, v18

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-wide v10, v12

    invoke-direct/range {v6 .. v17}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    :goto_1
    move-object v6, v5

    move-object v5, v0

    move-object/from16 v0, v18

    goto/16 :goto_3

    .line 399
    :cond_2
    iget-boolean v5, v0, Lo/JustPaySafePayloadJsonAdapter;->onMessageChannelReady:Z

    if-eqz v5, :cond_4

    .line 401
    iget-object v5, v0, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 402
    iget-wide v5, v1, Lo/EligibilityPayload$Card;->postMessage:J

    iget-wide v8, v0, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    sub-long v10, v5, v8

    .line 403
    iget-wide v5, v0, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    sub-long/2addr v5, v10

    .line 404
    iget-wide v8, v1, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    cmp-long v12, v8, v3

    if-eqz v12, :cond_3

    .line 405
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_3
    move-wide v12, v5

    .line 407
    new-instance v18, Lo/PaymentRequestJsonAdapter;

    iget-wide v8, v1, Lo/EligibilityPayload$Card;->postMessage:J

    iget-object v14, v1, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    iget v15, v1, Lo/EligibilityPayload$Card;->warmup:I

    move-object/from16 v6, v18

    invoke-direct/range {v6 .. v15}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 408
    iget-object v5, v1, Lo/EligibilityPayload$Card;->onMessageChannelReady:Lo/ResultJsonAdapter;

    goto :goto_1

    .line 412
    :cond_4
    invoke-virtual {v0}, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 413
    iget-wide v5, v1, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    goto :goto_2

    .line 415
    :cond_5
    iget-wide v5, v0, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    .line 416
    iget-wide v7, v1, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_6

    .line 417
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_6
    :goto_2
    move-wide v15, v5

    .line 420
    new-instance v5, Lo/PaymentRequestJsonAdapter;

    iget-object v8, v1, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    iget v9, v1, Lo/EligibilityPayload$Card;->ICustomTabsService:I

    const/4 v10, 0x0

    iget-wide v13, v1, Lo/EligibilityPayload$Card;->postMessage:J

    iget-object v6, v1, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    iget v11, v1, Lo/EligibilityPayload$Card;->warmup:I

    move-object v7, v5

    move/from16 v18, v11

    move-wide v11, v13

    move-object/from16 v17, v6

    invoke-direct/range {v7 .. v18}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    .line 422
    iget-object v6, v1, Lo/EligibilityPayload$Card;->ICustomTabsCallback:Lo/ResultJsonAdapter;

    if-eqz v6, :cond_7

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v0, v19

    goto :goto_3

    .line 425
    :cond_7
    iget-object v6, v1, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    .line 426
    iget-object v7, v1, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v7, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Lo/JustPaySafePayloadJsonAdapter;)V

    move-object v0, v5

    move-object v5, v2

    .line 431
    :goto_3
    iget-boolean v7, v1, Lo/EligibilityPayload$Card;->ICustomTabsService$Stub$Proxy:Z

    if-nez v7, :cond_8

    iget-object v7, v1, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    if-ne v6, v7, :cond_8

    iget-wide v7, v1, Lo/EligibilityPayload$Card;->postMessage:J

    const-wide/32 v9, 0x19000

    add-long/2addr v7, v9

    goto :goto_4

    :cond_8
    const-wide v7, 0x7fffffffffffffffL

    :goto_4
    iput-wide v7, v1, Lo/EligibilityPayload$Card;->ICustomTabsService$Stub:J

    if-eqz p1, :cond_b

    .line 436
    invoke-direct/range {p0 .. p0}, Lo/EligibilityPayload$Card;->asBinder()Z

    move-result v7

    invoke-static {v7}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 437
    iget-object v7, v1, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    if-ne v6, v7, :cond_9

    return-void

    .line 443
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lo/EligibilityPayload$Card;->asInterface()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 445
    invoke-virtual {v5}, Lo/JustPaySafePayloadJsonAdapter;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 447
    iget-object v0, v1, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Lo/JustPaySafePayloadJsonAdapter;)V

    .line 449
    :cond_a
    throw v2

    :cond_b
    :goto_5
    if-eqz v5, :cond_c

    .line 453
    invoke-virtual {v5}, Lo/JustPaySafePayloadJsonAdapter;->extraCallback()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 454
    iput-object v5, v1, Lo/EligibilityPayload$Card;->extraCommand:Lo/JustPaySafePayloadJsonAdapter;

    .line 456
    :cond_c
    iput-object v6, v1, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    .line 457
    iget-wide v7, v0, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const/4 v5, 0x1

    cmp-long v9, v7, v3

    if-nez v9, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    iput-boolean v7, v1, Lo/EligibilityPayload$Card;->newSession:Z

    .line 458
    invoke-interface {v6, v0}, Lo/ResultJsonAdapter;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J

    move-result-wide v6

    .line 461
    new-instance v0, Lo/VisaPayloadWrapper;

    invoke-direct {v0}, Lo/VisaPayloadWrapper;-><init>()V

    .line 462
    iget-boolean v8, v1, Lo/EligibilityPayload$Card;->newSession:Z

    if-eqz v8, :cond_e

    cmp-long v8, v6, v3

    if-eqz v8, :cond_e

    .line 463
    iput-wide v6, v1, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    .line 464
    iget-wide v3, v1, Lo/EligibilityPayload$Card;->postMessage:J

    add-long/2addr v3, v6

    invoke-static {v0, v3, v4}, Lo/VisaPayloadWrapper;->onMessageChannelReady(Lo/VisaPayloadWrapper;J)Lo/VisaPayloadWrapper;

    .line 466
    :cond_e
    invoke-direct/range {p0 .. p0}, Lo/EligibilityPayload$Card;->onNavigationEvent()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 467
    iget-object v3, v1, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    invoke-interface {v3}, Lo/ResultJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lo/EligibilityPayload$Card;->getInterfaceDescriptor:Landroid/net/Uri;

    .line 468
    iget-object v4, v1, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_f

    .line 469
    iget-object v2, v1, Lo/EligibilityPayload$Card;->getInterfaceDescriptor:Landroid/net/Uri;

    :cond_f
    invoke-static {v0, v2}, Lo/VisaPayloadWrapper;->ICustomTabsCallback(Lo/VisaPayloadWrapper;Landroid/net/Uri;)Lo/VisaPayloadWrapper;

    .line 471
    :cond_10
    invoke-direct/range {p0 .. p0}, Lo/EligibilityPayload$Card;->onTransact()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 472
    iget-object v2, v1, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Ljava/lang/String;Lo/VisaPayloadWrapper;)V

    :cond_11
    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 7

    .line 545
    iget-object v0, p0, Lo/EligibilityPayload$Card;->onTransact:Lo/EligibilityPayload$Card$extraCallback;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lo/EligibilityPayload$Card;->IPostMessageService$Stub:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 546
    iget-object v1, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback()J

    move-result-wide v1

    iget-wide v5, p0, Lo/EligibilityPayload$Card;->IPostMessageService$Stub:J

    invoke-interface {v0, v1, v2, v5, v6}, Lo/EligibilityPayload$Card$extraCallback;->onMessageChannelReady(JJ)V

    .line 547
    iput-wide v3, p0, Lo/EligibilityPayload$Card;->IPostMessageService$Stub:J

    :cond_0
    return-void
.end method

.method private asBinder()Z
    .locals 2

    .line 495
    iget-object v0, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    iget-object v1, p0, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private asInterface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 511
    :try_start_0
    invoke-interface {v0}, Lo/ResultJsonAdapter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iput-object v2, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    .line 514
    iput-boolean v1, p0, Lo/EligibilityPayload$Card;->newSession:Z

    .line 515
    iget-object v0, p0, Lo/EligibilityPayload$Card;->extraCommand:Lo/JustPaySafePayloadJsonAdapter;

    if-eqz v0, :cond_1

    .line 516
    iget-object v1, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Lo/JustPaySafePayloadJsonAdapter;)V

    .line 517
    iput-object v2, p0, Lo/EligibilityPayload$Card;->extraCommand:Lo/JustPaySafePayloadJsonAdapter;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 513
    iput-object v2, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    .line 514
    iput-boolean v1, p0, Lo/EligibilityPayload$Card;->newSession:Z

    .line 515
    iget-object v1, p0, Lo/EligibilityPayload$Card;->extraCommand:Lo/JustPaySafePayloadJsonAdapter;

    if-eqz v1, :cond_2

    .line 516
    iget-object v3, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Lo/JustPaySafePayloadJsonAdapter;)V

    .line 517
    iput-object v2, p0, Lo/EligibilityPayload$Card;->extraCommand:Lo/JustPaySafePayloadJsonAdapter;

    .line 519
    :cond_2
    throw v0
.end method

.method private extraCallback(Lo/PaymentRequestJsonAdapter;)I
    .locals 4

    .line 529
    iget-boolean v0, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/EligibilityPayload$Card;->requestPostMessageChannel:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 531
    :cond_0
    iget-boolean v0, p0, Lo/EligibilityPayload$Card;->asInterface:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 523
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->onRelationshipValidationResult()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lo/EligibilityPayload$Card;->requestPostMessageChannel:Z

    :cond_1
    return-void
.end method

.method private onNavigationEvent()Z
    .locals 1

    .line 491
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->onRelationshipValidationResult()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onPostMessage(I)V
    .locals 1

    .line 539
    iget-object v0, p0, Lo/EligibilityPayload$Card;->onTransact:Lo/EligibilityPayload$Card$extraCallback;

    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v0, p1}, Lo/EligibilityPayload$Card$extraCallback;->onNavigationEvent(I)V

    :cond_0
    return-void
.end method

.method private onRelationshipValidationResult()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    iget-object v1, p0, Lo/EligibilityPayload$Card;->onMessageChannelReady:Lo/ResultJsonAdapter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onTransact()Z
    .locals 2

    .line 503
    iget-object v0, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    iget-object v1, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback:Lo/ResultJsonAdapter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    :try_start_0
    iget-object v0, p0, Lo/EligibilityPayload$Card;->onPostMessage:Lo/InstrumentAttributeUpdateRequest;

    invoke-interface {v0, p1}, Lo/InstrumentAttributeUpdateRequest;->onPostMessage(Lo/PaymentRequestJsonAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    .line 261
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    iput-object v0, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    .line 262
    iget-object v1, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lo/EligibilityPayload$Card;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lo/EligibilityPayload$Card;->getInterfaceDescriptor:Landroid/net/Uri;

    .line 263
    iget v0, p1, Lo/PaymentRequestJsonAdapter;->ICustomTabsCallback:I

    iput v0, p0, Lo/EligibilityPayload$Card;->ICustomTabsService:I

    .line 264
    iget v0, p1, Lo/PaymentRequestJsonAdapter;->asInterface:I

    iput v0, p0, Lo/EligibilityPayload$Card;->warmup:I

    .line 265
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    iput-wide v0, p0, Lo/EligibilityPayload$Card;->postMessage:J

    .line 267
    invoke-direct {p0, p1}, Lo/EligibilityPayload$Card;->extraCallback(Lo/PaymentRequestJsonAdapter;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    iput-boolean v1, p0, Lo/EligibilityPayload$Card;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v1, :cond_1

    .line 270
    invoke-direct {p0, v0}, Lo/EligibilityPayload$Card;->onPostMessage(I)V

    .line 273
    :cond_1
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    iget-boolean v0, p0, Lo/EligibilityPayload$Card;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 276
    :cond_2
    iget-object v0, p0, Lo/EligibilityPayload$Card;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lo/EligibilityPayload$Card;->updateVisuals:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->extraCallback(Ljava/lang/String;)Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-static {v0}, Lo/CredPaymentUiBuilder$PollingStrategy;->onNavigationEvent(Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    .line 278
    iget-wide v3, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_3

    goto :goto_2

    .line 280
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 274
    :cond_4
    :goto_1
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    iput-wide v0, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    .line 284
    :cond_5
    :goto_2
    invoke-direct {p0, v2}, Lo/EligibilityPayload$Card;->ICustomTabsCallback(Z)V

    .line 285
    iget-wide v0, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 287
    invoke-direct {p0, p1}, Lo/EligibilityPayload$Card;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 288
    throw p1
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 336
    iget-object v0, p0, Lo/EligibilityPayload$Card;->getInterfaceDescriptor:Landroid/net/Uri;

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 297
    :cond_0
    iget-wide v1, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    return v5

    .line 301
    :cond_1
    :try_start_0
    iget-wide v1, p0, Lo/EligibilityPayload$Card;->postMessage:J

    iget-wide v6, p0, Lo/EligibilityPayload$Card;->ICustomTabsService$Stub:J

    cmp-long v8, v1, v6

    if-ltz v8, :cond_2

    const/4 v1, 0x1

    .line 302
    invoke-direct {p0, v1}, Lo/EligibilityPayload$Card;->ICustomTabsCallback(Z)V

    .line 304
    :cond_2
    iget-object v1, p0, Lo/EligibilityPayload$Card;->asBinder:Lo/ResultJsonAdapter;

    invoke-interface {v1, p1, p2, p3}, Lo/ResultJsonAdapter;->onMessageChannelReady([BII)I

    move-result v1

    const-wide/16 v6, -0x1

    if-eq v1, v5, :cond_4

    .line 306
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->onRelationshipValidationResult()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 307
    iget-wide p1, p0, Lo/EligibilityPayload$Card;->IPostMessageService$Stub:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lo/EligibilityPayload$Card;->IPostMessageService$Stub:J

    .line 309
    :cond_3
    iget-wide p1, p0, Lo/EligibilityPayload$Card;->postMessage:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lo/EligibilityPayload$Card;->postMessage:J

    .line 310
    iget-wide p1, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    cmp-long p3, p1, v6

    if-eqz p3, :cond_6

    .line 311
    iget-wide p1, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    goto :goto_0

    .line 313
    :cond_4
    iget-boolean v2, p0, Lo/EligibilityPayload$Card;->newSession:Z

    if-eqz v2, :cond_5

    .line 314
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->ICustomTabsCallback()V

    goto :goto_0

    .line 315
    :cond_5
    iget-wide v8, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    cmp-long v2, v8, v3

    if-gtz v2, :cond_7

    iget-wide v2, p0, Lo/EligibilityPayload$Card;->mayLaunchUrl:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return v1

    .line 316
    :cond_7
    :goto_1
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->asInterface()V

    .line 317
    invoke-direct {p0, v0}, Lo/EligibilityPayload$Card;->ICustomTabsCallback(Z)V

    .line 318
    invoke-virtual {p0, p1, p2, p3}, Lo/EligibilityPayload$Card;->onMessageChannelReady([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 329
    invoke-direct {p0, p1}, Lo/EligibilityPayload$Card;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 330
    throw p1

    :catch_0
    move-exception p1

    .line 322
    iget-boolean p2, p0, Lo/EligibilityPayload$Card;->newSession:Z

    if-eqz p2, :cond_8

    invoke-static {p1}, Lo/ViesPayPayload;->onPostMessage(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 323
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->ICustomTabsCallback()V

    return v5

    .line 326
    :cond_8
    invoke-direct {p0, p1}, Lo/EligibilityPayload$Card;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 327
    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub$Proxy:Landroid/net/Uri;

    .line 350
    iput-object v0, p0, Lo/EligibilityPayload$Card;->getInterfaceDescriptor:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 351
    iput v0, p0, Lo/EligibilityPayload$Card;->ICustomTabsService:I

    .line 352
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->ICustomTabsCallback$Stub()V

    .line 354
    :try_start_0
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->asInterface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 356
    invoke-direct {p0, v0}, Lo/EligibilityPayload$Card;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 357
    throw v0
.end method

.method public final onNavigationEvent(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lo/EligibilityPayload$Card;->onMessageChannelReady:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    .line 254
    iget-object v0, p0, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lo/EligibilityPayload$Card;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/EligibilityPayload$Card;->onNavigationEvent:Lo/ResultJsonAdapter;

    .line 343
    invoke-interface {v0}, Lo/ResultJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
