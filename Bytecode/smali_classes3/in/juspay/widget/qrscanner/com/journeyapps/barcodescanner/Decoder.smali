.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/google/zxing/ResultPointCallback;


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/Reader;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    return-void
.end method


# virtual methods
.method protected a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 1

    .line 73
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    instance-of v0, v0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    check-cast v0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->b(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a()V

    return-object p1

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    invoke-interface {v0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a()V

    throw p1

    :catch_0
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a:Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    invoke-interface {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->b(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;
    .locals 2

    .line 63
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;

    new-instance v1, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/common/HybridBinarizer;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/Binarizer;)V

    return-object v0
.end method
