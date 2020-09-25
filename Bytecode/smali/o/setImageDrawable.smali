.class public Lo/setImageDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setSupportImageTintList;


# static fields
.field private static final onPostMessage:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:[I

.field private ICustomTabsCallback$Stub:[B

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

.field private ICustomTabsService$Stub:Landroid/graphics/Bitmap$Config;

.field private asBinder:[S

.field private asInterface:[B

.field private final extraCallback:[I

.field private extraCommand:I

.field private getInterfaceDescriptor:[I

.field private mayLaunchUrl:I

.field private newSession:I

.field private final onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

.field private onNavigationEvent:Ljava/nio/ByteBuffer;

.field private onRelationshipValidationResult:[B

.field private onTransact:[B

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private updateVisuals:Ljava/lang/Boolean;

.field private warmup:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lo/setImageDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lo/setSupportImageTintList$onMessageChannelReady;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 87
    iput-object v0, p0, Lo/setImageDrawable;->extraCallback:[I

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lo/setImageDrawable;->ICustomTabsService$Stub:Landroid/graphics/Bitmap$Config;

    .line 138
    iput-object p1, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    .line 139
    new-instance p1, Lo/onSupportContentChanged$onNavigationEvent;

    invoke-direct {p1}, Lo/onSupportContentChanged$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Lo/setSupportImageTintList$onMessageChannelReady;Lo/onSupportContentChanged$onNavigationEvent;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lo/setImageDrawable;-><init>(Lo/setSupportImageTintList$onMessageChannelReady;)V

    .line 133
    invoke-direct {p0, p2, p3, p4}, Lo/setImageDrawable;->extraCallback(Lo/onSupportContentChanged$onNavigationEvent;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private asInterface()Landroid/graphics/Bitmap;
    .locals 4

    .line 845
    iget-object v0, p0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/setImageDrawable;->ICustomTabsService$Stub:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 847
    :goto_1
    iget-object v1, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    iget v2, p0, Lo/setImageDrawable;->extraCommand:I

    iget v3, p0, Lo/setImageDrawable;->postMessage:I

    invoke-interface {v1, v2, v3, v0}, Lo/setSupportImageTintList$onMessageChannelReady;->onNavigationEvent(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 848
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method private declared-synchronized extraCallback(Lo/onSupportContentChanged$onNavigationEvent;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    .line 363
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lo/setImageDrawable;->requestPostMessageChannel:I

    .line 365
    iput-object p1, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    const/4 v1, -0x1

    .line 366
    iput v1, p0, Lo/setImageDrawable;->newSession:I

    .line 368
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 369
    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 370
    iget-object p2, p0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 373
    iput-boolean v0, p0, Lo/setImageDrawable;->ICustomTabsCallback$Stub$Proxy:Z

    .line 374
    iget-object p2, p1, Lo/onSupportContentChanged$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onSupportContentChanged$extraCallback;

    .line 375
    iget v0, v0, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 376
    iput-boolean p2, p0, Lo/setImageDrawable;->ICustomTabsCallback$Stub$Proxy:Z

    .line 381
    :cond_1
    iput p3, p0, Lo/setImageDrawable;->mayLaunchUrl:I

    .line 382
    iget p2, p1, Lo/onSupportContentChanged$onNavigationEvent;->asInterface:I

    div-int/2addr p2, p3

    iput p2, p0, Lo/setImageDrawable;->extraCommand:I

    .line 383
    iget p2, p1, Lo/onSupportContentChanged$onNavigationEvent;->onTransact:I

    div-int/2addr p2, p3

    iput p2, p0, Lo/setImageDrawable;->postMessage:I

    .line 386
    iget-object p2, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    iget p3, p1, Lo/onSupportContentChanged$onNavigationEvent;->asInterface:I

    iget p1, p1, Lo/onSupportContentChanged$onNavigationEvent;->onTransact:I

    mul-int p3, p3, p1

    invoke-interface {p2, p3}, Lo/setSupportImageTintList$onMessageChannelReady;->onNavigationEvent(I)[B

    move-result-object p1

    iput-object p1, p0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    .line 387
    iget-object p1, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    iget p2, p0, Lo/setImageDrawable;->extraCommand:I

    iget p3, p0, Lo/setImageDrawable;->postMessage:I

    mul-int p2, p2, p3

    invoke-interface {p1, p2}, Lo/setSupportImageTintList$onMessageChannelReady;->onMessageChannelReady(I)[I

    move-result-object p1

    iput-object p1, p0, Lo/setImageDrawable;->getInterfaceDescriptor:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 360
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sample size must be >=0, not: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private onNavigationEvent(Lo/onSupportContentChanged$extraCallback;Lo/onSupportContentChanged$extraCallback;)Landroid/graphics/Bitmap;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 425
    iget-object v10, v0, Lo/setImageDrawable;->getInterfaceDescriptor:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1

    .line 429
    iget-object v3, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 430
    iget-object v4, v0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    invoke-interface {v4, v3}, Lo/setSupportImageTintList$onMessageChannelReady;->onPostMessage(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v3, 0x0

    .line 432
    iput-object v3, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    .line 433
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v12, 0x3

    if-eqz v2, :cond_2

    .line 439
    iget v3, v2, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-ne v3, v12, :cond_2

    iget-object v3, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 441
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    const/4 v13, 0x2

    if-eqz v2, :cond_7

    .line 445
    iget v3, v2, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-lez v3, :cond_7

    .line 448
    iget v3, v2, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-ne v3, v13, :cond_6

    .line 451
    iget-boolean v3, v1, Lo/onSupportContentChanged$extraCallback;->asInterface:Z

    if-nez v3, :cond_3

    .line 452
    iget-object v3, v0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    .line 453
    iget-object v4, v1, Lo/onSupportContentChanged$extraCallback;->warmup:[I

    if-eqz v4, :cond_4

    iget-object v4, v0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v5, v1, Lo/onSupportContentChanged$extraCallback;->ICustomTabsCallback$Stub:I

    if-ne v4, v5, :cond_4

    :cond_3
    const/4 v3, 0x0

    .line 458
    :cond_4
    iget v4, v2, Lo/onSupportContentChanged$extraCallback;->onNavigationEvent:I

    iget v5, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v4, v5

    .line 459
    iget v5, v2, Lo/onSupportContentChanged$extraCallback;->onPostMessage:I

    iget v6, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v5, v6

    .line 460
    iget v6, v2, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    iget v7, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v6, v7

    .line 461
    iget v2, v2, Lo/onSupportContentChanged$extraCallback;->extraCallback:I

    iget v7, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v2, v7

    .line 462
    iget v7, v0, Lo/setImageDrawable;->extraCommand:I

    mul-int v5, v5, v7

    add-int/2addr v5, v2

    mul-int v4, v4, v7

    add-int/2addr v4, v5

    :goto_0
    if-ge v5, v4, :cond_7

    add-int v2, v5, v6

    move v7, v5

    :goto_1
    if-ge v7, v2, :cond_5

    .line 467
    aput v3, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 464
    :cond_5
    iget v2, v0, Lo/setImageDrawable;->extraCommand:I

    add-int/2addr v5, v2

    goto :goto_0

    .line 470
    :cond_6
    iget v2, v2, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-ne v2, v12, :cond_7

    iget-object v2, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    .line 472
    iget v8, v0, Lo/setImageDrawable;->extraCommand:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lo/setImageDrawable;->postMessage:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_7
    if-eqz v1, :cond_8

    .line 1697
    iget-object v2, v0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    iget v3, v1, Lo/onSupportContentChanged$extraCallback;->onTransact:I

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    if-nez v1, :cond_9

    .line 1700
    iget-object v2, v0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v2, v2, Lo/onSupportContentChanged$onNavigationEvent;->asInterface:I

    iget-object v3, v0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v3, v3, Lo/onSupportContentChanged$onNavigationEvent;->onTransact:I

    goto :goto_2

    :cond_9
    iget v2, v1, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    iget v3, v1, Lo/onSupportContentChanged$extraCallback;->onNavigationEvent:I

    :goto_2
    mul-int v2, v2, v3

    .line 1704
    iget-object v3, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    if-eqz v3, :cond_a

    array-length v3, v3

    if-ge v3, v2, :cond_b

    .line 1706
    :cond_a
    iget-object v3, v0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    invoke-interface {v3, v2}, Lo/setSupportImageTintList$onMessageChannelReady;->onNavigationEvent(I)[B

    move-result-object v3

    iput-object v3, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    .line 1708
    :cond_b
    iget-object v3, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    .line 1709
    iget-object v4, v0, Lo/setImageDrawable;->asBinder:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_c

    new-array v4, v5, [S

    .line 1710
    iput-object v4, v0, Lo/setImageDrawable;->asBinder:[S

    .line 1712
    :cond_c
    iget-object v4, v0, Lo/setImageDrawable;->asBinder:[S

    .line 1713
    iget-object v6, v0, Lo/setImageDrawable;->asInterface:[B

    if-nez v6, :cond_d

    new-array v6, v5, [B

    .line 1714
    iput-object v6, v0, Lo/setImageDrawable;->asInterface:[B

    .line 1716
    :cond_d
    iget-object v6, v0, Lo/setImageDrawable;->asInterface:[B

    .line 1717
    iget-object v7, v0, Lo/setImageDrawable;->ICustomTabsCallback$Stub:[B

    if-nez v7, :cond_e

    const/16 v7, 0x1001

    new-array v7, v7, [B

    .line 1718
    iput-object v7, v0, Lo/setImageDrawable;->ICustomTabsCallback$Stub:[B

    .line 1720
    :cond_e
    iget-object v7, v0, Lo/setImageDrawable;->ICustomTabsCallback$Stub:[B

    .line 1827
    iget-object v8, v0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    shl-int v14, v9, v8

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v14, 0x2

    add-int/2addr v8, v9

    shl-int v17, v9, v8

    add-int/lit8 v17, v17, -0x1

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v14, :cond_f

    .line 1733
    aput-short v11, v4, v13

    int-to-byte v5, v13

    .line 1734
    aput-byte v5, v6, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x1000

    goto :goto_3

    .line 1736
    :cond_f
    iget-object v5, v0, Lo/setImageDrawable;->onTransact:[B

    move/from16 v26, v8

    move/from16 v25, v16

    move/from16 v27, v17

    const/4 v13, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_4
    const/16 v30, 0x8

    if-ge v13, v2, :cond_1b

    if-nez v20, :cond_12

    .line 2827
    iget-object v9, v0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    if-gtz v9, :cond_10

    move/from16 v31, v8

    move/from16 v32, v13

    goto :goto_5

    .line 1840
    :cond_10
    iget-object v12, v0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    iget-object v11, v0, Lo/setImageDrawable;->onTransact:[B

    move/from16 v31, v8

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v32, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_5
    if-gtz v9, :cond_11

    const/4 v8, 0x3

    .line 1744
    iput v8, v0, Lo/setImageDrawable;->requestPostMessageChannel:I

    goto/16 :goto_a

    :cond_11
    move/from16 v20, v9

    const/16 v21, 0x0

    goto :goto_6

    :cond_12
    move/from16 v31, v8

    move/from16 v32, v13

    .line 1750
    :goto_6
    aget-byte v8, v5, v21

    and-int/lit16 v8, v8, 0xff

    shl-int v8, v8, v22

    add-int v23, v23, v8

    add-int/lit8 v22, v22, 0x8

    const/4 v8, 0x1

    add-int/lit8 v21, v21, 0x1

    const/4 v8, -0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v9, v19

    move/from16 v11, v22

    move/from16 v12, v25

    move/from16 v8, v26

    move/from16 v13, v32

    move-object/from16 v19, v5

    move/from16 v5, v29

    :goto_7
    if-lt v11, v8, :cond_1a

    move-object/from16 v22, v10

    and-int v10, v23, v27

    shr-int v23, v23, v8

    sub-int/2addr v11, v8

    if-ne v10, v14, :cond_13

    move/from16 v12, v16

    move/from16 v27, v17

    move-object/from16 v10, v22

    move/from16 v8, v31

    const/4 v9, -0x1

    goto :goto_7

    :cond_13
    if-eq v10, v15, :cond_19

    move/from16 v25, v11

    const/4 v11, -0x1

    if-ne v9, v11, :cond_14

    .line 1772
    aget-byte v5, v6, v10

    aput-byte v5, v3, v24

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v13, v13, 0x1

    move v5, v10

    move v9, v5

    move-object/from16 v10, v22

    move/from16 v11, v25

    goto :goto_7

    :cond_14
    if-lt v10, v12, :cond_15

    int-to-byte v5, v5

    .line 1782
    aput-byte v5, v7, v28

    add-int/lit8 v28, v28, 0x1

    move v5, v9

    goto :goto_8

    :cond_15
    move v5, v10

    :goto_8
    if-lt v5, v14, :cond_16

    .line 1788
    aget-byte v11, v6, v5

    aput-byte v11, v7, v28

    add-int/lit8 v28, v28, 0x1

    .line 1790
    aget-short v5, v4, v5

    goto :goto_8

    .line 1792
    :cond_16
    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v11, v5

    .line 1794
    aput-byte v11, v3, v24

    :goto_9
    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v13, v13, 0x1

    if-lez v28, :cond_17

    add-int/lit8 v28, v28, -0x1

    .line 1800
    aget-byte v26, v7, v28

    aput-byte v26, v3, v24

    goto :goto_9

    :cond_17
    move/from16 v26, v5

    const/16 v5, 0x1000

    if-ge v12, v5, :cond_18

    int-to-short v9, v9

    .line 1807
    aput-short v9, v4, v12

    .line 1808
    aput-byte v11, v6, v12

    add-int/lit8 v12, v12, 0x1

    and-int v9, v12, v27

    if-nez v9, :cond_18

    if-ge v12, v5, :cond_18

    add-int/lit8 v8, v8, 0x1

    add-int v27, v27, v12

    :cond_18
    move v9, v10

    move-object/from16 v10, v22

    move/from16 v11, v25

    move/from16 v5, v26

    goto :goto_7

    :cond_19
    move/from16 v29, v5

    move/from16 v25, v11

    move/from16 v26, v8

    move-object/from16 v5, v19

    move-object/from16 v10, v22

    move/from16 v22, v25

    move/from16 v8, v31

    const/4 v11, 0x0

    move/from16 v19, v9

    move/from16 v25, v12

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto/16 :goto_4

    :cond_1a
    move/from16 v29, v5

    move/from16 v26, v8

    move/from16 v22, v11

    move/from16 v25, v12

    move-object/from16 v5, v19

    move/from16 v8, v31

    const/4 v11, 0x0

    const/4 v12, 0x3

    move/from16 v19, v9

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_1b
    :goto_a
    move-object/from16 v22, v10

    move/from16 v11, v24

    const/4 v13, 0x0

    .line 1820
    invoke-static {v3, v11, v2, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 480
    iget-boolean v2, v1, Lo/onSupportContentChanged$extraCallback;->ICustomTabsCallback:Z

    if-nez v2, :cond_26

    iget v2, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    goto/16 :goto_10

    .line 4503
    :cond_1c
    iget-object v2, v0, Lo/setImageDrawable;->getInterfaceDescriptor:[I

    .line 4504
    iget v3, v1, Lo/onSupportContentChanged$extraCallback;->onNavigationEvent:I

    .line 4505
    iget v4, v1, Lo/onSupportContentChanged$extraCallback;->onPostMessage:I

    .line 4506
    iget v5, v1, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    .line 4507
    iget v6, v1, Lo/onSupportContentChanged$extraCallback;->extraCallback:I

    .line 4509
    iget v7, v0, Lo/setImageDrawable;->newSession:I

    if-nez v7, :cond_1d

    const/4 v7, 0x1

    goto :goto_b

    :cond_1d
    const/4 v7, 0x0

    .line 4510
    :goto_b
    iget v8, v0, Lo/setImageDrawable;->extraCommand:I

    .line 4511
    iget-object v9, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    .line 4512
    iget-object v10, v0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v3, :cond_22

    add-int v14, v12, v4

    mul-int v14, v14, v8

    add-int v15, v14, v6

    add-int v13, v15, v5

    add-int/2addr v14, v8

    if-ge v14, v13, :cond_1e

    move v13, v14

    .line 4526
    :cond_1e
    iget v14, v1, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    mul-int v14, v14, v12

    :goto_d
    if-ge v15, v13, :cond_21

    move/from16 v16, v3

    .line 4529
    aget-byte v3, v9, v14

    move/from16 v17, v4

    and-int/lit16 v4, v3, 0xff

    if-eq v4, v11, :cond_20

    .line 4532
    aget v4, v10, v4

    if-eqz v4, :cond_1f

    .line 4534
    aput v4, v2, v15

    goto :goto_e

    :cond_1f
    move v11, v3

    :cond_20
    :goto_e
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_d

    :cond_21
    move/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_c

    .line 4544
    :cond_22
    iget-object v2, v0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    if-eqz v2, :cond_23

    .line 4545
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    iget-object v2, v0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    if-nez v2, :cond_25

    if-eqz v7, :cond_25

    const/4 v2, -0x1

    if-eq v11, v2, :cond_25

    :cond_24
    const/4 v11, 0x1

    goto :goto_f

    :cond_25
    const/4 v11, 0x0

    :goto_f
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    goto/16 :goto_1f

    .line 3550
    :cond_26
    :goto_10
    iget-object v2, v0, Lo/setImageDrawable;->getInterfaceDescriptor:[I

    .line 3551
    iget v3, v1, Lo/onSupportContentChanged$extraCallback;->onNavigationEvent:I

    iget v4, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v3, v4

    .line 3552
    iget v4, v1, Lo/onSupportContentChanged$extraCallback;->onPostMessage:I

    iget v5, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v4, v5

    .line 3553
    iget v5, v1, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    iget v6, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v5, v6

    .line 3554
    iget v6, v1, Lo/onSupportContentChanged$extraCallback;->extraCallback:I

    iget v7, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    div-int/2addr v6, v7

    .line 3559
    iget v7, v0, Lo/setImageDrawable;->newSession:I

    if-nez v7, :cond_27

    const/4 v13, 0x1

    goto :goto_11

    :cond_27
    const/4 v13, 0x0

    .line 3560
    :goto_11
    iget v7, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    .line 3561
    iget v8, v0, Lo/setImageDrawable;->extraCommand:I

    .line 3562
    iget v9, v0, Lo/setImageDrawable;->postMessage:I

    .line 3563
    iget-object v10, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    .line 3564
    iget-object v11, v0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    .line 3566
    iget-object v12, v0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x8

    :goto_12
    if-ge v14, v3, :cond_3d

    move-object/from16 p2, v12

    .line 3569
    iget-boolean v12, v1, Lo/onSupportContentChanged$extraCallback;->ICustomTabsCallback:Z

    if-eqz v12, :cond_2c

    if-lt v15, v3, :cond_2b

    add-int/lit8 v12, v16, 0x1

    move/from16 v19, v3

    const/4 v3, 0x2

    if-eq v12, v3, :cond_2a

    const/4 v3, 0x3

    if-eq v12, v3, :cond_29

    const/4 v3, 0x4

    if-eq v12, v3, :cond_28

    move/from16 v16, v12

    goto :goto_13

    :cond_28
    move/from16 v16, v12

    const/4 v15, 0x1

    const/16 v17, 0x2

    goto :goto_13

    :cond_29
    const/4 v3, 0x4

    move/from16 v16, v12

    const/4 v15, 0x2

    const/16 v17, 0x4

    goto :goto_13

    :cond_2a
    const/4 v3, 0x4

    move/from16 v16, v12

    const/4 v15, 0x4

    goto :goto_13

    :cond_2b
    move/from16 v19, v3

    :goto_13
    add-int v3, v15, v17

    goto :goto_14

    :cond_2c
    move/from16 v19, v3

    move v3, v15

    move v15, v14

    :goto_14
    add-int/2addr v15, v4

    const/4 v12, 0x1

    if-ne v7, v12, :cond_2d

    const/4 v12, 0x1

    goto :goto_15

    :cond_2d
    const/4 v12, 0x0

    :goto_15
    if-ge v15, v9, :cond_3c

    mul-int v15, v15, v8

    add-int v18, v15, v6

    move/from16 v20, v3

    add-int v3, v18, v5

    add-int/2addr v15, v8

    if-ge v15, v3, :cond_2e

    move v3, v15

    :cond_2e
    mul-int v15, v14, v7

    move/from16 v21, v4

    .line 3604
    iget v4, v1, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    mul-int v15, v15, v4

    if-eqz v12, :cond_33

    move-object/from16 v12, p2

    move/from16 v4, v18

    :goto_16
    if-ge v4, v3, :cond_31

    move/from16 v23, v5

    .line 3608
    aget-byte v5, v10, v15

    and-int/lit16 v5, v5, 0xff

    .line 3609
    aget v5, v11, v5

    if-eqz v5, :cond_2f

    .line 3611
    aput v5, v2, v4

    goto :goto_17

    :cond_2f
    if-eqz v13, :cond_30

    if-nez v12, :cond_30

    .line 3613
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v12, v5

    :cond_30
    :goto_17
    add-int/2addr v15, v7

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v23

    goto :goto_16

    :cond_31
    move/from16 v23, v5

    :cond_32
    move/from16 v29, v6

    move/from16 v31, v8

    move/from16 v32, v9

    goto/16 :goto_1d

    :cond_33
    move/from16 v23, v5

    sub-int v4, v3, v18

    mul-int v4, v4, v7

    add-int/2addr v4, v15

    move-object/from16 v12, p2

    move/from16 v5, v18

    :goto_18
    if-ge v5, v3, :cond_32

    move/from16 v18, v3

    .line 3625
    iget v3, v1, Lo/onSupportContentChanged$extraCallback;->onMessageChannelReady:I

    move/from16 v29, v6

    move/from16 v31, v8

    move v6, v15

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 3656
    :goto_19
    iget v8, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    add-int/2addr v8, v15

    if-ge v6, v8, :cond_35

    iget-object v8, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    move/from16 v32, v9

    array-length v9, v8

    if-ge v6, v9, :cond_36

    if-ge v6, v4, :cond_36

    .line 3657
    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    .line 3658
    iget-object v9, v0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    aget v8, v9, v8

    if-eqz v8, :cond_34

    ushr-int/lit8 v9, v8, 0x18

    add-int v24, v24, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v8, v8, 0xff

    add-int v27, v27, v8

    add-int/lit8 v28, v28, 0x1

    :cond_34
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v32

    goto :goto_19

    :cond_35
    move/from16 v32, v9

    :cond_36
    add-int/2addr v3, v15

    move v6, v3

    .line 3670
    :goto_1a
    iget v8, v0, Lo/setImageDrawable;->mayLaunchUrl:I

    add-int/2addr v8, v3

    if-ge v6, v8, :cond_38

    iget-object v8, v0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    array-length v9, v8

    if-ge v6, v9, :cond_38

    if-ge v6, v4, :cond_38

    .line 3671
    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    .line 3672
    iget-object v9, v0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    aget v8, v9, v8

    if-eqz v8, :cond_37

    ushr-int/lit8 v9, v8, 0x18

    add-int v24, v24, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v8, v8, 0xff

    add-int v27, v27, v8

    add-int/lit8 v28, v28, 0x1

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_38
    if-nez v28, :cond_39

    const/4 v3, 0x0

    goto :goto_1b

    .line 3684
    :cond_39
    div-int v24, v24, v28

    shl-int/lit8 v3, v24, 0x18

    div-int v25, v25, v28

    shl-int/lit8 v6, v25, 0x10

    or-int/2addr v3, v6

    div-int v26, v26, v28

    shl-int/lit8 v6, v26, 0x8

    or-int/2addr v3, v6

    div-int v27, v27, v28

    or-int v3, v3, v27

    :goto_1b
    if-eqz v3, :cond_3a

    .line 3627
    aput v3, v2, v5

    goto :goto_1c

    :cond_3a
    if-eqz v13, :cond_3b

    if-nez v12, :cond_3b

    .line 3629
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v12, v3

    :cond_3b
    :goto_1c
    add-int/2addr v15, v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    move/from16 v6, v29

    move/from16 v8, v31

    move/from16 v9, v32

    goto/16 :goto_18

    :cond_3c
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v5

    move/from16 v29, v6

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v12, p2

    :goto_1d
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v19

    move/from16 v15, v20

    move/from16 v4, v21

    move/from16 v5, v23

    move/from16 v6, v29

    move/from16 v8, v31

    move/from16 v9, v32

    goto/16 :goto_12

    :cond_3d
    move-object/from16 p2, v12

    .line 3638
    iget-object v2, v0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    if-nez v2, :cond_3f

    if-nez p2, :cond_3e

    const/4 v11, 0x0

    goto :goto_1e

    .line 3640
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 3639
    :goto_1e
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    .line 487
    :cond_3f
    :goto_1f
    iget-boolean v2, v0, Lo/setImageDrawable;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v2, :cond_42

    iget v2, v1, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-eqz v2, :cond_40

    iget v1, v1, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 489
    :cond_40
    iget-object v1, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    if-nez v1, :cond_41

    .line 490
    invoke-direct/range {p0 .. p0}, Lo/setImageDrawable;->asInterface()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    .line 492
    :cond_41
    iget-object v1, v0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lo/setImageDrawable;->extraCommand:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lo/setImageDrawable;->postMessage:I

    move-object/from16 v2, v22

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 497
    :cond_42
    invoke-direct/range {p0 .. p0}, Lo/setImageDrawable;->asInterface()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    .line 498
    iget v7, v0, Lo/setImageDrawable;->extraCommand:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lo/setImageDrawable;->postMessage:I

    move-object v1, v9

    move-object/from16 v2, v22

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/nio/ByteBuffer;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 2

    .line 228
    iget-object v0, p0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lo/setImageDrawable;->getInterfaceDescriptor:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized asBinder()Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v0, v0, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lo/setImageDrawable;->newSession:I

    if-gez v0, :cond_2

    .line 235
    :cond_0
    sget-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to decode frame, frameCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v4, v4, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lo/setImageDrawable;->newSession:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    iput v2, p0, Lo/setImageDrawable;->requestPostMessageChannel:I

    .line 243
    :cond_2
    iget v0, p0, Lo/setImageDrawable;->requestPostMessageChannel:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    iget v0, p0, Lo/setImageDrawable;->requestPostMessageChannel:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lo/setImageDrawable;->requestPostMessageChannel:I

    .line 251
    iget-object v5, p0, Lo/setImageDrawable;->onTransact:[B

    if-nez v5, :cond_4

    .line 252
    iget-object v5, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    const/16 v6, 0xff

    invoke-interface {v5, v6}, Lo/setSupportImageTintList$onMessageChannelReady;->onNavigationEvent(I)[B

    move-result-object v5

    iput-object v5, p0, Lo/setImageDrawable;->onTransact:[B

    .line 255
    :cond_4
    iget-object v5, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v5, v5, Lo/onSupportContentChanged$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    iget v6, p0, Lo/setImageDrawable;->newSession:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/onSupportContentChanged$extraCallback;

    .line 257
    iget v6, p0, Lo/setImageDrawable;->newSession:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_5

    .line 259
    iget-object v7, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v7, v7, Lo/onSupportContentChanged$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/onSupportContentChanged$extraCallback;

    goto :goto_0

    :cond_5
    move-object v6, v3

    .line 263
    :goto_0
    iget-object v7, v5, Lo/onSupportContentChanged$extraCallback;->warmup:[I

    if-eqz v7, :cond_6

    iget-object v7, v5, Lo/onSupportContentChanged$extraCallback;->warmup:[I

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v7, v7, Lo/onSupportContentChanged$onNavigationEvent;->extraCallback:[I

    :goto_1
    iput-object v7, p0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    if-nez v7, :cond_8

    .line 265
    sget-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    sget-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No valid color table found for frame #"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lo/setImageDrawable;->newSession:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_7
    iput v2, p0, Lo/setImageDrawable;->requestPostMessageChannel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-object v3

    .line 274
    :cond_8
    :try_start_1
    iget-boolean v1, v5, Lo/onSupportContentChanged$extraCallback;->asInterface:Z

    if-eqz v1, :cond_9

    .line 276
    iget-object v1, p0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    iget-object v2, p0, Lo/setImageDrawable;->extraCallback:[I

    iget-object v3, p0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v1, p0, Lo/setImageDrawable;->extraCallback:[I

    iput-object v1, p0, Lo/setImageDrawable;->ICustomTabsCallback:[I

    .line 280
    iget v2, v5, Lo/onSupportContentChanged$extraCallback;->ICustomTabsCallback$Stub:I

    aput v0, v1, v2

    .line 282
    iget v0, v5, Lo/onSupportContentChanged$extraCallback;->asBinder:I

    if-ne v0, v4, :cond_9

    iget v0, p0, Lo/setImageDrawable;->newSession:I

    if-nez v0, :cond_9

    .line 286
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    .line 291
    :cond_9
    invoke-direct {p0, v5, v6}, Lo/setImageDrawable;->onNavigationEvent(Lo/onSupportContentChanged$extraCallback;Lo/onSupportContentChanged$extraCallback;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 244
    :cond_a
    :goto_2
    :try_start_2
    sget-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    sget-object v0, Lo/setImageDrawable;->onPostMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to decode frame, status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/setImageDrawable;->requestPostMessageChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :cond_b
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 188
    iget-object v0, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v0, v0, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 165
    iget v0, p0, Lo/setImageDrawable;->newSession:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v1, v1, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    rem-int/2addr v0, v1

    iput v0, p0, Lo/setImageDrawable;->newSession:I

    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 411
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/setImageDrawable;->ICustomTabsService$Stub:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 3

    .line 179
    iget-object v0, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v0, v0, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    if-lez v0, :cond_2

    iget v0, p0, Lo/setImageDrawable;->newSession:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ltz v0, :cond_1

    .line 1171
    iget-object v2, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget v2, v2, Lo/onSupportContentChanged$onNavigationEvent;->ICustomTabsCallback:I

    if-ge v0, v2, :cond_1

    .line 1172
    iget-object v1, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    iget-object v1, v1, Lo/onSupportContentChanged$onNavigationEvent;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onSupportContentChanged$extraCallback;

    iget v1, v0, Lo/onSupportContentChanged$extraCallback;->onRelationshipValidationResult:I

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 193
    iget v0, p0, Lo/setImageDrawable;->newSession:I

    return v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 3

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lo/setImageDrawable;->ICustomTabsService:Lo/onSupportContentChanged$onNavigationEvent;

    .line 329
    iget-object v1, p0, Lo/setImageDrawable;->onRelationshipValidationResult:[B

    if-eqz v1, :cond_0

    .line 330
    iget-object v2, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    invoke-interface {v2, v1}, Lo/setSupportImageTintList$onMessageChannelReady;->extraCallback([B)V

    .line 332
    :cond_0
    iget-object v1, p0, Lo/setImageDrawable;->getInterfaceDescriptor:[I

    if-eqz v1, :cond_1

    .line 333
    iget-object v2, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    invoke-interface {v2, v1}, Lo/setSupportImageTintList$onMessageChannelReady;->onPostMessage([I)V

    .line 335
    :cond_1
    iget-object v1, p0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 336
    iget-object v2, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    invoke-interface {v2, v1}, Lo/setSupportImageTintList$onMessageChannelReady;->onPostMessage(Landroid/graphics/Bitmap;)V

    .line 338
    :cond_2
    iput-object v0, p0, Lo/setImageDrawable;->warmup:Landroid/graphics/Bitmap;

    .line 339
    iput-object v0, p0, Lo/setImageDrawable;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 340
    iput-object v0, p0, Lo/setImageDrawable;->updateVisuals:Ljava/lang/Boolean;

    .line 341
    iget-object v0, p0, Lo/setImageDrawable;->onTransact:[B

    if-eqz v0, :cond_3

    .line 342
    iget-object v1, p0, Lo/setImageDrawable;->onMessageChannelReady:Lo/setSupportImageTintList$onMessageChannelReady;

    invoke-interface {v1, v0}, Lo/setSupportImageTintList$onMessageChannelReady;->extraCallback([B)V

    :cond_3
    return-void
.end method
