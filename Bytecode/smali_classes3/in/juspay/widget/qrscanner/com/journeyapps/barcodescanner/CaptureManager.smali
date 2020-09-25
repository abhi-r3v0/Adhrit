.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

.field private i:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

.field private j:Landroid/os/Handler;

.field private k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

.field private final l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->a:Ljava/lang/String;

    const/16 v0, 0xfa

    .line 49
    sput v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->e:I

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->f:Z

    .line 57
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->g:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 70
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$1;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 204
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->m:Z

    .line 93
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    .line 94
    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 95
    invoke-virtual {p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;

    move-result-object p2

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-virtual {p2, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;)V

    .line 97
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->j:Landroid/os/Handler;

    .line 99
    new-instance p2, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$2;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)V

    invoke-direct {p2, p1, v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->h:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    .line 107
    new-instance p2, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    invoke-direct {p2, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->i:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 300
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static getCameraPermissionReqCode()I
    .locals 1

    .line 339
    sget v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->b:I

    return v0
.end method

.method public static resultIntent(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->getBarcodeFormat()Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->getRawBytes()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "SCAN_RESULT_BYTES"

    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 245
    :cond_0
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeResult;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 247
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->h:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->h:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    .line 249
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 248
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_1
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->b:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    :cond_2
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->d:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 257
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_3
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;->c:Lin/juspay/widget/qrscanner/com/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    .line 263
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 264
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string p0, "SCAN_RESULT_IMAGE_PATH"

    .line 270
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method public static setCameraPermissionReqCode(I)V
    .locals 0

    .line 343
    sput p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->b:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 163
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 165
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 167
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 183
    :cond_4
    :goto_1
    iput v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->e:I

    .line 186
    :cond_5
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->e:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected b()V
    .locals 3

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 307
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d()V

    return-void
.end method

.method protected c()V
    .locals 3

    .line 317
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    sget v2, Lin/juspay/widget/qrscanner/R$string;->zxing_app_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    sget v2, Lin/juspay/widget/qrscanner/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 323
    sget v1, Lin/juspay/widget/qrscanner/R$string;->zxing_button_ok:I

    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$4;

    invoke-direct {v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$4;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$5;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$5;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public decode()V
    .locals 2

    .line 193
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeSingle(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V

    return-void
.end method

.method public initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .line 117
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    const-string v1, "SAVED_ORIENTATION_LOCK"

    .line 124
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->e:I

    :cond_0
    if-eqz p1, :cond_5

    const/4 p2, 0x1

    const-string v0, "SCAN_ORIENTATION_LOCKED"

    .line 129
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->a()V

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->initializeFromIntent(Landroid/content/Intent;)V

    :cond_2
    const-string v0, "BEEP_ENABLED"

    .line 138
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->i:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->setBeepEnabled(Z)V

    :cond_3
    const-string v0, "TIMEOUT"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$3;

    invoke-direct {v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager$3;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;)V

    .line 149
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->j:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const-string v0, "BARCODE_IMAGE_ENABLED"

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    iput-boolean p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->f:Z

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->g:Z

    .line 219
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->h:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;->c()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 210
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 211
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->h:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;->c()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 200
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 201
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->h:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->e:I

    const-string v1, "SAVED_ORIENTATION_LOCK"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBarcodeCallBack(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CaptureManager;->k:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    return-void
.end method
