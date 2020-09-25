.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 217
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4$1;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;

    iget-object v0, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    return-void
.end method
