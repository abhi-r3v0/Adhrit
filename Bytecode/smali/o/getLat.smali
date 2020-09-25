.class public final Lo/getLat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final onMessageChannelReady:[I

.field private static final onNavigationEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 42
    fill-array-data v1, :array_0

    sput-object v1, Lo/getLat;->ICustomTabsCallback:[I

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_1

    sput-object v0, Lo/getLat;->onNavigationEvent:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_2

    sput-object v0, Lo/getLat;->onMessageChannelReady:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static ICustomTabsCallback([B)I
    .locals 6

    const/4 v0, 0x0

    .line 107
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 119
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v3

    goto :goto_1

    .line 115
    :cond_0
    aget-byte v0, p0, v3

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v2

    goto :goto_0

    .line 112
    :cond_1
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    .line 109
    :cond_2
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v2

    aget-byte p0, p0, v4

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    shl-int/2addr p0, v3

    return p0
.end method

.method public static extraCallback([BLjava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;
    .locals 15

    .line 84
    invoke-static {p0}, Lo/getLat;->onNavigationEvent([B)Lo/PublisherException;

    move-result-object v0

    const/16 v1, 0x3c

    .line 85
    invoke-virtual {v0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/4 v1, 0x6

    .line 86
    invoke-virtual {v0, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    .line 87
    sget-object v2, Lo/getLat;->ICustomTabsCallback:[I

    aget v1, v2, v1

    const/4 v2, 0x4

    .line 88
    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 89
    sget-object v3, Lo/getLat;->onNavigationEvent:[I

    aget v10, v3, v2

    const/4 v2, 0x5

    .line 90
    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    .line 91
    sget-object v3, Lo/getLat;->onMessageChannelReady:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    move v7, v2

    :goto_0
    const/16 v2, 0xa

    .line 93
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 94
    invoke-virtual {v0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int v9, v1, v0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v5, "audio/vnd.dts"

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    .line 95
    invoke-static/range {v4 .. v14}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    return-object v0
.end method

.method private static extraCallback([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 211
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onMessageChannelReady([B)I
    .locals 7

    const/4 v0, 0x0

    .line 161
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    const/4 v1, 0x5

    .line 175
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_1

    .line 163
    :cond_0
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    goto :goto_0

    .line 170
    :cond_1
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    const/4 v0, 0x1

    goto :goto_2

    .line 167
    :cond_2
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_1
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    :goto_2
    if-eqz v0, :cond_3

    shl-int/2addr p0, v6

    .line 179
    div-int/lit8 p0, p0, 0xe

    :cond_3
    return p0
.end method

.method public static onNavigationEvent(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 133
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    .line 147
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x5

    .line 143
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x4

    .line 140
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_0
    and-int/lit8 p0, p0, 0x3c

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x5

    .line 137
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_1
    and-int/lit16 p0, p0, 0xfc

    :goto_2
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static onNavigationEvent([B)Lo/PublisherException;
    .locals 5

    const/4 v0, 0x0

    .line 183
    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    .line 185
    new-instance v0, Lo/PublisherException;

    invoke-direct {v0, p0}, Lo/PublisherException;-><init>([B)V

    return-object v0

    .line 188
    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 189
    invoke-static {p0}, Lo/getLat;->extraCallback([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 191
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 192
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 193
    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 194
    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 197
    :cond_1
    new-instance v1, Lo/PublisherException;

    invoke-direct {v1, p0}, Lo/PublisherException;-><init>([B)V

    .line 198
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    .line 200
    new-instance v0, Lo/PublisherException;

    invoke-direct {v0, p0}, Lo/PublisherException;-><init>([B)V

    .line 201
    :goto_1
    invoke-virtual {v0}, Lo/PublisherException;->onNavigationEvent()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    const/4 v2, 0x2

    .line 202
    invoke-virtual {v0, v2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    const/16 v2, 0xe

    .line 203
    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lo/PublisherException;->ICustomTabsCallback(II)V

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v1, p0}, Lo/PublisherException;->extraCallback([B)V

    return-object v1
.end method

.method public static onPostMessage(I)Z
    .locals 1

    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_1

    const v0, -0x180fe80

    if-eq p0, v0, :cond_1

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_1

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
