.class public final Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/List;

    .line 36
    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 8

    .line 40
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 42
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-gt v1, p1, :cond_0

    .line 43
    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    add-int/lit8 v6, v1, -0x1

    .line 44
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;->d()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;->a(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 43
    invoke-virtual {v0, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;->b(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;)Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 45
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    return-object p1
.end method


# virtual methods
.method public final a([II)V
    .locals 6

    if-eqz p2, :cond_2

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_1

    .line 60
    invoke-direct {p0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a(I)Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    .line 61
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 62
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    new-instance v4, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGF;[I)V

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v4, p2, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;->a(II)Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;->c(Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;)[Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    aget-object v1, v1, v2

    .line 66
    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/reedsolomon/GenericGFPoly;->a()[I

    move-result-object v1

    .line 67
    array-length v2, v1

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v4, v0, v2

    .line 69
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    .line 71
    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
