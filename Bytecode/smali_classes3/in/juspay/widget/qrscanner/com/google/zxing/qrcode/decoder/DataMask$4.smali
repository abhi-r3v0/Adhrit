.class final enum Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask$4;
.super Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask;-><init>(Ljava/lang/String;ILin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .locals 0

    add-int/2addr p1, p2

    .line 73
    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
