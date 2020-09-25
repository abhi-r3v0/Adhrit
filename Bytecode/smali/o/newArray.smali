.class public final Lo/newArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$core$LimboDocumentChange$Type:[I


# instance fields
.field public final ICustomTabsCallback:Lo/setTransitioning;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Lo/setTransitioning;

.field public final onPostMessage:Lo/onMeasure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43602
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->values()[Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/newArray;->$SwitchMap$com$google$firebase$firestore$core$LimboDocumentChange$Type:[I

    :try_start_0
    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->ADDED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/newArray;->$SwitchMap$com$google$firebase$firestore$core$LimboDocumentChange$Type:[I

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->REMOVED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/setTransitioning;Lo/setTransitioning;Lo/onMeasure;Z)V
    .locals 0

    .line 41020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41021
    iput-object p1, p0, Lo/newArray;->extraCallback:Ljava/lang/String;

    .line 41022
    iput-object p2, p0, Lo/newArray;->ICustomTabsCallback:Lo/setTransitioning;

    .line 41023
    iput-object p3, p0, Lo/newArray;->onNavigationEvent:Lo/setTransitioning;

    .line 41024
    iput-object p4, p0, Lo/newArray;->onPostMessage:Lo/onMeasure;

    .line 41025
    iput-boolean p5, p0, Lo/newArray;->onMessageChannelReady:Z

    return-void
.end method

.method private static ICustomTabsCallback(Lo/removeSubscription;IZI)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 304
    iget-boolean v3, v0, Lo/removeSubscription;->unsubscribe:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 316
    :cond_0
    iget-object v3, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x8

    if-eqz v2, :cond_3

    .line 18031
    iget v7, v0, Lo/removeSubscription;->connect:I

    .line 18830
    iget v8, v0, Lo/removeSubscription;->getExtras:I

    if-ne v8, v6, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 18833
    :cond_2
    iget v8, v0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 19031
    :goto_1
    iget v9, v0, Lo/removeSubscription;->connect:I

    sub-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x1

    add-int/lit8 v10, v9, 0x1

    goto :goto_3

    .line 19830
    :cond_3
    iget v7, v0, Lo/removeSubscription;->getExtras:I

    if-ne v7, v6, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    .line 19833
    :cond_4
    iget v7, v0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 20031
    :goto_2
    iget v8, v0, Lo/removeSubscription;->connect:I

    sub-int/2addr v7, v8

    .line 21031
    iget v8, v0, Lo/removeSubscription;->connect:I

    shl-int/lit8 v10, v1, 0x1

    add-int/lit8 v9, v10, 0x1

    .line 332
    :goto_3
    iget-object v11, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v11, v11, v10

    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v11, :cond_5

    iget-object v11, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v11, v11, v9

    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v11, :cond_5

    const/4 v11, -0x1

    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    goto :goto_4

    :cond_5
    const/4 v11, 0x1

    :goto_4
    if-eqz v3, :cond_6

    sub-int v13, p3, v7

    goto :goto_5

    :cond_6
    move/from16 v13, p3

    .line 345
    :goto_5
    iget-object v14, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v14

    mul-int v14, v14, v11

    invoke-static/range {p0 .. p1}, Lo/newArray;->extraCallback(Lo/removeSubscription;I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    if-nez v1, :cond_8

    .line 21773
    iget v15, v0, Lo/removeSubscription;->getExtras:I

    if-ne v15, v6, :cond_7

    goto :goto_6

    .line 21776
    :cond_7
    iget v15, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_7

    .line 21830
    :cond_8
    iget v15, v0, Lo/removeSubscription;->getExtras:I

    if-ne v15, v6, :cond_9

    :goto_6
    const/4 v15, 0x0

    goto :goto_7

    .line 21833
    :cond_9
    iget v15, v0, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_7
    mul-int v15, v15, v11

    .line 348
    iget-object v4, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v4, v4, v9

    .line 22058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 348
    iget-object v4, v4, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v12, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lo/extraCallback$onMessageChannelReady;

    .line 349
    move-object/from16 v5, v17

    check-cast v5, Lo/isEmpty;

    .line 350
    iget-object v5, v5, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    invoke-static {v5, v1, v2, v13}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;IZI)I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v5, 0x1

    goto :goto_8

    .line 352
    :cond_a
    iget-object v4, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v4, v4, v10

    .line 23058
    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 352
    iget-object v4, v4, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lo/extraCallback$onMessageChannelReady;

    .line 353
    move-object/from16 v6, v17

    check-cast v6, Lo/isEmpty;

    .line 354
    iget-object v6, v6, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    move-object/from16 p3, v4

    add-int v4, v15, v13

    invoke-static {v6, v1, v2, v4}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;IZI)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v4, p3

    const/16 v6, 0x8

    goto :goto_9

    :cond_b
    if-eqz v3, :cond_c

    sub-int/2addr v12, v7

    add-int/2addr v5, v8

    :goto_a
    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    if-nez v1, :cond_e

    .line 23773
    iget v4, v0, Lo/removeSubscription;->getExtras:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_d

    goto :goto_b

    .line 23776
    :cond_d
    iget v4, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_c

    :cond_e
    const/16 v6, 0x8

    .line 23830
    iget v4, v0, Lo/removeSubscription;->getExtras:I

    if-ne v4, v6, :cond_f

    :goto_b
    const/4 v4, 0x0

    goto :goto_c

    .line 23833
    :cond_f
    iget v4, v0, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_c
    mul-int v4, v4, v11

    add-int/2addr v5, v4

    goto :goto_a

    :goto_d
    if-ne v1, v4, :cond_13

    .line 366
    iget-object v6, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 24058
    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 366
    iget-object v6, v6, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v18, 0x0

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lo/extraCallback$onMessageChannelReady;

    move-object/from16 p3, v6

    .line 367
    move-object/from16 v6, v16

    check-cast v6, Lo/isEmpty;

    if-ne v11, v4, :cond_10

    .line 369
    iget-object v4, v6, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, v4, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    add-int v6, v7, v13

    invoke-static {v4, v1, v2, v6}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;IZI)I

    move-result v4

    move/from16 v6, v18

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v6, p3

    goto :goto_f

    :cond_10
    move/from16 v4, v18

    .line 371
    iget-object v6, v6, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    mul-int v16, v8, v11

    move/from16 v17, v10

    add-int v10, v16, v13

    invoke-static {v6, v1, v2, v10}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;IZI)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v6, p3

    move/from16 v10, v17

    :goto_f
    const/4 v4, 0x1

    goto :goto_e

    :cond_11
    move/from16 v17, v10

    move/from16 v4, v18

    .line 374
    iget-object v6, v0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 25058
    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 374
    iget-object v6, v6, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-lez v6, :cond_14

    if-nez v3, :cond_14

    const/4 v3, 0x1

    if-ne v11, v3, :cond_12

    add-int/2addr v4, v7

    goto :goto_10

    :cond_12
    sub-int/2addr v4, v8

    goto :goto_10

    :cond_13
    move/from16 v17, v10

    const/4 v4, 0x0

    .line 384
    :cond_14
    :goto_10
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v14, v3

    add-int/2addr v15, v13

    const/4 v3, -0x1

    if-ne v11, v3, :cond_15

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, v19

    :cond_15
    if-eqz v2, :cond_16

    .line 393
    invoke-static {v0, v1, v13}, Lo/sendRequest;->onPostMessage(Lo/removeSubscription;II)V

    .line 394
    invoke-virtual {v0, v13, v15, v1}, Lo/removeSubscription;->onPostMessage(III)V

    goto :goto_12

    .line 396
    :cond_16
    iget-object v2, v0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    if-nez v1, :cond_17

    .line 25084
    iget-object v2, v2, Lo/registerCallbackMessenger;->asBinder:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_11

    :cond_17
    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    .line 25086
    iget-object v2, v2, Lo/registerCallbackMessenger;->asInterface:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_11
    if-nez v1, :cond_19

    .line 25565
    iput v13, v0, Lo/removeSubscription;->getDefaultImpl:I

    goto :goto_12

    :cond_19
    if-ne v1, v3, :cond_1a

    .line 25567
    iput v13, v0, Lo/removeSubscription;->write:I

    .line 400
    :cond_1a
    :goto_12
    invoke-virtual/range {p0 .. p1}, Lo/removeSubscription;->asInterface(I)Lo/removeSubscription$onNavigationEvent;

    move-result-object v2

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v2, v3, :cond_1c

    iget v2, v0, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1c

    .line 402
    iget-object v2, v0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    if-nez v1, :cond_1b

    .line 26084
    iget-object v2, v2, Lo/registerCallbackMessenger;->asBinder:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1b
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    .line 26086
    iget-object v2, v2, Lo/registerCallbackMessenger;->asInterface:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1c
    :goto_13
    iget-object v2, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v9

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v2, v2, v17

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_1e

    .line 26555
    iget-object v2, v0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 408
    iget-object v3, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, v9

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    if-ne v3, v2, :cond_1e

    iget-object v3, v0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v3, v3, v17

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    if-ne v3, v2, :cond_1e

    .line 410
    iget-object v2, v0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    if-nez v1, :cond_1d

    .line 27084
    iget-object v1, v2, Lo/registerCallbackMessenger;->asBinder:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1d
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    .line 27086
    iget-object v1, v2, Lo/registerCallbackMessenger;->asInterface:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_14
    return v14
.end method

.method public static ICustomTabsCallback(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/registerCallbackMessenger;",
            ">;II)V"
        }
    .end annotation

    .line 444
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    .line 446
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/registerCallbackMessenger;

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 28075
    iget-object v3, v3, Lo/registerCallbackMessenger;->asBinder:Ljava/util/HashSet;

    goto :goto_1

    :cond_0
    if-ne p1, v4, :cond_1

    .line 28077
    iget-object v3, v3, Lo/registerCallbackMessenger;->asInterface:Ljava/util/HashSet;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 447
    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/removeSubscription;

    .line 449
    iget-boolean v6, v5, Lo/removeSubscription;->unsubscribe:Z

    if-eqz v6, :cond_2

    shl-int/lit8 v6, p1, 0x1

    .line 28468
    iget-object v7, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v7, v7, v6

    .line 28469
    iget-object v8, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v9, v6, 0x1

    aget-object v8, v8, v9

    .line 28470
    iget-object v9, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 28472
    invoke-static {v5, p1}, Lo/newArray;->extraCallback(Lo/removeSubscription;I)I

    move-result v6

    invoke-virtual {v7}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v7

    add-int/2addr v6, v7

    .line 28473
    invoke-static {v5, p1, v6}, Lo/sendRequest;->onPostMessage(Lo/removeSubscription;II)V

    goto :goto_2

    .line 28481
    :cond_4
    iget v9, v5, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    invoke-virtual {v5, p1}, Lo/removeSubscription;->asInterface(I)Lo/removeSubscription$onNavigationEvent;

    move-result-object v9

    sget-object v10, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v9, v10, :cond_5

    .line 28482
    invoke-static {v5}, Lo/newArray;->onMessageChannelReady(Lo/removeSubscription;)I

    move-result v9

    .line 28483
    iget-object v10, v5, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v6, v10, v6

    .line 29058
    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 28483
    iget v6, v6, Lo/isEmpty;->onRelationshipValidationResult:F

    float-to-int v6, v6

    add-int v10, v6, v9

    .line 30058
    iget-object v11, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 31058
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 28485
    iput-object v7, v11, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 32058
    iget-object v7, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    int-to-float v9, v9

    .line 28486
    iput v9, v7, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 33058
    iget-object v7, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 28487
    iput v4, v7, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    .line 28488
    invoke-virtual {v5, v6, v10, p1}, Lo/removeSubscription;->onPostMessage(III)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 33549
    iget v6, v5, Lo/removeSubscription;->getDefaultImpl:I

    goto :goto_4

    :cond_6
    if-ne p1, v4, :cond_7

    .line 33551
    iget v6, v5, Lo/removeSubscription;->write:I

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    sub-int v6, p2, v6

    const/16 v7, 0x8

    if-nez p1, :cond_8

    .line 34773
    iget v8, v5, Lo/removeSubscription;->getExtras:I

    if-eq v8, v7, :cond_9

    .line 34776
    iget v7, v5, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_5

    :cond_8
    if-ne p1, v4, :cond_9

    .line 34830
    iget v8, v5, Lo/removeSubscription;->getExtras:I

    if-eq v8, v7, :cond_9

    .line 34833
    iget v7, v5, Lo/removeSubscription;->INotificationSideChannel:I

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    sub-int v7, v6, v7

    .line 28493
    invoke-virtual {v5, v7, v6, p1}, Lo/removeSubscription;->onPostMessage(III)V

    .line 28494
    invoke-static {v5, p1, v7}, Lo/sendRequest;->onPostMessage(Lo/removeSubscription;II)V

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static ICustomTabsCallback(Lo/addSubscription;)V
    .locals 10

    .line 2122
    iget v0, p0, Lo/addSubscription;->onResult:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2431
    iget-object v0, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2432
    iget-object v0, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    new-instance v1, Lo/registerCallbackMessenger;

    iget-object p0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Lo/registerCallbackMessenger;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lo/addSubscription;->onError:Z

    .line 50
    iput-boolean v2, p0, Lo/addSubscription;->setInternalConnectionCallback:Z

    .line 51
    iput-boolean v2, p0, Lo/addSubscription;->onConnected:Z

    .line 52
    iput-boolean v2, p0, Lo/addSubscription;->onConnectionSuspended:Z

    .line 53
    iget-object v1, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    .line 54
    iget-object v3, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v4

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v5

    sget-object v6, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 58
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/removeSubscription;

    const/4 v9, 0x0

    .line 61
    iput-object v9, v8, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    .line 62
    iput-boolean v2, v8, Lo/removeSubscription;->sendCustomAction:Z

    .line 63
    invoke-virtual {v8}, Lo/removeSubscription;->extraCallback()V

    goto :goto_4

    .line 65
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/removeSubscription;

    .line 66
    iget-object v8, v7, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    if-nez v8, :cond_6

    .line 3110
    new-instance v8, Lo/registerCallbackMessenger;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v8, v9, v2}, Lo/registerCallbackMessenger;-><init>(Ljava/util/List;B)V

    .line 3111
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3112
    invoke-static {v7, v8, v3, v6}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;Lo/registerCallbackMessenger;Ljava/util/List;Z)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3431
    iget-object v0, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3432
    iget-object v0, p0, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    new-instance v1, Lo/registerCallbackMessenger;

    iget-object v3, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Lo/registerCallbackMessenger;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 69
    iput-boolean v2, p0, Lo/addSubscription;->onError:Z

    return-void

    .line 77
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/registerCallbackMessenger;

    .line 79
    invoke-static {v8, v2}, Lo/newArray;->extraCallback(Lo/registerCallbackMessenger;I)I

    move-result v9

    .line 78
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 81
    invoke-static {v8, v0}, Lo/newArray;->extraCallback(Lo/registerCallbackMessenger;I)I

    move-result v8

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    .line 85
    sget-object v1, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {p0, v1}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    .line 86
    invoke-virtual {p0, v6}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 87
    iput-boolean v0, p0, Lo/addSubscription;->setInternalConnectionCallback:Z

    .line 88
    iput-boolean v0, p0, Lo/addSubscription;->onConnected:Z

    .line 89
    iput v6, p0, Lo/addSubscription;->MediaBrowserCompat$CustomActionCallback:I

    :cond_9
    if-eqz v5, :cond_a

    .line 92
    sget-object v1, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {p0, v1}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    .line 93
    invoke-virtual {p0, v7}, Lo/removeSubscription;->onPostMessage(I)V

    .line 94
    iput-boolean v0, p0, Lo/addSubscription;->setInternalConnectionCallback:Z

    .line 95
    iput-boolean v0, p0, Lo/addSubscription;->onConnectionSuspended:Z

    .line 96
    iput v7, p0, Lo/addSubscription;->onProgressUpdate:I

    .line 3773
    :cond_a
    iget v1, p0, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    .line 3776
    :cond_b
    iget v1, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 98
    :goto_6
    invoke-static {v3, v2, v1}, Lo/newArray;->ICustomTabsCallback(Ljava/util/List;II)V

    .line 3830
    iget v1, p0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v4, :cond_c

    goto :goto_7

    .line 3833
    :cond_c
    iget v2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 99
    :goto_7
    invoke-static {v3, v0, v2}, Lo/newArray;->ICustomTabsCallback(Ljava/util/List;II)V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/removeSubscription;Lo/registerCallbackMessenger;Ljava/util/List;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/removeSubscription;",
            "Lo/registerCallbackMessenger;",
            "Ljava/util/List<",
            "Lo/registerCallbackMessenger;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lo/removeSubscription;->search:Z

    .line 4555
    iget-object v2, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 132
    check-cast v2, Lo/addSubscription;

    .line 133
    iget-object v3, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    if-nez v3, :cond_1e

    .line 135
    iput-boolean v0, p0, Lo/removeSubscription;->unsubscribe:Z

    .line 136
    iget-object v3, p1, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p1, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    .line 139
    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_1

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_1

    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_1

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_1

    iget-object v3, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_1

    iget-object v3, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_1

    .line 5260
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 5261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 5262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    if-eqz p3, :cond_1

    return v1

    .line 151
    :cond_1
    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_4

    .line 153
    invoke-virtual {v2}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eqz p3, :cond_2

    .line 6260
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 6261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 6262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    return v1

    .line 157
    :cond_2
    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 6555
    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_3

    .line 157
    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 7555
    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eq v3, v4, :cond_4

    .line 8260
    :cond_3
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 8261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 8262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    .line 163
    :cond_4
    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_7

    .line 165
    invoke-virtual {v2}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eqz p3, :cond_5

    .line 9260
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 9261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 9262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    return v1

    .line 169
    :cond_5
    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 9555
    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_6

    .line 169
    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 10555
    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eq v3, v4, :cond_7

    .line 11260
    :cond_6
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 11261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 11262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    .line 174
    :cond_7
    invoke-virtual {p0}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v3

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    .line 175
    :goto_0
    invoke-virtual {p0}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v4

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_a

    iget v3, p0, Lo/removeSubscription;->setDefaultImpl:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    .line 178
    invoke-static {p0}, Lo/newArray;->onMessageChannelReady(Lo/removeSubscription;)I

    goto :goto_2

    .line 179
    :cond_a
    invoke-virtual {p0}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v3

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-eq v3, v4, :cond_b

    .line 180
    invoke-virtual {p0}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v3

    sget-object v4, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v4, :cond_c

    .line 12260
    :cond_b
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 12261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 12262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    if-eqz p3, :cond_c

    return v1

    .line 187
    :cond_c
    :goto_2
    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_d

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_10

    :cond_d
    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_10

    :cond_e
    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_f

    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_10

    :cond_f
    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_11

    :cond_10
    iget-object v3, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_11

    .line 193
    instance-of v3, p0, Lo/getMediaItem;

    if-nez v3, :cond_11

    instance-of v3, p0, Lo/MediaBrowserCompat$Subscription;

    if-nez v3, :cond_11

    .line 194
    iget-object v3, p1, Lo/registerCallbackMessenger;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_11
    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_12

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_15

    :cond_12
    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_15

    :cond_13
    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_15

    :cond_14
    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_16

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v4, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v3, v4, :cond_16

    :cond_15
    iget-object v3, p0, Lo/removeSubscription;->ICustomTabsService$Stub$Proxy:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_16

    iget-object v3, p0, Lo/removeSubscription;->ICustomTabsService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v3, :cond_16

    .line 205
    instance-of v3, p0, Lo/getMediaItem;

    if-nez v3, :cond_16

    instance-of v3, p0, Lo/MediaBrowserCompat$Subscription;

    if-nez v3, :cond_16

    .line 206
    iget-object v3, p1, Lo/registerCallbackMessenger;->onPostMessage:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_16
    instance-of v3, p0, Lo/MediaBrowserCompat$Subscription;

    if-eqz v3, :cond_19

    .line 13260
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 13261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 13262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    if-eqz p3, :cond_17

    return v1

    .line 231
    :cond_17
    move-object v3, p0

    check-cast v3, Lo/MediaBrowserCompat$Subscription;

    const/4 v4, 0x0

    .line 232
    :goto_3
    iget v5, v3, Lo/MediaBrowserCompat$Subscription;->handleMessage:I

    if-ge v4, v5, :cond_19

    .line 233
    iget-object v5, v3, Lo/MediaBrowserCompat$Subscription;->MediaBrowserCompat$ConnectionCallback:[Lo/removeSubscription;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;Lo/registerCallbackMessenger;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 239
    :cond_19
    iget-object v3, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_1d

    .line 241
    iget-object v5, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v5, v5, v4

    .line 242
    iget-object v6, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v6, :cond_1c

    iget-object v6, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 13555
    iget-object v7, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eq v6, v7, :cond_1c

    .line 243
    iget-object v6, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v6, v7, :cond_1a

    .line 14260
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 14261
    iput-boolean v1, v2, Lo/addSubscription;->onError:Z

    .line 14262
    iput-boolean v1, p0, Lo/removeSubscription;->unsubscribe:Z

    if-eqz p3, :cond_1b

    return v1

    .line 15058
    :cond_1a
    iget-object v6, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 14418
    iget-object v7, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_1b

    iget-object v7, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eq v7, v5, :cond_1b

    .line 14420
    iget-object v7, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 16058
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 17038
    iget-object v7, v7, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1b
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    invoke-static {v5, p1, p2, p3}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;Lo/registerCallbackMessenger;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1d
    return v0

    .line 211
    :cond_1e
    iget-object p3, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    if-eq p3, p1, :cond_20

    .line 212
    iget-object p3, p1, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    iget-object v2, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    iget-object v2, v2, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object p3, p1, Lo/registerCallbackMessenger;->onMessageChannelReady:Ljava/util/List;

    iget-object v2, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    iget-object v2, v2, Lo/registerCallbackMessenger;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object p3, p1, Lo/registerCallbackMessenger;->onPostMessage:Ljava/util/List;

    iget-object v2, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    iget-object v2, v2, Lo/registerCallbackMessenger;->onPostMessage:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object p3, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    iget-boolean p3, p3, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    if-nez p3, :cond_1f

    .line 216
    iput-boolean v1, p1, Lo/registerCallbackMessenger;->ICustomTabsCallback:Z

    .line 218
    :cond_1f
    iget-object p3, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object p0, p0, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    iget-object p0, p0, Lo/registerCallbackMessenger;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/removeSubscription;

    .line 220
    iput-object p1, p2, Lo/removeSubscription;->extraCommand:Lo/registerCallbackMessenger;

    goto :goto_5

    :cond_20
    return v0
.end method

.method private static extraCallback(Lo/registerCallbackMessenger;I)I
    .locals 10

    shl-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 17066
    iget-object v2, p0, Lo/registerCallbackMessenger;->onMessageChannelReady:Ljava/util/List;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 17068
    iget-object v2, p0, Lo/registerCallbackMessenger;->onPostMessage:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 277
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 279
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/removeSubscription;

    .line 280
    iget-object v8, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    add-int/lit8 v9, v0, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v8, :cond_3

    iget-object v8, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v8, v8, v0

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v8, :cond_2

    iget-object v8, v7, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v8, v8, v9

    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    .line 283
    :goto_3
    invoke-static {v7, p1, v8, v4}, Lo/newArray;->ICustomTabsCallback(Lo/removeSubscription;IZI)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 286
    :cond_4
    iget-object p0, p0, Lo/registerCallbackMessenger;->extraCallback:[I

    aput v6, p0, p1

    return v6
.end method

.method private static extraCallback(Lo/removeSubscription;I)I
    .locals 7

    shl-int/lit8 v0, p1, 0x1

    .line 506
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aget-object v1, v1, v0

    .line 507
    iget-object v2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    aget-object v0, v2, v0

    .line 508
    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v5, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v2, v5, :cond_5

    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget-object v5, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-ne v2, v5, :cond_5

    .line 513
    iget-object v2, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    const/16 v5, 0x8

    if-nez p1, :cond_0

    .line 35773
    iget v6, v2, Lo/removeSubscription;->getExtras:I

    if-eq v6, v5, :cond_1

    .line 35776
    iget v2, v2, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    .line 35830
    iget v6, v2, Lo/removeSubscription;->getExtras:I

    if-eq v6, v5, :cond_1

    .line 35833
    iget v2, v2, Lo/removeSubscription;->INotificationSideChannel:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 514
    iget v6, p0, Lo/removeSubscription;->getServiceComponent:F

    goto :goto_1

    :cond_2
    iget v6, p0, Lo/removeSubscription;->isConnected:F

    :goto_1
    if-nez p1, :cond_3

    .line 36773
    iget p1, p0, Lo/removeSubscription;->getExtras:I

    if-eq p1, v5, :cond_4

    .line 36776
    iget v4, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    goto :goto_2

    :cond_3
    if-ne p1, v3, :cond_4

    .line 36830
    iget p1, p0, Lo/removeSubscription;->getExtras:I

    if-eq p1, v5, :cond_4

    .line 36833
    iget v4, p0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 517
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v2, v4

    int-to-float p0, v2

    mul-float p0, p0, v6

    float-to-int p0, p0

    return p0

    :cond_5
    return v4
.end method

.method public static extraCallback(Ljava/io/File;Lo/setTrimPathStart;)V
    .locals 5

    .line 42028
    invoke-interface {p1, p0}, Lo/setTrimPathStart;->ICustomTabsCallback(Ljava/io/File;)V

    .line 42029
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42031
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42032
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42033
    invoke-static {v3, p1}, Lo/newArray;->extraCallback(Ljava/io/File;Lo/setTrimPathStart;)V

    goto :goto_1

    .line 42035
    :cond_0
    invoke-interface {p1, v3}, Lo/setTrimPathStart;->extraCallback(Ljava/io/File;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42039
    :cond_1
    invoke-interface {p1, p0}, Lo/setTrimPathStart;->onMessageChannelReady(Ljava/io/File;)V

    return-void
.end method

.method public static extraCallback(Ljava/io/File;)Z
    .locals 1

    .line 43064
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43065
    invoke-static {p0}, Lo/newArray;->onNavigationEvent(Ljava/io/File;)Z

    .line 43068
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Lo/removeSubscription;)I
    .locals 4

    .line 533
    invoke-virtual {p0}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_3

    .line 534
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    if-nez v0, :cond_1

    .line 37830
    iget v0, p0, Lo/removeSubscription;->getExtras:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 37833
    :cond_0
    iget v2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_0
    int-to-float v0, v2

    .line 535
    iget v1, p0, Lo/removeSubscription;->setDefaultImpl:F

    mul-float v0, v0, v1

    goto :goto_2

    .line 38830
    :cond_1
    iget v0, p0, Lo/removeSubscription;->getExtras:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 38833
    :cond_2
    iget v2, p0, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_1
    int-to-float v0, v2

    .line 537
    iget v1, p0, Lo/removeSubscription;->setDefaultImpl:F

    div-float/2addr v0, v1

    :goto_2
    float-to-int v0, v0

    .line 539
    invoke-virtual {p0, v0}, Lo/removeSubscription;->onNavigationEvent(I)V

    goto :goto_6

    .line 540
    :cond_3
    invoke-virtual {p0}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v1, :cond_7

    .line 541
    iget v0, p0, Lo/removeSubscription;->INotificationSideChannel$Stub$Proxy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 39773
    iget v0, p0, Lo/removeSubscription;->getExtras:I

    if-ne v0, v3, :cond_4

    goto :goto_3

    .line 39776
    :cond_4
    iget v2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_3
    int-to-float v0, v2

    .line 542
    iget v1, p0, Lo/removeSubscription;->setDefaultImpl:F

    mul-float v0, v0, v1

    goto :goto_5

    .line 40773
    :cond_5
    iget v0, p0, Lo/removeSubscription;->getExtras:I

    if-ne v0, v3, :cond_6

    goto :goto_4

    .line 40776
    :cond_6
    iget v2, p0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_4
    int-to-float v0, v2

    .line 544
    iget v1, p0, Lo/removeSubscription;->setDefaultImpl:F

    div-float/2addr v0, v1

    :goto_5
    float-to-int v0, v0

    .line 546
    invoke-virtual {p0, v0}, Lo/removeSubscription;->onPostMessage(I)V

    goto :goto_6

    :cond_7
    const/4 v0, -0x1

    :goto_6
    return v0
.end method

.method public static onNavigationEvent(Ljava/io/File;)Z
    .locals 5

    .line 42047
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 42050
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 42064
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42065
    invoke-static {v3}, Lo/newArray;->onNavigationEvent(Ljava/io/File;)Z

    .line 42068
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 41049
    new-instance v0, Lo/setVisibility;

    invoke-direct {v0, p1, p2, p0}, Lo/setVisibility;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/newArray;)V

    return-object v0
.end method
