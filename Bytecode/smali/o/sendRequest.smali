.class public final Lo/sendRequest;
.super Ljava/lang/Object;
.source ""


# static fields
.field static ICustomTabsCallback:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 44
    sput-object v0, Lo/sendRequest;->ICustomTabsCallback:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extraCallback(Lo/addSubscription;Lo/isPlayable;Lo/removeSubscription;)V
    .locals 7

    .line 57
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p2, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, v1

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onNavigationEvent:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v2, :cond_1

    .line 60
    iget-object v0, p2, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    .line 1773
    iget v2, p0, Lo/removeSubscription;->getExtras:I

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 1776
    :cond_0
    iget v2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 61
    :goto_0
    iget-object v5, p2, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    sub-int/2addr v2, v5

    .line 68
    iget-object v5, p2, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, p2, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v6}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v6

    iput-object v6, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 69
    iget-object v5, p2, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, p2, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v6}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v6

    iput-object v6, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 70
    iget-object v5, p2, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v5, v0}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    .line 71
    iget-object v5, p2, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, v5, v2}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    .line 72
    iput v3, p2, Lo/removeSubscription;->extraCallback:I

    .line 74
    invoke-virtual {p2, v0, v2}, Lo/removeSubscription;->extraCallback(II)V

    .line 76
    :cond_1
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v0, v5, :cond_5

    iget-object v0, p2, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, v2

    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onNavigationEvent:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v2, :cond_5

    .line 79
    iget-object v0, p2, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    .line 1830
    iget v2, p0, Lo/removeSubscription;->getExtras:I

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 1833
    :cond_2
    iget v1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 80
    :goto_1
    iget-object p0, p2, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget p0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    sub-int/2addr v1, p0

    .line 87
    iget-object p0, p2, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p2, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    iput-object v2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 88
    iget-object p0, p2, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p2, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    iput-object v2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 89
    iget-object p0, p2, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object p0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, p0, v0}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    .line 90
    iget-object p0, p2, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object p0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    invoke-virtual {p1, p0, v1}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    .line 91
    iget p0, p2, Lo/removeSubscription;->connect:I

    if-gtz p0, :cond_3

    .line 2643
    iget p0, p2, Lo/removeSubscription;->getExtras:I

    if-ne p0, v4, :cond_4

    .line 92
    :cond_3
    iget-object p0, p2, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p2, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    iput-object v2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 93
    iget-object p0, p2, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object p0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    iget v2, p2, Lo/removeSubscription;->connect:I

    add-int/2addr v2, v0

    invoke-virtual {p1, p0, v2}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    .line 95
    :cond_4
    iput v3, p2, Lo/removeSubscription;->onPostMessage:I

    .line 97
    invoke-virtual {p2, v0, v1}, Lo/removeSubscription;->onNavigationEvent(II)V

    :cond_5
    return-void
.end method

.method static extraCallback(Lo/isPlayable;IILo/MediaBrowserCompat$SearchResultReceiver;)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 383
    iget-object v3, v2, Lo/MediaBrowserCompat$SearchResultReceiver;->onNavigationEvent:Lo/removeSubscription;

    .line 384
    iget-object v4, v2, Lo/MediaBrowserCompat$SearchResultReceiver;->extraCallback:Lo/removeSubscription;

    .line 385
    iget-object v5, v2, Lo/MediaBrowserCompat$SearchResultReceiver;->onPostMessage:Lo/removeSubscription;

    .line 386
    iget-object v6, v2, Lo/MediaBrowserCompat$SearchResultReceiver;->onMessageChannelReady:Lo/removeSubscription;

    .line 387
    iget-object v7, v2, Lo/MediaBrowserCompat$SearchResultReceiver;->ICustomTabsCallback:Lo/removeSubscription;

    .line 394
    iget v2, v2, Lo/MediaBrowserCompat$SearchResultReceiver;->onTransact:F

    .line 398
    sget-object v8, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v1, :cond_3

    .line 404
    iget v11, v7, Lo/removeSubscription;->getItem:I

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 405
    :goto_0
    iget v12, v7, Lo/removeSubscription;->getItem:I

    if-ne v12, v9, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 406
    :goto_1
    iget v7, v7, Lo/removeSubscription;->getItem:I

    if-ne v7, v8, :cond_2

    :goto_2
    const/4 v7, 0x1

    goto :goto_5

    :cond_2
    const/4 v7, 0x0

    goto :goto_5

    .line 408
    :cond_3
    iget v11, v7, Lo/removeSubscription;->subscribe:I

    if-nez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 409
    :goto_3
    iget v12, v7, Lo/removeSubscription;->subscribe:I

    if-ne v12, v9, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 410
    :goto_4
    iget v7, v7, Lo/removeSubscription;->subscribe:I

    if-ne v7, v8, :cond_2

    goto :goto_2

    :goto_5
    move-object v14, v3

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6
    const/16 v8, 0x8

    if-nez v13, :cond_16

    .line 50391
    iget v10, v14, Lo/removeSubscription;->getExtras:I

    if-eq v10, v8, :cond_b

    add-int/lit8 v15, v15, 0x1

    if-nez v1, :cond_7

    .line 50392
    iget v10, v14, Lo/removeSubscription;->getExtras:I

    if-ne v10, v8, :cond_6

    goto :goto_7

    .line 50395
    :cond_6
    iget v10, v14, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_8

    .line 50396
    :cond_7
    iget v10, v14, Lo/removeSubscription;->getExtras:I

    if-ne v10, v8, :cond_8

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    .line 50399
    :cond_8
    iget v10, v14, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_8
    int-to-float v10, v10

    add-float v16, v16, v10

    if-eq v14, v5, :cond_9

    .line 431
    iget-object v10, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v10, v10, p2

    invoke-virtual {v10}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v10

    int-to-float v10, v10

    add-float v16, v16, v10

    :cond_9
    if-eq v14, v6, :cond_a

    .line 434
    iget-object v10, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v19, p2, 0x1

    aget-object v10, v10, v19

    invoke-virtual {v10}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v10

    int-to-float v10, v10

    add-float v16, v16, v10

    .line 436
    :cond_a
    iget-object v10, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v10, v10, p2

    invoke-virtual {v10}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v10

    int-to-float v10, v10

    add-float v17, v17, v10

    .line 437
    iget-object v10, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v19, p2, 0x1

    aget-object v10, v10, v19

    invoke-virtual {v10}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v10

    int-to-float v10, v10

    add-float v17, v17, v10

    .line 50400
    :cond_b
    iget v10, v14, Lo/removeSubscription;->getExtras:I

    if-eq v10, v8, :cond_12

    .line 442
    iget-object v8, v14, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v8, v8, v1

    sget-object v10, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v8, v10, :cond_12

    add-int/lit8 v9, v9, 0x1

    if-nez v1, :cond_e

    .line 447
    iget v8, v14, Lo/removeSubscription;->asBinder:I

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    return v8

    :cond_c
    const/4 v8, 0x0

    .line 449
    iget v10, v14, Lo/removeSubscription;->asInterface:I

    if-nez v10, :cond_d

    iget v10, v14, Lo/removeSubscription;->getInterfaceDescriptor:I

    if-eqz v10, :cond_10

    :cond_d
    return v8

    :cond_e
    const/4 v8, 0x0

    .line 453
    iget v10, v14, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    if-eqz v10, :cond_f

    return v8

    .line 455
    :cond_f
    iget v10, v14, Lo/removeSubscription;->ICustomTabsService:I

    if-nez v10, :cond_11

    iget v10, v14, Lo/removeSubscription;->newSession:I

    if-eqz v10, :cond_10

    goto :goto_9

    .line 459
    :cond_10
    iget v10, v14, Lo/removeSubscription;->setDefaultImpl:F

    const/16 v18, 0x0

    cmpl-float v10, v10, v18

    if-eqz v10, :cond_12

    :cond_11
    :goto_9
    return v8

    .line 465
    :cond_12
    iget-object v8, v14, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v10, p2, 0x1

    aget-object v8, v8, v10

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v8, :cond_14

    .line 467
    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 468
    iget-object v10, v8, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v10, v10, p2

    iget-object v10, v10, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v10, :cond_14

    iget-object v10, v8, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v10, v10, p2

    iget-object v10, v10, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v10, v10, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    if-eq v10, v14, :cond_13

    goto :goto_a

    :cond_13
    move-object v10, v8

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_15

    move-object v14, v10

    goto/16 :goto_6

    :cond_15
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 481
    :cond_16
    iget-object v10, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v10, v10, p2

    .line 50401
    iget-object v10, v10, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 482
    iget-object v13, v4, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v19, p2, 0x1

    aget-object v13, v13, v19

    .line 50402
    iget-object v13, v13, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 484
    iget-object v8, v10, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-eqz v8, :cond_41

    iget-object v8, v13, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-nez v8, :cond_17

    goto/16 :goto_22

    .line 490
    :cond_17
    iget-object v8, v10, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v8, v8, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-ne v8, v3, :cond_40

    iget-object v8, v13, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v8, v8, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v8, v3, :cond_18

    goto/16 :goto_21

    :cond_18
    if-lez v9, :cond_19

    if-eq v9, v15, :cond_19

    const/4 v3, 0x0

    return v3

    :cond_19
    if-nez v7, :cond_1b

    if-nez v11, :cond_1b

    if-eqz v12, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v3, 0x0

    goto :goto_e

    :cond_1b
    :goto_c
    if-eqz v5, :cond_1c

    .line 504
    iget-object v3, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v3

    int-to-float v3, v3

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    if-eqz v6, :cond_1d

    .line 507
    iget-object v6, v6, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, v19

    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 511
    :cond_1d
    :goto_e
    iget-object v6, v10, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v6, v6, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 512
    iget-object v8, v13, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v8, v8, Lo/isEmpty;->onRelationshipValidationResult:F

    cmpg-float v13, v6, v8

    if-gez v13, :cond_1e

    sub-float/2addr v8, v6

    goto :goto_f

    :cond_1e
    sub-float v8, v6, v8

    :goto_f
    sub-float v8, v8, v16

    const/high16 v13, -0x40800000    # -1.0f

    if-lez v9, :cond_26

    if-ne v9, v15, :cond_26

    .line 50403
    iget-object v3, v14, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v3, :cond_1f

    .line 50404
    iget-object v3, v14, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 521
    iget-object v3, v3, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v3, v3, v1

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v5, :cond_1f

    const/4 v3, 0x0

    return v3

    :cond_1f
    add-float v8, v8, v16

    sub-float v8, v8, v17

    move-object/from16 v3, v20

    :goto_10
    if-eqz v3, :cond_25

    .line 529
    sget-object v5, Lo/isPlayable;->ICustomTabsCallback$Stub:Lo/extraCallback$onNavigationEvent;

    .line 534
    iget-object v5, v3, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v5, v5, v1

    if-nez v5, :cond_20

    if-ne v3, v4, :cond_24

    :cond_20
    int-to-float v7, v9

    div-float v7, v8, v7

    const/4 v11, 0x0

    cmpl-float v12, v2, v11

    if-lez v12, :cond_22

    .line 538
    iget-object v7, v3, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    aget v7, v7, v1

    cmpl-float v7, v7, v13

    if-nez v7, :cond_21

    const/4 v7, 0x0

    goto :goto_11

    .line 541
    :cond_21
    iget-object v7, v3, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    aget v7, v7, v1

    mul-float v7, v7, v8

    div-float/2addr v7, v2

    .line 50405
    :cond_22
    :goto_11
    iget v11, v3, Lo/removeSubscription;->getExtras:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_23

    const/4 v7, 0x0

    .line 547
    :cond_23
    iget-object v11, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v11, v11, p2

    invoke-virtual {v11}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    .line 548
    iget-object v11, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v11, v11, p2

    .line 50406
    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 548
    iget-object v12, v10, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    invoke-virtual {v11, v12, v6}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 550
    iget-object v11, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v11, v11, v19

    .line 50407
    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 550
    iget-object v12, v10, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    add-float/2addr v6, v7

    invoke-virtual {v11, v12, v6}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 552
    iget-object v7, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, p2

    .line 50408
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 552
    invoke-virtual {v7, v0}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 553
    iget-object v7, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v19

    .line 50409
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 553
    invoke-virtual {v7, v0}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 555
    iget-object v3, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_24
    move-object v3, v5

    goto :goto_10

    :cond_25
    const/4 v3, 0x1

    return v3

    :cond_26
    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-gez v2, :cond_27

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_27
    if-eqz v7, :cond_2f

    sub-float/2addr v8, v3

    if-nez v1, :cond_28

    move-object/from16 v2, v20

    .line 50411
    iget v13, v2, Lo/removeSubscription;->getServiceComponent:F

    goto :goto_12

    :cond_28
    move-object/from16 v2, v20

    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    .line 50413
    iget v13, v2, Lo/removeSubscription;->isConnected:F

    :cond_29
    :goto_12
    mul-float v8, v8, v13

    add-float/2addr v6, v8

    :cond_2a
    :goto_13
    move-object v3, v2

    if-eqz v3, :cond_30

    .line 575
    sget-object v2, Lo/isPlayable;->ICustomTabsCallback$Stub:Lo/extraCallback$onNavigationEvent;

    .line 580
    iget-object v2, v3, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v2, v2, v1

    if-nez v2, :cond_2b

    if-ne v3, v4, :cond_2a

    :cond_2b
    if-nez v1, :cond_2d

    .line 50416
    iget v5, v3, Lo/removeSubscription;->getExtras:I

    const/16 v7, 0x8

    if-ne v5, v7, :cond_2c

    goto :goto_14

    .line 50419
    :cond_2c
    iget v8, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_15

    :cond_2d
    const/16 v7, 0x8

    .line 50420
    iget v5, v3, Lo/removeSubscription;->getExtras:I

    if-ne v5, v7, :cond_2e

    :goto_14
    const/4 v8, 0x0

    goto :goto_15

    .line 50423
    :cond_2e
    iget v8, v3, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_15
    int-to-float v5, v8

    .line 588
    iget-object v7, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, p2

    invoke-virtual {v7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 589
    iget-object v7, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, p2

    .line 50424
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 589
    iget-object v8, v10, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    invoke-virtual {v7, v8, v6}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 591
    iget-object v7, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v19

    .line 50425
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 591
    iget-object v8, v10, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    add-float/2addr v6, v5

    invoke-virtual {v7, v8, v6}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 593
    iget-object v5, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v5, v5, p2

    .line 50426
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 593
    invoke-virtual {v5, v0}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 594
    iget-object v5, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v5, v5, v19

    .line 50427
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 594
    invoke-virtual {v5, v0}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 596
    iget-object v3, v3, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    goto :goto_13

    :cond_2f
    move-object/from16 v2, v20

    if-nez v11, :cond_31

    if-eqz v12, :cond_30

    goto :goto_16

    :cond_30
    const/4 v0, 0x1

    goto/16 :goto_20

    :cond_31
    :goto_16
    if-eqz v11, :cond_32

    :goto_17
    sub-float/2addr v8, v3

    goto :goto_18

    :cond_32
    if-eqz v12, :cond_33

    goto :goto_17

    :cond_33
    :goto_18
    add-int/lit8 v3, v15, 0x1

    int-to-float v3, v3

    div-float v3, v8, v3

    if-eqz v12, :cond_35

    const/4 v7, 0x1

    if-le v15, v7, :cond_34

    add-int/lit8 v3, v15, -0x1

    int-to-float v3, v3

    goto :goto_19

    :cond_34
    const/high16 v3, 0x40000000    # 2.0f

    :goto_19
    div-float v3, v8, v3

    .line 50428
    :cond_35
    iget v7, v2, Lo/removeSubscription;->getExtras:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_36

    add-float v7, v6, v3

    goto :goto_1a

    :cond_36
    move v7, v6

    :goto_1a
    if-eqz v12, :cond_37

    const/4 v8, 0x1

    if-le v15, v8, :cond_37

    .line 620
    iget-object v7, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, p2

    invoke-virtual {v7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    :cond_37
    if-eqz v11, :cond_38

    if-eqz v5, :cond_38

    .line 624
    iget-object v6, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    :cond_38
    :goto_1b
    if-eqz v2, :cond_30

    .line 628
    sget-object v6, Lo/isPlayable;->ICustomTabsCallback$Stub:Lo/extraCallback$onNavigationEvent;

    .line 633
    iget-object v6, v2, Lo/removeSubscription;->MediaBrowserCompat$CallbackHandler:[Lo/removeSubscription;

    aget-object v6, v6, v1

    if-nez v6, :cond_3a

    if-ne v2, v4, :cond_39

    goto :goto_1c

    :cond_39
    const/16 v8, 0x8

    goto :goto_1f

    :cond_3a
    :goto_1c
    if-nez v1, :cond_3c

    .line 50429
    iget v8, v2, Lo/removeSubscription;->getExtras:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3b

    goto :goto_1d

    .line 50432
    :cond_3b
    iget v8, v2, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_1e

    :cond_3c
    const/16 v9, 0x8

    .line 50433
    iget v8, v2, Lo/removeSubscription;->getExtras:I

    if-ne v8, v9, :cond_3d

    :goto_1d
    const/4 v8, 0x0

    goto :goto_1e

    .line 50436
    :cond_3d
    iget v8, v2, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_1e
    int-to-float v8, v8

    if-eq v2, v5, :cond_3e

    .line 642
    iget-object v9, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v9, v9, p2

    invoke-virtual {v9}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 644
    :cond_3e
    iget-object v9, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v9, v9, p2

    .line 50437
    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 644
    iget-object v11, v10, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    invoke-virtual {v9, v11, v7}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 646
    iget-object v9, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v9, v9, v19

    .line 50438
    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 646
    iget-object v11, v10, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    add-float v12, v7, v8

    invoke-virtual {v9, v11, v12}, Lo/isEmpty;->ICustomTabsCallback(Lo/isEmpty;F)V

    .line 648
    iget-object v9, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v9, v9, p2

    .line 50439
    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 648
    invoke-virtual {v9, v0}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 649
    iget-object v9, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v9, v9, v19

    .line 50440
    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 649
    invoke-virtual {v9, v0}, Lo/isEmpty;->onNavigationEvent(Lo/isPlayable;)V

    .line 650
    iget-object v2, v2, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    add-float/2addr v7, v8

    if-eqz v6, :cond_39

    .line 50441
    iget v2, v6, Lo/removeSubscription;->getExtras:I

    const/16 v8, 0x8

    if-eq v2, v8, :cond_3f

    add-float/2addr v7, v3

    :cond_3f
    :goto_1f
    move-object v2, v6

    goto :goto_1b

    :goto_20
    return v0

    :cond_40
    :goto_21
    const/4 v0, 0x0

    return v0

    :cond_41
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method static onMessageChannelReady(ILo/removeSubscription;)V
    .locals 16

    move-object/from16 v0, p1

    .line 152
    invoke-virtual/range {p1 .. p1}, Lo/removeSubscription;->asBinder()V

    .line 154
    iget-object v1, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 3058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 155
    iget-object v2, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4058
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 156
    iget-object v3, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5058
    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 157
    iget-object v4, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 6058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 163
    :goto_0
    iget-object v9, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v9, v9, v7

    sget-object v10, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v9, v10, :cond_1

    .line 164
    invoke-static {v0, v7}, Lo/sendRequest;->onMessageChannelReady(Lo/removeSubscription;I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 166
    :goto_1
    iget v10, v1, Lo/isEmpty;->asBinder:I

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, -0x1

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eq v10, v14, :cond_24

    iget v10, v3, Lo/isEmpty;->asBinder:I

    if-eq v10, v14, :cond_24

    .line 168
    iget-object v10, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v10, v10, v7

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v10, v7, :cond_11

    if-eqz v9, :cond_2

    .line 6643
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v9, :cond_24

    .line 34773
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v5, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    .line 34776
    :cond_3
    iget v7, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 35224
    :goto_2
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 36224
    iput v8, v3, Lo/isEmpty;->asBinder:I

    .line 217
    iget-object v9, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v9, :cond_6

    iget-object v9, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 36383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_4

    .line 36384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 36386
    :cond_4
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 37281
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 37282
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 38038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 37283
    iput-object v7, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 37284
    iput v8, v3, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 37285
    iget-object v1, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 39038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 39272
    :cond_5
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v7

    .line 39273
    iput v1, v3, Lo/isEmpty;->asInterface:F

    .line 39274
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 40038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 223
    :cond_6
    iget-object v9, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v9, :cond_9

    iget-object v9, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v9, :cond_9

    if-eqz v6, :cond_8

    .line 40383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_7

    .line 40384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 40386
    :cond_7
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 41281
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 41282
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 42038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 41283
    iput-object v7, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 41284
    iput v8, v3, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 41285
    iget-object v1, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 43038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 43272
    :cond_8
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v7

    .line 43273
    iput v1, v3, Lo/isEmpty;->asInterface:F

    .line 43274
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 44038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 229
    :cond_9
    iget-object v9, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v9, :cond_c

    iget-object v9, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v9, :cond_c

    if-eqz v6, :cond_b

    .line 44383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_a

    .line 44384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 44386
    :cond_a
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 45281
    iput-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 45282
    iget-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 46038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 45283
    iput-object v7, v1, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 45284
    iput v13, v1, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 45285
    iget-object v3, v1, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 47038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_b
    neg-int v7, v7

    .line 47272
    iput-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v3, v7

    .line 47273
    iput v3, v1, Lo/isEmpty;->asInterface:F

    .line 47274
    iget-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 48038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 235
    :cond_c
    iget-object v9, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v9, :cond_24

    iget-object v9, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v9, :cond_24

    if-eqz v6, :cond_f

    .line 48383
    iget-object v9, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v9, :cond_d

    .line 48384
    new-instance v9, Lo/unregisterCallbackMessenger;

    invoke-direct {v9}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v9, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 48386
    :cond_d
    iget-object v9, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 49038
    iget-object v9, v9, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v9, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 49383
    iget-object v9, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v9, :cond_e

    .line 49384
    new-instance v9, Lo/unregisterCallbackMessenger;

    invoke-direct {v9}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v9, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 49386
    :cond_e
    iget-object v9, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50038
    iget-object v9, v9, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_f
    iget v9, v0, Lo/removeSubscription;->setDefaultImpl:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_10

    .line 50040
    iput v12, v1, Lo/isEmpty;->asBinder:I

    .line 50042
    iput v12, v3, Lo/isEmpty;->asBinder:I

    .line 50044
    iput-object v3, v1, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50047
    iput-object v1, v3, Lo/isEmpty;->onTransact:Lo/isEmpty;

    goto/16 :goto_8

    .line 50050
    :cond_10
    iput v15, v1, Lo/isEmpty;->asBinder:I

    .line 50052
    iput v15, v3, Lo/isEmpty;->asBinder:I

    .line 50054
    iput-object v3, v1, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50057
    iput-object v1, v3, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 251
    invoke-virtual {v0, v7}, Lo/removeSubscription;->onNavigationEvent(I)V

    goto/16 :goto_8

    .line 170
    :cond_11
    :goto_3
    iget-object v7, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v7, :cond_15

    iget-object v7, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v7, :cond_15

    .line 7224
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 8224
    iput v8, v3, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_13

    .line 8383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_12

    .line 8384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 8386
    :cond_12
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 9281
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 9282
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 10038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9283
    iput-object v7, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 9284
    iput v8, v3, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 9285
    iget-object v1, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 11038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 11773
    :cond_13
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v5, :cond_14

    const/4 v7, 0x0

    goto :goto_4

    .line 11776
    :cond_14
    iget v7, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 12272
    :goto_4
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v7

    .line 12273
    iput v1, v3, Lo/isEmpty;->asInterface:F

    .line 12274
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 13038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 178
    :cond_15
    iget-object v7, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_19

    iget-object v7, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v7, :cond_19

    .line 13224
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 14224
    iput v8, v3, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_17

    .line 14383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_16

    .line 14384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 14386
    :cond_16
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 15281
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 15282
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 16038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 15283
    iput-object v7, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 15284
    iput v8, v3, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 15285
    iget-object v1, v3, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 17038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 17773
    :cond_17
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v5, :cond_18

    const/4 v7, 0x0

    goto :goto_5

    .line 17776
    :cond_18
    iget v7, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 18272
    :goto_5
    iput-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v7

    .line 18273
    iput v1, v3, Lo/isEmpty;->asInterface:F

    .line 18274
    iget-object v1, v3, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 19038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 186
    :cond_19
    iget-object v7, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v7, :cond_1e

    iget-object v7, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_1e

    .line 19224
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 20224
    iput v8, v3, Lo/isEmpty;->asBinder:I

    .line 20773
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v5, :cond_1a

    const/4 v7, 0x0

    goto :goto_6

    .line 20776
    :cond_1a
    iget v7, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_6
    neg-int v7, v7

    .line 21272
    iput-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v7, v7

    .line 21273
    iput v7, v1, Lo/isEmpty;->asInterface:F

    .line 21274
    iget-object v7, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 22038
    iget-object v7, v7, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_1c

    .line 22383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_1b

    .line 22384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 22386
    :cond_1b
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 23281
    iput-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 23282
    iget-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 24038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 23283
    iput-object v7, v1, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 23284
    iput v13, v1, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 23285
    iget-object v3, v1, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 25038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 25773
    :cond_1c
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v5, :cond_1d

    const/4 v7, 0x0

    goto :goto_7

    .line 25776
    :cond_1d
    iget v7, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_7
    neg-int v7, v7

    .line 26272
    iput-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v3, v7

    .line 26273
    iput v3, v1, Lo/isEmpty;->asInterface:F

    .line 26274
    iget-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 27038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 195
    :cond_1e
    iget-object v7, v0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_24

    iget-object v7, v0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_24

    .line 27224
    iput v15, v1, Lo/isEmpty;->asBinder:I

    .line 28224
    iput v15, v3, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_23

    .line 28383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_1f

    .line 28384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 28386
    :cond_1f
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 29038
    iget-object v7, v7, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 29383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_20

    .line 29384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 29386
    :cond_20
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 30038
    iget-object v7, v7, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_21

    .line 30384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 30386
    :cond_21
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 31298
    iput-object v3, v1, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 31299
    iput-object v7, v1, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    .line 31383
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_22

    .line 31384
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 31386
    :cond_22
    iget-object v7, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 32298
    iput-object v1, v3, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 32299
    iput-object v7, v3, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    goto :goto_8

    .line 33293
    :cond_23
    iput-object v3, v1, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 34293
    iput-object v1, v3, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 259
    :cond_24
    :goto_8
    iget-object v1, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v1, v1, v8

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v1, v3, :cond_25

    .line 260
    invoke-static {v0, v8}, Lo/sendRequest;->onMessageChannelReady(Lo/removeSubscription;I)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_9

    :cond_25
    const/4 v1, 0x0

    .line 262
    :goto_9
    iget v3, v2, Lo/isEmpty;->asBinder:I

    if-eq v3, v14, :cond_47

    iget v3, v4, Lo/isEmpty;->asBinder:I

    if-eq v3, v14, :cond_47

    .line 265
    iget-object v3, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v3, v3, v8

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v3, v7, :cond_35

    if-eqz v1, :cond_26

    .line 50060
    iget v3, v0, Lo/removeSubscription;->getExtras:I

    if-ne v3, v5, :cond_26

    goto/16 :goto_b

    :cond_26
    if-eqz v1, :cond_47

    .line 50259
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v5, :cond_27

    const/4 v7, 0x0

    goto :goto_a

    .line 50262
    :cond_27
    iget v7, v0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 50263
    :goto_a
    iput v8, v2, Lo/isEmpty;->asBinder:I

    .line 50265
    iput v8, v4, Lo/isEmpty;->asBinder:I

    .line 326
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_2a

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_2a

    if-eqz v6, :cond_29

    .line 50267
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_28

    .line 50268
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50270
    :cond_28
    iget-object v0, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50271
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50272
    iget-object v1, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50281
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50273
    iput-object v0, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50274
    iput v8, v4, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 50275
    iget-object v0, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50283
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 50285
    :cond_29
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v7

    .line 50286
    iput v0, v4, Lo/isEmpty;->asInterface:F

    .line 50287
    iget-object v0, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50292
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 332
    :cond_2a
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_2d

    if-eqz v6, :cond_2c

    .line 50294
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_2b

    .line 50295
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50297
    :cond_2b
    iget-object v0, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50298
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50299
    iget-object v1, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50308
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50300
    iput-object v0, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50301
    iput v8, v4, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 50302
    iget-object v0, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50310
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 50312
    :cond_2c
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v7

    .line 50313
    iput v0, v4, Lo/isEmpty;->asInterface:F

    .line 50314
    iget-object v0, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50319
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 338
    :cond_2d
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_30

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_30

    if-eqz v6, :cond_2f

    .line 50321
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_2e

    .line 50322
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50324
    :cond_2e
    iget-object v0, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50325
    iput-object v4, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50326
    iget-object v1, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50335
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50327
    iput-object v0, v2, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50328
    iput v13, v2, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 50329
    iget-object v0, v2, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50337
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2f
    neg-int v0, v7

    .line 50339
    iput-object v4, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 50340
    iput v0, v2, Lo/isEmpty;->asInterface:F

    .line 50341
    iget-object v0, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50346
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 344
    :cond_30
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_47

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_47

    if-eqz v6, :cond_33

    .line 50348
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_31

    .line 50349
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50351
    :cond_31
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50352
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50354
    iget-object v1, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_32

    .line 50355
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50357
    :cond_32
    iget-object v1, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50358
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_33
    iget v1, v0, Lo/removeSubscription;->setDefaultImpl:F

    cmpl-float v1, v1, v11

    if-nez v1, :cond_34

    .line 50360
    iput v12, v2, Lo/isEmpty;->asBinder:I

    .line 50362
    iput v12, v4, Lo/isEmpty;->asBinder:I

    .line 50364
    iput-object v4, v2, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50367
    iput-object v2, v4, Lo/isEmpty;->onTransact:Lo/isEmpty;

    return-void

    .line 50370
    :cond_34
    iput v15, v2, Lo/isEmpty;->asBinder:I

    .line 50372
    iput v15, v4, Lo/isEmpty;->asBinder:I

    .line 50374
    iput-object v4, v2, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50377
    iput-object v2, v4, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 359
    invoke-virtual {v0, v7}, Lo/removeSubscription;->onPostMessage(I)V

    .line 360
    iget v1, v0, Lo/removeSubscription;->connect:I

    if-lez v1, :cond_47

    .line 361
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50380
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 361
    iget v0, v0, Lo/removeSubscription;->connect:I

    .line 50381
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 50382
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 50383
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 50384
    iget-object v0, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50389
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    .line 267
    :cond_35
    :goto_b
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_39

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_39

    .line 50061
    iput v8, v2, Lo/isEmpty;->asBinder:I

    .line 50063
    iput v8, v4, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_37

    .line 50065
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_36

    .line 50066
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50068
    :cond_36
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50069
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50070
    iget-object v3, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50079
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50071
    iput-object v1, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50072
    iput v8, v4, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 50073
    iget-object v1, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50081
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 50083
    :cond_37
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v5, :cond_38

    const/4 v7, 0x0

    goto :goto_c

    .line 50086
    :cond_38
    iget v7, v0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 50087
    :goto_c
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v7

    .line 50088
    iput v1, v4, Lo/isEmpty;->asInterface:F

    .line 50089
    iget-object v1, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50094
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_d
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_47

    .line 276
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50096
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 50097
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 277
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50099
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 278
    iget v0, v0, Lo/removeSubscription;->connect:I

    neg-int v0, v0

    .line 50100
    iput v8, v2, Lo/isEmpty;->asBinder:I

    .line 50101
    iput-object v1, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 50102
    iput v0, v2, Lo/isEmpty;->asInterface:F

    .line 50103
    iget-object v0, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50108
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 280
    :cond_39
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_3d

    .line 50110
    iput v8, v2, Lo/isEmpty;->asBinder:I

    .line 50112
    iput v8, v4, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_3b

    .line 50114
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_3a

    .line 50115
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50117
    :cond_3a
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50118
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50119
    iget-object v3, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50128
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50120
    iput-object v1, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50121
    iput v8, v4, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 50122
    iget-object v1, v4, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50130
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 50132
    :cond_3b
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v5, :cond_3c

    const/4 v7, 0x0

    goto :goto_e

    .line 50135
    :cond_3c
    iget v7, v0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 50136
    :goto_e
    iput-object v2, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v7

    .line 50137
    iput v1, v4, Lo/isEmpty;->asInterface:F

    .line 50138
    iget-object v1, v4, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50143
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 288
    :goto_f
    iget v1, v0, Lo/removeSubscription;->connect:I

    if-lez v1, :cond_47

    .line 289
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50145
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 289
    iget v0, v0, Lo/removeSubscription;->connect:I

    .line 50146
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 50147
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 50148
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 50149
    iget-object v0, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50154
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 291
    :cond_3d
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v1, :cond_41

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_41

    .line 50156
    iput v8, v2, Lo/isEmpty;->asBinder:I

    .line 50158
    iput v8, v4, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_3f

    .line 50160
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_3e

    .line 50161
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50163
    :cond_3e
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50164
    iput-object v4, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50165
    iget-object v3, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50174
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50166
    iput-object v1, v2, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50167
    iput v13, v2, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 50168
    iget-object v1, v2, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    .line 50176
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 50178
    :cond_3f
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v5, :cond_40

    const/4 v7, 0x0

    goto :goto_10

    .line 50181
    :cond_40
    iget v7, v0, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_10
    neg-int v1, v7

    .line 50182
    iput-object v4, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v1

    .line 50183
    iput v1, v2, Lo/isEmpty;->asInterface:F

    .line 50184
    iget-object v1, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50189
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_11
    iget v1, v0, Lo/removeSubscription;->connect:I

    if-lez v1, :cond_47

    .line 300
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50191
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 300
    iget v0, v0, Lo/removeSubscription;->connect:I

    .line 50192
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 50193
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 50194
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 50195
    iget-object v0, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50200
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 302
    :cond_41
    iget-object v1, v0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_47

    iget-object v1, v0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v1, :cond_47

    .line 50202
    iput v15, v2, Lo/isEmpty;->asBinder:I

    .line 50204
    iput v15, v4, Lo/isEmpty;->asBinder:I

    if-eqz v6, :cond_46

    .line 50206
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_42

    .line 50207
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50209
    :cond_42
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50210
    iput-object v4, v2, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50211
    iput-object v1, v2, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    .line 50214
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_43

    .line 50215
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50217
    :cond_43
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50218
    iput-object v2, v4, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50219
    iput-object v1, v4, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    .line 50222
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_44

    .line 50223
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50225
    :cond_44
    iget-object v1, v0, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50226
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50228
    iget-object v1, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v1, :cond_45

    .line 50229
    new-instance v1, Lo/unregisterCallbackMessenger;

    invoke-direct {v1}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v1, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50231
    :cond_45
    iget-object v1, v0, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50232
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 50238
    :cond_46
    iput-object v4, v2, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 50245
    iput-object v2, v4, Lo/isEmpty;->onTransact:Lo/isEmpty;

    .line 314
    :goto_12
    iget v1, v0, Lo/removeSubscription;->connect:I

    if-lez v1, :cond_47

    .line 315
    iget-object v1, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50248
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 315
    iget v0, v0, Lo/removeSubscription;->connect:I

    .line 50249
    iput v8, v1, Lo/isEmpty;->asBinder:I

    .line 50250
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 50251
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 50252
    iget-object v0, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 50257
    iget-object v0, v0, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_47
    :goto_13
    return-void
.end method

.method private static onMessageChannelReady(Lo/removeSubscription;I)Z
    .locals 4

    .line 111
    iget-object v0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, p1

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 114
    :cond_0
    iget v0, p0, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 115
    iget-object p0, p0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aget-object p0, p0, v3

    sget-object p1, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne p0, p1, :cond_2

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_6

    .line 123
    iget p1, p0, Lo/removeSubscription;->asBinder:I

    if-eqz p1, :cond_4

    return v2

    .line 126
    :cond_4
    iget p1, p0, Lo/removeSubscription;->asInterface:I

    if-nez p1, :cond_5

    iget p0, p0, Lo/removeSubscription;->getInterfaceDescriptor:I

    if-eqz p0, :cond_8

    :cond_5
    return v2

    .line 130
    :cond_6
    iget p1, p0, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    if-eqz p1, :cond_7

    return v2

    .line 133
    :cond_7
    iget p1, p0, Lo/removeSubscription;->ICustomTabsService:I

    if-nez p1, :cond_9

    iget p0, p0, Lo/removeSubscription;->newSession:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v3

    :cond_9
    :goto_1
    return v2
.end method

.method static onPostMessage(Lo/removeSubscription;II)V
    .locals 4

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, v0, 0x1

    .line 674
    iget-object v2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v0

    .line 50442
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 50443
    iget-object v3, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 675
    iget-object v3, v3, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 50444
    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 675
    iput-object v3, v2, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 676
    iget-object v2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v0

    .line 50445
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    int-to-float p2, p2

    .line 676
    iput p2, v2, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 678
    iget-object p2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object p2, p2, v0

    .line 50446
    iget-object p2, p2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    const/4 v2, 0x1

    .line 678
    iput v2, p2, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    .line 680
    iget-object p2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object p2, p2, v1

    .line 50447
    iget-object p2, p2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 680
    iget-object v3, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v0, v3, v0

    .line 50448
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 681
    iput-object v0, p2, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 682
    iget-object p2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object p2, p2, v1

    .line 50449
    iget-object p2, p2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 50456
    iget p1, p0, Lo/removeSubscription;->getExtras:I

    if-eq p1, v0, :cond_1

    .line 50459
    iget p1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 50460
    iget p1, p0, Lo/removeSubscription;->getExtras:I

    if-eq p1, v0, :cond_1

    .line 50463
    iget p1, p0, Lo/removeSubscription;->INotificationSideChannel:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    .line 683
    iput p1, p2, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 684
    iget-object p0, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object p0, p0, v1

    .line 50464
    iget-object p0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 684
    iput v2, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    return-void
.end method
