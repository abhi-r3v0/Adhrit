.class public final enum Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum H:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum L:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum M:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public static final enum Q:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static final a:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private static final synthetic c:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "L"

    invoke-direct {v0, v3, v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 30
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v3, "M"

    invoke-direct {v0, v3, v1, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 32
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "Q"

    invoke-direct {v0, v5, v4, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 34
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v5, "H"

    invoke-direct {v0, v5, v3, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v5, 0x4

    new-array v6, v5, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 25
    sget-object v7, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v7, v6, v2

    sget-object v8, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v8, v6, v1

    sget-object v9, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->Q:Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v9, v6, v4

    aput-object v0, v6, v3

    sput-object v6, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    new-array v5, v5, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    aput-object v8, v5, v2

    aput-object v7, v5, v1

    aput-object v0, v5, v4

    aput-object v9, v5, v3

    .line 36
    sput-object v5, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:I

    return-void
.end method

.method public static forBits(I)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 2

    if-ltz p0, :cond_0

    .line 53
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 56
    aget-object p0, v0, p0

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 25
    const-class v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object p0
.end method

.method public static values()[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 25
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->c:[Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method


# virtual methods
.method public final getBits()I
    .locals 1

    .line 45
    iget v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->b:I

    return v0
.end method
