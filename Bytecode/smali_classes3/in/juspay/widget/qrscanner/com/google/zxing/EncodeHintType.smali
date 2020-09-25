.class public final enum Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHARACTER_SET:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

.field public static final enum ERROR_CORRECTION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

.field public static final enum MARGIN:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

.field public static final enum MAX_SIZE:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIN_SIZE:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum QR_VERSION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

.field private static final synthetic a:[Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v1, 0x0

    const-string v2, "ERROR_CORRECTION"

    invoke-direct {v0, v2, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    .line 40
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    const-string v3, "CHARACTER_SET"

    invoke-direct {v0, v3, v2}, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->CHARACTER_SET:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    .line 43
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v3, 0x2

    const-string v4, "MIN_SIZE"

    invoke-direct {v0, v4, v3}, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MIN_SIZE:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    .line 51
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v4, 0x3

    const-string v5, "MAX_SIZE"

    invoke-direct {v0, v5, v4}, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MAX_SIZE:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    .line 59
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v5, 0x4

    const-string v6, "MARGIN"

    invoke-direct {v0, v6, v5}, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MARGIN:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    .line 66
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v6, 0x5

    const-string v7, "QR_VERSION"

    invoke-direct {v0, v7, v6}, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->QR_VERSION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    const/4 v7, 0x6

    new-array v7, v7, [Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    .line 24
    sget-object v8, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    aput-object v8, v7, v1

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->CHARACTER_SET:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    aput-object v1, v7, v2

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MIN_SIZE:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    aput-object v1, v7, v3

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MAX_SIZE:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    aput-object v1, v7, v4

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->MARGIN:Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->a:[Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;
    .locals 1

    .line 24
    const-class v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    return-object p0
.end method

.method public static values()[Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;
    .locals 1

    .line 24
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->a:[Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    invoke-virtual {v0}, [Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/juspay/widget/qrscanner/com/google/zxing/EncodeHintType;

    return-object v0
.end method
