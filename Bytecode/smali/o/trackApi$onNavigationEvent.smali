.class Lo/trackApi$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/endTransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/trackApiError;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/PublisherException;

.field final synthetic onNavigationEvent:Lo/trackApi;

.field private final onPostMessage:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lo/trackApi;I)V
    .locals 1

    .line 509
    iput-object p1, p0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance p1, Lo/PublisherException;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lo/PublisherException;-><init>([B)V

    iput-object p1, p0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    .line 511
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/trackApi$onNavigationEvent;->extraCallback:Landroid/util/SparseArray;

    .line 512
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    .line 513
    iput p2, p0, Lo/trackApi$onNavigationEvent;->ICustomTabsCallback:I

    return-void
.end method

.method private ICustomTabsCallback(Lo/DreamAppGlideModule;I)Lo/trackApiError$onPostMessage;
    .locals 13

    .line 641
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    .line 646
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v4

    if-ge v4, p2, :cond_b

    .line 647
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    .line 648
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v5

    .line 649
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0xac

    const/16 v9, 0x87

    const/16 v10, 0x81

    if-ne v4, v5, :cond_3

    .line 651
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v4

    .line 652
    invoke-static {}, Lo/trackApi;->onPostMessage()J

    move-result-wide v11

    cmp-long v7, v4, v11

    if-nez v7, :cond_0

    goto :goto_2

    .line 654
    :cond_0
    invoke-static {}, Lo/trackApi;->onNavigationEvent()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    goto :goto_3

    .line 656
    :cond_1
    invoke-static {}, Lo/trackApi;->onMessageChannelReady()J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-nez v7, :cond_2

    :goto_1
    const/16 v3, 0xac

    goto/16 :goto_5

    .line 658
    :cond_2
    invoke-static {}, Lo/trackApi;->extraCallback()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-nez v9, :cond_a

    const/16 v3, 0x24

    goto :goto_5

    :cond_3
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_4

    :goto_2
    const/16 v3, 0x81

    goto :goto_5

    :cond_4
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_5

    :goto_3
    const/16 v3, 0x87

    goto :goto_5

    :cond_5
    const/16 v5, 0x7f

    if-ne v4, v5, :cond_6

    .line 667
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_a

    goto :goto_1

    :cond_6
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_7

    const/16 v3, 0x8a

    goto :goto_5

    :cond_7
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_8

    .line 675
    invoke-virtual {p1, v8}, Lo/DreamAppGlideModule;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    if-ne v4, v7, :cond_a

    .line 679
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    :goto_4
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    if-ge v3, v6, :cond_9

    .line 681
    invoke-virtual {p1, v8}, Lo/DreamAppGlideModule;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    const/4 v5, 0x4

    new-array v9, v5, [B

    const/4 v10, 0x0

    .line 684
    invoke-virtual {p1, v9, v10, v5}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 685
    new-instance v5, Lo/trackApiError$extraCallback;

    invoke-direct {v5, v3, v4, v9}, Lo/trackApiError$extraCallback;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/16 v3, 0x59

    .line 690
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto/16 :goto_0

    .line 692
    :cond_b
    invoke-virtual {p1, p2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 693
    new-instance v4, Lo/trackApiError$onPostMessage;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 694
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Lo/trackApiError$onPostMessage;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method


# virtual methods
.method public onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 524
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v2, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v2}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v2}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v2}, Lo/trackApi;->ICustomTabsCallback(Lo/trackApi;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 534
    :cond_1
    new-instance v2, Lo/getWaivers;

    iget-object v6, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    .line 535
    invoke-static {v6}, Lo/trackApi;->extraCallback(Lo/trackApi;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getWaivers;

    invoke-virtual {v6}, Lo/getWaivers;->onPostMessage()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lo/getWaivers;-><init>(J)V

    .line 536
    iget-object v6, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v6}, Lo/trackApi;->extraCallback(Lo/trackApi;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    :cond_2
    :goto_0
    iget-object v2, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v2}, Lo/trackApi;->extraCallback(Lo/trackApi;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getWaivers;

    .line 540
    :goto_1
    invoke-virtual {v1, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v6

    const/4 v7, 0x3

    .line 546
    invoke-virtual {v1, v7}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 548
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v1, v8, v3}, Lo/DreamAppGlideModule;->ICustomTabsCallback(Lo/PublisherException;I)V

    .line 550
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v8, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 551
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    iget-object v9, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v9

    invoke-static {v8, v9}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;I)I

    .line 554
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v1, v8, v3}, Lo/DreamAppGlideModule;->ICustomTabsCallback(Lo/PublisherException;I)V

    .line 555
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 556
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    .line 559
    invoke-virtual {v1, v8}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 561
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v8}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v8}, Lo/trackApi;->asBinder(Lo/trackApi;)Lo/trackApiError;

    move-result-object v8

    if-nez v8, :cond_3

    .line 564
    new-instance v8, Lo/trackApiError$onPostMessage;

    sget-object v14, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Lo/trackApiError$onPostMessage;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 565
    iget-object v14, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v14}, Lo/trackApi;->onRelationshipValidationResult(Lo/trackApi;)Lo/trackApiError$ICustomTabsCallback;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Lo/trackApiError$ICustomTabsCallback;->ICustomTabsCallback(ILo/trackApiError$onPostMessage;)Lo/trackApiError;

    move-result-object v8

    invoke-static {v14, v8}, Lo/trackApi;->onPostMessage(Lo/trackApi;Lo/trackApiError;)Lo/trackApiError;

    .line 566
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v8}, Lo/trackApi;->asBinder(Lo/trackApi;)Lo/trackApiError;

    move-result-object v8

    iget-object v14, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v14}, Lo/trackApi;->onTransact(Lo/trackApi;)Lo/ExceptionTracker;

    move-result-object v14

    new-instance v15, Lo/trackApiError$onMessageChannelReady;

    invoke-direct {v15, v6, v13, v12}, Lo/trackApiError$onMessageChannelReady;-><init>(III)V

    invoke-interface {v8, v2, v14, v15}, Lo/trackApiError;->onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    .line 570
    :cond_3
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 571
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 572
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v8

    :goto_2
    if-lez v8, :cond_9

    .line 574
    iget-object v14, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Lo/DreamAppGlideModule;->ICustomTabsCallback(Lo/PublisherException;I)V

    .line 575
    iget-object v14, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v14

    .line 576
    iget-object v15, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v15, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 577
    iget-object v15, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v15, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v15

    .line 578
    iget-object v7, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v7, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 579
    iget-object v7, v0, Lo/trackApi$onNavigationEvent;->onMessageChannelReady:Lo/PublisherException;

    invoke-virtual {v7, v11}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v7

    .line 580
    invoke-direct {v0, v1, v7}, Lo/trackApi$onNavigationEvent;->ICustomTabsCallback(Lo/DreamAppGlideModule;I)Lo/trackApiError$onPostMessage;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v14, v10, :cond_4

    .line 582
    iget v14, v9, Lo/trackApiError$onPostMessage;->ICustomTabsCallback:I

    :cond_4
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    .line 586
    iget-object v7, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v7}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v7

    if-ne v7, v3, :cond_5

    move v7, v14

    goto :goto_3

    :cond_5
    move v7, v15

    .line 587
    :goto_3
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v10}, Lo/trackApi;->ICustomTabsCallback$Stub(Lo/trackApi;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 591
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v10}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v10

    if-ne v10, v3, :cond_6

    if-ne v14, v13, :cond_6

    iget-object v9, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v9}, Lo/trackApi;->asBinder(Lo/trackApi;)Lo/trackApiError;

    move-result-object v9

    goto :goto_4

    :cond_6
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    .line 592
    invoke-static {v10}, Lo/trackApi;->onRelationshipValidationResult(Lo/trackApi;)Lo/trackApiError$ICustomTabsCallback;

    move-result-object v10

    invoke-interface {v10, v14, v9}, Lo/trackApiError$ICustomTabsCallback;->ICustomTabsCallback(ILo/trackApiError$onPostMessage;)Lo/trackApiError;

    move-result-object v9

    .line 593
    :goto_4
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v10}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v10

    if-ne v10, v3, :cond_7

    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    .line 594
    invoke-virtual {v10, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ge v15, v10, :cond_8

    .line 595
    :cond_7
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_2

    .line 600
    :cond_9
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_c

    .line 602
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 603
    iget-object v9, v0, Lo/trackApi$onNavigationEvent;->onPostMessage:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 604
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v10}, Lo/trackApi;->ICustomTabsCallback$Stub(Lo/trackApi;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 605
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v10}, Lo/trackApi;->asInterface(Lo/trackApi;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 606
    iget-object v10, v0, Lo/trackApi$onNavigationEvent;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/trackApiError;

    if-eqz v10, :cond_b

    .line 608
    iget-object v11, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v11}, Lo/trackApi;->asBinder(Lo/trackApi;)Lo/trackApiError;

    move-result-object v11

    if-eq v10, v11, :cond_a

    .line 609
    iget-object v11, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v11}, Lo/trackApi;->onTransact(Lo/trackApi;)Lo/ExceptionTracker;

    move-result-object v11

    new-instance v13, Lo/trackApiError$onMessageChannelReady;

    invoke-direct {v13, v6, v8, v12}, Lo/trackApiError$onMessageChannelReady;-><init>(III)V

    invoke-interface {v10, v2, v11, v13}, Lo/trackApiError;->onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    .line 612
    :cond_a
    iget-object v8, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v8}, Lo/trackApi;->onMessageChannelReady(Lo/trackApi;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 616
    :cond_c
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 617
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->getInterfaceDescriptor(Lo/trackApi;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 618
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->onTransact(Lo/trackApi;)Lo/ExceptionTracker;

    move-result-object v1

    invoke-interface {v1}, Lo/ExceptionTracker;->onPostMessage()V

    .line 619
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1, v4}, Lo/trackApi;->onPostMessage(Lo/trackApi;I)I

    .line 620
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1, v5}, Lo/trackApi;->ICustomTabsCallback(Lo/trackApi;Z)Z

    return-void

    .line 623
    :cond_d
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->onMessageChannelReady(Lo/trackApi;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lo/trackApi$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 624
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->onNavigationEvent(Lo/trackApi;)I

    move-result v2

    if-ne v2, v5, :cond_e

    goto :goto_6

    :cond_e
    iget-object v2, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v2}, Lo/trackApi;->ICustomTabsCallback(Lo/trackApi;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_6
    invoke-static {v1, v4}, Lo/trackApi;->onPostMessage(Lo/trackApi;I)I

    .line 625
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->ICustomTabsCallback(Lo/trackApi;)I

    move-result v1

    if-nez v1, :cond_f

    .line 626
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1}, Lo/trackApi;->onTransact(Lo/trackApi;)Lo/ExceptionTracker;

    move-result-object v1

    invoke-interface {v1}, Lo/ExceptionTracker;->onPostMessage()V

    .line 627
    iget-object v1, v0, Lo/trackApi$onNavigationEvent;->onNavigationEvent:Lo/trackApi;

    invoke-static {v1, v5}, Lo/trackApi;->ICustomTabsCallback(Lo/trackApi;Z)Z

    :cond_f
    return-void
.end method
