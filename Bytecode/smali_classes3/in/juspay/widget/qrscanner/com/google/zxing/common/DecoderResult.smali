.class public final Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[B

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/Object;

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->a:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->b:I

    .line 56
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->c:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->d:Ljava/util/List;

    .line 58
    iput-object p4, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->e:Ljava/lang/String;

    .line 59
    iput p6, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->g:I

    .line 60
    iput p5, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->h:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->f:Ljava/lang/Object;

    return-void
.end method

.method public final a()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->a:[B

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 133
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 141
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->h:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 1

    .line 145
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 149
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/common/DecoderResult;->h:I

    return v0
.end method
