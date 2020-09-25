.class public Lcom/freshchat/consumer/sdk/j/b/a;
.super Ljava/lang/Object;


# instance fields
.field private km:J

.field private kn:J

.field private ko:J

.field private kp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/j/b/a;->kp:J

    return-void
.end method

.method private a([BIJ)V
    .locals 10

    const-wide/16 v0, 0x3e8

    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v6, 0x10

    shr-long v7, v2, v6

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v7, 0x8

    shr-long v8, v2, v7

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, p1, p2

    add-int/lit8 p2, v4, 0x1

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, v4

    const/16 v2, 0x20

    shl-long/2addr p3, v2

    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x1

    shr-long v1, p3, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-long v1, p3, v6

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-long/2addr p3, v7

    long-to-int p4, p3

    int-to-byte p3, p4

    aput-byte p3, p1, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double p2, p2, v1

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void
.end method

.method private b([BI)J
    .locals 5

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0x80

    const/16 v3, 0x80

    if-ne p2, v3, :cond_0

    and-int/lit8 p2, v0, 0x7f

    add-int/lit16 v0, p2, 0x80

    :cond_0
    and-int/lit16 p2, v1, 0x80

    if-ne p2, v3, :cond_1

    and-int/lit8 p2, v1, 0x7f

    add-int/lit16 v1, p2, 0x80

    :cond_1
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v3, :cond_2

    and-int/lit8 p2, v2, 0x7f

    add-int/lit16 v2, p2, 0x80

    :cond_2
    and-int/lit16 p2, p1, 0x80

    if-ne p2, v3, :cond_3

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr p1, v3

    :cond_3
    int-to-long v3, v0

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    int-to-long v0, v1

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private c([BI)J
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/b/a;->b([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/b/a;->b([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p1, p1, v2

    const-wide v2, 0x100000000L

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public c(Ljava/lang/String;I)Z
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x30

    new-array v5, v4, [B

    new-instance v6, Ljava/net/DatagramPacket;

    const/16 v7, 0x7b

    invoke-direct {v6, v5, v4, v3, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v3, 0x1b

    aput-byte v3, v5, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/16 v3, 0x28

    invoke-direct {v1, v5, v3, v7, v8}, Lcom/freshchat/consumer/sdk/j/b/a;->a([BIJ)V

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v9, v11, v9

    add-long/2addr v7, v9

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/16 v0, 0x18

    invoke-direct {v1, v5, v0}, Lcom/freshchat/consumer/sdk/j/b/a;->c([BI)J

    move-result-wide v13

    const/16 v0, 0x20

    invoke-direct {v1, v5, v0}, Lcom/freshchat/consumer/sdk/j/b/a;->c([BI)J

    move-result-wide v15

    invoke-direct {v1, v5, v3}, Lcom/freshchat/consumer/sdk/j/b/a;->c([BI)J

    move-result-wide v3

    sub-long v5, v3, v15

    sub-long/2addr v9, v5

    sub-long/2addr v15, v13

    sub-long/2addr v3, v7

    add-long/2addr v15, v3

    const-wide/16 v3, 0x2

    div-long v3, v15, v3

    iput-wide v3, v1, Lcom/freshchat/consumer/sdk/j/b/a;->kp:J

    add-long/2addr v7, v3

    iput-wide v7, v1, Lcom/freshchat/consumer/sdk/j/b/a;->km:J

    iput-wide v11, v1, Lcom/freshchat/consumer/sdk/j/b/a;->kn:J

    iput-wide v9, v1, Lcom/freshchat/consumer/sdk/j/b/a;->ko:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "request time failed: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SntpClient"

    invoke-static {v3, v0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public fB()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/j/b/a;->kp:J

    return-wide v0
.end method
