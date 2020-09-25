.class Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 327
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 328
    invoke-interface {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 350
    invoke-interface {v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 334
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 335
    invoke-interface {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 342
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-static {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 343
    invoke-interface {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method
