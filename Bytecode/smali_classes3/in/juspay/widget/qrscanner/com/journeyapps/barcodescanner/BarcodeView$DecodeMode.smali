.class final enum Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DecodeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field public static final enum c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private static final synthetic d:[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 33
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 34
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v3, 0x2

    const-string v4, "CONTINUOUS"

    invoke-direct {v0, v4, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 31
    sget-object v5, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    aput-object v5, v4, v1

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->d:[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 1

    .line 31
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object p0
.end method

.method public static values()[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 1

    .line 31
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->d:[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    invoke-virtual {v0}, [Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object v0
.end method
