.class final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

.field private b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

.field private c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

.field private d:Z


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method private a(III)I
    .locals 1

    .line 142
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    shl-int/lit8 p1, p3, 0x1

    return p1
.end method


# virtual methods
.method final a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 61
    invoke-direct {p0, v1, v4, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 64
    invoke-direct {p0, v1, v4, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v2

    .line 65
    invoke-direct {p0, v4, v4, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v2

    .line 66
    invoke-direct {p0, v4, v1, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_1
    if-ltz v2, :cond_2

    .line 69
    invoke-direct {p0, v4, v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 73
    :cond_2
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    .line 77
    invoke-direct {p0, v4, v5, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x8

    :goto_3
    if-ge v3, v2, :cond_4

    .line 80
    invoke-direct {p0, v3, v4, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 83
    :cond_4
    invoke-static {v1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;->b(II)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_5

    return-object v0

    .line 87
    :cond_5
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method final a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    .line 230
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    .line 231
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->d:Z

    return-void
.end method

.method final b()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    if-eqz v0, :cond_0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v1, v0, -0x11

    .line 105
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 107
    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->b(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    add-int/lit8 v6, v0, -0x9

    :goto_1
    if-lt v6, v1, :cond_2

    .line 115
    invoke-direct {p0, v6, v4, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {v5}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 120
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d()I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 121
    iput-object v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    return-object v4

    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v4, v0, -0x9

    :goto_3
    if-lt v4, v1, :cond_5

    .line 129
    invoke-direct {p0, v2, v4, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 133
    :cond_6
    invoke-static {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 134
    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->d()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 135
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    return-object v1

    .line 138
    :cond_7
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method final c()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    .line 157
    invoke-virtual/range {p0 .. p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->b()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 161
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;->values()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;

    move-result-object v3

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;->b()B

    move-result v1

    aget-object v1, v3, v1

    .line 162
    iget-object v3, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 163
    iget-object v4, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v4, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;I)V

    .line 165
    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->e()Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 168
    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c()I

    move-result v4

    new-array v4, v4, [B

    add-int/lit8 v5, v3, -0x1

    const/4 v7, 0x1

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-lez v8, :cond_6

    const/4 v12, 0x6

    if-ne v8, v12, :cond_0

    add-int/lit8 v8, v8, -0x1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v3, :cond_5

    if-eqz v7, :cond_1

    sub-int v13, v5, v12

    goto :goto_2

    :cond_1
    move v13, v12

    :goto_2
    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    sub-int v15, v8, v14

    .line 184
    invoke-virtual {v1, v15, v13}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-nez v16, :cond_3

    add-int/lit8 v10, v10, 0x1

    shl-int/lit8 v11, v11, 0x1

    .line 188
    iget-object v6, v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v15, v13}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v6, v11, 0x1

    move v11, v6

    :cond_2
    const/16 v6, 0x8

    if-ne v10, v6, :cond_3

    add-int/lit8 v6, v9, 0x1

    int-to-byte v10, v11

    .line 193
    aput-byte v10, v4, v9

    move v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    .line 202
    :cond_6
    invoke-virtual {v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;->c()I

    move-result v1

    if-ne v9, v1, :cond_7

    return-object v4

    .line 203
    :cond_7
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method

.method final d()V
    .locals 3

    .line 212
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;->values()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/FormatInformation;->b()B

    move-result v1

    aget-object v0, v0, v1

    .line 216
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 217
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;->a(Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;I)V

    return-void
.end method

.method final e()V
    .locals 5

    const/4 v0, 0x0

    .line 236
    :goto_0
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 237
    :goto_1
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 238
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v2, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 239
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v2, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->flip(II)V

    .line 240
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/BitMatrixParser;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v0, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method
