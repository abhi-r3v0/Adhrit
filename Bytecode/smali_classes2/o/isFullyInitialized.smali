.class public final Lo/isFullyInitialized;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isFullyInitialized$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final asInterface:[C


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final asBinder:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:I

.field private final onRelationshipValidationResult:Ljava/lang/String;

.field private final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 289
    fill-array-data v0, :array_0

    sput-object v0, Lo/isFullyInitialized;->asInterface:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lo/isFullyInitialized$onNavigationEvent;)V
    .locals 4

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 340
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/isFullyInitialized;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 341
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/isFullyInitialized;->onRelationshipValidationResult:Ljava/lang/String;

    .line 342
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 2039
    iget v0, p1, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p1, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    const-string v3, "http"

    .line 2510
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x50

    goto :goto_0

    :cond_1
    const-string v3, "https"

    .line 2512
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x1bb

    .line 343
    :cond_2
    :goto_0
    iput v2, p0, Lo/isFullyInitialized;->onPostMessage:I

    .line 344
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-static {v0, v1}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/isFullyInitialized;->onMessageChannelReady:Ljava/util/List;

    .line 345
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 347
    :goto_1
    iput-object v0, p0, Lo/isFullyInitialized;->ICustomTabsCallback:Ljava/util/List;

    .line 348
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p1, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 350
    :cond_4
    iput-object v2, p0, Lo/isFullyInitialized;->onTransact:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 620
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 621
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 622
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_0

    const/16 v4, 0x26

    .line 623
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const/16 v2, 0x3d

    .line 626
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static ICustomTabsCallback(Lo/updatePriority;Ljava/lang/String;IIZ)V
    .locals 5

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1641
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_0

    add-int/lit8 v2, p2, 0x1

    .line 1643
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lo/generateEventsForType;->onNavigationEvent(C)I

    move-result v2

    .line 1644
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lo/generateEventsForType;->onNavigationEvent(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    .line 1646
    invoke-virtual {p0, p2}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    move p2, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    const/16 v1, 0x20

    .line 1651
    invoke-virtual {p0, v1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_1

    .line 1654
    :cond_1
    invoke-virtual {p0, v0}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    .line 1640
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;)Lo/isFullyInitialized;
    .locals 2

    .line 916
    new-instance v0, Lo/isFullyInitialized$onNavigationEvent;

    invoke-direct {v0}, Lo/isFullyInitialized$onNavigationEvent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent(Lo/isFullyInitialized;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p0

    invoke-virtual {p0}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object p0

    return-object p0
.end method

.method static onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 640
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    .line 641
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 642
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v4, 0x3d

    .line 644
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v2, :cond_1

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 650
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 646
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 647
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1613
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1616
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1617
    invoke-static {v3, p1}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static onMessageChannelReady(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x2f

    .line 553
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;II)Z
    .locals 2

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1660
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 1661
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lo/generateEventsForType;->onNavigationEvent(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1662
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lo/generateEventsForType;->onNavigationEvent(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const-string v0, "https"

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p1

    :goto_0
    if-ge v4, v1, :cond_16

    .line 1687
    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    const/16 v6, 0x2b

    const/4 v7, -0x1

    const/16 v8, 0x80

    const/16 v9, 0x7f

    const/16 v10, 0x20

    const/16 v11, 0x25

    if-lt v5, v10, :cond_3

    if-eq v5, v9, :cond_3

    if-lt v5, v8, :cond_0

    if-nez p7, :cond_3

    .line 1691
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ne v12, v7, :cond_3

    if-ne v5, v11, :cond_1

    if-eqz p4, :cond_3

    if-eqz p5, :cond_1

    .line 1692
    invoke-static {v0, v4, v1}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_1
    if-ne v5, v6, :cond_2

    if-eqz p6, :cond_2

    goto :goto_1

    .line 1686
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 1695
    :cond_3
    :goto_1
    new-instance v5, Lo/updatePriority;

    invoke-direct {v5}, Lo/updatePriority;-><init>()V

    move/from16 v12, p1

    .line 1696
    invoke-virtual {v5, v0, v12, v4}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    const/4 v12, 0x0

    :goto_2
    if-ge v4, v1, :cond_15

    .line 8713
    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    if-eqz p4, :cond_4

    const/16 v14, 0x9

    if-eq v13, v14, :cond_14

    const/16 v14, 0xa

    if-eq v13, v14, :cond_14

    const/16 v14, 0xc

    if-eq v13, v14, :cond_14

    const/16 v14, 0xd

    if-eq v13, v14, :cond_14

    :cond_4
    const/4 v14, 0x0

    if-ne v13, v6, :cond_6

    if-eqz p6, :cond_6

    if-eqz p4, :cond_5

    const-string v15, "+"

    goto :goto_3

    :cond_5
    const-string v15, "%2B"

    .line 8961
    :goto_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v15, v14, v6}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    goto/16 :goto_8

    :cond_6
    if-lt v13, v10, :cond_9

    if-eq v13, v9, :cond_9

    if-lt v13, v8, :cond_7

    if-nez p7, :cond_9

    .line 8723
    :cond_7
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_9

    if-ne v13, v11, :cond_8

    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    .line 8724
    invoke-static {v0, v4, v1}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    .line 8744
    :cond_8
    invoke-virtual {v5, v13}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    goto/16 :goto_8

    :cond_9
    :goto_4
    if-nez v12, :cond_a

    .line 8727
    new-instance v12, Lo/updatePriority;

    invoke-direct {v12}, Lo/updatePriority;-><init>()V

    :cond_a
    if-eqz v3, :cond_12

    .line 8730
    sget-object v6, Lo/generateEventsForType;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_5

    .line 8733
    :cond_b
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v4

    if-eqz v0, :cond_11

    if-ltz v4, :cond_10

    if-lt v6, v4, :cond_f

    .line 9087
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v6, v15, :cond_e

    if-eqz v3, :cond_d

    .line 9092
    sget-object v15, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v12, v0, v4, v6}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    goto :goto_6

    .line 9093
    :cond_c
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 9094
    array-length v15, v6

    invoke-virtual {v12, v6, v14, v15}, Lo/updatePriority;->onMessageChannelReady([BII)Lo/updatePriority;

    goto :goto_6

    .line 9091
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9088
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endIndex > string.length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9089
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9085
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex < beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9083
    :cond_10
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9082
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8731
    :cond_12
    :goto_5
    invoke-virtual {v12, v13}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    .line 9109
    :goto_6
    iget-wide v7, v12, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v16, 0x0

    cmp-long v18, v7, v16

    if-nez v18, :cond_13

    const/4 v7, 0x1

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_14

    .line 8737
    invoke-virtual {v12}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 8738
    invoke-virtual {v5, v11}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 8739
    sget-object v8, Lo/isFullyInitialized;->asInterface:[C

    shr-int/lit8 v16, v7, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v8, v8, v16

    invoke-virtual {v5, v8}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 8740
    sget-object v8, Lo/isFullyInitialized;->asInterface:[C

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v8, v7

    invoke-virtual {v5, v7}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_6

    .line 8712
    :cond_14
    :goto_8
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    const/16 v6, 0x2b

    const/4 v7, -0x1

    const/16 v8, 0x80

    goto/16 :goto_2

    .line 1699
    :cond_15
    invoke-virtual {v5}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    move/from16 v12, p1

    .line 1704
    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static onNavigationEvent(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1624
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    :cond_1
    :goto_1
    new-instance v1, Lo/updatePriority;

    invoke-direct {v1}, Lo/updatePriority;-><init>()V

    .line 1628
    invoke-virtual {v1, p0, p1, v0}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    .line 1629
    invoke-static {v1, p0, v0, p2, p3}, Lo/isFullyInitialized;->ICustomTabsCallback(Lo/updatePriority;Ljava/lang/String;IIZ)V

    .line 1630
    invoke-virtual {v1}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1635
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onPostMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9

    .line 1752
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 1751
    invoke-static/range {v0 .. v8}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static onPostMessage(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 9

    .line 1759
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v6, p4

    .line 1758
    invoke-static/range {v0 .. v8}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized;
    .locals 2

    const/4 v0, 0x0

    .line 7916
    :try_start_0
    new-instance v1, Lo/isFullyInitialized$onNavigationEvent;

    invoke-direct {v1}, Lo/isFullyInitialized$onNavigationEvent;-><init>()V

    invoke-virtual {v1, v0, p0}, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent(Lo/isFullyInitialized;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p0

    invoke-virtual {p0}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/net/URI;
    .locals 14

    .line 377
    invoke-virtual {p0}, Lo/isFullyInitialized;->asBinder()Lo/isFullyInitialized$onNavigationEvent;

    move-result-object v0

    .line 3232
    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3233
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 3234
    iget-object v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    const/4 v6, 0x0

    .line 3759
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v8, "[]"

    .line 3758
    invoke-static/range {v5 .. v13}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 3234
    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3237
    :cond_0
    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3238
    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_2

    .line 3239
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3241
    iget-object v3, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    const/4 v5, 0x0

    .line 4759
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v7, "\\^`{|}"

    .line 4758
    invoke-static/range {v4 .. v12}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 3241
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3246
    :cond_2
    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3247
    iget-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    const/4 v3, 0x0

    .line 5759
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, " \"#<>\\^`{|}"

    .line 5758
    invoke-static/range {v2 .. v10}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 3247
    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    .line 377
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    .line 383
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 386
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;
    .locals 1

    .line 892
    :try_start_0
    new-instance v0, Lo/isFullyInitialized$onNavigationEvent;

    invoke-direct {v0}, Lo/isFullyInitialized$onNavigationEvent;-><init>()V

    invoke-virtual {v0, p0, p1}, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent(Lo/isFullyInitialized;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final asBinder()Lo/isFullyInitialized$onNavigationEvent;
    .locals 12

    .line 872
    new-instance v0, Lo/isFullyInitialized$onNavigationEvent;

    invoke-direct {v0}, Lo/isFullyInitialized$onNavigationEvent;-><init>()V

    .line 873
    iget-object v1, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 874
    invoke-virtual {p0}, Lo/isFullyInitialized;->extraCallback()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 875
    invoke-virtual {p0}, Lo/isFullyInitialized;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 876
    iget-object v1, p0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 878
    iget v1, p0, Lo/isFullyInitialized;->onPostMessage:I

    iget-object v2, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "http"

    .line 6510
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const/16 v2, 0x50

    goto :goto_0

    :cond_0
    const-string v3, "https"

    .line 6512
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1bb

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eq v1, v2, :cond_2

    .line 878
    iget v4, p0, Lo/isFullyInitialized;->onPostMessage:I

    :cond_2
    iput v4, v0, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady:I

    .line 879
    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 880
    iget-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual {p0}, Lo/isFullyInitialized;->asInterface()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 881
    invoke-virtual {p0}, Lo/isFullyInitialized;->onTransact()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 7759
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v6, " \"\'<>#"

    .line 7758
    invoke-static/range {v3 .. v11}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 7141
    invoke-static {v2}, Lo/isFullyInitialized;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 7143
    :goto_1
    iput-object v2, v0, Lo/isFullyInitialized$onNavigationEvent;->asBinder:Ljava/util/List;

    .line 7828
    iget-object v2, p0, Lo/isFullyInitialized;->onTransact:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_2

    .line 7829
    :cond_4
    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 7830
    iget-object v2, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    :goto_2
    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    iget-object v1, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 571
    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 575
    iget-object v4, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v4

    .line 576
    iget-object v5, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 932
    instance-of v0, p1, Lo/isFullyInitialized;

    if-eqz v0, :cond_0

    check-cast p1, Lo/isFullyInitialized;

    iget-object p1, p1, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 4

    .line 412
    iget-object v0, p0, Lo/isFullyInitialized;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 414
    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 415
    iget-object v2, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 936
    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/net/URL;
    .locals 2

    .line 357
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 3

    .line 445
    iget-object v0, p0, Lo/isFullyInitialized;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 446
    :cond_0
    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 447
    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 448
    iget-object v2, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 4

    .line 546
    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    iget-object v1, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 547
    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 548
    iget-object v2, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 4

    .line 613
    iget-object v0, p0, Lo/isFullyInitialized;->ICustomTabsCallback:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 614
    :cond_0
    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 615
    iget-object v1, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v1

    .line 616
    iget-object v2, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 940
    iget-object v0, p0, Lo/isFullyInitialized;->asBinder:Ljava/lang/String;

    return-object v0
.end method
