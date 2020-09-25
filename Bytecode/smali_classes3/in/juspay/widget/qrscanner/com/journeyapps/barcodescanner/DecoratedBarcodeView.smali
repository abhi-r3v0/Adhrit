.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;,
        Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;
    }
.end annotation


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

.field private c:Landroid/widget/TextView;

.field private d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;
    .locals 0

    .line 32
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lin/juspay/widget/qrscanner/R$styleable;->zxing_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    sget v1, Lin/juspay/widget/qrscanner/R$styleable;->zxing_view_zxing_scanner_layout:I

    sget v2, Lin/juspay/widget/qrscanner/R$layout;->zxing_barcode_scanner:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    sget v0, Lin/juspay/widget/qrscanner/R$id;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 108
    sget p1, Lin/juspay/widget/qrscanner/R$id;->zxing_viewfinder_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->setCameraPreview(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    .line 119
    sget p1, Lin/juspay/widget/qrscanner/R$id;->zxing_status_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\"."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\"."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decodeContinuous(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;

    invoke-direct {v1, p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V

    return-void
.end method

.method public decodeSingle(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;

    invoke-direct {v1, p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V

    return-void
.end method

.method public getBarcodeView()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;
    .locals 1

    .line 191
    sget v0, Lin/juspay/widget/qrscanner/R$id;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 1

    .line 199
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getViewFinder()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;
    .locals 1

    .line 195
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

    return-object v0
.end method

.method public initializeFromIntent(Landroid/content/Intent;)V
    .locals 5

    .line 143
    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->a(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v0

    .line 144
    invoke-static {p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeHintManager;->a(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    .line 146
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    const-string v3, "SCAN_CAMERA_ID"

    .line 148
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    .line 149
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 151
    invoke-virtual {v2, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->a(I)V

    :cond_0
    const-string v3, "PROMPT_MESSAGE"

    .line 155
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {p0, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->setStatusText(Ljava/lang/String;)V

    :cond_1
    const-string v3, "CHARACTER_SET"

    .line 160
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    new-instance v3, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;

    invoke-direct {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;-><init>()V

    .line 163
    invoke-virtual {v3, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/MultiFormatReader;->a(Ljava/util/Map;)V

    .line 165
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v3, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->setCameraSettings(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 166
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    new-instance v3, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v3, v0, v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 258
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v1

    .line 252
    :cond_1
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOff()V

    return v1

    .line 255
    :cond_2
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->setTorchOn()V

    return v1
.end method

.method public pause()V
    .locals 1

    .line 180
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 187
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e()V

    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTorchListener(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

    return-void
.end method

.method public setTorchOff()V
    .locals 2

    .line 231
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    .line 233
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;->b()V

    :cond_0
    return-void
.end method

.method public setTorchOn()V
    .locals 2

    .line 220
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    .line 222
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView$TorchListener;->a()V

    :cond_0
    return-void
.end method
