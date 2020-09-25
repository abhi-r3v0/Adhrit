.class public final Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 108
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a:[B

    array-length v0, v0

    iget v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)I
    .locals 8

    if-lez p1, :cond_5

    const/16 v0, 0x20

    if-gt p1, v0, :cond_5

    .line 63
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a()I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 70
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/16 v3, 0x8

    if-lez v0, :cond_2

    rsub-int/lit8 v0, v0, 0x8

    if-ge p1, v0, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    sub-int/2addr v0, v4

    rsub-int/lit8 v5, v4, 0x8

    shr-int v5, v2, v5

    shl-int/2addr v5, v0

    .line 75
    iget-object v6, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a:[B

    iget v7, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->b:I

    aget-byte v6, v6, v7

    and-int/2addr v5, v6

    shr-int v0, v5, v0

    sub-int/2addr p1, v4

    .line 77
    iget v5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    add-int/2addr v5, v4

    iput v5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    if-ne v5, v3, :cond_1

    .line 79
    iput v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    add-int/lit8 v7, v7, 0x1

    .line 80
    iput v7, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->b:I

    :cond_1
    move v1, v0

    :cond_2
    if-lez p1, :cond_4

    :goto_1
    if-lt p1, v3, :cond_3

    shl-int/lit8 v0, v1, 0x8

    .line 87
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a:[B

    iget v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->b:I

    aget-byte v1, v1, v4

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    add-int/lit8 v4, v4, 0x1

    .line 88
    iput v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->b:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_1

    :cond_3
    if-lez p1, :cond_4

    sub-int/2addr v3, p1

    shr-int v0, v2, v3

    shl-int/2addr v0, v3

    shl-int/2addr v1, p1

    .line 96
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->a:[B

    iget v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->b:I

    aget-byte v2, v2, v4

    and-int/2addr v0, v2

    shr-int/2addr v0, v3

    or-int/2addr v1, v0

    .line 97
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitSource;->c:I

    :cond_4
    return v1

    .line 64
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
