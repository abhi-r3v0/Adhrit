.class public final Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/google/zxing/Reader;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private b:[Lin/juspay/widget/qrscanner/com/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    if-eqz v0, :cond_0

    .line 126
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 128
    :try_start_0
    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a(Ljava/util/Map;)V

    .line 52
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->c(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 0
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
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a(Ljava/util/Map;)V

    .line 66
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->c(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 117
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    if-eqz v0, :cond_0

    .line 118
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 119
    invoke-interface {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/Reader;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 95
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->d:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->c:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    .line 98
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 99
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 103
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->QR_CODE:Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    new-instance p1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;

    invoke-direct {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    new-instance p1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;

    invoke-direct {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    return-void
.end method

.method public final b(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->b:[Lin/juspay/widget/qrscanner/com/google/zxing/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a(Ljava/util/Map;)V

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->c(Lin/juspay/widget/qrscanner/com/google/zxing/BinaryBitmap;)Lin/juspay/widget/qrscanner/com/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method
