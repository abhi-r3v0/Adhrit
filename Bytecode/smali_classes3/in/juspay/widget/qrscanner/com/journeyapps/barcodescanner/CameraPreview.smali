.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

.field private b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Landroid/view/SurfaceView;

.field private g:Landroid/view/TextureView;

.field private h:Z

.field private i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

.field private n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private p:Landroid/graphics/Rect;

.field private q:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/Rect;

.field private t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

.field private u:D

.field private v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

.field private w:Z

.field private final x:Landroid/view/SurfaceHolder$Callback;

.field private final y:Landroid/os/Handler$Callback;

.field private z:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 224
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 98
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k:Ljava/util/List;

    .line 110
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 128
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 131
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 135
    iput-wide v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    .line 137
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 139
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->w:Z

    .line 168
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;

    invoke-direct {v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->x:Landroid/view/SurfaceHolder$Callback;

    .line 191
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;

    invoke-direct {v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->y:Landroid/os/Handler$Callback;

    .line 210
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->z:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;

    .line 324
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;

    invoke-direct {v2, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 225
    invoke-direct {p0, p1, v1, v0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 98
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k:Ljava/util/List;

    .line 110
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 128
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 131
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 135
    iput-wide v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    .line 137
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 139
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->w:Z

    .line 168
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->x:Landroid/view/SurfaceHolder$Callback;

    .line 191
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->y:Landroid/os/Handler$Callback;

    .line 210
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->z:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;

    .line 324
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 230
    invoke-direct {p0, p1, p2, v0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 98
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k:Ljava/util/List;

    .line 110
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 128
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 131
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 135
    iput-wide v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    .line 137
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 139
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->w:Z

    .line 168
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$2;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->x:Landroid/view/SurfaceHolder$Callback;

    .line 191
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$3;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->y:Landroid/os/Handler$Callback;

    .line 210
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$4;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->z:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;

    .line 324
    new-instance v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;

    invoke-direct {v1, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$5;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 235
    invoke-direct {p0, p1, p2, p3, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .line 144
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$1;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V

    return-object v0
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 0

    .line 60
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->q:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_0

    const/high16 p3, -0x1000000

    .line 241
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    :cond_0
    invoke-virtual {p0, p2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Landroid/util/AttributeSet;)V

    const-string p2, "window"

    .line 246
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->c:Landroid/view/WindowManager;

    .line 248
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->y:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    .line 250
    new-instance p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-direct {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;-><init>()V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    return-void
.end method

.method static synthetic a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k()V

    return-void
.end method

.method private a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 2

    .line 403
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 404
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getDisplayRotation()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;-><init>(ILin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 407
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getPreviewScalingStrategy()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;)V

    .line 408
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    .line 409
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->c()V

    .line 410
    iget-boolean p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->w:Z

    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 1

    .line 730
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;)V

    .line 733
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->d()V

    const/4 p1, 0x1

    .line 734
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 736
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->c()V

    .line 737
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-interface {p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 292
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j:I

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 294
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V

    return-void
.end method

.method private b(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 447
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-eqz p1, :cond_0

    .line 448
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j()V

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 450
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b()V

    return-void
.end method

.method static synthetic d(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k:Ljava/util/List;

    return-object p0
.end method

.method private getDisplayRotation()I
    .locals 1

    .line 697
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 302
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    .line 303
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 304
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 306
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 310
    :cond_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 311
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private j()V
    .locals 8

    .line 356
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    if-eqz v2, :cond_2

    .line 363
    iget v0, v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    .line 364
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v2, v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    .line 366
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v3, v3, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    .line 367
    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v4, v4, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    .line 369
    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;

    iget-object v6, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v5, v6}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/DisplayConfiguration;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    .line 371
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 373
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 374
    iget-object v4, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 376
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    mul-int v5, v5, v0

    iget-object v6, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->top:I

    mul-int v6, v6, v2

    iget-object v7, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    .line 377
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    mul-int v7, v7, v0

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    .line 378
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v7, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    mul-int v0, v0, v2

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    .line 379
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v0, v2

    invoke-direct {v4, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 381
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->a()V

    return-void

    .line 382
    :cond_1
    :goto_0
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 383
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    return-void

    .line 357
    :cond_2
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 358
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    .line 359
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "containerSize or previewSize is not set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 4

    .line 497
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->q:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 498
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;)V

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_1

    .line 502
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-virtual {p0, v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 506
    :cond_1
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSurface;)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 2

    .line 701
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    .line 708
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Landroid/os/Handler;)V

    .line 709
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->b()V

    .line 713
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j:I

    return-void
.end method


# virtual methods
.method protected a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)Landroid/graphics/Matrix;
    .locals 3

    .line 464
    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v0, v0

    iget v1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 465
    iget v1, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v1, v1

    iget p2, p2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float p2, p2

    div-float/2addr v1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float/2addr v1, v0

    move p2, v1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr v0, v1

    .line 480
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 482
    invoke-virtual {v1, p2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 485
    iget v2, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    .line 486
    iget p2, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    .line 487
    iget v0, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 488
    iget p1, p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    .line 491
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1
.end method

.method protected a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .line 784
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 785
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 787
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 789
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v1, v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->a:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 790
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    iget v2, v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 791
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->inset(II)V

    return-object v0

    .line 795
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v1, p1

    iget-wide v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    mul-double v1, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    mul-double v3, v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p1, v1

    .line 796
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 797
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 799
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->inset(II)V

    :cond_1
    return-object v0
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lin/juspay/widget/qrscanner/R$styleable;->zxing_camera_preview:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 268
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_camera_preview_zxing_framing_rect_width:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 269
    sget v2, Lin/juspay/widget/qrscanner/R$styleable;->zxing_camera_preview_zxing_framing_rect_height:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 272
    new-instance v2, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    invoke-direct {v2, v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    iput-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 275
    :cond_0
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_camera_preview_zxing_use_texture_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e:Z

    .line 278
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_camera_preview_zxing_preview_scaling_strategy:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 280
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 282
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 284
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitXYStrategy;-><init>()V

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    .line 287
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 616
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    const/4 v0, -0x1

    .line 619
    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->j:I

    .line 620
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->e()V

    .line 623
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    .line 626
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->q:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_1

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 628
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 630
    :cond_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->q:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_2

    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    .line 631
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 634
    :cond_2
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->n:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 635
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->o:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    .line 636
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    .line 637
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->a()V

    .line 639
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->A:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;

    invoke-interface {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;->c()V

    return-void
.end method

.method public e()V
    .locals 4

    .line 582
    invoke-static {}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Util;->a()V

    .line 586
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->l()V

    .line 588
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->q:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->k()V

    goto :goto_0

    .line 592
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->x:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 596
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 604
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 605
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->z:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;

    invoke-virtual {v0, v1, v2}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationListener;->a(Landroid/content/Context;Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/RotationCallback;)V

    return-void
.end method

.method protected f()Z
    .locals 1

    .line 693
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected g()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;
    .locals 2

    .line 724
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;-><init>(Landroid/content/Context;)V

    .line 725
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V

    return-object v0
.end method

.method public getCameraInstance()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;
    .locals 1

    .line 758
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    return-object v0
.end method

.method public getCameraSettings()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;
    .locals 1

    .line 559
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 540
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFramingRectSize()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;
    .locals 1

    .line 643
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-object v0
.end method

.method public getMarginFraction()D
    .locals 2

    .line 656
    iget-wide v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    return-wide v0
.end method

.method public getPreviewFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 552
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewScalingStrategy()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
    .locals 1

    .line 430
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    if-eqz v0, :cond_0

    return-object v0

    .line 437
    :cond_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 438
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CenterCropStrategy;-><init>()V

    return-object v0

    .line 440
    :cond_1
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitCenterStrategy;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/FitCenterStrategy;-><init>()V

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->h:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 255
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 257
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->i()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 516
    new-instance p1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p1, p4, p5}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V

    .line 518
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->f:Landroid/view/SurfaceView;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 519
    iget-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    if-nez p3, :cond_0

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 524
    :cond_0
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->p:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 526
    :cond_1
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-lt p1, p3, :cond_2

    .line 527
    iget-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->g:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 816
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 817
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 820
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "super"

    .line 821
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 822
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "torch"

    .line 823
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 824
    invoke-virtual {p0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->setTorch(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 806
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 808
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "super"

    .line 809
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 810
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->w:Z

    const-string v2, "torch"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public setCameraSettings(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->m:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;

    return-void
.end method

.method public setFramingRectSize(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->t:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/Size;

    return-void
.end method

.method public setMarginFraction(D)V
    .locals 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, p1, v0

    if-gez v2, :cond_0

    .line 669
    iput-wide p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->u:D

    return-void

    .line 667
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The margin fraction must be less than 0.5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreviewScalingStrategy(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->v:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/PreviewScalingStrategy;

    return-void
.end method

.method public setTorch(Z)V
    .locals 1

    .line 396
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->w:Z

    .line 397
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->b:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, p1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraInstance;->a(Z)V

    :cond_0
    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 0

    .line 684
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->e:Z

    return-void
.end method
