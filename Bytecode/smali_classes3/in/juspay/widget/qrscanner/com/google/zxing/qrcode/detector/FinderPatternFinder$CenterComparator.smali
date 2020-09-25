.class final Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CenterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:F


# direct methods
.method private constructor <init>(F)V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->a:F

    return-void
.end method

.method synthetic constructor <init>(FLin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .locals 0

    .line 664
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;)I
    .locals 2

    .line 671
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b()I

    move-result v0

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 672
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result p2

    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->a:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 673
    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->a()F

    move-result p1

    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->a:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 676
    :cond_2
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b()I

    move-result p2

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;->b()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 664
    check-cast p1, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->a(Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method
