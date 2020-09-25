.class final Lo/osFile;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/osFile$onMessageChannelReady;,
        Lo/osFile$onNavigationEvent;,
        Lo/osFile$ICustomTabsCallback;,
        Lo/osFile$onPostMessage;,
        Lo/osFile$extraCallback;,
        Lo/osFile$onRelationshipValidationResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic asBinder:Z


# instance fields
.field private ICustomTabsCallback$Stub:I

.field private asInterface:[Lo/osFile$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field extraCallback:I

.field final onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field onPostMessage:I

.field private onRelationshipValidationResult:Lo/osFile$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/osFile<",
            "TK;TV;>.onNavigationEvent;"
        }
    .end annotation
.end field

.field private onTransact:Lo/osFile$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/osFile<",
            "TK;TV;>.onMessageChannelReady;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lo/osFile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/osFile;->asBinder:Z

    .line 41
    new-instance v0, Lo/osFile$5;

    invoke-direct {v0}, Lo/osFile$5;-><init>()V

    sput-object v0, Lo/osFile;->ICustomTabsCallback:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lo/osFile;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lo/osFile;->onPostMessage:I

    .line 51
    iput p1, p0, Lo/osFile;->extraCallback:I

    .line 75
    sget-object p1, Lo/osFile;->ICustomTabsCallback:Ljava/util/Comparator;

    iput-object p1, p0, Lo/osFile;->onNavigationEvent:Ljava/util/Comparator;

    .line 76
    new-instance p1, Lo/osFile$onRelationshipValidationResult;

    invoke-direct {p1}, Lo/osFile$onRelationshipValidationResult;-><init>()V

    iput-object p1, p0, Lo/osFile;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    const/16 p1, 0x10

    new-array p1, p1, [Lo/osFile$onRelationshipValidationResult;

    .line 77
    iput-object p1, p0, Lo/osFile;->asInterface:[Lo/osFile$onRelationshipValidationResult;

    .line 78
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iput v0, p0, Lo/osFile;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private ICustomTabsCallback(Lo/osFile$onRelationshipValidationResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 402
    iget-object v0, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 403
    iget-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 404
    iget-object v2, v1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 405
    iget-object v3, v1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 408
    iput-object v2, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-eqz v2, :cond_0

    .line 410
    iput-object p1, v2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v1}, Lo/osFile;->onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    .line 416
    iput-object p1, v1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 417
    iput-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 420
    iget v0, v0, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 421
    iget v2, v2, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 420
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 422
    iget p1, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    if-eqz v3, :cond_3

    .line 423
    iget v4, v3, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 422
    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    return-void
.end method

.method private static ICustomTabsCallback([Lo/osFile$onRelationshipValidationResult;)[Lo/osFile$onRelationshipValidationResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;)[",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation

    .line 568
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 570
    new-array v1, v1, [Lo/osFile$onRelationshipValidationResult;

    .line 571
    new-instance v2, Lo/osFile$extraCallback;

    invoke-direct {v2}, Lo/osFile$extraCallback;-><init>()V

    .line 572
    new-instance v3, Lo/osFile$onPostMessage;

    invoke-direct {v3}, Lo/osFile$onPostMessage;-><init>()V

    .line 573
    new-instance v4, Lo/osFile$onPostMessage;

    invoke-direct {v4}, Lo/osFile$onPostMessage;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_b

    .line 577
    aget-object v7, p0, v6

    if-eqz v7, :cond_a

    const/4 v8, 0x0

    move-object v9, v7

    move-object v10, v8

    :goto_1
    if-eqz v9, :cond_0

    .line 4629
    iput-object v10, v9, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 4628
    iget-object v10, v9, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    goto :goto_1

    .line 4632
    :cond_0
    iput-object v10, v2, Lo/osFile$extraCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 586
    :goto_2
    invoke-virtual {v2}, Lo/osFile$extraCallback;->ICustomTabsCallback()Lo/osFile$onRelationshipValidationResult;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 587
    iget v11, v11, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback$Stub:I

    and-int/2addr v11, v0

    if-nez v11, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4679
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v9

    .line 4680
    iput v11, v3, Lo/osFile$onPostMessage;->ICustomTabsCallback:I

    .line 4681
    iput v5, v3, Lo/osFile$onPostMessage;->extraCallback:I

    .line 4682
    iput v5, v3, Lo/osFile$onPostMessage;->onNavigationEvent:I

    .line 4683
    iput-object v8, v3, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 5679
    invoke-static {v10}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v10

    .line 5680
    iput v11, v4, Lo/osFile$onPostMessage;->ICustomTabsCallback:I

    .line 5681
    iput v5, v4, Lo/osFile$onPostMessage;->extraCallback:I

    .line 5682
    iput v5, v4, Lo/osFile$onPostMessage;->onNavigationEvent:I

    .line 5683
    iput-object v8, v4, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    move-object v11, v8

    :goto_3
    if-eqz v7, :cond_3

    .line 6629
    iput-object v11, v7, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 6628
    iget-object v11, v7, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    move-object v12, v11

    move-object v11, v7

    move-object v7, v12

    goto :goto_3

    .line 6632
    :cond_3
    iput-object v11, v2, Lo/osFile$extraCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 598
    :goto_4
    invoke-virtual {v2}, Lo/osFile$extraCallback;->ICustomTabsCallback()Lo/osFile$onRelationshipValidationResult;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 599
    iget v11, v7, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback$Stub:I

    and-int/2addr v11, v0

    if-nez v11, :cond_4

    .line 600
    invoke-virtual {v3, v7}, Lo/osFile$onPostMessage;->onPostMessage(Lo/osFile$onRelationshipValidationResult;)V

    goto :goto_4

    .line 602
    :cond_4
    invoke-virtual {v4, v7}, Lo/osFile$onPostMessage;->onPostMessage(Lo/osFile$onRelationshipValidationResult;)V

    goto :goto_4

    :cond_5
    if-lez v9, :cond_7

    .line 6752
    iget-object v7, v3, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 6753
    iget-object v9, v7, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    if-nez v9, :cond_6

    goto :goto_5

    .line 6754
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_7
    move-object v7, v8

    .line 607
    :goto_5
    aput-object v7, v1, v6

    add-int v7, v6, v0

    if-lez v10, :cond_9

    .line 7752
    iget-object v8, v4, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 7753
    iget-object v9, v8, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    if-nez v9, :cond_8

    goto :goto_6

    .line 7754
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 608
    :cond_9
    :goto_6
    aput-object v8, v1, v7

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v1
.end method

.method private onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 430
    iget-object v0, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 431
    iget-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 432
    iget-object v2, v0, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 433
    iget-object v3, v0, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 436
    iput-object v3, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    if-eqz v3, :cond_0

    .line 438
    iput-object p1, v3, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 441
    :cond_0
    invoke-direct {p0, p1, v0}, Lo/osFile;->onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    .line 444
    iput-object p1, v0, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 445
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 448
    iget v1, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 449
    iget v3, v3, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 448
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 450
    iget p1, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    if-eqz v2, :cond_3

    .line 451
    iget v4, v2, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 450
    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    return-void
.end method

.method private onNavigationEvent(Ljava/lang/Object;Z)Lo/osFile$onRelationshipValidationResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lo/osFile;->onNavigationEvent:Ljava/util/Comparator;

    .line 133
    iget-object v1, p0, Lo/osFile;->asInterface:[Lo/osFile$onRelationshipValidationResult;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v3, v2, 0x14

    ushr-int/lit8 v4, v2, 0xc

    xor-int/2addr v3, v4

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x7

    xor-int/2addr v3, v2

    ushr-int/lit8 v2, v2, 0x4

    xor-int v7, v3, v2

    .line 135
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, v7

    .line 136
    aget-object v4, v1, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 142
    sget-object v6, Lo/osFile;->ICustomTabsCallback:Ljava/util/Comparator;

    if-ne v0, v6, :cond_0

    .line 143
    move-object v6, p1

    check-cast v6, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    .line 148
    iget-object v8, v4, Lo/osFile$onRelationshipValidationResult;->asInterface:Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v8

    goto :goto_1

    .line 149
    :cond_1
    iget-object v8, v4, Lo/osFile$onRelationshipValidationResult;->asInterface:Ljava/lang/Object;

    invoke-interface {v0, p1, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    :goto_1
    if-nez v8, :cond_2

    return-object v4

    :cond_2
    if-gez v8, :cond_3

    .line 157
    iget-object v9, v4, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    goto :goto_2

    :cond_3
    iget-object v9, v4, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    :goto_2
    if-eqz v9, :cond_4

    move-object v4, v9

    goto :goto_0

    :cond_4
    move-object v10, v4

    move v11, v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    move-object v10, v4

    const/4 v11, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v5

    .line 172
    :cond_6
    iget-object v8, p0, Lo/osFile;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-nez v10, :cond_9

    .line 176
    sget-object p2, Lo/osFile;->ICustomTabsCallback:Ljava/util/Comparator;

    if-ne v0, p2, :cond_8

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_7

    goto :goto_4

    .line 177
    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 179
    :cond_8
    :goto_4
    new-instance p2, Lo/osFile$onRelationshipValidationResult;

    iget-object v9, v8, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    move-object v4, p2

    move-object v5, v10

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lo/osFile$onRelationshipValidationResult;-><init>(Lo/osFile$onRelationshipValidationResult;Ljava/lang/Object;ILo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    .line 180
    aput-object p2, v1, v2

    goto :goto_6

    .line 182
    :cond_9
    new-instance p2, Lo/osFile$onRelationshipValidationResult;

    iget-object v9, v8, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    move-object v4, p2

    move-object v5, v10

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lo/osFile$onRelationshipValidationResult;-><init>(Lo/osFile$onRelationshipValidationResult;Ljava/lang/Object;ILo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    if-gez v11, :cond_a

    .line 184
    iput-object p2, v10, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    goto :goto_5

    .line 186
    :cond_a
    iput-object p2, v10, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 188
    :goto_5
    invoke-direct {p0, v10, v3}, Lo/osFile;->onNavigationEvent(Lo/osFile$onRelationshipValidationResult;Z)V

    .line 191
    :goto_6
    iget p1, p0, Lo/osFile;->onPostMessage:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lo/osFile;->onPostMessage:I

    iget v0, p0, Lo/osFile;->ICustomTabsCallback$Stub:I

    if-le p1, v0, :cond_b

    .line 2558
    iget-object p1, p0, Lo/osFile;->asInterface:[Lo/osFile$onRelationshipValidationResult;

    invoke-static {p1}, Lo/osFile;->ICustomTabsCallback([Lo/osFile$onRelationshipValidationResult;)[Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    iput-object p1, p0, Lo/osFile;->asInterface:[Lo/osFile$onRelationshipValidationResult;

    .line 2559
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iput v0, p0, Lo/osFile;->ICustomTabsCallback$Stub:I

    .line 194
    :cond_b
    iget p1, p0, Lo/osFile;->extraCallback:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/osFile;->extraCallback:I

    return-object p2
.end method

.method private onNavigationEvent(Lo/osFile$onRelationshipValidationResult;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_14

    .line 340
    iget-object v0, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 341
    iget-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 342
    iget v3, v0, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 343
    iget v4, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    .line 347
    iget-object v0, v1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 348
    iget-object v3, v1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-eqz v3, :cond_2

    .line 349
    iget v3, v3, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 350
    iget v2, v0, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    :cond_3
    sub-int/2addr v2, v3

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_5

    .line 356
    :cond_4
    sget-boolean v0, Lo/osFile;->asBinder:Z

    if-nez v0, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 357
    :cond_6
    :goto_4
    invoke-direct {p0, v1}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;)V

    .line 358
    invoke-direct {p0, p1}, Lo/osFile;->ICustomTabsCallback(Lo/osFile$onRelationshipValidationResult;)V

    goto :goto_6

    .line 354
    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lo/osFile;->ICustomTabsCallback(Lo/osFile$onRelationshipValidationResult;)V

    :goto_6
    if-nez p2, :cond_14

    goto :goto_c

    :cond_8
    const/4 v1, 0x2

    if-ne v5, v1, :cond_f

    .line 365
    iget-object v1, v0, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 366
    iget-object v3, v0, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-eqz v3, :cond_9

    .line 367
    iget v3, v3, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    if-eqz v1, :cond_a

    .line 368
    iget v2, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    :cond_a
    sub-int/2addr v2, v3

    if-eq v2, v8, :cond_e

    if-nez v2, :cond_b

    if-nez p2, :cond_b

    goto :goto_9

    .line 374
    :cond_b
    sget-boolean v1, Lo/osFile;->asBinder:Z

    if-nez v1, :cond_d

    if-ne v2, v7, :cond_c

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 375
    :cond_d
    :goto_8
    invoke-direct {p0, v0}, Lo/osFile;->ICustomTabsCallback(Lo/osFile$onRelationshipValidationResult;)V

    .line 376
    invoke-direct {p0, p1}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;)V

    goto :goto_a

    .line 372
    :cond_e
    :goto_9
    invoke-direct {p0, p1}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;)V

    :goto_a
    if-nez p2, :cond_14

    goto :goto_c

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    .line 383
    iput v3, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    if-eqz p2, :cond_13

    return-void

    .line 389
    :cond_10
    sget-boolean v0, Lo/osFile;->asBinder:Z

    if-nez v0, :cond_12

    if-eq v5, v7, :cond_12

    if-ne v5, v8, :cond_11

    goto :goto_b

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 390
    :cond_12
    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    if-eqz p2, :cond_14

    .line 339
    :cond_13
    :goto_c
    iget-object p1, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    const/4 v1, 0x0

    .line 313
    iput-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    if-eqz p2, :cond_0

    .line 315
    iput-object v0, p2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    :cond_0
    if-eqz v0, :cond_4

    .line 319
    iget-object v1, v0, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    if-ne v1, p1, :cond_1

    .line 320
    iput-object p2, v0, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    return-void

    .line 322
    :cond_1
    sget-boolean v1, Lo/osFile;->asBinder:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 323
    :cond_3
    :goto_0
    iput-object p2, v0, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    return-void

    .line 326
    :cond_4
    iget p1, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback$Stub:I

    iget-object v0, p0, Lo/osFile;->asInterface:[Lo/osFile$onRelationshipValidationResult;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    .line 327
    aput-object p2, v0, p1

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 859
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 105
    iget-object v0, p0, Lo/osFile;->asInterface:[Lo/osFile$onRelationshipValidationResult;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lo/osFile;->onPostMessage:I

    .line 107
    iget v0, p0, Lo/osFile;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/osFile;->extraCallback:I

    .line 110
    iget-object v0, p0, Lo/osFile;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 111
    iget-object v2, v0, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    :goto_0
    if-eq v2, v0, :cond_0

    .line 112
    iget-object v3, v2, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    .line 113
    iput-object v1, v2, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    iput-object v1, v2, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    move-object v2, v3

    goto :goto_0

    .line 117
    :cond_0
    iput-object v0, v0, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    iput-object v0, v0, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lo/osFile;->onPostMessage(Ljava/lang/Object;)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lo/osFile;->onRelationshipValidationResult:Lo/osFile$onNavigationEvent;

    if-eqz v0, :cond_0

    return-object v0

    .line 459
    :cond_0
    new-instance v0, Lo/osFile$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/osFile$onNavigationEvent;-><init>(Lo/osFile;)V

    iput-object v0, p0, Lo/osFile;->onRelationshipValidationResult:Lo/osFile$onNavigationEvent;

    return-object v0
.end method

.method final extraCallback(Ljava/util/Map$Entry;)Lo/osFile$onRelationshipValidationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation

    .line 218
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/osFile;->onPostMessage(Ljava/lang/Object;)Lo/osFile$onRelationshipValidationResult;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 219
    iget-object v3, v0, Lo/osFile$onRelationshipValidationResult;->onTransact:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v3, p1, :cond_1

    if-eqz v3, :cond_0

    .line 3224
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lo/osFile;->onPostMessage(Ljava/lang/Object;)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p1, Lo/osFile$onRelationshipValidationResult;->onTransact:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lo/osFile;->onTransact:Lo/osFile$onMessageChannelReady;

    if-eqz v0, :cond_0

    return-object v0

    .line 464
    :cond_0
    new-instance v0, Lo/osFile$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/osFile$onMessageChannelReady;-><init>(Lo/osFile;)V

    iput-object v0, p0, Lo/osFile;->onTransact:Lo/osFile$onMessageChannelReady;

    return-object v0
.end method

.method final onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 247
    iget-object p2, p1, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    iget-object v1, p1, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    iput-object v1, p2, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    .line 248
    iget-object p2, p1, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    iget-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    iput-object v1, p2, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 249
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    .line 252
    :cond_0
    iget-object p2, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 253
    iget-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 254
    iget-object v2, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 266
    iget v2, p2, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    iget v4, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    if-le v2, v4, :cond_1

    .line 3548
    iget-object v1, p2, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    :goto_0
    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    if-eqz p2, :cond_2

    .line 3551
    iget-object v1, p2, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    goto :goto_0

    .line 4535
    :cond_1
    :goto_1
    iget-object p2, v1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    if-nez p2, :cond_5

    .line 267
    :cond_2
    invoke-virtual {p0, v1, v3}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;Z)V

    .line 270
    iget-object p2, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    if-eqz p2, :cond_3

    .line 272
    iget v2, p2, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 273
    iput-object p2, v1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 274
    iput-object v1, p2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 275
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 278
    :goto_2
    iget-object p2, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-eqz p2, :cond_4

    .line 280
    iget v3, p2, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 281
    iput-object p2, v1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 282
    iput-object v1, p2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 283
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 285
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 286
    invoke-direct {p0, p1, v1}, Lo/osFile;->onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    return-void

    :cond_5
    move-object v1, p2

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 289
    invoke-direct {p0, p1, p2}, Lo/osFile;->onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    .line 290
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 292
    invoke-direct {p0, p1, v1}, Lo/osFile;->onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    .line 293
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    goto :goto_3

    .line 295
    :cond_8
    invoke-direct {p0, p1, v0}, Lo/osFile;->onPostMessage(Lo/osFile$onRelationshipValidationResult;Lo/osFile$onRelationshipValidationResult;)V

    .line 298
    :goto_3
    invoke-direct {p0, v2, v3}, Lo/osFile;->onNavigationEvent(Lo/osFile$onRelationshipValidationResult;Z)V

    .line 299
    iget p1, p0, Lo/osFile;->onPostMessage:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/osFile;->onPostMessage:I

    .line 300
    iget p1, p0, Lo/osFile;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/osFile;->extraCallback:I

    return-void
.end method

.method final onPostMessage(Ljava/lang/Object;)Lo/osFile$onRelationshipValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-direct {p0, p1, v1}, Lo/osFile;->onNavigationEvent(Ljava/lang/Object;Z)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, p1, v0}, Lo/osFile;->onNavigationEvent(Ljava/lang/Object;Z)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    .line 99
    iget-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onTransact:Ljava/lang/Object;

    .line 100
    iput-object p2, p1, Lo/osFile$onRelationshipValidationResult;->onTransact:Ljava/lang/Object;

    return-object v0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1304
    invoke-virtual {p0, p1}, Lo/osFile;->onPostMessage(Ljava/lang/Object;)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1306
    invoke-virtual {p0, p1, v0}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p1, Lo/osFile$onRelationshipValidationResult;->onTransact:Ljava/lang/Object;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 82
    iget v0, p0, Lo/osFile;->onPostMessage:I

    return v0
.end method
