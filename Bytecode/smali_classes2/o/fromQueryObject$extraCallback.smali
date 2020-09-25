.class final Lo/fromQueryObject$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromQueryObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private asBinder:[Lo/loadsAllData;

.field private asInterface:I

.field private extraCallback:I

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/updatePriority;

.field private onPostMessage:Z

.field private onRelationshipValidationResult:I


# direct methods
.method constructor <init>(Lo/updatePriority;)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, v0}, Lo/fromQueryObject$extraCallback;-><init>(Lo/updatePriority;B)V

    return-void
.end method

.method private constructor <init>(Lo/updatePriority;B)V
    .locals 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, 0x7fffffff

    .line 383
    iput p2, p0, Lo/fromQueryObject$extraCallback;->extraCallback:I

    const/16 p2, 0x8

    new-array p2, p2, [Lo/loadsAllData;

    .line 390
    iput-object p2, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    .line 392
    array-length p2, p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    const/4 p2, 0x0

    .line 393
    iput p2, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    .line 394
    iput p2, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    const/16 p2, 0x1000

    .line 402
    iput p2, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback:I

    .line 403
    iput-boolean v0, p0, Lo/fromQueryObject$extraCallback;->onMessageChannelReady:Z

    .line 404
    iput-object p1, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    return-void
.end method

.method private ICustomTabsCallback(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 534
    iget-object p2, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 545
    iget-object v0, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 548
    :cond_1
    iget-object p2, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {p2, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void
.end method

.method private extraCallback(Lo/matches;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-static {}, Lo/getEventRegistrations;->onMessageChannelReady()Lo/getEventRegistrations;

    invoke-static {p1}, Lo/getEventRegistrations;->ICustomTabsCallback(Lo/matches;)I

    move-result v0

    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v1

    const/16 v2, 0x7f

    if-ge v0, v1, :cond_0

    .line 553
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 554
    invoke-static {}, Lo/getEventRegistrations;->onMessageChannelReady()Lo/getEventRegistrations;

    invoke-static {p1, v0}, Lo/getEventRegistrations;->onNavigationEvent(Lo/matches;Lo/filtersNodes;)V

    .line 2548
    new-instance p1, Lo/matches;

    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lo/matches;-><init>([B)V

    .line 556
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v0

    const/16 v1, 0x80

    invoke-direct {p0, v0, v2, v1}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    .line 557
    iget-object v0, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 2956
    invoke-virtual {p1, v0}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    .line 560
    iget-object v0, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    if-eqz p1, :cond_1

    .line 3956
    invoke-virtual {p1, v0}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    return-void

    .line 3955
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMessageChannelReady(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 419
    iget-object v1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 420
    iget-object v2, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    aget-object v2, v2, v1

    iget v2, v2, Lo/loadsAllData;->asInterface:I

    sub-int/2addr p1, v2

    .line 421
    iget v2, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    iget-object v3, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    aget-object v3, v3, v1

    iget v3, v3, Lo/loadsAllData;->asInterface:I

    sub-int/2addr v2, v3

    iput v2, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    .line 422
    iget v2, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    iget v1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object p1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    iget v1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 428
    iget p1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    :cond_1
    return v0
.end method

.method private onNavigationEvent(Lo/loadsAllData;)V
    .locals 6

    .line 434
    iget v0, p1, Lo/loadsAllData;->asInterface:I

    .line 437
    iget v1, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1408
    iget-object p1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1409
    iget-object p1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    .line 1410
    iput v2, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    .line 1411
    iput v2, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    return-void

    .line 443
    :cond_0
    iget v3, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 444
    invoke-direct {p0, v3}, Lo/fromQueryObject$extraCallback;->onMessageChannelReady(I)I

    .line 446
    iget v1, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 447
    array-length v1, v3

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lo/loadsAllData;

    .line 448
    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v2, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    .line 450
    iput-object v1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    .line 452
    :cond_1
    iget v1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    .line 453
    iget-object v2, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    aput-object p1, v2, v1

    .line 454
    iget p1, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    .line 455
    iget p1, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    return-void
.end method


# virtual methods
.method final onNavigationEvent(I)V
    .locals 2

    const/16 v0, 0x4000

    .line 566
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 569
    iget v0, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    .line 572
    iget v0, p0, Lo/fromQueryObject$extraCallback;->extraCallback:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lo/fromQueryObject$extraCallback;->extraCallback:I

    :cond_1
    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lo/fromQueryObject$extraCallback;->onPostMessage:Z

    .line 576
    iput p1, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback:I

    .line 4581
    iget v1, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    if-ge p1, v1, :cond_3

    if-nez p1, :cond_2

    .line 5408
    iget-object p1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5409
    iget-object p1, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    const/4 p1, 0x0

    .line 5410
    iput p1, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback$Stub:I

    .line 5411
    iput p1, p0, Lo/fromQueryObject$extraCallback;->asInterface:I

    return-void

    :cond_2
    sub-int/2addr v1, p1

    .line 4585
    invoke-direct {p0, v1}, Lo/fromQueryObject$extraCallback;->onMessageChannelReady(I)I

    :cond_3
    return-void
.end method

.method final onPostMessage(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget-boolean v0, p0, Lo/fromQueryObject$extraCallback;->onPostMessage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 462
    iget v0, p0, Lo/fromQueryObject$extraCallback;->extraCallback:I

    iget v2, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 464
    invoke-direct {p0, v0, v4, v3}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    .line 466
    :cond_0
    iput-boolean v1, p0, Lo/fromQueryObject$extraCallback;->onPostMessage:Z

    const v0, 0x7fffffff

    .line 467
    iput v0, p0, Lo/fromQueryObject$extraCallback;->extraCallback:I

    .line 468
    iget v0, p0, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback:I

    invoke-direct {p0, v0, v4, v3}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    .line 471
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    .line 472
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/loadsAllData;

    .line 473
    iget-object v4, v3, Lo/loadsAllData;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v4}, Lo/matches;->asBinder()Lo/matches;

    move-result-object v4

    .line 474
    iget-object v5, v3, Lo/loadsAllData;->ICustomTabsCallback$Stub:Lo/matches;

    .line 478
    sget-object v6, Lo/fromQueryObject;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 480
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_3

    const/16 v9, 0x8

    if-ge v6, v9, :cond_3

    .line 486
    sget-object v9, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lo/loadsAllData;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-static {v9, v5}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_1

    .line 488
    :cond_2
    sget-object v9, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    aget-object v9, v9, v6

    iget-object v9, v9, Lo/loadsAllData;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-static {v9, v5}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_1

    :cond_3
    move v9, v6

    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_1
    if-ne v6, v7, :cond_7

    .line 495
    iget v10, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    array-length v8, v8

    :goto_2
    if-ge v10, v8, :cond_7

    .line 496
    iget-object v11, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    aget-object v11, v11, v10

    iget-object v11, v11, Lo/loadsAllData;->onRelationshipValidationResult:Lo/matches;

    invoke-static {v11, v4}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 497
    iget-object v11, p0, Lo/fromQueryObject$extraCallback;->asBinder:[Lo/loadsAllData;

    aget-object v11, v11, v10

    iget-object v11, v11, Lo/loadsAllData;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-static {v11, v5}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 498
    iget v6, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    sub-int/2addr v10, v6

    sget-object v6, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_3

    :cond_5
    if-ne v9, v7, :cond_6

    .line 501
    iget v9, p0, Lo/fromQueryObject$extraCallback;->onRelationshipValidationResult:I

    sub-int v9, v10, v9

    sget-object v11, Lo/fromQueryObject;->onMessageChannelReady:[Lo/loadsAllData;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eq v6, v7, :cond_8

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 509
    invoke-direct {p0, v6, v3, v4}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    goto :goto_4

    :cond_8
    const/16 v6, 0x40

    if-ne v9, v7, :cond_9

    .line 512
    iget-object v7, p0, Lo/fromQueryObject$extraCallback;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v7, v6}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 513
    invoke-direct {p0, v4}, Lo/fromQueryObject$extraCallback;->extraCallback(Lo/matches;)V

    .line 514
    invoke-direct {p0, v5}, Lo/fromQueryObject$extraCallback;->extraCallback(Lo/matches;)V

    .line 515
    invoke-direct {p0, v3}, Lo/fromQueryObject$extraCallback;->onNavigationEvent(Lo/loadsAllData;)V

    goto :goto_4

    .line 516
    :cond_9
    sget-object v7, Lo/loadsAllData;->ICustomTabsCallback:Lo/matches;

    .line 2401
    invoke-virtual {v7}, Lo/matches;->onTransact()I

    move-result v8

    invoke-virtual {v4, v1, v7, v1, v8}, Lo/matches;->onMessageChannelReady(ILo/matches;II)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 516
    sget-object v7, Lo/loadsAllData;->asBinder:Lo/matches;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v3, 0xf

    .line 519
    invoke-direct {p0, v9, v3, v1}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    .line 520
    invoke-direct {p0, v5}, Lo/fromQueryObject$extraCallback;->extraCallback(Lo/matches;)V

    goto :goto_4

    :cond_a
    const/16 v4, 0x3f

    .line 523
    invoke-direct {p0, v9, v4, v6}, Lo/fromQueryObject$extraCallback;->ICustomTabsCallback(III)V

    .line 524
    invoke-direct {p0, v5}, Lo/fromQueryObject$extraCallback;->extraCallback(Lo/matches;)V

    .line 525
    invoke-direct {p0, v3}, Lo/fromQueryObject$extraCallback;->onNavigationEvent(Lo/loadsAllData;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method
