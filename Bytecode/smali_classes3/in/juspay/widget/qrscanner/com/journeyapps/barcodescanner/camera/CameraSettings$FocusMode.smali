.class public final enum Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field public static final enum b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field public static final enum c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field public static final enum d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field private static final synthetic e:[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 22
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    const/4 v2, 0x1

    const-string v3, "CONTINUOUS"

    invoke-direct {v0, v3, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 23
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    const/4 v3, 0x2

    const-string v4, "INFINITY"

    invoke-direct {v0, v4, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 24
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    const/4 v4, 0x3

    const-string v5, "MACRO"

    invoke-direct {v0, v5, v4}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 20
    sget-object v6, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    aput-object v6, v5, v1

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    aput-object v1, v5, v2

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->e:[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 1

    .line 20
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object p0
.end method

.method public static values()[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 1

    .line 20
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->e:[Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    invoke-virtual {v0}, [Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object v0
.end method
