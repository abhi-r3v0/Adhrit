.class public interface abstract Lin/juspay/widget/qrscanner/com/google/zxing/Reader;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public abstract a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;,
            Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public abstract a()V
.end method
