.class public final Lo/ActionBarOverlayLayout$LayoutParams;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/PathMeasure;",
            ">;"
        }
    .end annotation
.end field

.field private static asInterface:F

.field private static final extraCallback:F

.field private static final onMessageChannelReady:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Lo/ActionBarOverlayLayout$LayoutParams$4;

    invoke-direct {v0}, Lo/ActionBarOverlayLayout$LayoutParams$4;-><init>()V

    sput-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->ICustomTabsCallback:Ljava/lang/ThreadLocal;

    .line 47
    new-instance v0, Lo/ActionBarOverlayLayout$LayoutParams$5;

    invoke-direct {v0}, Lo/ActionBarOverlayLayout$LayoutParams$5;-><init>()V

    sput-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Lo/ActionBarOverlayLayout$LayoutParams$3;

    invoke-direct {v0}, Lo/ActionBarOverlayLayout$LayoutParams$3;-><init>()V

    sput-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, Lo/ActionBarOverlayLayout$LayoutParams$1;

    invoke-direct {v0}, Lo/ActionBarOverlayLayout$LayoutParams$1;-><init>()V

    sput-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage:Ljava/lang/ThreadLocal;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lo/ActionBarOverlayLayout$LayoutParams;->extraCallback:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    sput v0, Lo/ActionBarOverlayLayout$LayoutParams;->asInterface:F

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 277
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 280
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static ICustomTabsCallback(Landroid/graphics/Path;Lo/setupAnimatorToVisibility;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1072
    iget-boolean v0, p1, Lo/setupAnimatorToVisibility;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2060
    :cond_0
    iget-object v0, p1, Lo/setupAnimatorToVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 134
    check-cast v0, Lo/isOverflowMenuShowing;

    invoke-virtual {v0}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v0

    .line 2064
    iget-object v1, p1, Lo/setupAnimatorToVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    .line 135
    check-cast v1, Lo/isOverflowMenuShowing;

    invoke-virtual {v1}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v1

    .line 2068
    iget-object p1, p1, Lo/setupAnimatorToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 136
    check-cast p1, Lo/isOverflowMenuShowing;

    invoke-virtual {p1}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    .line 137
    invoke-static {p0, v0, v1, p1}, Lo/ActionBarOverlayLayout$LayoutParams;->extraCallback(Landroid/graphics/Path;FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static extraCallback(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    .line 75
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 76
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 78
    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float v2, p0, p2

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->x:F

    add-float v3, p0, p2

    iget p0, p1, Landroid/graphics/PointF;->y:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    add-float v4, p0, p2

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 84
    :cond_1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v7
.end method

.method public static extraCallback(Landroid/graphics/Path;FFF)V
    .locals 10

    .line 142
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 143
    sget-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->ICustomTabsCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PathMeasure;

    .line 144
    sget-object v1, Lo/ActionBarOverlayLayout$LayoutParams;->onMessageChannelReady:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 145
    sget-object v2, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, p0, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 149
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v6, p1, v4

    if-nez v6, :cond_0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_0

    .line 151
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void

    :cond_0
    cmpg-float v6, v3, v4

    if-ltz v6, :cond_9

    sub-float v6, p2, p1

    sub-float/2addr v6, v4

    .line 154
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v6, v8

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    mul-float p1, p1, v3

    mul-float p2, p2, v3

    .line 160
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float p3, p3, v3

    add-float/2addr v4, p3

    add-float/2addr p1, p3

    cmpl-float p2, v4, v3

    if-ltz p2, :cond_2

    cmpl-float p2, p1, v3

    if-ltz p2, :cond_2

    .line 169
    invoke-static {v4, v3}, Lo/onContentScrollStopped;->ICustomTabsCallback(FF)I

    move-result p2

    int-to-float v4, p2

    .line 170
    invoke-static {p1, v3}, Lo/onContentScrollStopped;->ICustomTabsCallback(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_2
    cmpg-float p2, v4, v5

    if-gez p2, :cond_3

    .line 174
    invoke-static {v4, v3}, Lo/onContentScrollStopped;->ICustomTabsCallback(FF)I

    move-result p2

    int-to-float v4, p2

    :cond_3
    cmpg-float p2, p1, v5

    if-gez p2, :cond_4

    .line 177
    invoke-static {p1, v3}, Lo/onContentScrollStopped;->ICustomTabsCallback(FF)I

    move-result p1

    int-to-float p1, p1

    :cond_4
    cmpl-float p2, v4, p1

    if-nez p2, :cond_5

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 183
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void

    :cond_5
    if-ltz p2, :cond_6

    sub-float/2addr v4, v3

    .line 191
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 p2, 0x1

    .line 192
    invoke-virtual {v0, v4, p1, v1, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float p3, p1, v3

    if-lez p3, :cond_7

    .line 199
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    rem-float/2addr p1, v3

    .line 200
    invoke-virtual {v0, v5, p1, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 205
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float p1, v4, v5

    if-gez p1, :cond_8

    .line 207
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-float/2addr v4, v3

    .line 208
    invoke-virtual {v0, v4, v3, v2, p2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 213
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 215
    :cond_8
    :goto_0
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 216
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void

    .line 155
    :cond_9
    :goto_1
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public static extraCallback(Ljava/lang/Throwable;)Z
    .locals 1

    .line 289
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/net/UnknownServiceException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onMessageChannelReady()F
    .locals 2

    .line 255
    sget v0, Lo/ActionBarOverlayLayout$LayoutParams;->asInterface:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lo/ActionBarOverlayLayout$LayoutParams;->asInterface:F

    .line 258
    :cond_0
    sget v0, Lo/ActionBarOverlayLayout$LayoutParams;->asInterface:F

    return v0
.end method

.method public static onMessageChannelReady(Landroid/graphics/Matrix;)Z
    .locals 6

    .line 116
    sget-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 118
    aput v1, v0, v2

    const/4 v3, 0x1

    .line 119
    aput v1, v0, v3

    const v1, 0x471212bb

    const/4 v4, 0x2

    .line 121
    aput v1, v0, v4

    const v1, 0x471a973c

    const/4 v5, 0x3

    .line 122
    aput v1, v0, v5

    .line 123
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 124
    aget p0, v0, v2

    aget v1, v0, v4

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1

    aget p0, v0, v3

    aget v0, v0, v5

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v3
.end method

.method public static onNavigationEvent(Landroid/graphics/Matrix;)F
    .locals 6

    .line 101
    sget-object v0, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    aput v1, v0, v2

    const/4 v3, 0x1

    .line 104
    aput v1, v0, v3

    .line 106
    sget v1, Lo/ActionBarOverlayLayout$LayoutParams;->extraCallback:F

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v5, 0x3

    .line 107
    aput v1, v0, v5

    .line 108
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 109
    aget p0, v0, v4

    aget v1, v0, v2

    sub-float/2addr p0, v1

    .line 110
    aget v1, v0, v5

    aget v0, v0, v3

    sub-float/2addr v1, v0

    float-to-double v2, p0

    float-to-double v0, v1

    .line 112
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static onNavigationEvent(FFFF)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    const v1, 0x4403c000    # 527.0f

    mul-float p0, p0, v1

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    :cond_1
    cmpl-float p1, p2, v0

    if-eqz p1, :cond_2

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float p0, p0, p2

    float-to-int p0, p0

    :cond_2
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_3

    mul-int/lit8 p0, p0, 0x1f

    int-to-float p0, p0

    mul-float p0, p0, p3

    float-to-int p0, p0

    :cond_3
    return p0
.end method

.method public static onNavigationEvent(III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-le p0, v1, :cond_1

    return v2

    :cond_1
    if-ge p1, v1, :cond_2

    return v0

    :cond_2
    if-le p1, v1, :cond_3

    return v2

    :cond_3
    if-ltz p2, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static onPostMessage(Landroid/content/Context;)F
    .locals 4

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const/16 v0, 0x1f

    .line 296
    invoke-static {p0, p1, p2, v0}, Lo/ActionBarOverlayLayout$LayoutParams;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 2

    .line 300
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 304
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 308
    :goto_0
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

    return-void
.end method

.method public static onPostMessage(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 94
    throw p0

    :catch_1
    :cond_0
    return-void
.end method
