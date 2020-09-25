.class public final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

.field private final b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

.field private final c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;


# direct methods
.method public constructor <init>([Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    aget-object v0, p1, v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    const/4 v0, 0x1

    .line 33
    aget-object v0, p1, v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    const/4 v0, 0x2

    .line 34
    aget-object p1, p1, v0

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    return-void
.end method


# virtual methods
.method public final a()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;
    .locals 1

    .line 38
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;->a:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    return-object v0
.end method

.method public final b()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;
    .locals 1

    .line 42
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;->b:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    return-object v0
.end method

.method public final c()Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;
    .locals 1

    .line 46
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternInfo;->c:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    return-object v0
.end method
