.class public final Lo/fromCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromCode$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final onPostMessage:[C


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field private final asBinder:Ljava/lang/String;

.field private final asInterface:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Ljava/lang/String;

.field private final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 256
    fill-array-data v0, :array_0

    sput-object v0, Lo/fromCode;->onPostMessage:[C

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

.method private constructor <init>(Lo/fromCode$ICustomTabsCallback;)V
    .locals 4

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iput-object v0, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 306
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/fromCode;->extraCallback(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/fromCode;->asInterface:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/fromCode;->extraCallback(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/fromCode;->onRelationshipValidationResult:Ljava/lang/String;

    .line 308
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 1717
    iget v0, p1, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p1, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "http"

    .line 2408
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x50

    goto :goto_0

    :cond_1
    const-string v3, "https"

    .line 2410
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x1bb

    .line 309
    :cond_2
    :goto_0
    iput v2, p0, Lo/fromCode;->onMessageChannelReady:I

    .line 310
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-static {v0, v1}, Lo/fromCode;->onNavigationEvent(Ljava/util/List;Z)Ljava/util/List;

    .line 311
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    const/4 v3, 0x1

    .line 312
    invoke-static {v0, v3}, Lo/fromCode;->onNavigationEvent(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lo/fromCode;->onNavigationEvent:Ljava/util/List;

    .line 314
    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    .line 315
    invoke-static {v0, v1}, Lo/fromCode;->extraCallback(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v2, p0, Lo/fromCode;->onTransact:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lo/fromCode$ICustomTabsCallback;B)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lo/fromCode;-><init>(Lo/fromCode$ICustomTabsCallback;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method static extraCallback(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v1, 0x46

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p1

    :goto_0
    if-ge v3, v1, :cond_e

    .line 1552
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x2b

    const/4 v6, -0x1

    const/16 v7, 0x80

    const/16 v8, 0x7f

    const/16 v9, 0x20

    const/16 v10, 0x25

    if-lt v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-lt v4, v7, :cond_0

    if-nez p6, :cond_3

    .line 1556
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v6, :cond_3

    if-ne v4, v10, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    if-ne v4, v5, :cond_2

    if-eqz p5, :cond_2

    goto :goto_1

    .line 1551
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1560
    :cond_3
    :goto_1
    new-instance v4, Lo/updatePriority;

    invoke-direct {v4}, Lo/updatePriority;-><init>()V

    move/from16 v11, p1

    .line 1561
    invoke-virtual {v4, v0, v11, v3}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    const/4 v11, 0x0

    :goto_2
    if-ge v3, v1, :cond_d

    .line 12576
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-eqz p4, :cond_4

    const/16 v13, 0x9

    if-eq v12, v13, :cond_c

    const/16 v13, 0xa

    if-eq v12, v13, :cond_c

    const/16 v13, 0xc

    if-eq v12, v13, :cond_c

    const/16 v13, 0xd

    if-eq v12, v13, :cond_c

    :cond_4
    const/4 v13, 0x0

    if-ne v12, v5, :cond_6

    if-eqz p5, :cond_6

    if-eqz p4, :cond_5

    const-string v14, "+"

    goto :goto_3

    :cond_5
    const-string v14, "%2B"

    .line 12961
    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v14, v13, v15}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    goto :goto_7

    :cond_6
    if-lt v12, v9, :cond_9

    if-eq v12, v8, :cond_9

    if-lt v12, v7, :cond_7

    if-nez p6, :cond_9

    .line 12586
    :cond_7
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ne v14, v6, :cond_9

    if-ne v12, v10, :cond_8

    if-nez p4, :cond_8

    goto :goto_4

    .line 12601
    :cond_8
    invoke-virtual {v4, v12}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    goto :goto_7

    :cond_9
    :goto_4
    if-nez v11, :cond_a

    .line 12590
    new-instance v11, Lo/updatePriority;

    invoke-direct {v11}, Lo/updatePriority;-><init>()V

    .line 12592
    :cond_a
    invoke-virtual {v11, v12}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    .line 13109
    :goto_5
    iget-wide v14, v11, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-nez v18, :cond_b

    const/4 v14, 0x1

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-nez v14, :cond_c

    .line 12594
    invoke-virtual {v11}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    .line 12595
    invoke-virtual {v4, v10}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 12596
    sget-object v15, Lo/fromCode;->onPostMessage:[C

    shr-int/lit8 v16, v14, 0x4

    and-int/lit8 v16, v16, 0xf

    aget-char v15, v15, v16

    invoke-virtual {v4, v15}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 12597
    sget-object v15, Lo/fromCode;->onPostMessage:[C

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v15, v14

    invoke-virtual {v4, v14}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_5

    .line 12575
    :cond_c
    :goto_7
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_2

    .line 1563
    :cond_d
    invoke-virtual {v4}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    move/from16 v11, p1

    .line 1568
    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extraCallback(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1492
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

    .line 1495
    :cond_1
    :goto_1
    new-instance v1, Lo/updatePriority;

    invoke-direct {v1}, Lo/updatePriority;-><init>()V

    .line 1496
    invoke-virtual {v1, p0, p1, v0}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    .line 1497
    invoke-static {v1, p0, v0, p2, p3}, Lo/fromCode;->onNavigationEvent(Lo/updatePriority;Ljava/lang/String;IIZ)V

    .line 1498
    invoke-virtual {v1}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1503
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extraCallback(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .line 1609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    .line 1608
    invoke-static/range {v0 .. v6}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extraCallback(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1479
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lo/fromCode;->extraCallback(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic extraCallback(Lo/fromCode;)Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

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

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 488
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    const/16 v2, 0x26

    .line 489
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    const/16 v4, 0x3d

    .line 492
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v2, :cond_1

    goto :goto_1

    .line 497
    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 498
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 494
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 495
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
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

    .line 432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/16 v2, 0x2f

    .line 433
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)I
    .locals 1

    const-string v0, "http"

    .line 408
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x50

    return p0

    :cond_0
    const-string v0, "https"

    .line 410
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static onNavigationEvent(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1473
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method static synthetic onNavigationEvent(Lo/fromCode;)I
    .locals 0

    .line 255
    iget p0, p0, Lo/fromCode;->onMessageChannelReady:I

    return p0
.end method

.method private static onNavigationEvent(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
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

    .line 1483
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1484
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1485
    invoke-static {v1, p1}, Lo/fromCode;->extraCallback(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1487
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/StringBuilder;Ljava/util/List;)V
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

    .line 468
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 469
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 470
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_0

    const/16 v4, 0x26

    .line 471
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const/16 v2, 0x3d

    .line 474
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static onNavigationEvent(Lo/updatePriority;Ljava/lang/String;IIZ)V
    .locals 5

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1509
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_0

    add-int/lit8 v2, p2, 0x1

    .line 1511
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lo/fromCode;->extraCallback(C)I

    move-result v2

    .line 1512
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lo/fromCode;->extraCallback(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    .line 1514
    invoke-virtual {p0, p2}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    move p2, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    const/16 v1, 0x20

    .line 1519
    invoke-virtual {p0, v1}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_1

    .line 1522
    :cond_1
    invoke-virtual {p0, v0}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    .line 1508
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic onPostMessage(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 13473
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/fromCode;
    .locals 3

    .line 595
    new-instance v0, Lo/fromCode$ICustomTabsCallback;

    invoke-direct {v0}, Lo/fromCode$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    .line 596
    invoke-virtual {v0, v1, p0}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback(Lo/fromCode;Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    move-result-object p0

    .line 597
    sget-object v2, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    if-ne p0, v2, :cond_0

    invoke-virtual {v0}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback()Lo/fromCode;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 6

    .line 357
    iget-object v0, p0, Lo/fromCode;->asInterface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 359
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 9473
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, ":@"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_2
    :goto_1
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 6

    .line 461
    iget-object v0, p0, Lo/fromCode;->onNavigationEvent:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 463
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 12473
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "#"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_2
    :goto_1
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

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

    .line 439
    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    iget-object v1, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 440
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 11473
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "?#"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 444
    iget-object v3, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v3, v0, v2, v4}, Lo/fromCode;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 445
    iget-object v4, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 636
    instance-of v0, p1, Lo/fromCode;

    if-eqz v0, :cond_0

    check-cast p1, Lo/fromCode;

    iget-object p1, p1, Lo/fromCode;->asBinder:Ljava/lang/String;

    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Ljava/net/URI;
    .locals 12

    .line 2576
    :try_start_0
    new-instance v0, Lo/fromCode$ICustomTabsCallback;

    invoke-direct {v0}, Lo/fromCode$ICustomTabsCallback;-><init>()V

    .line 2577
    iget-object v1, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 2578
    invoke-virtual {p0}, Lo/fromCode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 2579
    invoke-virtual {p0}, Lo/fromCode;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 2580
    iget-object v1, p0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 2582
    iget v1, p0, Lo/fromCode;->onMessageChannelReady:I

    iget-object v2, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "http"

    .line 3408
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    const/16 v2, 0x50

    goto :goto_0

    :cond_0
    const-string v3, "https"

    .line 3410
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1bb

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eq v1, v2, :cond_2

    .line 2582
    iget v4, p0, Lo/fromCode;->onMessageChannelReady:I

    :cond_2
    iput v4, v0, Lo/fromCode$ICustomTabsCallback;->onPostMessage:I

    .line 2583
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2584
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-virtual {p0}, Lo/fromCode;->asInterface()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2585
    invoke-virtual {p0}, Lo/fromCode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    const-string v6, " \"\'<>#"

    const/4 v4, 0x0

    .line 4609
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 4608
    invoke-static/range {v3 .. v9}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v2

    .line 3784
    invoke-static {v2}, Lo/fromCode;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    .line 5559
    iget-object v2, p0, Lo/fromCode;->onTransact:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_2

    .line 5560
    :cond_4
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5561
    iget-object v2, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2586
    :goto_2
    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    .line 5874
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_5

    .line 5875
    iget-object v4, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 5876
    iget-object v4, v0, Lo/fromCode$ICustomTabsCallback;->asInterface:Ljava/util/List;

    const-string v8, "[]"

    const/4 v6, 0x0

    .line 6609
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 6608
    invoke-static/range {v5 .. v11}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v5

    .line 5876
    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5879
    :cond_5
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 5880
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_7

    .line 5881
    iget-object v3, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 5883
    iget-object v3, v0, Lo/fromCode$ICustomTabsCallback;->onTransact:Ljava/util/List;

    const-string v7, "\\^`{|}"

    const/4 v5, 0x0

    .line 7609
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 7608
    invoke-static/range {v4 .. v10}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v4

    .line 5883
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5888
    :cond_7
    iget-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 5889
    iget-object v2, v0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    const-string v5, " \"#<>\\^`{|}"

    const/4 v3, 0x0

    .line 8609
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8608
    invoke-static/range {v2 .. v8}, Lo/fromCode;->extraCallback(Ljava/lang/String;IILjava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 5889
    iput-object v1, v0, Lo/fromCode$ICustomTabsCallback;->asBinder:Ljava/lang/String;

    .line 339
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 342
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not valid as a java.net.URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .line 640
    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/net/URL;
    .locals 2

    .line 323
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 325
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 6

    .line 426
    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    iget-object v1, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 427
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 10473
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "?#"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    :cond_1
    :goto_1
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 3

    .line 369
    iget-object v0, p0, Lo/fromCode;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 370
    :cond_0
    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 371
    iget-object v1, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 372
    iget-object v2, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 644
    iget-object v0, p0, Lo/fromCode;->asBinder:Ljava/lang/String;

    return-object v0
.end method
