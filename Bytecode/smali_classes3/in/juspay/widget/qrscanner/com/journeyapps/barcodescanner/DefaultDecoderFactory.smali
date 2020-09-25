.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->a:Ljava/util/Collection;

    .line 26
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->b:Ljava/util/Map;

    .line 27
    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "*>;)",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->a:Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 41
    sget-object p1, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->c:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->a:Ljava/util/Collection;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 45
    sget-object p1, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->e:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2
    new-instance p1, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;-><init>()V

    .line 49
    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a(Ljava/util/Map;)V

    .line 51
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    invoke-direct {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/Reader;)V

    return-object v0
.end method
