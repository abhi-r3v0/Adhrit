.class public final Lo/ICustomTabsService$Stub$Proxy;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field private static final onPostMessage:F


# instance fields
.field public ICustomTabsCallback:F

.field public extraCallback:Z

.field private final onMessageChannelReady:Landroid/graphics/Path;

.field private final onNavigationEvent:Landroid/graphics/Paint;

.field private final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lo/ICustomTabsService$Stub$Proxy;->onPostMessage:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 326
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 350
    iget v2, p0, Lo/ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:F

    mul-float v1, v1, v2

    const/4 v3, 0x0

    add-float/2addr v1, v3

    mul-float v4, v2, v3

    add-float/2addr v4, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    .line 353
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 355
    sget v5, Lo/ICustomTabsService$Stub$Proxy;->onPostMessage:F

    iget v6, p0, Lo/ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:F

    mul-float v5, v5, v6

    add-float/2addr v5, v3

    float-to-double v6, v1

    float-to-double v8, v5

    .line 361
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v1, v10

    .line 362
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-float v5, v5

    .line 364
    iget-object v6, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 365
    iget-object v6, p0, Lo/ICustomTabsService$Stub$Proxy;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    add-float/2addr v6, v3

    iget v7, p0, Lo/ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:F

    const/high16 v8, -0x80000000

    sub-float/2addr v8, v6

    mul-float v8, v8, v7

    add-float/2addr v6, v8

    neg-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 370
    iget-object v9, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    add-float v10, v7, v2

    invoke-virtual {v9, v10, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 371
    iget-object v9, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    mul-float v2, v2, v8

    sub-float/2addr v4, v2

    invoke-virtual {v9, v4, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 374
    iget-object v2, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 375
    iget-object v2, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 378
    iget-object v2, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    neg-float v4, v6

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 379
    iget-object v2, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    neg-float v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 381
    iget-object v1, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    iget-object v1, p0, Lo/ICustomTabsService$Stub$Proxy;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 388
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v1

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 389
    div-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v1, v1, v4

    add-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 392
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    iget-object v0, p0, Lo/ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Landroid/graphics/Path;

    iget-object v1, p0, Lo/ICustomTabsService$Stub$Proxy;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 419
    iget v0, p0, Lo/ICustomTabsService$Stub$Proxy;->onTransact:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 424
    iget v0, p0, Lo/ICustomTabsService$Stub$Proxy;->onTransact:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 405
    iget-object v0, p0, Lo/ICustomTabsService$Stub$Proxy;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 406
    iget-object v0, p0, Lo/ICustomTabsService$Stub$Proxy;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lo/ICustomTabsService$Stub$Proxy;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
