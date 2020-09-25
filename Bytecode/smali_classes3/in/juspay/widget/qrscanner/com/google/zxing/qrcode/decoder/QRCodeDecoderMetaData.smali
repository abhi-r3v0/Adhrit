.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->a:Z

    return-void
.end method


# virtual methods
.method public final a([Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    aget-object v1, p1, v0

    const/4 v2, 0x2

    .line 54
    aget-object v3, p1, v2

    aput-object v3, p1, v0

    .line 55
    aput-object v1, p1, v2

    :cond_1
    :goto_0
    return-void
.end method
