.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;


# direct methods
.method varargs constructor <init>(I[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    .line 191
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 195
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    return v0
.end method

.method public final b()I
    .locals 5

    .line 200
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 201
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final c()I
    .locals 2

    .line 207
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->b()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final d()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;
    .locals 1

    .line 211
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version$ECB;

    return-object v0
.end method
