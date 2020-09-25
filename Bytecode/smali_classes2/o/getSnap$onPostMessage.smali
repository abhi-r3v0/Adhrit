.class final Lo/getSnap$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSnap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:I

.field private extraCallback:[Lo/getOptExclusiveStart;

.field private onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/updatePriority;

.field private onPostMessage:I

.field private onTransact:I


# direct methods
.method constructor <init>(Lo/updatePriority;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, p1, v0}, Lo/getSnap$onPostMessage;-><init>(Lo/updatePriority;B)V

    return-void
.end method

.method private constructor <init>(Lo/updatePriority;B)V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x8

    new-array p2, p2, [Lo/getOptExclusiveStart;

    .line 407
    iput-object p2, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    .line 412
    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lo/getSnap$onPostMessage;->onTransact:I

    const/16 p2, 0x1000

    .line 423
    iput p2, p0, Lo/getSnap$onPostMessage;->ICustomTabsCallback:I

    const/4 p2, 0x0

    .line 424
    iput-boolean p2, p0, Lo/getSnap$onPostMessage;->onMessageChannelReady:Z

    .line 425
    iput-object p1, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    return-void
.end method

.method private onMessageChannelReady(Lo/getOptExclusiveStart;)V
    .locals 6

    .line 564
    iget v0, p1, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    .line 567
    iget v1, p0, Lo/getSnap$onPostMessage;->ICustomTabsCallback:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 4539
    iget-object p1, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4540
    iget-object p1, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/getSnap$onPostMessage;->onTransact:I

    .line 4541
    iput v2, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    .line 4542
    iput v2, p0, Lo/getSnap$onPostMessage;->asBinder:I

    return-void

    .line 573
    :cond_0
    iget v3, p0, Lo/getSnap$onPostMessage;->asBinder:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 574
    invoke-direct {p0, v3}, Lo/getSnap$onPostMessage;->onPostMessage(I)I

    .line 576
    iget v1, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 577
    array-length v1, v3

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lo/getOptExclusiveStart;

    .line 578
    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget-object v2, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/getSnap$onPostMessage;->onTransact:I

    .line 580
    iput-object v1, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    .line 582
    :cond_1
    iget v1, p0, Lo/getSnap$onPostMessage;->onTransact:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/getSnap$onPostMessage;->onTransact:I

    .line 583
    iget-object v2, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    aput-object p1, v2, v1

    .line 584
    iget p1, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    .line 585
    iget p1, p0, Lo/getSnap$onPostMessage;->asBinder:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getSnap$onPostMessage;->asBinder:I

    return-void
.end method

.method private onNavigationEvent(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 504
    iget-object p2, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 515
    iget-object v0, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 518
    :cond_1
    iget-object p2, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {p2, p1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    return-void
.end method

.method private onNavigationEvent(Lo/matches;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/getSnap$onPostMessage;->onNavigationEvent(III)V

    .line 530
    iget-object v0, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    if-eqz p1, :cond_0

    .line 3956
    invoke-virtual {p1, v0}, Lo/matches;->onMessageChannelReady(Lo/updatePriority;)V

    return-void

    .line 3955
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 550
    iget-object v1, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lo/getSnap$onPostMessage;->onTransact:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 551
    iget-object v2, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    aget-object v2, v2, v1

    iget v2, v2, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    sub-int/2addr p1, v2

    .line 552
    iget v2, p0, Lo/getSnap$onPostMessage;->asBinder:I

    iget-object v3, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    aget-object v3, v3, v1

    iget v3, v3, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    sub-int/2addr v2, v3

    iput v2, p0, Lo/getSnap$onPostMessage;->asBinder:I

    .line 553
    iget v2, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 556
    :cond_0
    iget-object p1, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    iget v1, p0, Lo/getSnap$onPostMessage;->onTransact:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lo/getSnap$onPostMessage;->onPostMessage:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget p1, p0, Lo/getSnap$onPostMessage;->onTransact:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/getSnap$onPostMessage;->onTransact:I

    :cond_1
    return v0
.end method


# virtual methods
.method final onMessageChannelReady(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 442
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getOptExclusiveStart;

    .line 443
    iget-object v4, v3, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v4}, Lo/matches;->asBinder()Lo/matches;

    move-result-object v4

    .line 444
    iget-object v5, v3, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    .line 448
    invoke-static {}, Lo/getSnap;->onPostMessage()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    .line 450
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x2

    if-lt v6, v8, :cond_1

    const/4 v8, 0x7

    if-gt v6, v8, :cond_1

    .line 456
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_1

    .line 458
    :cond_0
    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v8

    aget-object v8, v8, v6

    iget-object v8, v8, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v6, 0x1

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_1

    :cond_1
    move v8, v6

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    const/4 v8, -0x1

    :goto_1
    if-ne v6, v7, :cond_5

    .line 465
    iget v9, p0, Lo/getSnap$onPostMessage;->onTransact:I

    :goto_2
    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    array-length v11, v10

    if-ge v9, v11, :cond_5

    .line 466
    aget-object v10, v10, v9

    iget-object v10, v10, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 467
    iget-object v10, p0, Lo/getSnap$onPostMessage;->extraCallback:[Lo/getOptExclusiveStart;

    aget-object v10, v10, v9

    iget-object v10, v10, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 468
    iget v6, p0, Lo/getSnap$onPostMessage;->onTransact:I

    sub-int/2addr v9, v6

    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v9

    goto :goto_3

    :cond_3
    if-ne v8, v7, :cond_4

    .line 471
    iget v8, p0, Lo/getSnap$onPostMessage;->onTransact:I

    sub-int v8, v9, v8

    invoke-static {}, Lo/getSnap;->ICustomTabsCallback()[Lo/getOptExclusiveStart;

    move-result-object v10

    array-length v10, v10

    add-int/2addr v8, v10

    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    if-eq v6, v7, :cond_6

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 479
    invoke-direct {p0, v6, v3, v4}, Lo/getSnap$onPostMessage;->onNavigationEvent(III)V

    goto :goto_4

    :cond_6
    const/16 v6, 0x40

    if-ne v8, v7, :cond_7

    .line 482
    iget-object v7, p0, Lo/getSnap$onPostMessage;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {v7, v6}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 483
    invoke-direct {p0, v4}, Lo/getSnap$onPostMessage;->onNavigationEvent(Lo/matches;)V

    .line 484
    invoke-direct {p0, v5}, Lo/getSnap$onPostMessage;->onNavigationEvent(Lo/matches;)V

    .line 485
    invoke-direct {p0, v3}, Lo/getSnap$onPostMessage;->onMessageChannelReady(Lo/getOptExclusiveStart;)V

    goto :goto_4

    .line 486
    :cond_7
    invoke-static {}, Lo/getSnap;->onMessageChannelReady()Lo/matches;

    move-result-object v7

    .line 1401
    invoke-virtual {v7}, Lo/matches;->onTransact()I

    move-result v9

    invoke-virtual {v4, v1, v7, v1, v9}, Lo/matches;->onMessageChannelReady(ILo/matches;II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 486
    sget-object v7, Lo/getOptExclusiveStart;->extraCallback:Lo/matches;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v3, 0xf

    .line 489
    invoke-direct {p0, v8, v3, v1}, Lo/getSnap$onPostMessage;->onNavigationEvent(III)V

    .line 490
    invoke-direct {p0, v5}, Lo/getSnap$onPostMessage;->onNavigationEvent(Lo/matches;)V

    goto :goto_4

    :cond_8
    const/16 v4, 0x3f

    .line 493
    invoke-direct {p0, v8, v4, v6}, Lo/getSnap$onPostMessage;->onNavigationEvent(III)V

    .line 494
    invoke-direct {p0, v5}, Lo/getSnap$onPostMessage;->onNavigationEvent(Lo/matches;)V

    .line 495
    invoke-direct {p0, v3}, Lo/getSnap$onPostMessage;->onMessageChannelReady(Lo/getOptExclusiveStart;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
