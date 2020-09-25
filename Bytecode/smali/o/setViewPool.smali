.class public final Lo/setViewPool;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setViewPool$onNavigationEvent;,
        Lo/setViewPool$extraCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Object;

.field public static final extraCallback:[B

.field public static final onMessageChannelReady:[F

.field private static onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 97
    fill-array-data v0, :array_0

    sput-object v0, Lo/setViewPool;->extraCallback:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 102
    fill-array-data v0, :array_1

    sput-object v0, Lo/setViewPool;->onMessageChannelReady:[F

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/setViewPool;->ICustomTabsCallback:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 132
    sput-object v0, Lo/setViewPool;->onPostMessage:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static ICustomTabsCallback([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 242
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static ICustomTabsCallback([BII[Z)I
    .locals 7

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 429
    :goto_0
    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    const/4 v3, 0x2

    if-eqz p3, :cond_4

    .line 435
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_2

    .line 436
    invoke-static {p3}, Lo/setViewPool;->extraCallback([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    if-le v0, v2, :cond_3

    .line 438
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    .line 439
    invoke-static {p3}, Lo/setViewPool;->extraCallback([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_3
    if-le v0, v3, :cond_4

    .line 441
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 443
    invoke-static {p3}, Lo/setViewPool;->extraCallback([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_1
    if-ge p1, v4, :cond_8

    .line 452
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-nez v5, :cond_7

    add-int/lit8 v5, p1, -0x2

    .line 455
    aget-byte v6, p0, v5

    if-nez v6, :cond_6

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_6

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_6

    if-eqz p3, :cond_5

    .line 457
    invoke-static {p3}, Lo/setViewPool;->extraCallback([Z)V

    :cond_5
    return v5

    :cond_6
    add-int/lit8 p1, p1, -0x2

    :cond_7
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_f

    if-le v0, v3, :cond_a

    add-int/lit8 p1, p2, -0x3

    .line 469
    aget-byte p1, p0, p1

    if-nez p1, :cond_9

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_9

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    goto :goto_3

    :cond_a
    if-ne v0, v3, :cond_b

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_9

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_9

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_9

    goto :goto_2

    :cond_b
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_9

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_9

    :goto_2
    const/4 p1, 0x1

    :goto_3
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_c

    add-int/lit8 p1, p2, -0x2

    .line 474
    aget-byte p1, p0, p1

    if-nez p1, :cond_d

    aget-byte p1, p0, v4

    if-nez p1, :cond_d

    goto :goto_4

    :cond_c
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_d

    aget-byte p1, p0, v4

    if-nez p1, :cond_d

    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    :cond_d
    const/4 p1, 0x0

    :goto_5
    aput-boolean p1, p3, v2

    .line 477
    aget-byte p0, p0, v4

    if-nez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    aput-boolean v1, p3, v3

    :cond_f
    return p2
.end method

.method public static ICustomTabsCallback([BII)Lo/setViewPool$extraCallback;
    .locals 20

    .line 267
    new-instance v0, Lo/UploadWorker;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lo/UploadWorker;-><init>([BII)V

    const/16 v1, 0x8

    .line 268
    invoke-virtual {v0, v1}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 269
    invoke-virtual {v0, v1}, Lo/UploadWorker;->extraCallback(I)I

    move-result v3

    .line 270
    invoke-virtual {v0, v1}, Lo/UploadWorker;->extraCallback(I)I

    move-result v4

    .line 271
    invoke-virtual {v0, v1}, Lo/UploadWorker;->extraCallback(I)I

    move-result v5

    .line 272
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v6

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/16 v10, 0x64

    if-eq v3, v10, :cond_1

    const/16 v10, 0x6e

    if-eq v3, v10, :cond_1

    const/16 v10, 0x7a

    if-eq v3, v10, :cond_1

    const/16 v10, 0xf4

    if-eq v3, v10, :cond_1

    const/16 v10, 0x2c

    if-eq v3, v10, :cond_1

    const/16 v10, 0x53

    if-eq v3, v10, :cond_1

    const/16 v10, 0x56

    if-eq v3, v10, :cond_1

    const/16 v10, 0x76

    if-eq v3, v10, :cond_1

    const/16 v10, 0x80

    if-eq v3, v10, :cond_1

    const/16 v10, 0x8a

    if-ne v3, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_5

    .line 279
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v10

    if-ne v10, v7, :cond_2

    .line 281
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 283
    :goto_1
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 284
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 285
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    .line 286
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v12

    if-eqz v12, :cond_6

    if-eq v10, v7, :cond_3

    const/16 v12, 0x8

    goto :goto_2

    :cond_3
    const/16 v12, 0xc

    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_6

    .line 290
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x6

    if-ge v13, v14, :cond_4

    const/16 v14, 0x10

    goto :goto_4

    :cond_4
    const/16 v14, 0x40

    .line 292
    :goto_4
    invoke-static {v0, v14}, Lo/setViewPool;->onPostMessage(Lo/UploadWorker;I)V

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 298
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    .line 299
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v13

    if-nez v13, :cond_7

    .line 304
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    move/from16 p0, v3

    goto :goto_7

    :cond_7
    if-ne v13, v9, :cond_9

    .line 306
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v14

    .line 307
    invoke-virtual {v0}, Lo/UploadWorker;->ICustomTabsCallback()I

    .line 308
    invoke-virtual {v0}, Lo/UploadWorker;->ICustomTabsCallback()I

    .line 309
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v15

    move/from16 p0, v3

    int-to-long v2, v15

    const/4 v15, 0x0

    :goto_6
    int-to-long v7, v15

    cmp-long v17, v7, v2

    if-gez v17, :cond_8

    .line 311
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_8
    move v15, v14

    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    move/from16 p0, v3

    const/4 v14, 0x0

    :goto_7
    const/4 v15, 0x0

    .line 314
    :goto_8
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    .line 315
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    .line 317
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v2

    add-int/2addr v2, v9

    .line 318
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v3

    add-int/2addr v3, v9

    .line 319
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v16

    const/4 v7, 0x2

    rsub-int/lit8 v8, v16, 0x2

    mul-int v8, v8, v3

    if-nez v16, :cond_a

    .line 322
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    .line 325
    :cond_a
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    shl-int/lit8 v2, v2, 0x4

    shl-int/lit8 v3, v8, 0x4

    .line 328
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 330
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v8

    .line 331
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v17

    .line 332
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v18

    .line 333
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result v19

    if-nez v10, :cond_b

    rsub-int/lit8 v7, v16, 0x2

    goto :goto_a

    :cond_b
    const/4 v1, 0x3

    if-ne v10, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x2

    :goto_9
    if-ne v10, v9, :cond_d

    const/4 v9, 0x2

    :cond_d
    rsub-int/lit8 v7, v16, 0x2

    mul-int v7, v7, v9

    move v9, v1

    :goto_a
    add-int v8, v8, v17

    mul-int v8, v8, v9

    sub-int/2addr v2, v8

    add-int v18, v18, v19

    mul-int v18, v18, v7

    sub-int v3, v3, v18

    :cond_e
    move v7, v2

    move v8, v3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 350
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 352
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x8

    .line 354
    invoke-virtual {v0, v2}, Lo/UploadWorker;->extraCallback(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_10

    const/16 v3, 0x10

    .line 356
    invoke-virtual {v0, v3}, Lo/UploadWorker;->extraCallback(I)I

    move-result v2

    .line 357
    invoke-virtual {v0, v3}, Lo/UploadWorker;->extraCallback(I)I

    move-result v0

    if-eqz v2, :cond_f

    if-eqz v0, :cond_f

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_f
    move v9, v1

    goto :goto_b

    .line 361
    :cond_10
    sget-object v0, Lo/setViewPool;->onMessageChannelReady:[F

    array-length v3, v0

    if-ge v2, v3, :cond_11

    .line 362
    aget v0, v0, v2

    move v9, v0

    goto :goto_b

    .line 364
    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/high16 v9, 0x3f800000    # 1.0f

    .line 369
    :goto_b
    new-instance v0, Lo/setViewPool$extraCallback;

    move-object v2, v0

    move/from16 v3, p0

    move v10, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v15}, Lo/setViewPool$extraCallback;-><init>(IIIIIIFZZIIIZ)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;B)Z
    .locals 3

    const-string/jumbo v0, "video/avc"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    :cond_0
    const-string/jumbo v0, "video/hevc"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static extraCallback([BI)I
    .locals 8

    .line 146
    sget-object v0, Lo/setViewPool;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 150
    :try_start_0
    invoke-static {p0, v2, p1}, Lo/setViewPool;->onMessageChannelReady([BII)I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 152
    sget-object v4, Lo/setViewPool;->onPostMessage:[I

    array-length v4, v4

    if-gt v4, v3, :cond_1

    .line 154
    sget-object v4, Lo/setViewPool;->onPostMessage:[I

    array-length v5, v4

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lo/setViewPool;->onPostMessage:[I

    .line 157
    :cond_1
    sget-object v4, Lo/setViewPool;->onPostMessage:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 166
    sget-object v6, Lo/setViewPool;->onPostMessage:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 168
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 170
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 171
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int v1, p1, v4

    .line 176
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 178
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static extraCallback([Z)V
    .locals 2

    const/4 v0, 0x0

    .line 489
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 490
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 491
    aput-boolean v0, p0, v1

    return-void
.end method

.method private static onMessageChannelReady([BII)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_1

    .line 496
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static onNavigationEvent([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 254
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static onNavigationEvent([BII)Lo/setViewPool$onNavigationEvent;
    .locals 1

    .line 395
    new-instance v0, Lo/UploadWorker;

    invoke-direct {v0, p0, p1, p2}, Lo/UploadWorker;-><init>([BII)V

    const/16 p0, 0x8

    .line 396
    invoke-virtual {v0, p0}, Lo/UploadWorker;->onMessageChannelReady(I)V

    .line 397
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result p0

    .line 398
    invoke-virtual {v0}, Lo/UploadWorker;->onPostMessage()I

    move-result p1

    .line 399
    invoke-virtual {v0}, Lo/UploadWorker;->extraCallback()V

    .line 400
    invoke-virtual {v0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result p2

    .line 401
    new-instance v0, Lo/setViewPool$onNavigationEvent;

    invoke-direct {v0, p0, p1, p2}, Lo/setViewPool$onNavigationEvent;-><init>(IIZ)V

    return-object v0
.end method

.method public static onNavigationEvent(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 191
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3

    .line 195
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 197
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    .line 199
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 200
    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 201
    invoke-virtual {v3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 203
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method private static onPostMessage(Lo/UploadWorker;I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lo/UploadWorker;->ICustomTabsCallback()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 509
    rem-int/lit16 v0, v0, 0x100

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
