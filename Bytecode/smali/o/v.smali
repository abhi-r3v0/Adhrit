.class public final Lo/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/v$onPostMessage;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final asInterface:[I

.field private static final extraCallback:[I

.field private static final onMessageChannelReady:[I

.field private static final onNavigationEvent:[I

.field private static final onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 124
    fill-array-data v0, :array_0

    sput-object v0, Lo/v;->onNavigationEvent:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 128
    fill-array-data v1, :array_1

    sput-object v1, Lo/v;->onPostMessage:[I

    new-array v0, v0, [I

    .line 132
    fill-array-data v0, :array_2

    sput-object v0, Lo/v;->ICustomTabsCallback:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 136
    fill-array-data v0, :array_3

    sput-object v0, Lo/v;->onMessageChannelReady:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 140
    fill-array-data v1, :array_4

    sput-object v1, Lo/v;->extraCallback:[I

    new-array v0, v0, [I

    .line 145
    fill-array-data v0, :array_5

    sput-object v0, Lo/v;->asInterface:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static ICustomTabsCallback(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 560
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    .line 561
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    shl-int p0, v1, p0

    return p0
.end method

.method public static extraCallback(Lo/PublisherException;)Lo/v$onPostMessage;
    .locals 18

    move-object/from16 v0, p0

    .line 244
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->ICustomTabsCallback()I

    move-result v1

    const/16 v2, 0x28

    .line 245
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/4 v2, 0x5

    .line 246
    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 247
    :goto_0
    invoke-virtual {v0, v1}, Lo/PublisherException;->onMessageChannelReady(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_2b

    .line 258
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 259
    invoke-virtual {v0, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 273
    :goto_1
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/16 v3, 0xb

    .line 274
    invoke-virtual {v0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    add-int/2addr v3, v6

    shl-int/2addr v3, v6

    .line 275
    invoke-virtual {v0, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v11

    if-ne v11, v9, :cond_4

    .line 280
    sget-object v12, Lo/v;->ICustomTabsCallback:[I

    invoke-virtual {v0, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v13

    aget v12, v12, v13

    move v14, v12

    const/4 v12, 0x3

    const/4 v13, 0x6

    goto :goto_2

    .line 283
    :cond_4
    invoke-virtual {v0, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v12

    .line 284
    sget-object v13, Lo/v;->onNavigationEvent:[I

    aget v13, v13, v12

    .line 285
    sget-object v14, Lo/v;->onPostMessage:[I

    aget v14, v14, v11

    :goto_2
    shl-int/lit8 v15, v13, 0x8

    .line 288
    invoke-virtual {v0, v9}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v4

    .line 289
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v16

    .line 290
    sget-object v17, Lo/v;->onMessageChannelReady:[I

    aget v17, v17, v4

    add-int v17, v17, v16

    const/16 v9, 0xa

    .line 291
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 293
    invoke-virtual {v0, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_5
    if-nez v4, :cond_6

    .line 296
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 298
    invoke-virtual {v0, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_6
    if-ne v1, v6, :cond_7

    .line 301
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 302
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 304
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    const/4 v9, 0x4

    if-eqz v5, :cond_20

    if-le v4, v10, :cond_8

    .line 306
    invoke-virtual {v0, v10}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_8
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_9

    if-le v4, v10, :cond_9

    .line 309
    invoke-virtual {v0, v8}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_9
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_a

    .line 312
    invoke-virtual {v0, v8}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_a
    if-eqz v16, :cond_b

    .line 314
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 315
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_b
    if-nez v1, :cond_20

    .line 318
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 319
    invoke-virtual {v0, v8}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_c
    if-nez v4, :cond_d

    .line 321
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 322
    invoke-virtual {v0, v8}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 324
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 325
    invoke-virtual {v0, v8}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 327
    :cond_e
    invoke-virtual {v0, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    if-ne v5, v6, :cond_f

    .line 329
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    goto/16 :goto_3

    :cond_f
    if-ne v5, v10, :cond_10

    const/16 v5, 0xc

    .line 331
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    goto/16 :goto_3

    :cond_10
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1b

    .line 333
    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    .line 334
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 335
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 337
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 339
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 340
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 342
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 343
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 345
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 346
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 348
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 349
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 351
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 352
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 354
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 355
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 357
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 358
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 359
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 361
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 362
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 366
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 367
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x7

    .line 369
    invoke-virtual {v0, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 371
    invoke-virtual {v0, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_1a
    add-int/2addr v5, v10

    mul-int/lit8 v5, v5, 0x8

    .line 375
    invoke-virtual {v0, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->asInterface()V

    :cond_1b
    :goto_3
    if-ge v4, v10, :cond_1d

    .line 379
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    const/16 v6, 0xe

    if-eqz v5, :cond_1c

    .line 380
    invoke-virtual {v0, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_1c
    if-nez v4, :cond_1d

    .line 383
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 384
    invoke-virtual {v0, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 388
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_20

    if-nez v12, :cond_1e

    .line 390
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    goto :goto_5

    :cond_1e
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v13, :cond_20

    .line 393
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 394
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 401
    :cond_20
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 402
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    if-ne v4, v10, :cond_21

    .line 404
    invoke-virtual {v0, v9}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_21
    if-lt v4, v8, :cond_22

    .line 407
    invoke-virtual {v0, v10}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 409
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 410
    invoke-virtual {v0, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_23
    if-nez v4, :cond_24

    .line 412
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 413
    invoke-virtual {v0, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_24
    const/4 v2, 0x3

    if-ge v11, v2, :cond_26

    .line 416
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->onPostMessage()V

    goto :goto_6

    :cond_25
    const/4 v2, 0x3

    :cond_26
    :goto_6
    if-nez v1, :cond_27

    if-eq v12, v2, :cond_27

    .line 420
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->onPostMessage()V

    :cond_27
    if-ne v1, v10, :cond_29

    if-eq v12, v2, :cond_28

    .line 423
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 424
    :cond_28
    invoke-virtual {v0, v8}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 427
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 428
    invoke-virtual {v0, v8}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    .line 429
    invoke-virtual {v0, v7}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    if-ne v0, v4, :cond_2a

    const-string v0, "audio/eac3-joc"

    goto :goto_7

    :cond_2a
    const-string v0, "audio/eac3"

    :goto_7
    move-object v7, v0

    move v8, v1

    move v11, v3

    move v10, v14

    move v12, v15

    move/from16 v9, v17

    goto :goto_a

    :cond_2b
    const/16 v2, 0x20

    .line 435
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 436
    invoke-virtual {v0, v10}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    const/4 v4, 0x0

    goto :goto_8

    :cond_2c
    const-string v4, "audio/ac3"

    .line 442
    :goto_8
    invoke-virtual {v0, v8}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    .line 443
    invoke-static {v2, v5}, Lo/v;->onMessageChannelReady(II)I

    move-result v5

    .line 444
    invoke-virtual {v0, v7}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 445
    invoke-virtual {v0, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2d

    .line 447
    invoke-virtual {v0, v10}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_2d
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_2e

    .line 450
    invoke-virtual {v0, v10}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_2e
    if-ne v3, v10, :cond_2f

    .line 453
    invoke-virtual {v0, v10}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 455
    :cond_2f
    sget-object v6, Lo/v;->onPostMessage:[I

    array-length v7, v6

    if-ge v2, v7, :cond_30

    aget v2, v6, v2

    move v14, v2

    goto :goto_9

    :cond_30
    const/4 v14, -0x1

    :goto_9
    const/16 v15, 0x600

    .line 458
    invoke-virtual/range {p0 .. p0}, Lo/PublisherException;->extraCallback()Z

    move-result v0

    .line 459
    sget-object v2, Lo/v;->onMessageChannelReady:[I

    aget v2, v2, v3

    add-int v17, v2, v0

    move-object v7, v4

    move v11, v5

    move v10, v14

    move/from16 v9, v17

    const/4 v8, -0x1

    const/16 v12, 0x600

    .line 461
    :goto_a
    new-instance v0, Lo/v$onPostMessage;

    const/4 v13, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lo/v$onPostMessage;-><init>(Ljava/lang/String;IIIIILo/v$1;)V

    return-object v0
.end method

.method private static onMessageChannelReady(II)I
    .locals 4

    .line 565
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_3

    .line 566
    sget-object v1, Lo/v;->onPostMessage:[I

    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Lo/v;->asInterface:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    .line 573
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 575
    :cond_1
    sget-object p1, Lo/v;->extraCallback:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 503
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    sget-object v0, Lo/v;->onNavigationEvent:[I

    .line 505
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 p0, p0, 0x4

    aget v1, v0, p0

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    return v1
.end method

.method public static onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;
    .locals 13

    .line 160
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 161
    sget-object v1, Lo/v;->onPostMessage:[I

    aget v8, v1, v0

    .line 162
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 163
    sget-object v1, Lo/v;->onMessageChannelReady:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v7, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "audio/ac3"

    move-object v2, p1

    move-object/from16 v10, p3

    move-object v12, p2

    .line 167
    invoke-static/range {v2 .. v12}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method public static onPostMessage()I
    .locals 1

    const/16 v0, 0x600

    return v0
.end method

.method public static onPostMessage(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 517
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 518
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x4

    .line 521
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const v4, -0x1000001

    and-int/2addr v3, v4

    const v4, -0x45908d08

    if-ne v3, v4, :cond_0

    sub-int/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static onPostMessage([B)I
    .locals 5

    .line 472
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 475
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 477
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    .line 478
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    add-int/2addr p0, v4

    shl-int/2addr p0, v4

    return p0

    :cond_2
    const/4 v0, 0x4

    .line 481
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 482
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 483
    invoke-static {v1, p0}, Lo/v;->onMessageChannelReady(II)I

    move-result p0

    return p0
.end method

.method public static onPostMessage(Lo/DreamAppGlideModule;Ljava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;
    .locals 15

    const/4 v0, 0x2

    move-object v1, p0

    .line 193
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 196
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 197
    sget-object v3, Lo/v;->onPostMessage:[I

    aget v10, v3, v2

    .line 198
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    .line 199
    sget-object v3, Lo/v;->onMessageChannelReady:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 208
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    :cond_1
    move v9, v3

    .line 216
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_2

    .line 217
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "audio/eac3-joc"

    goto :goto_0

    :cond_2
    const-string v0, "audio/eac3"

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    .line 222
    invoke-static/range {v4 .. v14}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method
