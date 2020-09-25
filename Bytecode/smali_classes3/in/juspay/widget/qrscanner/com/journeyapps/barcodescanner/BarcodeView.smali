.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;
.super Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    }
.end annotation


# instance fields
.field private a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

.field private c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

.field private d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

.field private e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 46
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 78
    invoke-direct {p0, p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 46
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 83
    invoke-direct {p0, p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object p3, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 p3, 0x0

    .line 38
    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 46
    new-instance p3, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {p3, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 88
    invoke-direct {p0, p1, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    new-instance p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    .line 93
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .locals 0

    .line 29
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object p0
.end method

.method private i()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;
    .locals 3

    .line 114
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    .line 117
    :cond_0
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderResultPointCallback;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderResultPointCallback;-><init>()V

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    sget-object v2, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->j:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    invoke-interface {v2, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;->a(Ljava/util/Map;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderResultPointCallback;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;)V

    return-object v1
.end method

.method private j()V
    .locals 4

    .line 173
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->k()V

    .line 175
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getCameraInstance()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    move-result-object v1

    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->i()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    .line 180
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a(Landroid/graphics/Rect;)V

    .line 181
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 193
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->b()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 163
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 165
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->k()V

    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 1

    .line 141
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 142
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 143
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->j()V

    return-void
.end method

.method protected b()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;
    .locals 1

    .line 169
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    return-object v0
.end method

.method public b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 1

    .line 154
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 155
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeCallback;

    .line 156
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->j()V

    return-void
.end method

.method protected c()V
    .locals 0

    .line 187
    invoke-super {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->c()V

    .line 189
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->j()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->k()V

    .line 207
    invoke-super {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d()V

    return-void
.end method

.method public getDecoderFactory()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;
    .locals 1

    .line 130
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    return-object v0
.end method

.method public setDecoderFactory(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;)V
    .locals 1

    .line 105
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 107
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->d:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderFactory;

    .line 108
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->c:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/BarcodeView;->i()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/DecoderThread;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Decoder;)V

    :cond_0
    return-void
.end method
