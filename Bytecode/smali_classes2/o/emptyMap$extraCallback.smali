.class final Lo/emptyMap$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPredecessorKey$onTransact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/emptyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPredecessorKey$onTransact<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 576
    fill-array-data v0, :array_0

    sput-object v0, Lo/emptyMap$extraCallback;->onMessageChannelReady:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 574
    invoke-direct {p0}, Lo/emptyMap$extraCallback;-><init>()V

    return-void
.end method

.method private static onPostMessage([B)Ljava/lang/String;
    .locals 7

    .line 638
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 639
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 640
    aget-byte v3, p0, v2

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 642
    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    const/4 v6, 0x2

    invoke-direct {v3, p0, v4, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 649
    :catch_0
    :cond_0
    aget-byte v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sget-object v3, Lo/performAutoConfigure;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback([B)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1628
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1629
    aget-byte v2, p1, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-ge v2, v3, :cond_1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 1630
    array-length v3, p1

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1631
    :cond_1
    :goto_1
    invoke-static {p1}, Lo/emptyMap$extraCallback;->onPostMessage([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1634
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BI)V

    return-object v1
.end method

.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)[B
    .locals 12

    .line 574
    check-cast p1, Ljava/lang/String;

    .line 2581
    sget-object v0, Lo/performAutoConfigure;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2582
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_8

    .line 2583
    aget-byte v2, p1, v1

    const/16 v3, 0x7e

    const/16 v4, 0x20

    const/16 v5, 0x25

    const/4 v6, 0x1

    if-lt v2, v4, :cond_1

    if-ge v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_7

    .line 2601
    array-length v2, p1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    if-eqz v1, :cond_2

    .line 2604
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v7, v1

    .line 2607
    :goto_3
    array-length v8, p1

    if-ge v1, v8, :cond_6

    .line 2608
    aget-byte v8, p1, v1

    if-lt v8, v4, :cond_4

    if-ge v8, v3, :cond_4

    if-ne v8, v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_5

    .line 2611
    aput-byte v5, v2, v7

    add-int/lit8 v9, v7, 0x1

    .line 2612
    sget-object v10, Lo/emptyMap$extraCallback;->onMessageChannelReady:[B

    shr-int/lit8 v11, v8, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-byte v11, v10, v11

    aput-byte v11, v2, v9

    add-int/lit8 v9, v7, 0x2

    and-int/lit8 v8, v8, 0xf

    .line 2613
    aget-byte v8, v10, v8

    aput-byte v8, v2, v9

    add-int/lit8 v7, v7, 0x3

    goto :goto_6

    :cond_5
    add-int/lit8 v9, v7, 0x1

    .line 2617
    aput-byte v8, v2, v7

    move v7, v9

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2619
    :cond_6
    new-array p1, v7, [B

    .line 2620
    invoke-static {v2, v0, p1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-object p1
.end method
