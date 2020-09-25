.class public final Lo/onBecameForeground;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onBecameForeground$extraCallback;,
        Lo/onBecameForeground$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;)V
    .locals 0

    .line 25000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onBecameForeground;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;)Ljava/lang/Runnable;
    .locals 1

    .line 27000
    new-instance v0, Lo/onBecameForeground;

    invoke-direct {v0, p0}, Lo/onBecameForeground;-><init>(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;)V

    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 263
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 265
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    if-lez p2, :cond_0

    .line 266
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    int-to-long v1, p2

    add-long/2addr p3, v1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    if-gtz p0, :cond_1

    .line 277
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 274
    :cond_1
    new-instance p0, Lo/onBecameForeground$extraCallback;

    const-string p1, "ELF file truncated"

    invoke-direct {p0, p1}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(Ljava/io/File;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lo/onBecameForeground;->onNavigationEvent(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 72
    throw p0
.end method

.method private static onNavigationEvent(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 88
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 92
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    .line 1286
    invoke-static {v0, v2, v5, v3, v4}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 1287
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/32 v10, 0x464c457f

    cmp-long v12, v6, v10

    if-nez v12, :cond_23

    const-wide/16 v6, 0x4

    const/4 v10, 0x1

    .line 1296
    invoke-static {v0, v2, v10, v6, v7}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 1297
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    if-ne v11, v10, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const-wide/16 v13, 0x5

    .line 2296
    invoke-static {v0, v2, v10, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 2297
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    int-to-short v15, v15

    const/4 v12, 0x2

    if-ne v15, v12, :cond_1

    .line 99
    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    const-wide/16 v13, 0x1c

    const-wide/16 v3, 0x20

    if-eqz v11, :cond_2

    .line 3286
    invoke-static {v0, v2, v5, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 3287
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    int-to-long v6, v15

    and-long/2addr v6, v8

    goto :goto_1

    .line 4281
    :cond_2
    invoke-static {v0, v2, v1, v3, v4}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 4282
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    :goto_1
    const-wide/16 v13, 0x2c

    const v15, 0xffff

    if-eqz v11, :cond_3

    .line 4291
    invoke-static {v0, v2, v12, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 4292
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v25

    and-int v10, v25, v15

    goto :goto_2

    :cond_3
    const-wide/16 v13, 0x38

    .line 5291
    invoke-static {v0, v2, v12, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 5292
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    and-int/2addr v10, v15

    :goto_2
    int-to-long v13, v10

    if-eqz v11, :cond_4

    const-wide/16 v8, 0x2a

    .line 6291
    invoke-static {v0, v2, v12, v8, v9}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 6292
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    goto :goto_3

    :cond_4
    const-wide/16 v8, 0x36

    .line 7291
    invoke-static {v0, v2, v12, v8, v9}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 7292
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    :goto_3
    and-int/2addr v8, v15

    const-wide/32 v9, 0xffff

    move-object v15, v2

    const-wide/16 v1, 0x28

    cmp-long v25, v13, v9

    if-nez v25, :cond_7

    if-eqz v11, :cond_5

    move-object v9, v15

    .line 8286
    invoke-static {v0, v9, v5, v3, v4}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 8287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v13, 0xffffffffL

    and-long/2addr v3, v13

    goto :goto_4

    :cond_5
    move-object v9, v15

    const/16 v3, 0x8

    const-wide v13, 0xffffffffL

    .line 9281
    invoke-static {v0, v9, v3, v1, v2}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 9282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    :goto_4
    if-eqz v11, :cond_6

    const-wide/16 v23, 0x1c

    add-long v3, v3, v23

    .line 9286
    invoke-static {v0, v9, v5, v3, v4}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 9287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    goto :goto_5

    :cond_6
    const-wide/16 v23, 0x2c

    add-long v3, v3, v23

    .line 10286
    invoke-static {v0, v9, v5, v3, v4}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 10287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    :goto_5
    int-to-long v3, v3

    and-long/2addr v3, v13

    move-wide v13, v3

    goto :goto_6

    :cond_7
    move-object v9, v15

    :goto_6
    move-wide v1, v6

    const-wide/16 v3, 0x0

    :goto_7
    const-wide/16 v26, 0x1

    const-wide/16 v30, 0x8

    cmp-long v10, v3, v13

    if-gez v10, :cond_a

    .line 12286
    invoke-static {v0, v9, v5, v1, v2}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 12287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    move-wide/from16 v32, v13

    int-to-long v12, v10

    const-wide v28, 0xffffffffL

    and-long v12, v12, v28

    const-wide/16 v34, 0x2

    cmp-long v10, v12, v34

    if-nez v10, :cond_9

    if-eqz v11, :cond_8

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    .line 13286
    invoke-static {v0, v9, v5, v1, v2}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 13287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v28

    goto :goto_8

    :cond_8
    add-long v1, v1, v30

    const/16 v3, 0x8

    .line 14281
    invoke-static {v0, v9, v3, v1, v2}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 14282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    goto :goto_8

    :cond_9
    int-to-long v13, v8

    add-long/2addr v1, v13

    add-long v3, v3, v26

    move-wide/from16 v13, v32

    goto :goto_7

    :cond_a
    move-wide/from16 v32, v13

    const-wide/16 v1, 0x0

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v10, v1, v3

    if-eqz v10, :cond_22

    move-wide v13, v1

    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    :goto_9
    if-eqz v11, :cond_b

    .line 14286
    invoke-static {v0, v9, v5, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 14287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    move-wide/from16 v34, v6

    int-to-long v5, v15

    const-wide v28, 0xffffffffL

    and-long v5, v5, v28

    goto :goto_a

    :cond_b
    move-wide/from16 v34, v6

    const/16 v5, 0x8

    .line 15281
    invoke-static {v0, v9, v5, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 15282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    :goto_a
    const v7, 0x7fffffff

    const-string v15, "malformed DT_NEEDED section"

    cmp-long v36, v5, v26

    if-nez v36, :cond_d

    if-eq v10, v7, :cond_c

    add-int/lit8 v10, v10, 0x1

    move/from16 v36, v8

    const-wide/16 v17, 0x5

    goto :goto_b

    .line 165
    :cond_c
    new-instance v0, Lo/onBecameForeground$extraCallback;

    invoke-direct {v0, v15}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-wide/16 v17, 0x5

    cmp-long v36, v5, v17

    if-nez v36, :cond_f

    if-eqz v11, :cond_e

    move/from16 v36, v8

    const-wide/16 v3, 0x4

    add-long v7, v13, v3

    const/4 v3, 0x4

    .line 15286
    invoke-static {v0, v9, v3, v7, v8}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 15287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v3, v7

    goto :goto_b

    :cond_e
    move/from16 v36, v8

    add-long v3, v13, v30

    const/16 v7, 0x8

    .line 16281
    invoke-static {v0, v9, v7, v3, v4}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 16282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    goto :goto_b

    :cond_f
    move/from16 v36, v8

    :goto_b
    if-eqz v11, :cond_10

    move-wide/from16 v37, v30

    goto :goto_c

    :cond_10
    const-wide/16 v37, 0x10

    :goto_c
    add-long v13, v13, v37

    const-wide/16 v19, 0x0

    cmp-long v37, v5, v19

    if-nez v37, :cond_21

    cmp-long v5, v3, v19

    if-eqz v5, :cond_20

    move-wide/from16 v5, v34

    const/4 v13, 0x0

    :goto_d
    int-to-long v7, v13

    cmp-long v14, v7, v32

    if-gez v14, :cond_16

    const/4 v7, 0x4

    .line 17286
    invoke-static {v0, v9, v7, v5, v6}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 17287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    move v14, v13

    int-to-long v12, v8

    const-wide v17, 0xffffffffL

    and-long v12, v12, v17

    cmp-long v8, v12, v26

    if-nez v8, :cond_14

    if-eqz v11, :cond_11

    add-long v12, v5, v30

    .line 18286
    invoke-static {v0, v9, v7, v12, v13}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 18287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v17

    goto :goto_e

    :cond_11
    const-wide/16 v7, 0x10

    add-long v12, v5, v7

    const/16 v7, 0x8

    .line 19281
    invoke-static {v0, v9, v7, v12, v13}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 19282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    :goto_e
    if-eqz v11, :cond_12

    const-wide/16 v17, 0x14

    add-long v12, v5, v17

    move-wide/from16 v39, v1

    const/4 v1, 0x4

    .line 19286
    invoke-static {v0, v9, v1, v12, v13}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 19287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v12, 0xffffffffL

    and-long/2addr v1, v12

    goto :goto_f

    :cond_12
    move-wide/from16 v39, v1

    const-wide/16 v1, 0x28

    add-long v12, v5, v1

    const/16 v1, 0x8

    .line 20281
    invoke-static {v0, v9, v1, v12, v13}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 20282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    :goto_f
    cmp-long v13, v7, v3

    if-gtz v13, :cond_15

    add-long/2addr v1, v7

    cmp-long v13, v3, v1

    if-gez v13, :cond_15

    if-eqz v11, :cond_13

    const-wide/16 v1, 0x4

    add-long/2addr v5, v1

    const/4 v1, 0x4

    .line 20286
    invoke-static {v0, v9, v1, v5, v6}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 20287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v1, v5

    goto :goto_10

    :cond_13
    add-long v5, v5, v30

    const/16 v1, 0x8

    .line 21281
    invoke-static {v0, v9, v1, v5, v6}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 21282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    :goto_10
    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    move-wide v3, v1

    const-wide/16 v1, 0x0

    goto :goto_11

    :cond_14
    move-wide/from16 v39, v1

    :cond_15
    move/from16 v8, v36

    int-to-long v1, v8

    add-long/2addr v5, v1

    add-int/lit8 v13, v14, 0x1

    move/from16 v36, v8

    move-wide/from16 v1, v39

    goto/16 :goto_d

    :cond_16
    move-wide/from16 v39, v1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    :goto_11
    cmp-long v5, v3, v1

    if-eqz v5, :cond_1f

    .line 221
    new-array v1, v10, [Ljava/lang/String;

    move-wide/from16 v5, v39

    const/4 v2, 0x0

    :goto_12
    if-eqz v11, :cond_17

    const/4 v7, 0x4

    .line 21286
    invoke-static {v0, v9, v7, v5, v6}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 21287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v13, 0xffffffffL

    and-long/2addr v7, v13

    goto :goto_13

    :cond_17
    const/16 v7, 0x8

    .line 22281
    invoke-static {v0, v9, v7, v5, v6}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 22282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    :goto_13
    cmp-long v13, v7, v26

    if-nez v13, :cond_1b

    if-eqz v11, :cond_18

    const-wide/16 v21, 0x4

    add-long v13, v5, v21

    const/4 v12, 0x4

    .line 22286
    invoke-static {v0, v9, v12, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 22287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    int-to-long v13, v13

    const-wide v28, 0xffffffffL

    and-long v13, v13, v28

    const/16 v12, 0x8

    goto :goto_14

    :cond_18
    const/4 v12, 0x4

    const-wide/16 v21, 0x4

    const-wide v28, 0xffffffffL

    add-long v13, v5, v30

    const/16 v12, 0x8

    .line 23281
    invoke-static {v0, v9, v12, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 23282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    :goto_14
    add-long/2addr v13, v3

    .line 24252
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_15
    add-long v16, v13, v26

    move-wide/from16 v23, v3

    const/4 v3, 0x1

    .line 24296
    invoke-static {v0, v9, v3, v13, v14}, Lo/onBecameForeground;->onMessageChannelReady(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 24297
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    if-eqz v4, :cond_19

    int-to-char v4, v4

    .line 24255
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v13, v16

    move-wide/from16 v3, v23

    goto :goto_15

    .line 24258
    :cond_19
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    aput-object v4, v1, v2

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_1a

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 235
    :cond_1a
    new-instance v0, Lo/onBecameForeground$extraCallback;

    invoke-direct {v0, v15}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-wide/from16 v23, v3

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-wide/16 v21, 0x4

    const-wide v28, 0xffffffffL

    :goto_16
    if-eqz v11, :cond_1c

    move-wide/from16 v12, v30

    goto :goto_17

    :cond_1c
    const-wide/16 v12, 0x10

    :goto_17
    add-long/2addr v5, v12

    const-wide/16 v19, 0x0

    cmp-long v12, v7, v19

    if-nez v12, :cond_1e

    if-ne v2, v10, :cond_1d

    return-object v1

    .line 245
    :cond_1d
    new-instance v0, Lo/onBecameForeground$extraCallback;

    invoke-direct {v0, v15}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-wide/from16 v3, v23

    goto/16 :goto_12

    .line 218
    :cond_1f
    new-instance v0, Lo/onBecameForeground$extraCallback;

    const-string v1, "did not find file offset of DT_STRTAB table"

    invoke-direct {v0, v1}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_20
    new-instance v0, Lo/onBecameForeground$extraCallback;

    const-string v1, "Dynamic section string-table not found"

    invoke-direct {v0, v1}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-wide/from16 v39, v1

    move-wide v1, v3

    const-wide/16 v21, 0x4

    const-wide v28, 0xffffffffL

    move-wide/from16 v6, v34

    move/from16 v8, v36

    move-wide/from16 v1, v39

    const/4 v5, 0x4

    goto/16 :goto_9

    .line 148
    :cond_22
    new-instance v0, Lo/onBecameForeground$extraCallback;

    const-string v1, "ELF file does not contain dynamic linking information"

    invoke-direct {v0, v1}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_23
    new-instance v0, Lo/onBecameForeground$extraCallback;

    const-string v1, "file is not ELF"

    invoke-direct {v0, v1}, Lo/onBecameForeground$extraCallback;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 26000
    iget-object v0, p0, Lo/onBecameForeground;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->lambda$onOpen$2(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;)V

    return-void
.end method
