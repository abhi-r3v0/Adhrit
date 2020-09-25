.class final Lo/UpiBalanceResponseJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;,
        Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;,
        Lo/UpiBalanceResponseJsonAdapter$asInterface;,
        Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;,
        Lo/UpiBalanceResponseJsonAdapter$onPostMessage;,
        Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;,
        Lo/UpiBalanceResponseJsonAdapter$extraCallback;,
        Lo/UpiBalanceResponseJsonAdapter$asBinder;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[B

.field private static final onMessageChannelReady:[B

.field private static final onNavigationEvent:[B


# instance fields
.field private ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

.field private final asBinder:Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

.field private final asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

.field private final extraCallback:Landroid/graphics/Paint;

.field private final onPostMessage:Landroid/graphics/Paint;

.field private final onRelationshipValidationResult:Landroid/graphics/Canvas;

.field private final onTransact:Lo/UpiBalanceResponseJsonAdapter$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 71
    fill-array-data v1, :array_0

    sput-object v1, Lo/UpiBalanceResponseJsonAdapter;->onMessageChannelReady:[B

    new-array v0, v0, [B

    .line 73
    fill-array-data v0, :array_1

    sput-object v0, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 75
    fill-array-data v0, :array_2

    sput-object v0, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->extraCallback:Landroid/graphics/Paint;

    .line 98
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->extraCallback:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->extraCallback:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage:Landroid/graphics/Paint;

    .line 102
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 105
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    .line 106
    new-instance v0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lo/UpiBalanceResponseJsonAdapter$extraCallback;-><init>(IIIIII)V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->onTransact:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    .line 107
    new-instance v0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    invoke-static {}, Lo/UpiBalanceResponseJsonAdapter;->onMessageChannelReady()[I

    move-result-object v1

    .line 108
    invoke-static {}, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent()[I

    move-result-object v2

    invoke-static {}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;-><init>(I[I[I[I)V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->asBinder:Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    .line 109
    new-instance v0, Lo/UpiBalanceResponseJsonAdapter$asBinder;

    invoke-direct {v0, p1, p2}, Lo/UpiBalanceResponseJsonAdapter$asBinder;-><init>(II)V

    iput-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/PublisherException;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    .line 772
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v11, v2

    const/4 v12, 0x1

    goto :goto_1

    .line 777
    :cond_0
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    const/4 v6, 0x7

    if-nez v4, :cond_2

    .line 778
    invoke-virtual {p0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v11, v2

    move v12, v3

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1

    .line 786
    :cond_2
    invoke-virtual {p0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 787
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    :goto_1
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    if-eqz p2, :cond_3

    .line 792
    aget-byte v4, p2, v4

    :cond_3
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    .line 793
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    add-int/2addr v10, v12

    if-eqz v11, :cond_5

    return v10

    :cond_5
    move v2, v11

    goto :goto_0
.end method

.method private static ICustomTabsCallback(Lo/PublisherException;)Lo/UpiBalanceResponseJsonAdapter$extraCallback;
    .locals 9

    const/4 v0, 0x4

    .line 304
    invoke-virtual {p0, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 305
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v0

    const/4 v1, 0x3

    .line 306
    invoke-virtual {p0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/16 v1, 0x10

    .line 307
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 308
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 316
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 317
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    .line 318
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p0

    move v8, p0

    move v6, v2

    move v7, v5

    move v5, v0

    goto :goto_0

    :cond_0
    move v6, v3

    move v8, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 326
    :goto_0
    new-instance p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lo/UpiBalanceResponseJsonAdapter$extraCallback;-><init>(IIIIII)V

    return-object p0
.end method

.method private static ICustomTabsCallback(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;
    .locals 21

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 404
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 405
    invoke-virtual {v0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    add-int/lit8 v3, p1, -0x2

    .line 408
    invoke-static {}, Lo/UpiBalanceResponseJsonAdapter;->onMessageChannelReady()[I

    move-result-object v4

    .line 409
    invoke-static {}, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent()[I

    move-result-object v5

    .line 410
    invoke-static {}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage()[I

    move-result-object v6

    :goto_0
    if-lez v3, :cond_4

    .line 413
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v7

    .line 414
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    add-int/lit8 v3, v3, -0x2

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_0

    move-object v9, v4

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v8, 0x40

    if-eqz v9, :cond_1

    move-object v9, v5

    goto :goto_1

    :cond_1
    move-object v9, v6

    :goto_1
    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 431
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    .line 432
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v10

    .line 433
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v11

    .line 434
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v12

    add-int/lit8 v3, v3, -0x4

    goto :goto_2

    :cond_2
    const/4 v8, 0x6

    .line 437
    invoke-virtual {v0, v8}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v10

    const/4 v11, 0x2

    shl-int/2addr v10, v11

    const/4 v12, 0x4

    .line 438
    invoke-virtual {v0, v12}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v13

    shl-int/2addr v13, v12

    .line 439
    invoke-virtual {v0, v12}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    .line 440
    invoke-virtual {v0, v11}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v11

    shl-int/lit8 v8, v11, 0x6

    add-int/lit8 v3, v3, -0x2

    move v11, v12

    move v12, v8

    move v8, v10

    move v10, v13

    :goto_2
    const/16 v14, 0xff

    if-nez v8, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xff

    :cond_3
    and-int/2addr v12, v14

    rsub-int v12, v12, 0xff

    int-to-byte v12, v12

    move v15, v2

    int-to-double v1, v8

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v10, v10, -0x80

    int-to-double v13, v10

    mul-double v16, v16, v13

    move-object v10, v9

    add-double v8, v1, v16

    double-to-int v8, v8

    const-wide v16, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v11, v11, -0x80

    move/from16 v18, v3

    move-object v9, v4

    int-to-double v3, v11

    mul-double v16, v16, v3

    sub-double v16, v1, v16

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v13, v13, v19

    sub-double v13, v16, v13

    double-to-int v11, v13

    const-wide v13, 0x3ffc5a1cac083127L    # 1.772

    mul-double v3, v3, v13

    add-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 454
    invoke-static {v8, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v4

    .line 455
    invoke-static {v11, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v8

    invoke-static {v1, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v1

    .line 454
    invoke-static {v12, v4, v8, v1}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v1

    aput v1, v10, v7

    move-object v4, v9

    move v2, v15

    move/from16 v3, v18

    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_4
    move v15, v2

    move-object v9, v4

    .line 458
    new-instance v0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    move v1, v15

    invoke-direct {v0, v1, v9, v5, v6}, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static ICustomTabsCallback(IILo/PublisherException;)[B
    .locals 3

    .line 802
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 804
    invoke-virtual {p2, p1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static extraCallback(Lo/PublisherException;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    .line 718
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v11, v2

    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 722
    :cond_0
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    const/4 v7, 0x3

    if-nez v4, :cond_2

    .line 723
    invoke-virtual {p0, v7}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v5, v3, 0x2

    move v11, v2

    move v12, v5

    const/4 v4, 0x0

    goto :goto_4

    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 730
    :cond_2
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    if-nez v4, :cond_3

    .line 731
    invoke-virtual {p0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    .line 732
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    :goto_2
    move v11, v2

    move v12, v5

    goto :goto_4

    .line 734
    :cond_3
    invoke-virtual {p0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v6, :cond_6

    if-eq v4, v5, :cond_5

    if-eq v4, v7, :cond_4

    move v11, v2

    const/4 v4, 0x0

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    const/16 v4, 0x8

    .line 746
    invoke-virtual {p0, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x19

    .line 747
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    goto :goto_2

    .line 742
    :cond_5
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x9

    .line 743
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    goto :goto_2

    :cond_6
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_4

    :cond_7
    move v11, v2

    const/4 v4, 0x0

    goto :goto_1

    :goto_4
    if-eqz v12, :cond_9

    if-eqz v8, :cond_9

    if-eqz p2, :cond_8

    .line 753
    aget-byte v4, p2, v4

    :cond_8
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v6, v2

    move-object/from16 v2, p6

    move-object/from16 v7, p5

    .line 754
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    add-int/2addr v10, v12

    if-eqz v11, :cond_a

    return v10

    :cond_a
    move v2, v11

    goto/16 :goto_0
.end method

.method private static extraCallback(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;
    .locals 9

    const/16 v0, 0x8

    .line 334
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    const/4 v2, 0x4

    .line 335
    invoke-virtual {p0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    const/4 v3, 0x2

    .line 336
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 337
    invoke-virtual {p0, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    add-int/lit8 p1, p1, -0x2

    .line 340
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-lez p1, :cond_0

    .line 342
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    .line 343
    invoke-virtual {p0, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/16 v6, 0x10

    .line 344
    invoke-virtual {p0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v7

    .line 345
    invoke-virtual {p0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v6

    add-int/lit8 p1, p1, -0x6

    .line 347
    new-instance v8, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;

    invoke-direct {v8, v7, v6}, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_0
    new-instance p0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    invoke-direct {p0, v1, v2, v4, v3}, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;-><init>(IIILandroid/util/SparseArray;)V

    return-object p0
.end method

.method private static extraCallback(Lo/PublisherException;Lo/UpiBalanceResponseJsonAdapter$asBinder;)V
    .locals 6

    const/16 v0, 0x8

    .line 231
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/16 v1, 0x10

    .line 232
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 233
    invoke-virtual {p0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    .line 234
    invoke-virtual {p0}, Lo/PublisherException;->onMessageChannelReady()I

    move-result v3

    add-int/2addr v3, v1

    shl-int/lit8 v4, v1, 0x3

    .line 236
    invoke-virtual {p0}, Lo/PublisherException;->onNavigationEvent()I

    move-result v5

    if-le v4, v5, :cond_0

    const-string p1, "DvbParser"

    const-string v0, "Data field length exceeds limit"

    .line 237
    invoke-static {p1, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lo/PublisherException;->onNavigationEvent()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 245
    :pswitch_0
    iget v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback:I

    if-ne v2, v0, :cond_5

    .line 246
    invoke-static {p0}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(Lo/PublisherException;)Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    move-result-object v0

    iput-object v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asBinder:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    goto/16 :goto_0

    .line 283
    :pswitch_1
    iget v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback:I

    if-ne v2, v0, :cond_1

    .line 284
    invoke-static {p0}, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent(Lo/PublisherException;)Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;

    move-result-object v0

    .line 285
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onMessageChannelReady:Landroid/util/SparseArray;

    iget v1, v0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 286
    :cond_1
    iget v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onNavigationEvent:I

    if-ne v2, v0, :cond_5

    .line 287
    invoke-static {p0}, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent(Lo/PublisherException;)Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;

    move-result-object v0

    .line 288
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asInterface:Landroid/util/SparseArray;

    iget v1, v0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 274
    :pswitch_2
    iget v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback:I

    if-ne v2, v0, :cond_2

    .line 275
    invoke-static {p0, v1}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    move-result-object v0

    .line 276
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onPostMessage:Landroid/util/SparseArray;

    iget v1, v0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_2
    iget v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onNavigationEvent:I

    if-ne v2, v0, :cond_5

    .line 278
    invoke-static {p0, v1}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    move-result-object v0

    .line 279
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    iget v1, v0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    .line 265
    iget v4, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback:I

    if-ne v2, v4, :cond_5

    if-eqz v0, :cond_5

    .line 266
    invoke-static {p0, v1}, Lo/UpiBalanceResponseJsonAdapter;->onMessageChannelReady(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;

    move-result-object v1

    .line 267
    iget v0, v0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    if-nez v0, :cond_3

    .line 268
    iget-object v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->extraCallback:Landroid/util/SparseArray;

    iget v2, v1, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;

    invoke-virtual {v1, v0}, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onMessageChannelReady(Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;)V

    .line 270
    :cond_3
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->extraCallback:Landroid/util/SparseArray;

    iget v0, v1, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 250
    :pswitch_4
    iget v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback:I

    if-ne v2, v0, :cond_5

    .line 251
    iget-object v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    .line 252
    invoke-static {p0, v1}, Lo/UpiBalanceResponseJsonAdapter;->extraCallback(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    move-result-object v1

    .line 253
    iget v2, v1, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    if-eqz v2, :cond_4

    .line 254
    iput-object v1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    .line 255
    iget-object v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 256
    iget-object v0, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onPostMessage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 257
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 258
    iget v0, v0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    iget v2, v1, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    if-eq v0, v2, :cond_5

    .line 259
    iput-object v1, p1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    .line 297
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lo/PublisherException;->onMessageChannelReady()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lo/PublisherException;->onPostMessage(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extraCallback([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 13

    move v0, p2

    .line 604
    new-instance v8, Lo/PublisherException;

    move-object v1, p0

    invoke-direct {v8, p0}, Lo/PublisherException;-><init>([B)V

    const/4 v9, 0x0

    move/from16 v4, p3

    move/from16 v10, p4

    move-object v11, v9

    move-object v12, v11

    .line 611
    :goto_0
    invoke-virtual {v8}, Lo/PublisherException;->onNavigationEvent()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 612
    invoke-virtual {v8, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x10

    .line 648
    invoke-static {v2, v1, v8}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(IILo/PublisherException;)[B

    move-result-object v11

    goto :goto_0

    .line 645
    :pswitch_1
    invoke-static {v3, v1, v8}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(IILo/PublisherException;)[B

    move-result-object v11

    goto :goto_0

    .line 642
    :pswitch_2
    invoke-static {v3, v3, v8}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(IILo/PublisherException;)[B

    move-result-object v12

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 639
    invoke-static/range {v1 .. v7}, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback(Lo/PublisherException;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    goto :goto_0

    :pswitch_4
    if-ne v0, v3, :cond_0

    .line 630
    sget-object v1, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback:[B

    move-object v3, v1

    goto :goto_1

    :cond_0
    move-object v3, v9

    :goto_1
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 634
    invoke-static/range {v1 .. v7}, Lo/UpiBalanceResponseJsonAdapter;->extraCallback(Lo/PublisherException;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 636
    invoke-virtual {v8}, Lo/PublisherException;->asInterface()V

    goto :goto_0

    :pswitch_5
    if-ne v0, v3, :cond_2

    if-nez v11, :cond_1

    .line 617
    sget-object v1, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent:[B

    goto :goto_2

    :cond_1
    move-object v1, v11

    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-nez v12, :cond_3

    .line 619
    sget-object v1, Lo/UpiBalanceResponseJsonAdapter;->onMessageChannelReady:[B

    goto :goto_2

    :cond_3
    move-object v1, v12

    goto :goto_2

    :cond_4
    move-object v3, v9

    :goto_3
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 623
    invoke-static/range {v1 .. v7}, Lo/UpiBalanceResponseJsonAdapter;->onMessageChannelReady(Lo/PublisherException;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    .line 625
    invoke-virtual {v8}, Lo/PublisherException;->asInterface()V

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v10, 0x2

    move/from16 v4, p3

    goto :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static onMessageChannelReady(Lo/PublisherException;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 670
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v11, v2

    :goto_1
    const/4 v12, 0x1

    goto :goto_4

    .line 674
    :cond_0
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_1

    .line 675
    invoke-virtual {p0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    add-int/2addr v4, v6

    .line 676
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    :goto_2
    move v11, v2

    move v12, v4

    move v4, v3

    goto :goto_4

    .line 677
    :cond_1
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    if-eqz v4, :cond_2

    move v11, v2

    const/4 v4, 0x0

    goto :goto_1

    .line 680
    :cond_2
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_5

    if-eq v4, v3, :cond_4

    if-eq v4, v6, :cond_3

    move v11, v2

    const/4 v4, 0x0

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_3
    const/16 v4, 0x8

    .line 692
    invoke-virtual {p0, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    .line 693
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    .line 688
    invoke-virtual {p0, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    .line 689
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    goto :goto_2

    :cond_5
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_3

    :goto_4
    if-eqz v12, :cond_8

    if-eqz v8, :cond_8

    if-eqz p2, :cond_7

    .line 699
    aget-byte v4, p2, v4

    :cond_7
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    .line 700
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    add-int/2addr v10, v12

    if-eqz v11, :cond_9

    return v10

    :cond_9
    move v2, v11

    goto :goto_0
.end method

.method private static onMessageChannelReady(Lo/PublisherException;I)Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 357
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    const/4 v2, 0x4

    .line 358
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    const/4 v5, 0x3

    .line 360
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/16 v6, 0x10

    .line 361
    invoke-virtual {v0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v7

    .line 362
    invoke-virtual {v0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    .line 363
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v9

    .line 364
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v10

    const/4 v5, 0x2

    .line 365
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 366
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v11

    .line 367
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v12

    .line 368
    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v13

    .line 369
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v14

    .line 370
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    add-int/lit8 v15, p1, -0xa

    .line 373
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-lez v15, :cond_2

    .line 375
    invoke-virtual {v0, v6}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 376
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v6

    .line 377
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v20

    const/16 v5, 0xc

    .line 378
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v21

    move/from16 v25, v14

    const/4 v14, 0x4

    .line 379
    invoke-virtual {v0, v14}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 380
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v22

    add-int/lit8 v15, v15, -0x6

    const/4 v5, 0x1

    const/16 v17, 0x0

    if-eq v6, v5, :cond_1

    const/4 v5, 0x2

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v5, 0x8

    .line 386
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v16

    .line 387
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v17

    add-int/lit8 v15, v15, -0x2

    move/from16 v23, v16

    move/from16 v24, v17

    .line 391
    :goto_2
    new-instance v5, Lo/UpiBalanceResponseJsonAdapter$asInterface;

    move-object/from16 v18, v5

    move/from16 v19, v6

    invoke-direct/range {v18 .. v24}, Lo/UpiBalanceResponseJsonAdapter$asInterface;-><init>(IIIIII)V

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v14, v25

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x10

    goto :goto_0

    :cond_2
    move/from16 v25, v14

    .line 396
    new-instance v0, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;

    move-object v2, v0

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v25

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static onMessageChannelReady()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 499
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1000000
        -0x808081
    .end array-data
.end method

.method private static onNavigationEvent(Lo/PublisherException;)Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;
    .locals 7

    const/16 v0, 0x10

    .line 467
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    const/4 v2, 0x4

    .line 468
    invoke-virtual {p0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/4 v3, 0x2

    .line 469
    invoke-virtual {p0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    .line 470
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    const/4 v5, 0x1

    .line 471
    invoke-virtual {p0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    const/16 v0, 0x8

    .line 477
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    shl-int/2addr v0, v2

    .line 479
    invoke-virtual {p0, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    goto :goto_0

    :cond_0
    if-nez v3, :cond_2

    .line 481
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 482
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 484
    new-array v6, v2, [B

    .line 485
    invoke-virtual {p0, v6, v3, v2}, Lo/PublisherException;->onMessageChannelReady([BII)V

    :cond_1
    if-lez v0, :cond_2

    .line 488
    new-array v2, v0, [B

    .line 489
    invoke-virtual {p0, v2, v3, v0}, Lo/PublisherException;->onMessageChannelReady([BII)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v6

    .line 495
    :goto_1
    new-instance p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;

    invoke-direct {p0, v1, v4, v6, v2}, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;-><init>(IZ[B[B)V

    return-object p0
.end method

.method private static onNavigationEvent(Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 587
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onMessageChannelReady:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 589
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->ICustomTabsCallback:[I

    goto :goto_0

    .line 591
    :cond_1
    iget-object p1, p1, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onPostMessage:[I

    .line 593
    :goto_0
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->onMessageChannelReady:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lo/UpiBalanceResponseJsonAdapter;->extraCallback([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 595
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent:[B

    add-int/lit8 v4, p4, 0x1

    invoke-static/range {v0 .. v6}, Lo/UpiBalanceResponseJsonAdapter;->extraCallback([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static onNavigationEvent()[I
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0xff

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    const/16 v7, 0xff

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 512
    :goto_3
    invoke-static {v5, v4, v6, v7}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    :cond_3
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    const/16 v4, 0x7f

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    const/16 v7, 0x7f

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 518
    :goto_6
    invoke-static {v5, v4, v7, v6}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private static onPostMessage(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static onPostMessage()[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    const/16 v4, 0x3f

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_0

    const/16 v6, 0xff

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_1

    const/16 v7, 0xff

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 533
    :goto_3
    invoke-static {v4, v6, v7, v5}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_19

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_12

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_b

    const/16 v4, 0x88

    if-eq v6, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    const/16 v4, 0x2b

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    const/16 v6, 0x55

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_7

    const/16 v6, 0x2b

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_8

    const/16 v9, 0x55

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    add-int/2addr v7, v8

    .line 562
    invoke-static {v5, v4, v6, v7}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c

    const/16 v4, 0x2b

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_d

    const/16 v6, 0x55

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_e

    const/16 v6, 0x2b

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_f

    const/16 v10, 0x55

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    :goto_f
    add-int/2addr v7, v8

    .line 555
    invoke-static {v5, v4, v6, v7}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_13

    const/16 v4, 0x55

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_14

    const/16 v5, 0xaa

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_15

    const/16 v5, 0x55

    goto :goto_12

    :cond_15
    const/4 v5, 0x0

    :goto_12
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    const/16 v6, 0xaa

    goto :goto_13

    :cond_16
    const/4 v6, 0x0

    :goto_13
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_17

    goto :goto_14

    :cond_17
    const/4 v8, 0x0

    :goto_14
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_18

    goto :goto_15

    :cond_18
    const/4 v7, 0x0

    :goto_15
    add-int/2addr v8, v7

    .line 548
    invoke-static {v9, v4, v5, v8}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1a

    const/16 v4, 0x55

    goto :goto_16

    :cond_1a
    const/4 v4, 0x0

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_1b

    const/16 v6, 0xaa

    goto :goto_17

    :cond_1b
    const/4 v6, 0x0

    :goto_17
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1c

    const/16 v6, 0x55

    goto :goto_18

    :cond_1c
    const/4 v6, 0x0

    :goto_18
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_1d

    const/16 v9, 0xaa

    goto :goto_19

    :cond_1d
    const/4 v9, 0x0

    :goto_19
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v8, 0x0

    :goto_1a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v7, 0x0

    :goto_1b
    add-int/2addr v8, v7

    .line 541
    invoke-static {v5, v4, v6, v8}, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method


# virtual methods
.method public final ICustomTabsCallback([BI)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 128
    new-instance v1, Lo/PublisherException;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lo/PublisherException;-><init>([BI)V

    .line 129
    :goto_0
    invoke-virtual {v1}, Lo/PublisherException;->onNavigationEvent()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    .line 130
    invoke-virtual {v1, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 131
    iget-object v2, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    invoke-static {v1, v2}, Lo/UpiBalanceResponseJsonAdapter;->extraCallback(Lo/PublisherException;Lo/UpiBalanceResponseJsonAdapter$asBinder;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v1, v1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    if-nez v1, :cond_1

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 139
    :cond_1
    iget-object v1, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v1, v1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asBinder:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v1, v1, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asBinder:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lo/UpiBalanceResponseJsonAdapter;->onTransact:Lo/UpiBalanceResponseJsonAdapter$extraCallback;

    .line 141
    :goto_1
    iget-object v2, v0, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget v2, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onPostMessage:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onNavigationEvent:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    .line 142
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 143
    :cond_3
    iget v2, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onPostMessage:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onNavigationEvent:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    .line 145
    iget-object v3, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v3, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v3, v3, Lo/UpiBalanceResponseJsonAdapter$asBinder;->ICustomTabsCallback$Stub:Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;

    iget-object v3, v3, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback;->extraCallback:Landroid/util/SparseArray;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 151
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 153
    iget-object v6, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 154
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;

    .line 155
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 156
    iget-object v8, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v8, v8, Lo/UpiBalanceResponseJsonAdapter$asBinder;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;

    .line 159
    iget v8, v6, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;->onPostMessage:I

    iget v9, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v8, v9

    .line 161
    iget v6, v6, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;->extraCallback:I

    iget v9, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onMessageChannelReady:I

    add-int/2addr v6, v9

    .line 163
    iget v9, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onNavigationEvent:I

    add-int/2addr v9, v8

    iget v10, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->extraCallback:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 165
    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onPostMessage:I

    add-int/2addr v10, v6

    iget v11, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->ICustomTabsCallback$Stub:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 167
    iget-object v11, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    invoke-virtual {v11, v8, v6, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 168
    iget-object v9, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v9, v9, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onPostMessage:Landroid/util/SparseArray;

    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    if-nez v9, :cond_5

    .line 170
    iget-object v9, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v9, v9, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onRelationshipValidationResult:Landroid/util/SparseArray;

    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    if-nez v9, :cond_5

    .line 172
    iget-object v9, v0, Lo/UpiBalanceResponseJsonAdapter;->asBinder:Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;

    .line 176
    :cond_5
    iget-object v15, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->getInterfaceDescriptor:Landroid/util/SparseArray;

    const/4 v14, 0x0

    .line 177
    :goto_3
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v14, v10, :cond_9

    .line 178
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 179
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/UpiBalanceResponseJsonAdapter$asInterface;

    .line 180
    iget-object v12, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v12, v12, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;

    if-nez v12, :cond_6

    .line 182
    iget-object v12, v0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    iget-object v12, v12, Lo/UpiBalanceResponseJsonAdapter$asBinder;->asInterface:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;

    goto :goto_4

    :cond_6
    move-object v10, v12

    :goto_4
    if-eqz v10, :cond_8

    .line 185
    iget-boolean v12, v10, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->onPostMessage:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    iget-object v12, v0, Lo/UpiBalanceResponseJsonAdapter;->extraCallback:Landroid/graphics/Paint;

    :goto_5
    move-object/from16 v16, v12

    .line 186
    iget v12, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onTransact:I

    iget v13, v11, Lo/UpiBalanceResponseJsonAdapter$asInterface;->ICustomTabsCallback:I

    add-int/2addr v13, v8

    iget v11, v11, Lo/UpiBalanceResponseJsonAdapter$asInterface;->onMessageChannelReady:I

    add-int v17, v6, v11

    iget-object v11, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    move-object/from16 v18, v11

    move-object v11, v9

    move/from16 v19, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lo/UpiBalanceResponseJsonAdapter;->onNavigationEvent(Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_6

    :cond_8
    move/from16 v19, v14

    move-object/from16 v17, v15

    :goto_6
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v15, v17

    goto :goto_3

    .line 192
    :cond_9
    iget-boolean v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onMessageChannelReady:Z

    if-eqz v10, :cond_c

    .line 194
    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onTransact:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 195
    iget-object v9, v9, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onMessageChannelReady:[I

    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->asBinder:I

    aget v9, v9, v10

    goto :goto_7

    .line 196
    :cond_a
    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onTransact:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 197
    iget-object v9, v9, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->ICustomTabsCallback:[I

    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->asInterface:I

    aget v9, v9, v10

    goto :goto_7

    .line 199
    :cond_b
    iget-object v9, v9, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onPostMessage:[I

    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onRelationshipValidationResult:I

    aget v9, v9, v10

    .line 201
    :goto_7
    iget-object v10, v0, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v11, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    int-to-float v12, v8

    int-to-float v13, v6

    iget v9, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onNavigationEvent:I

    add-int/2addr v9, v8

    int-to-float v14, v9

    iget v9, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onPostMessage:I

    add-int/2addr v9, v6

    int-to-float v15, v9

    iget-object v9, v0, Lo/UpiBalanceResponseJsonAdapter;->onPostMessage:Landroid/graphics/Paint;

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 208
    :cond_c
    iget-object v9, v0, Lo/UpiBalanceResponseJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    iget v10, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onNavigationEvent:I

    iget v11, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onPostMessage:I

    invoke-static {v9, v8, v6, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 210
    new-instance v9, Lo/SimResponseJsonAdapter;

    int-to-float v8, v8

    iget v10, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onPostMessage:I

    int-to-float v10, v10

    div-float v14, v8, v10

    const/4 v15, 0x0

    int-to-float v6, v6

    iget v8, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onNavigationEvent:I

    int-to-float v8, v8

    div-float v16, v6, v8

    const/16 v17, 0x0

    iget v6, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onNavigationEvent:I

    int-to-float v6, v6

    iget v8, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onPostMessage:I

    int-to-float v8, v8

    div-float v18, v6, v8

    iget v6, v7, Lo/UpiBalanceResponseJsonAdapter$ICustomTabsCallback$Stub;->onPostMessage:I

    int-to-float v6, v6

    iget v7, v1, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onNavigationEvent:I

    int-to-float v7, v7

    div-float v19, v6, v7

    move-object v12, v9

    invoke-direct/range {v12 .. v19}, Lo/SimResponseJsonAdapter;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v6, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 217
    iget-object v6, v0, Lo/UpiBalanceResponseJsonAdapter;->onRelationshipValidationResult:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 220
    :cond_d
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final extraCallback()V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/UpiBalanceResponseJsonAdapter;->asInterface:Lo/UpiBalanceResponseJsonAdapter$asBinder;

    invoke-virtual {v0}, Lo/UpiBalanceResponseJsonAdapter$asBinder;->onPostMessage()V

    return-void
.end method
