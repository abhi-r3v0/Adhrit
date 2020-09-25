.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;,
        Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;


# instance fields
.field private final c:I

.field private final d:[I

.field private final e:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->a:[I

    .line 44
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->f()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    return-void

    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c:I

    .line 55
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d:[I

    .line 56
    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->e:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 p1, 0x0

    .line 58
    aget-object p2, p3, p1

    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->a()I

    move-result p2

    .line 59
    aget-object p3, p3, p1

    invoke-virtual {p3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->d()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object p3

    .line 60
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v2, p3, p1

    .line 61
    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;->a()I

    move-result v3

    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;->b()I

    move-result v2

    add-int/2addr v2, p2

    mul-int v3, v3, v2

    add-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iput v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->f:I

    return-void
.end method

.method public static a(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    .line 94
    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, -0x11

    .line 98
    :try_start_0
    div-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 100
    :catch_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 95
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x28

    if-gt p0, v0, :cond_0

    .line 108
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static c(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 114
    :goto_0
    sget-object v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->a:[I

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 115
    aget v3, v3, v0

    if-ne v3, p0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 118
    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    invoke-static {p0, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;->a(II)I

    move-result v3

    if-ge v3, v2, :cond_1

    add-int/lit8 v1, v0, 0x7

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-gt v2, p0, :cond_3

    .line 131
    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 16

    const/16 v0, 0x28

    new-array v0, v0, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    .line 247
    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v2, 0x0

    new-array v3, v2, [I

    const/4 v4, 0x4

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v7, 0x1

    new-array v8, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x13

    invoke-direct {v9, v7, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v8, v2

    const/4 v9, 0x7

    invoke-direct {v6, v9, v8}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    invoke-direct {v11, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v8, v2

    const/16 v11, 0xa

    invoke-direct {v6, v11, v8}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v8, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v13, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    invoke-direct {v13, v7, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v13, v8, v2

    invoke-direct {v6, v14, v8}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v13, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x9

    invoke-direct {v15, v7, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v13, v2

    const/16 v9, 0x11

    invoke-direct {v6, v9, v13}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    const/4 v13, 0x3

    aput-object v6, v5, v13

    invoke-direct {v1, v7, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v2

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v15, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x22

    invoke-direct {v10, v7, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v15, v2

    invoke-direct {v6, v11, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x1c

    invoke-direct {v14, v7, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v10, v2

    invoke-direct {v6, v12, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x16

    invoke-direct {v14, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v10, v2

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v14, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v10, v2

    invoke-direct {v6, v15, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    invoke-direct {v1, v8, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v7

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x37

    invoke-direct {v14, v7, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v10, v2

    const/16 v14, 0xf

    invoke-direct {v6, v14, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x2c

    invoke-direct {v15, v7, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v10, v2

    const/16 v14, 0x1a

    invoke-direct {v6, v14, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v15, v8, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v10, v2

    const/16 v15, 0x12

    invoke-direct {v6, v15, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v15, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0xd

    invoke-direct {v15, v8, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v15, v10, v2

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    invoke-direct {v1, v13, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v8

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x50

    invoke-direct {v10, v7, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    const/16 v10, 0x14

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x20

    invoke-direct {v10, v8, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    const/16 v10, 0x12

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x18

    invoke-direct {v10, v8, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    invoke-direct {v6, v14, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x9

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    invoke-direct {v6, v12, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    invoke-direct {v1, v4, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v13

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v8, [I

    fill-array-data v3, :array_3

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6c

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    invoke-direct {v6, v14, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2b

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x12

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x16

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/4 v6, 0x5

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v4

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v8, [I

    fill-array-data v3, :array_4

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x44

    invoke-direct {v11, v8, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    const/16 v11, 0x12

    invoke-direct {v9, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v9, v5, v2

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1b

    invoke-direct {v11, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    invoke-direct {v9, v12, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v9, v5, v7

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x13

    invoke-direct {v11, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    invoke-direct {v9, v15, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v9, v5, v8

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xf

    invoke-direct {v11, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    const/16 v11, 0x1c

    invoke-direct {v9, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v9, v5, v13

    const/4 v9, 0x6

    invoke-direct {v1, v9, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v6

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_5

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v11, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v6, 0x4e

    invoke-direct {v14, v8, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v11, v2

    const/16 v6, 0x14

    invoke-direct {v10, v6, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v10, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x1f

    invoke-direct {v11, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    const/16 v11, 0x12

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xe

    invoke-direct {v11, v8, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v7

    const/16 v11, 0x12

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v7, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v7

    const/16 v11, 0x1a

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/4 v6, 0x7

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v9

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_6

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x61

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    invoke-direct {v6, v15, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x26

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x27

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v7

    const/16 v11, 0x16

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v12, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x12

    invoke-direct {v12, v4, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v12, v10, v2

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    invoke-direct {v9, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v10, v7

    invoke-direct {v6, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0x8

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_7

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x24

    invoke-direct {v11, v13, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x16

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x14

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0x9

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_8

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x44

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x45

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x12

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2b

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    invoke-direct {v11, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x1a

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/4 v14, 0x6

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x1c

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0xa

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_9

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x51

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    const/16 v11, 0x14

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x32

    invoke-direct {v11, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x33

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x1c

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    invoke-direct {v11, v13, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v14, 0xd

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0xb

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_a

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x5c

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x5d

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x24

    const/4 v14, 0x6

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x16

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/4 v14, 0x6

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x1a

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/4 v14, 0x7

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x1c

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0xc

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v13, [I

    fill-array-data v3, :array_b

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x6b

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    const/16 v11, 0x1a

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v14, 0x25

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x26

    invoke-direct {v11, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x16

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v14, 0x14

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v14, 0xb

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    const/16 v11, 0x16

    invoke-direct {v6, v11, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0xd

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x73

    invoke-direct {v11, v13, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x74

    invoke-direct {v11, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x28

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x29

    const/4 v14, 0x5

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v10, 0x10

    invoke-direct {v11, v12, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x14

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v12, 0xc

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xd

    const/4 v12, 0x5

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0xe

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v11

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x57

    const/4 v12, 0x5

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x58

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x16

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x29

    const/4 v12, 0x5

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v12, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v14, 0xc

    invoke-direct {v10, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/4 v14, 0x7

    invoke-direct {v10, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0xf

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x62

    const/4 v14, 0x5

    invoke-direct {v10, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x63

    invoke-direct {v10, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2d

    const/4 v14, 0x7

    invoke-direct {v10, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    invoke-direct {v10, v13, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    const/16 v14, 0x13

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x14

    invoke-direct {v10, v8, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    invoke-direct {v6, v15, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xd

    const/16 v15, 0x10

    invoke-direct {v10, v14, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    invoke-direct {v1, v15, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v11

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6c

    const/4 v14, 0x5

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xa

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x2f

    invoke-direct {v11, v7, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x16

    invoke-direct {v11, v7, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x17

    const/16 v15, 0xf

    invoke-direct {v11, v15, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xe

    invoke-direct {v11, v8, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v11, v14, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    invoke-direct {v1, v14, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x78

    const/4 v14, 0x5

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x79

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x9

    const/16 v14, 0x2b

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    const/16 v14, 0x16

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xe

    invoke-direct {v11, v8, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x13

    const/16 v15, 0xf

    invoke-direct {v11, v14, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0x12

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x71

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x72

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v14, 0x2d

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x15

    const/16 v15, 0x11

    invoke-direct {v11, v15, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x16

    invoke-direct {v11, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x9

    const/16 v15, 0xd

    invoke-direct {v11, v14, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xe

    const/16 v15, 0x10

    invoke-direct {v11, v15, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0x13

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    new-array v5, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6c

    const/4 v14, 0x5

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x29

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v14, 0xd

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    const/16 v14, 0x18

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x19

    const/4 v15, 0x5

    invoke-direct {v10, v15, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v10, v11, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v14, 0x10

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v5, v13

    const/16 v6, 0x14

    invoke-direct {v1, v6, v3, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_13

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v14, 0x11

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x16

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/4 v14, 0x6

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    const/16 v15, 0x10

    invoke-direct {v10, v11, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x15

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_14

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6f

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x70

    const/4 v14, 0x7

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x11

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    const/16 v14, 0x18

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v14, 0x10

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x22

    const/16 v14, 0xd

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    const/16 v10, 0x18

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x16

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_15

    new-array v6, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x79

    invoke-direct {v11, v4, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x7a

    invoke-direct {v11, v3, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v7

    const/16 v3, 0x1e

    invoke-direct {v9, v3, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v9, v6, v2

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v14, 0xe

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v3, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v6, v7

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v15, 0x18

    invoke-direct {v10, v11, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    invoke-direct {v10, v14, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v3, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v6, v8

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v15, 0xf

    invoke-direct {v11, v12, v15}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v3, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v6, v13

    const/16 v3, 0x17

    invoke-direct {v1, v3, v5, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_16

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    const/4 v12, 0x6

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x76

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    const/4 v12, 0x6

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/16 v12, 0xe

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v12, 0x10

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v11, v10, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x18

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_17

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x6a

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x6b

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1a

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v12, 0xd

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v11, 0x7

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v12, 0x16

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x19

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_18

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x72

    const/16 v12, 0xa

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v14, 0x2e

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2f

    invoke-direct {v11, v4, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    invoke-direct {v11, v10, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/4 v14, 0x6

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x21

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x11

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x1a

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    new-array v5, v3, [I

    fill-array-data v5, :array_19

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x7a

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7b

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    const/16 v12, 0x16

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x8

    const/16 v12, 0x17

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1a

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v14, 0x1c

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x1b

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_1a

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x76

    const/16 v12, 0xa

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2d

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/16 v12, 0x2e

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x18

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1f

    const/16 v12, 0x19

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xb

    const/16 v12, 0xf

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1f

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x1c

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_1b

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x75

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    const/16 v12, 0x2d

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x25

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x1d

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_1c

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/4 v12, 0x5

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    const/16 v12, 0xa

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    const/16 v12, 0x13

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v12, 0xa

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xf

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    invoke-direct {v10, v12, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v14, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v15, 0x17

    invoke-direct {v14, v15, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v14, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    invoke-direct {v1, v10, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_1d

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/16 v12, 0xd

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v10, v13, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    invoke-direct {v10, v8, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1d

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v14, 0x1c

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x1f

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v1, v0, v10

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_1e

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x73

    const/16 v14, 0x11

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v12, 0x2e

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x23

    const/16 v12, 0x19

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x20

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_1f

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x73

    const/16 v12, 0x11

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x74

    invoke-direct {v10, v7, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/16 v12, 0xe

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x15

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1d

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x13

    const/16 v12, 0x19

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x21

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    new-array v5, v3, [I

    fill-array-data v5, :array_20

    new-array v6, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v10, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x73

    const/16 v14, 0xd

    invoke-direct {v11, v14, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x74

    invoke-direct {v11, v3, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v10, v7

    const/16 v3, 0x1e

    invoke-direct {v9, v3, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v9, v6, v2

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/16 v12, 0xe

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x17

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v3, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v6, v7

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2c

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v3, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v6, v8

    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3b

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    invoke-direct {v11, v7, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v3, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v3, v6, v13

    const/16 v3, 0x22

    invoke-direct {v1, v3, v5, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v5, v3, [I

    fill-array-data v5, :array_21

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    const/16 v12, 0x79

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xc

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v12, 0x1a

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x27

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xe

    const/16 v12, 0x19

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x29

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x23

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v5, v3, [I

    fill-array-data v5, :array_22

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x79

    const/4 v12, 0x6

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/16 v12, 0xe

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    const/4 v12, 0x6

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x22

    const/16 v12, 0x30

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v12, 0x19

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    invoke-direct {v11, v8, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x40

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x24

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v5, v3, [I

    fill-array-data v5, :array_23

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    const/16 v12, 0x11

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7b

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x1d

    const/16 v12, 0x2e

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2f

    const/16 v12, 0xe

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x31

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xa

    const/16 v14, 0x19

    invoke-direct {v10, v11, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x25

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v5, v3, [I

    fill-array-data v5, :array_24

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x7a

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x12

    const/16 v12, 0x7b

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2e

    const/16 v12, 0xd

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x20

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0xe

    const/16 v12, 0x19

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2a

    const/16 v12, 0xf

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x20

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x26

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v5, v3, [I

    fill-array-data v5, :array_25

    new-array v3, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x14

    const/16 v12, 0x75

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x76

    invoke-direct {v10, v4, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v2

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x28

    const/16 v12, 0x2f

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x30

    const/4 v12, 0x7

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v7

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x2b

    const/16 v12, 0x18

    invoke-direct {v10, v11, v12}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v2

    new-instance v10, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    const/16 v12, 0x16

    invoke-direct {v10, v12, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v10, v9, v7

    const/16 v10, 0x1e

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v8

    new-instance v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v9, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v14, 0xf

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v2

    new-instance v11, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x43

    const/16 v14, 0x10

    invoke-direct {v11, v12, v14}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v7

    invoke-direct {v6, v10, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v6, v3, v13

    const/16 v6, 0x27

    invoke-direct {v1, v6, v5, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    new-array v4, v4, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-instance v5, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v6, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x76

    const/16 v11, 0x13

    invoke-direct {v9, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v6, v2

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x77

    const/4 v11, 0x6

    invoke-direct {v9, v11, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v6, v7

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v5, v4, v2

    new-instance v5, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v6, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x12

    const/16 v11, 0x2f

    invoke-direct {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v6, v2

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x1f

    const/16 v11, 0x30

    invoke-direct {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v6, v7

    const/16 v9, 0x1c

    invoke-direct {v5, v9, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v5, v4, v7

    new-instance v5, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v6, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v10, 0x22

    const/16 v11, 0x18

    invoke-direct {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v6, v2

    new-instance v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v11, 0x19

    invoke-direct {v9, v10, v11}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v9, v6, v7

    const/16 v9, 0x1e

    invoke-direct {v5, v9, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v5, v4, v8

    new-instance v5, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    new-array v6, v8, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v8, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v9, 0x14

    const/16 v10, 0xf

    invoke-direct {v8, v9, v10}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v8, v6, v2

    new-instance v2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v8, 0x3d

    const/16 v9, 0x10

    invoke-direct {v2, v8, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v2, v6, v7

    const/16 v2, 0x1e

    invoke-direct {v5, v2, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v5, v4, v13

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 67
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c:I

    return v0
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 1

    .line 83
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->e:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()[I
    .locals 1

    .line 71
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d:[I

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 75
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->f:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 79
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method final e()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;
    .locals 10

    .line 141
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d()I

    move-result v0

    .line 142
    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;-><init>(I)V

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v1, v3, v3, v2, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v4, v0, -0x8

    const/16 v5, 0x8

    .line 147
    invoke-virtual {v1, v4, v3, v5, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 149
    invoke-virtual {v1, v3, v4, v2, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 152
    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d:[I

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 154
    iget-object v6, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d:[I

    aget v6, v6, v5

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    if-nez v5, :cond_0

    if-eqz v7, :cond_2

    add-int/lit8 v8, v4, -0x1

    if-eq v7, v8, :cond_2

    :cond_0
    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_1

    if-eqz v7, :cond_2

    .line 160
    :cond_1
    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d:[I

    aget v8, v8, v7

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x5

    invoke-virtual {v1, v8, v6, v9, v9}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v0, -0x11

    const/4 v5, 0x6

    const/4 v6, 0x1

    .line 165
    invoke-virtual {v1, v5, v2, v6, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 167
    invoke-virtual {v1, v2, v5, v4, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 169
    iget v2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c:I

    if-le v2, v5, :cond_5

    add-int/lit8 v0, v0, -0xb

    const/4 v2, 0x3

    .line 171
    invoke-virtual {v1, v0, v3, v2, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 173
    invoke-virtual {v1, v3, v0, v5, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_5
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 240
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
