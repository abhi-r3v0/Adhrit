.class Lo/Payment$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lo/PaymentInstrumentJsonAdapter$onPostMessage;
.implements Lo/OrderStatusView$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:[F

.field private final ICustomTabsCallback$Stub:[F

.field private final ICustomTabsCallback$Stub$Proxy:[F

.field private final asBinder:[F

.field private final asInterface:[F

.field final synthetic extraCallback:Lo/Payment;

.field private final onMessageChannelReady:[F

.field private final onNavigationEvent:[F

.field private final onPostMessage:Lo/PayResponse;

.field private onRelationshipValidationResult:F

.field private onTransact:F


# direct methods
.method public constructor <init>(Lo/Payment;Lo/PayResponse;)V
    .locals 2

    .line 238
    iput-object p1, p0, Lo/Payment$onPostMessage;->extraCallback:Lo/Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 218
    iput-object v0, p0, Lo/Payment$onPostMessage;->onNavigationEvent:[F

    new-array v0, p1, [F

    .line 221
    iput-object v0, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback:[F

    new-array v0, p1, [F

    .line 225
    iput-object v0, p0, Lo/Payment$onPostMessage;->onMessageChannelReady:[F

    new-array v1, p1, [F

    .line 229
    iput-object v1, p0, Lo/Payment$onPostMessage;->asBinder:[F

    new-array v1, p1, [F

    .line 230
    iput-object v1, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub:[F

    new-array v1, p1, [F

    .line 235
    iput-object v1, p0, Lo/Payment$onPostMessage;->asInterface:[F

    new-array p1, p1, [F

    .line 236
    iput-object p1, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub$Proxy:[F

    .line 239
    iput-object p2, p0, Lo/Payment$onPostMessage;->onPostMessage:Lo/PayResponse;

    const/4 p1, 0x0

    .line 240
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 241
    iget-object p2, p0, Lo/Payment$onPostMessage;->asBinder:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 242
    iget-object p2, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub:[F

    invoke-static {p2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    .line 243
    iput p1, p0, Lo/Payment$onPostMessage;->onTransact:F

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 6

    .line 291
    iget-object v0, p0, Lo/Payment$onPostMessage;->asBinder:[F

    iget v1, p0, Lo/Payment$onPostMessage;->onRelationshipValidationResult:F

    neg-float v2, v1

    iget v1, p0, Lo/Payment$onPostMessage;->onTransact:F

    float-to-double v3, v1

    .line 295
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Lo/Payment$onPostMessage;->onTransact:F

    float-to-double v4, v1

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 291
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method

.method private onNavigationEvent(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 312
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double v2, p1

    div-double/2addr v0, v2

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method


# virtual methods
.method public declared-synchronized ICustomTabsCallback(Landroid/graphics/PointF;)V
    .locals 7

    monitor-enter p0

    .line 303
    :try_start_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lo/Payment$onPostMessage;->onRelationshipValidationResult:F

    .line 304
    invoke-direct {p0}, Lo/Payment$onPostMessage;->ICustomTabsCallback()V

    .line 305
    iget-object v1, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub:[F

    const/4 v2, 0x0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, p1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub$Proxy:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lo/Payment$onPostMessage;->onMessageChannelReady:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 266
    iget-object v6, p0, Lo/Payment$onPostMessage;->asInterface:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lo/Payment$onPostMessage;->asBinder:[F

    const/4 v9, 0x0

    iget-object v10, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback$Stub$Proxy:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v0, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lo/Payment$onPostMessage;->onNavigationEvent:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lo/Payment$onPostMessage;->asInterface:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 270
    iget-object p1, p0, Lo/Payment$onPostMessage;->onPostMessage:Lo/PayResponse;

    iget-object v0, p0, Lo/Payment$onPostMessage;->ICustomTabsCallback:[F

    invoke-virtual {p1, v0, v1}, Lo/PayResponse;->onMessageChannelReady([FZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 267
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPostMessage([FF)V
    .locals 3

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lo/Payment$onPostMessage;->onMessageChannelReady:[F

    iget-object v1, p0, Lo/Payment$onPostMessage;->onMessageChannelReady:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    .line 278
    iput p1, p0, Lo/Payment$onPostMessage;->onTransact:F

    .line 279
    invoke-direct {p0}, Lo/Payment$onPostMessage;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    .line 253
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 255
    invoke-direct {p0, v3}, Lo/Payment$onPostMessage;->onNavigationEvent(F)F

    move-result v2

    .line 256
    iget-object v0, p0, Lo/Payment$onPostMessage;->onNavigationEvent:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object p1, p0, Lo/Payment$onPostMessage;->extraCallback:Lo/Payment;

    iget-object p2, p0, Lo/Payment$onPostMessage;->onPostMessage:Lo/PayResponse;

    invoke-virtual {p2}, Lo/PayResponse;->ICustomTabsCallback()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Lo/Payment;->ICustomTabsCallback(Lo/Payment;Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
