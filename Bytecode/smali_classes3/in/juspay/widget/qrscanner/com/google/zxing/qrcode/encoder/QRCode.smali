.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

.field private b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

.field private d:I

.field private e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->d:I

    return-void
.end method

.method public static b(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;
    .locals 1

    .line 59
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 97
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->d:I

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    return-void
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/QRCode;->e:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">>\n"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
