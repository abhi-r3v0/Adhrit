.class public final Lo/StackTraceTrimmingStrategy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:[B

.field private static onPostMessage:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 23
    sput-object v1, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    const/4 v1, 0x0

    const/16 v2, 0x41

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_0

    .line 26
    sget-object v4, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_0

    :cond_0
    const/16 v2, 0x61

    :goto_1
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_1

    .line 27
    sget-object v4, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_1

    :cond_1
    const/16 v2, 0x30

    :goto_2
    const/16 v4, 0x39

    if-gt v2, v4, :cond_2

    .line 28
    sget-object v4, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_2

    .line 29
    :cond_2
    sget-object v2, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    const/16 v3, 0x2f

    aput-char v3, v2, v4

    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 32
    sput-object v2, Lo/StackTraceTrimmingStrategy;->onNavigationEvent:[B

    const/4 v2, 0x0

    .line 34
    :goto_3
    sget-object v3, Lo/StackTraceTrimmingStrategy;->onNavigationEvent:[B

    array-length v4, v3

    if-ge v2, v4, :cond_3

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v1, v0, :cond_4

    .line 35
    sget-object v2, Lo/StackTraceTrimmingStrategy;->onNavigationEvent:[B

    sget-object v3, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onNavigationEvent([BI)[C
    .locals 12

    shl-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 63
    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p1, 0x2

    .line 64
    div-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x2

    .line 65
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p1, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 69
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ge v5, p1, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 70
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    goto :goto_1

    :cond_0
    move v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v6, p1, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 71
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    ushr-int/lit8 v8, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v3, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v9, v7, 0x6

    or-int/2addr v5, v9

    and-int/lit8 v7, v7, 0x3f

    add-int/lit8 v9, v4, 0x1

    .line 76
    sget-object v10, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    aget-char v8, v10, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v9, 0x1

    .line 77
    aget-char v3, v10, v3

    aput-char v3, v1, v9

    const/16 v3, 0x3d

    if-ge v4, v0, :cond_2

    .line 78
    aget-char v5, v10, v5

    goto :goto_3

    :cond_2
    const/16 v5, 0x3d

    :goto_3
    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_3

    .line 79
    sget-object v3, Lo/StackTraceTrimmingStrategy;->onPostMessage:[C

    aget-char v3, v3, v7

    :cond_3
    aput-char v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1053
    array-length v1, p0

    invoke-static {p0, v1}, Lo/StackTraceTrimmingStrategy;->onNavigationEvent([BI)[C

    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
