.class public final Lo/PayCallResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentModeAdapter;
.implements Lo/PayCallResponseJsonAdapter$onMessageChannelReady;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Lo/ListInstrument;

.field private final ICustomTabsCallback$Stub:Lo/PaymentRequest;

.field private ICustomTabsCallback$Stub$Proxy:Lo/JuspaySessionToken;

.field private ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

.field private final asBinder:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lo/CardInstrumentJsonAdapter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/Account$extraCallback;

.field private final extraCallback:Lo/InitPayloadJsonAdapter;

.field private extraCommand:Lo/CardBinResponseJsonAdapter;

.field private final getInterfaceDescriptor:Z

.field private mayLaunchUrl:Z

.field private final newSession:Z

.field private final onMessageChannelReady:Lo/ViewContainerJsonAdapter;

.field private final onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final onPostMessage:Lo/NetBankingInstrumentJsonAdapter;

.field private final onRelationshipValidationResult:Lo/resetOptions;

.field private final onTransact:Lo/PaymentMethod;

.field private postMessage:[Lo/PayCallResponseJsonAdapter;

.field private requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

.field private updateVisuals:[[I

.field private warmup:I


# direct methods
.method public constructor <init>(Lo/ListInstrument;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lo/NetBankingInstrumentJsonAdapter;Lo/InitPayloadJsonAdapter;Lo/ViewContainerJsonAdapter;Lo/Account$extraCallback;Lo/PaymentRequest;Lo/resetOptions;ZZ)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lo/PayCallResponse;->ICustomTabsCallback:Lo/ListInstrument;

    .line 115
    iput-object p2, p0, Lo/PayCallResponse;->onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 116
    iput-object p3, p0, Lo/PayCallResponse;->onPostMessage:Lo/NetBankingInstrumentJsonAdapter;

    .line 117
    iput-object p4, p0, Lo/PayCallResponse;->extraCallback:Lo/InitPayloadJsonAdapter;

    .line 118
    iput-object p5, p0, Lo/PayCallResponse;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    .line 119
    iput-object p6, p0, Lo/PayCallResponse;->asInterface:Lo/Account$extraCallback;

    .line 120
    iput-object p7, p0, Lo/PayCallResponse;->ICustomTabsCallback$Stub:Lo/PaymentRequest;

    .line 121
    iput-object p8, p0, Lo/PayCallResponse;->onRelationshipValidationResult:Lo/resetOptions;

    .line 122
    iput-boolean p9, p0, Lo/PayCallResponse;->newSession:Z

    .line 123
    iput-boolean p10, p0, Lo/PayCallResponse;->getInterfaceDescriptor:Z

    const/4 p1, 0x0

    new-array p2, p1, [Lo/CardBinResponseJsonAdapter;

    .line 125
    invoke-interface {p8, p2}, Lo/resetOptions;->onMessageChannelReady([Lo/CardBinResponseJsonAdapter;)Lo/CardBinResponseJsonAdapter;

    move-result-object p2

    iput-object p2, p0, Lo/PayCallResponse;->extraCommand:Lo/CardBinResponseJsonAdapter;

    .line 126
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lo/PayCallResponse;->asBinder:Ljava/util/IdentityHashMap;

    .line 127
    new-instance p2, Lo/PaymentMethod;

    invoke-direct {p2}, Lo/PaymentMethod;-><init>()V

    iput-object p2, p0, Lo/PayCallResponse;->onTransact:Lo/PaymentMethod;

    new-array p2, p1, [Lo/PayCallResponseJsonAdapter;

    .line 128
    iput-object p2, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    new-array p2, p1, [Lo/PayCallResponseJsonAdapter;

    .line 129
    iput-object p2, p0, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    new-array p1, p1, [[I

    .line 130
    iput-object p1, p0, Lo/PayCallResponse;->updateVisuals:[[I

    .line 131
    invoke-virtual {p6}, Lo/Account$extraCallback;->onNavigationEvent()V

    return-void
.end method

.method private extraCallback(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/PayCallResponseJsonAdapter;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    .line 662
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    new-instance v2, Ljava/util/ArrayList;

    .line 664
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 665
    new-instance v3, Ljava/util/ArrayList;

    .line 666
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 669
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 671
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ShortCircuitInfo$extraCallback;

    iget-object v7, v7, Lo/ShortCircuitInfo$extraCallback;->extraCallback:Ljava/lang/String;

    .line 672
    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 678
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 679
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 680
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->clear()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 682
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    .line 683
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/ShortCircuitInfo$extraCallback;

    iget-object v11, v11, Lo/ShortCircuitInfo$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-static {v7, v11}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 684
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/ShortCircuitInfo$extraCallback;

    .line 685
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v12, v11, Lo/ShortCircuitInfo$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v12, v11, Lo/ShortCircuitInfo$extraCallback;->onMessageChannelReady:Lo/p$a;

    invoke-virtual {v2, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v11, v11, Lo/ShortCircuitInfo$extraCallback;->onMessageChannelReady:Lo/p$a;

    iget-object v11, v11, Lo/p$a;->asBinder:Ljava/lang/String;

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    const/4 v11, 0x0

    :goto_2
    and-int/2addr v10, v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    new-array v7, v5, [Landroid/net/Uri;

    .line 695
    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [Landroid/net/Uri;

    new-array v7, v5, [Lo/p$a;

    .line 696
    invoke-virtual {v2, v7}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Lo/p$a;

    const/4 v15, 0x0

    .line 698
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v11, p0

    move-object/from16 v17, p6

    move-wide/from16 v18, p1

    .line 693
    invoke-direct/range {v11 .. v19}, Lo/PayCallResponse;->onNavigationEvent(I[Landroid/net/Uri;[Lo/p$a;Lo/p$a;Ljava/util/List;Ljava/util/Map;J)Lo/PayCallResponseJsonAdapter;

    move-result-object v7

    .line 701
    invoke-static {v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/util/List;)[I

    move-result-object v9

    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p4

    .line 702
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    .line 704
    iget-boolean v13, v12, Lo/PayCallResponse;->newSession:Z

    if-eqz v13, :cond_4

    if-eqz v10, :cond_4

    new-array v10, v5, [Lo/p$a;

    .line 705
    invoke-virtual {v2, v10}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lo/p$a;

    .line 706
    new-instance v13, Lo/JuspaySessionToken;

    new-array v8, v8, [Lo/getJuspayUpi;

    new-instance v14, Lo/getJuspayUpi;

    invoke-direct {v14, v10}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    aput-object v14, v8, v5

    invoke-direct {v13, v8}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    sget-object v8, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    invoke-virtual {v7, v13, v5, v8}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent(Lo/JuspaySessionToken;ILo/JuspaySessionToken;)V

    goto :goto_3

    :cond_3
    move-object/from16 v12, p0

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p0

    return-void
.end method

.method private static onMessageChannelReady(Lo/p$a;)Lo/p$a;
    .locals 15

    .line 769
    iget-object v0, p0, Lo/p$a;->asBinder:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 770
    invoke-static {v6}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 771
    iget-object v2, p0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    iget-object v4, p0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v7, p0, Lo/p$a;->asInterface:Lo/callAPI;

    iget v8, p0, Lo/p$a;->extraCallback:I

    iget v9, p0, Lo/p$a;->getInterfaceDescriptor:I

    iget v10, p0, Lo/p$a;->newSession:I

    iget v11, p0, Lo/p$a;->updateVisuals:F

    iget v13, p0, Lo/p$a;->onMessageChannelReady:I

    iget v14, p0, Lo/p$a;->ICustomTabsCallback:I

    const/4 v12, 0x0

    invoke-static/range {v2 .. v14}, Lo/p$a;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIIFLjava/util/List;II)Lo/p$a;

    move-result-object p0

    return-object p0
.end method

.method private onNavigationEvent(I[Landroid/net/Uri;[Lo/p$a;Lo/p$a;Ljava/util/List;Ljava/util/Map;J)Lo/PayCallResponseJsonAdapter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Lo/p$a;",
            "Lo/p$a;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ">;J)",
            "Lo/PayCallResponseJsonAdapter;"
        }
    .end annotation

    move-object v11, p0

    .line 720
    new-instance v9, Lo/ListInstrumentJsonAdapter;

    iget-object v1, v11, Lo/PayCallResponse;->ICustomTabsCallback:Lo/ListInstrument;

    iget-object v2, v11, Lo/PayCallResponse;->onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v11, Lo/PayCallResponse;->onPostMessage:Lo/NetBankingInstrumentJsonAdapter;

    iget-object v6, v11, Lo/PayCallResponse;->extraCallback:Lo/InitPayloadJsonAdapter;

    iget-object v7, v11, Lo/PayCallResponse;->onTransact:Lo/PaymentMethod;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lo/ListInstrumentJsonAdapter;-><init>(Lo/ListInstrument;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lo/p$a;Lo/NetBankingInstrumentJsonAdapter;Lo/InitPayloadJsonAdapter;Lo/PaymentMethod;Ljava/util/List;)V

    .line 730
    new-instance v12, Lo/PayCallResponseJsonAdapter;

    iget-object v5, v11, Lo/PayCallResponse;->ICustomTabsCallback$Stub:Lo/PaymentRequest;

    iget-object v10, v11, Lo/PayCallResponse;->onMessageChannelReady:Lo/ViewContainerJsonAdapter;

    iget-object v13, v11, Lo/PayCallResponse;->asInterface:Lo/Account$extraCallback;

    move-object v0, v12

    move v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lo/PayCallResponseJsonAdapter;-><init>(ILo/PayCallResponseJsonAdapter$onMessageChannelReady;Lo/ListInstrumentJsonAdapter;Ljava/util/Map;Lo/PaymentRequest;JLo/p$a;Lo/ViewContainerJsonAdapter;Lo/Account$extraCallback;)V

    return-object v12
.end method

.method private onNavigationEvent(Lo/ShortCircuitInfo;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ShortCircuitInfo;",
            "J",
            "Ljava/util/List<",
            "Lo/PayCallResponseJsonAdapter;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 540
    iget-object v1, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 543
    :goto_0
    iget-object v7, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v4, v7, :cond_3

    .line 544
    iget-object v7, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ShortCircuitInfo$onNavigationEvent;

    .line 545
    iget-object v7, v7, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    .line 546
    iget v11, v7, Lo/p$a;->newSession:I

    if-gtz v11, :cond_2

    iget-object v11, v7, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v11, v9}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    iget-object v7, v7, Lo/p$a;->asBinder:Ljava/lang/String;

    invoke-static {v7, v10}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 550
    aput v10, v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 553
    :cond_1
    aput v8, v2, v4

    goto :goto_2

    .line 547
    :cond_2
    :goto_1
    aput v9, v2, v4

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    move v1, v5

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    if-ge v6, v1, :cond_5

    sub-int/2addr v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x0

    .line 571
    :goto_4
    new-array v13, v1, [Landroid/net/Uri;

    .line 572
    new-array v6, v1, [Lo/p$a;

    .line 573
    new-array v7, v1, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 575
    :goto_5
    iget-object v14, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_9

    if-eqz v4, :cond_6

    .line 576
    aget v14, v2, v11

    if-ne v14, v9, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    aget v14, v2, v11

    if-eq v14, v10, :cond_8

    .line 578
    :cond_7
    iget-object v14, v0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/ShortCircuitInfo$onNavigationEvent;

    .line 579
    iget-object v15, v14, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    aput-object v15, v13, v12

    .line 580
    iget-object v14, v14, Lo/ShortCircuitInfo$onNavigationEvent;->onMessageChannelReady:Lo/p$a;

    aput-object v14, v6, v12

    add-int/lit8 v14, v12, 0x1

    .line 581
    aput v11, v7, v12

    move v12, v14

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 584
    :cond_9
    aget-object v2, v6, v3

    iget-object v2, v2, Lo/p$a;->asBinder:Ljava/lang/String;

    const/4 v12, 0x0

    .line 585
    iget-object v15, v0, Lo/ShortCircuitInfo;->onTransact:Lo/p$a;

    iget-object v4, v0, Lo/ShortCircuitInfo;->asInterface:Ljava/util/List;

    move-object/from16 v11, p0

    move-object v14, v6

    move-object/from16 v16, v4

    move-object/from16 v17, p6

    move-wide/from16 v18, p2

    .line 586
    invoke-direct/range {v11 .. v19}, Lo/PayCallResponse;->onNavigationEvent(I[Landroid/net/Uri;[Lo/p$a;Lo/p$a;Ljava/util/List;Ljava/util/Map;J)Lo/PayCallResponseJsonAdapter;

    move-result-object v4

    move-object/from16 v5, p4

    .line 594
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p5

    .line 595
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p0

    .line 596
    iget-boolean v7, v5, Lo/PayCallResponse;->newSession:Z

    if-eqz v7, :cond_13

    if-eqz v2, :cond_13

    .line 597
    invoke-static {v2, v9}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 598
    :goto_6
    invoke-static {v2, v10}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    .line 599
    :goto_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_f

    .line 601
    new-array v2, v1, [Lo/p$a;

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v1, :cond_c

    .line 603
    aget-object v12, v6, v7

    invoke-static {v12}, Lo/PayCallResponse;->onMessageChannelReady(Lo/p$a;)Lo/p$a;

    move-result-object v12

    aput-object v12, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 605
    :cond_c
    new-instance v1, Lo/getJuspayUpi;

    invoke-direct {v1, v2}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_e

    .line 607
    iget-object v1, v0, Lo/ShortCircuitInfo;->onTransact:Lo/p$a;

    if-nez v1, :cond_d

    iget-object v1, v0, Lo/ShortCircuitInfo;->onPostMessage:Ljava/util/List;

    .line 608
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 609
    :cond_d
    new-instance v1, Lo/getJuspayUpi;

    new-array v2, v10, [Lo/p$a;

    aget-object v6, v6, v3

    iget-object v7, v0, Lo/ShortCircuitInfo;->onTransact:Lo/p$a;

    .line 611
    invoke-static {v6, v7, v3}, Lo/PayCallResponse;->onPostMessage(Lo/p$a;Lo/p$a;Z)Lo/p$a;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-direct {v1, v2}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    .line 609
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_e
    iget-object v0, v0, Lo/ShortCircuitInfo;->asInterface:Ljava/util/List;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 618
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 619
    new-instance v2, Lo/getJuspayUpi;

    new-array v6, v10, [Lo/p$a;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/p$a;

    aput-object v7, v6, v3

    invoke-direct {v2, v6}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    if-eqz v9, :cond_12

    .line 624
    new-array v2, v1, [Lo/p$a;

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v1, :cond_10

    .line 626
    aget-object v9, v6, v7

    iget-object v12, v0, Lo/ShortCircuitInfo;->onTransact:Lo/p$a;

    .line 627
    invoke-static {v9, v12, v10}, Lo/PayCallResponse;->onPostMessage(Lo/p$a;Lo/p$a;Z)Lo/p$a;

    move-result-object v9

    aput-object v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 632
    :cond_10
    new-instance v0, Lo/getJuspayUpi;

    invoke-direct {v0, v2}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_11
    new-instance v0, Lo/getJuspayUpi;

    new-array v1, v10, [Lo/p$a;

    const/4 v2, 0x0

    const-string v6, "ID3"

    const-string v7, "application/id3"

    .line 640
    invoke-static {v6, v7, v2, v8, v2}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/generateLink;)Lo/p$a;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    .line 646
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v1, Lo/JuspaySessionToken;

    new-array v2, v3, [Lo/getJuspayUpi;

    .line 649
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lo/getJuspayUpi;

    invoke-direct {v1, v2}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    new-instance v2, Lo/JuspaySessionToken;

    new-array v6, v10, [Lo/getJuspayUpi;

    aput-object v0, v6, v3

    invoke-direct {v2, v6}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    .line 648
    invoke-virtual {v4, v1, v3, v2}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent(Lo/JuspaySessionToken;ILo/JuspaySessionToken;)V

    goto :goto_b

    .line 635
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected codecs attribute: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_b
    return-void
.end method

.method private static onPostMessage(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/generateLink;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/generateLink;",
            ">;"
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 745
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 746
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 747
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/generateLink;

    .line 748
    iget-object v4, v3, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 754
    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 755
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/generateLink;

    .line 756
    iget-object v7, v6, Lo/generateLink;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 757
    invoke-virtual {v3, v6}, Lo/generateLink;->onPostMessage(Lo/generateLink;)Lo/generateLink;

    move-result-object v3

    .line 758
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 763
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static onPostMessage(Lo/p$a;Lo/p$a;Z)Lo/p$a;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 797
    iget-object v2, v1, Lo/p$a;->asBinder:Ljava/lang/String;

    .line 798
    iget-object v3, v1, Lo/p$a;->asInterface:Lo/callAPI;

    .line 799
    iget v5, v1, Lo/p$a;->ICustomTabsService$Stub:I

    .line 800
    iget v6, v1, Lo/p$a;->onMessageChannelReady:I

    .line 801
    iget v7, v1, Lo/p$a;->ICustomTabsCallback:I

    .line 802
    iget-object v8, v1, Lo/p$a;->cancel:Ljava/lang/String;

    .line 803
    iget-object v1, v1, Lo/p$a;->onPostMessage:Ljava/lang/String;

    move-object v10, v1

    move-object v13, v2

    move-object v14, v3

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_0

    .line 805
    :cond_0
    iget-object v1, v0, Lo/p$a;->asBinder:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 806
    iget-object v5, v0, Lo/p$a;->asInterface:Lo/callAPI;

    if-eqz p2, :cond_1

    .line 808
    iget v2, v0, Lo/p$a;->ICustomTabsService$Stub:I

    .line 809
    iget v3, v0, Lo/p$a;->onMessageChannelReady:I

    .line 810
    iget v6, v0, Lo/p$a;->ICustomTabsCallback:I

    .line 811
    iget-object v7, v0, Lo/p$a;->cancel:Ljava/lang/String;

    .line 812
    iget-object v8, v0, Lo/p$a;->onPostMessage:Ljava/lang/String;

    move-object v13, v1

    move/from16 v16, v2

    move/from16 v19, v3

    move-object v14, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v10, v8

    goto :goto_0

    :cond_1
    move-object v13, v1

    move-object v10, v2

    move-object/from16 v21, v10

    move-object v14, v5

    const/16 v16, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 815
    :goto_0
    invoke-static {v13}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz p2, :cond_2

    .line 816
    iget v4, v0, Lo/p$a;->extraCallback:I

    move v15, v4

    goto :goto_1

    :cond_2
    const/4 v15, -0x1

    .line 817
    :goto_1
    iget-object v9, v0, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    iget-object v11, v0, Lo/p$a;->onRelationshipValidationResult:Ljava/lang/String;

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-static/range {v9 .. v21}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/callAPI;IIILjava/util/List;IILjava/lang/String;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method private onPostMessage(J)V
    .locals 18

    move-object/from16 v9, p0

    .line 444
    iget-object v0, v9, Lo/PayCallResponse;->onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->extraCallback()Lo/ShortCircuitInfo;

    move-result-object v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/ShortCircuitInfo;

    .line 445
    iget-boolean v0, v9, Lo/PayCallResponse;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lo/ShortCircuitInfo;->ICustomTabsService:Ljava/util/List;

    .line 447
    invoke-static {v0}, Lo/PayCallResponse;->onPostMessage(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 450
    iget-object v0, v1, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    .line 451
    iget-object v7, v1, Lo/ShortCircuitInfo;->onPostMessage:Ljava/util/List;

    .line 452
    iget-object v12, v1, Lo/ShortCircuitInfo;->asBinder:Ljava/util/List;

    const/4 v13, 0x0

    .line 454
    iput v13, v9, Lo/PayCallResponse;->warmup:I

    .line 455
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 456
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    .line 459
    invoke-direct/range {v0 .. v6}, Lo/PayCallResponse;->onNavigationEvent(Lo/ShortCircuitInfo;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    .line 469
    invoke-direct/range {v0 .. v6}, Lo/PayCallResponse;->extraCallback(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const/4 v7, 0x0

    .line 477
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 478
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lo/ShortCircuitInfo$extraCallback;

    const/4 v1, 0x3

    new-array v2, v11, [Landroid/net/Uri;

    .line 479
    iget-object v0, v8, Lo/ShortCircuitInfo$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    aput-object v0, v2, v13

    new-array v3, v11, [Lo/p$a;

    iget-object v0, v8, Lo/ShortCircuitInfo$extraCallback;->onMessageChannelReady:Lo/p$a;

    aput-object v0, v3, v13

    const/4 v4, 0x0

    .line 485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v6, v10

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p1

    .line 480
    invoke-direct/range {v0 .. v8}, Lo/PayCallResponse;->onNavigationEvent(I[Landroid/net/Uri;[Lo/p$a;Lo/p$a;Ljava/util/List;Ljava/util/Map;J)Lo/PayCallResponseJsonAdapter;

    move-result-object v0

    new-array v1, v11, [I

    aput v16, v1, v13

    .line 488
    invoke-virtual {v15, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {v14, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lo/JuspaySessionToken;

    new-array v2, v11, [Lo/getJuspayUpi;

    new-instance v3, Lo/getJuspayUpi;

    new-array v4, v11, [Lo/p$a;

    move-object/from16 v5, v17

    iget-object v5, v5, Lo/ShortCircuitInfo$extraCallback;->onMessageChannelReady:Lo/p$a;

    aput-object v5, v4, v13

    invoke-direct {v3, v4}, Lo/getJuspayUpi;-><init>([Lo/p$a;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    sget-object v2, Lo/JuspaySessionToken;->onPostMessage:Lo/JuspaySessionToken;

    invoke-virtual {v0, v1, v13, v2}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent(Lo/JuspaySessionToken;ILo/JuspaySessionToken;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v13, [Lo/PayCallResponseJsonAdapter;

    .line 494
    invoke-virtual {v14, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/PayCallResponseJsonAdapter;

    iput-object v0, v9, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    new-array v0, v13, [[I

    .line 495
    invoke-virtual {v15, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v9, Lo/PayCallResponse;->updateVisuals:[[I

    .line 496
    iget-object v0, v9, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    iput v1, v9, Lo/PayCallResponse;->warmup:I

    .line 498
    aget-object v0, v0, v13

    invoke-virtual {v0, v11}, Lo/PayCallResponseJsonAdapter;->onPostMessage(Z)V

    .line 499
    iget-object v0, v9, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    :goto_2
    if-ge v13, v1, :cond_3

    aget-object v2, v0, v13

    .line 500
    invoke-virtual {v2}, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 503
    :cond_3
    iget-object v0, v9, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    iput-object v0, v9, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 352
    iget-object v0, p0, Lo/PayCallResponse;->extraCommand:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardBinResponseJsonAdapter;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback(JLo/t$d;)J
    .locals 0

    return-wide p1
.end method

.method public final asBinder()V
    .locals 11

    .line 394
    iget v0, p0, Lo/PayCallResponse;->warmup:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/PayCallResponse;->warmup:I

    if-lez v0, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 400
    invoke-virtual {v5}, Lo/PayCallResponseJsonAdapter;->asBinder()Lo/JuspaySessionToken;

    move-result-object v5

    iget v5, v5, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_1
    new-array v0, v4, [Lo/getJuspayUpi;

    .line 404
    iget-object v1, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 405
    invoke-virtual {v6}, Lo/PayCallResponseJsonAdapter;->asBinder()Lo/JuspaySessionToken;

    move-result-object v7

    iget v7, v7, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 407
    invoke-virtual {v6}, Lo/PayCallResponseJsonAdapter;->asBinder()Lo/JuspaySessionToken;

    move-result-object v10

    invoke-virtual {v10, v8}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 410
    :cond_3
    new-instance v1, Lo/JuspaySessionToken;

    invoke-direct {v1, v0}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    iput-object v1, p0, Lo/PayCallResponse;->ICustomTabsCallback$Stub$Proxy:Lo/JuspaySessionToken;

    .line 411
    iget-object v0, p0, Lo/PayCallResponse;->ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {v0, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->extraCallback(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final asInterface()V
    .locals 4

    .line 135
    iget-object v0, p0, Lo/PayCallResponse;->onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;)V

    .line 136
    iget-object v0, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    invoke-virtual {v3}, Lo/PayCallResponseJsonAdapter;->onRelationshipValidationResult()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lo/PayCallResponse;->ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

    .line 140
    iget-object v0, p0, Lo/PayCallResponse;->asInterface:Lo/Account$extraCallback;

    invoke-virtual {v0}, Lo/Account$extraCallback;->ICustomTabsCallback()V

    return-void
.end method

.method public final extraCallback()J
    .locals 2

    .line 366
    iget-object v0, p0, Lo/PayCallResponse;->extraCommand:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardBinResponseJsonAdapter;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 249
    array-length v3, v1

    new-array v3, v3, [I

    .line 250
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 251
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 252
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lo/PayCallResponse;->asBinder:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    .line 253
    invoke-virtual {v7, v9}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 254
    aput v8, v4, v6

    .line 255
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 256
    aget-object v7, v1, v6

    invoke-interface {v7}, Lo/InstrumentView;->asBinder()Lo/getJuspayUpi;

    move-result-object v7

    const/4 v9, 0x0

    .line 257
    :goto_2
    iget-object v10, v0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 258
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lo/PayCallResponseJsonAdapter;->asBinder()Lo/JuspaySessionToken;

    move-result-object v10

    invoke-virtual {v10, v7}, Lo/JuspaySessionToken;->onMessageChannelReady(Lo/getJuspayUpi;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 259
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    :cond_3
    iget-object v6, v0, Lo/PayCallResponse;->asBinder:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->clear()V

    .line 269
    array-length v6, v1

    new-array v7, v6, [Lo/CardInstrumentJsonAdapter;

    .line 270
    array-length v8, v1

    new-array v8, v8, [Lo/CardInstrumentJsonAdapter;

    .line 271
    array-length v9, v1

    new-array v14, v9, [Lo/InstrumentView;

    .line 273
    iget-object v9, v0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v9, v9

    new-array v15, v9, [Lo/PayCallResponseJsonAdapter;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    .line 275
    :goto_4
    iget-object v9, v0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v9, v9

    if-ge v13, v9, :cond_10

    const/4 v9, 0x0

    .line 276
    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 277
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    .line 278
    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 280
    :cond_6
    iget-object v9, v0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    aget-object v11, v9, v13

    move-object v9, v11

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, p2

    move v2, v12

    move-object v12, v8

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v13, p4

    move/from16 v20, v2

    move-object/from16 v19, v14

    move-object v2, v15

    move-wide/from16 v14, p5

    move/from16 v16, v17

    .line 281
    invoke-virtual/range {v9 .. v16}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJZ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 284
    :goto_7
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_b

    .line 285
    aget v12, v4, v10

    if-ne v12, v6, :cond_8

    .line 287
    aget-object v11, v8, v10

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    invoke-static {v11}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 288
    aget-object v11, v8, v10

    aput-object v11, v7, v10

    .line 290
    iget-object v11, v0, Lo/PayCallResponse;->asBinder:Ljava/util/IdentityHashMap;

    aget-object v12, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_a

    .line 291
    :cond_8
    aget v12, v3, v10

    if-ne v12, v6, :cond_a

    .line 293
    aget-object v12, v8, v10

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_e

    .line 297
    aput-object v5, v2, v20

    add-int/lit8 v12, v20, 0x1

    if-nez v20, :cond_d

    .line 301
    invoke-virtual {v5, v13}, Lo/PayCallResponseJsonAdapter;->onPostMessage(Z)V

    if-nez v9, :cond_c

    .line 302
    iget-object v9, v0, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    array-length v10, v9

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-eq v5, v9, :cond_f

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 306
    :goto_b
    iget-object v5, v0, Lo/PayCallResponse;->onTransact:Lo/PaymentMethod;

    invoke-virtual {v5}, Lo/PaymentMethod;->ICustomTabsCallback()V

    const/16 v17, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    .line 310
    invoke-virtual {v5, v10}, Lo/PayCallResponseJsonAdapter;->onPostMessage(Z)V

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    move/from16 v12, v20

    :cond_f
    :goto_c
    add-int/lit8 v13, v6, 0x1

    move-object v15, v2

    move/from16 v6, v18

    move-object/from16 v14, v19

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_10
    move-object v5, v2

    move-object v2, v15

    const/4 v10, 0x0

    .line 315
    invoke-static {v7, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/PayCallResponseJsonAdapter;

    iput-object v1, v0, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    .line 319
    iget-object v2, v0, Lo/PayCallResponse;->onRelationshipValidationResult:Lo/resetOptions;

    .line 320
    invoke-interface {v2, v1}, Lo/resetOptions;->onMessageChannelReady([Lo/CardBinResponseJsonAdapter;)Lo/CardBinResponseJsonAdapter;

    move-result-object v1

    iput-object v1, v0, Lo/PayCallResponse;->extraCommand:Lo/CardBinResponseJsonAdapter;

    return-wide p5
.end method

.method public final extraCallback(J)Z
    .locals 3

    .line 339
    iget-object v0, p0, Lo/PayCallResponse;->ICustomTabsCallback$Stub$Proxy:Lo/JuspaySessionToken;

    if-nez v0, :cond_1

    .line 341
    iget-object p1, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 342
    invoke-virtual {v2}, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 346
    :cond_1
    iget-object v0, p0, Lo/PayCallResponse;->extraCommand:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0, p1, p2}, Lo/CardBinResponseJsonAdapter;->extraCallback(J)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 357
    iget-boolean v0, p0, Lo/PayCallResponse;->mayLaunchUrl:Z

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lo/PayCallResponse;->asInterface:Lo/Account$extraCallback;

    invoke-virtual {v0}, Lo/Account$extraCallback;->onPostMessage()V

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lo/PayCallResponse;->mayLaunchUrl:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final onMessageChannelReady(J)J
    .locals 4

    .line 371
    iget-object v0, p0, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 374
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 375
    :goto_0
    iget-object v2, p0, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 376
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lo/PayCallResponse;->onTransact:Lo/PaymentMethod;

    invoke-virtual {v0}, Lo/PaymentMethod;->ICustomTabsCallback()V

    :cond_1
    return-wide p1
.end method

.method public final onMessageChannelReady(Landroid/net/Uri;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lo/PayCallResponse;->onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPostMessage(Landroid/net/Uri;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/PayCallResponseJsonAdapter;)V
    .locals 0

    .line 421
    iget-object p1, p0, Lo/PayCallResponse;->ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 153
    invoke-virtual {v3}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(J)V
    .locals 1

    .line 334
    iget-object v0, p0, Lo/PayCallResponse;->extraCommand:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0, p1, p2}, Lo/CardBinResponseJsonAdapter;->onNavigationEvent(J)V

    return-void
.end method

.method public final onNavigationEvent(JZ)V
    .locals 4

    .line 327
    iget-object v0, p0, Lo/PayCallResponse;->requestPostMessageChannel:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 328
    invoke-virtual {v3, p1, p2, p3}, Lo/PayCallResponseJsonAdapter;->extraCallback(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V
    .locals 0

    .line 60
    check-cast p1, Lo/PayCallResponseJsonAdapter;

    invoke-virtual {p0, p1}, Lo/PayCallResponse;->onMessageChannelReady(Lo/PayCallResponseJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/PayCallResponse;->ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

    .line 146
    iget-object p1, p0, Lo/PayCallResponse;->onNavigationEvent:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->ICustomTabsCallback(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;)V

    .line 147
    invoke-direct {p0, p2, p3}, Lo/PayCallResponse;->onPostMessage(J)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/net/Uri;J)Z
    .locals 5

    .line 434
    iget-object v0, p0, Lo/PayCallResponse;->postMessage:[Lo/PayCallResponseJsonAdapter;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 435
    invoke-virtual {v4, p1, p2, p3}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(Landroid/net/Uri;J)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, p0, Lo/PayCallResponse;->ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return v2
.end method

.method public final onPostMessage()Lo/JuspaySessionToken;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/PayCallResponse;->ICustomTabsCallback$Stub$Proxy:Lo/JuspaySessionToken;

    return-object v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    .line 428
    iget-object v0, p0, Lo/PayCallResponse;->ICustomTabsService:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {v0, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return-void
.end method
