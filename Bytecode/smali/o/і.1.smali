.class public final Lo/і;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Rect;

.field private ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

.field private final extraCallback:Landroid/graphics/Matrix;

.field public onMessageChannelReady:Landroid/animation/ValueAnimator;

.field private final onNavigationEvent:Landroid/graphics/Paint;

.field private final onPostMessage:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    iput-object p0, p0, Lo/і;->onPostMessage:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/і;->extraCallback:Landroid/graphics/Matrix;

    .line 44
    iget-object v0, p0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 19

    move-object/from16 v0, p0

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 186
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 187
    iget-object v3, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 6084
    :cond_0
    iget v4, v3, Lo/getConfiguredChannel;->asBinder:I

    if-lez v4, :cond_1

    iget v2, v3, Lo/getConfiguredChannel;->asBinder:I

    goto :goto_0

    :cond_1
    iget v3, v3, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 191
    :goto_0
    iget-object v3, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    .line 6088
    iget v4, v3, Lo/getConfiguredChannel;->onRelationshipValidationResult:I

    if-lez v4, :cond_2

    iget v1, v3, Lo/getConfiguredChannel;->onRelationshipValidationResult:I

    goto :goto_1

    :cond_2
    iget v3, v3, Lo/getConfiguredChannel;->asInterface:F

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 194
    :goto_1
    iget-object v3, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v3, v3, Lo/getConfiguredChannel;->onTransact:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 197
    iget-object v3, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v3, v3, Lo/getConfiguredChannel;->onPostMessage:I

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v3, v3, Lo/getConfiguredChannel;->onPostMessage:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 202
    :goto_3
    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v2

    int-to-float v7, v1

    iget-object v1, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-object v8, v1, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget-object v1, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-object v9, v1, Lo/getConfiguredChannel;->extraCallback:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_4

    .line 207
    :cond_7
    new-instance v11, Landroid/graphics/RadialGradient;

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v3, v4

    int-to-float v3, v1

    div-float v14, v3, v4

    .line 211
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v15, v1

    iget-object v1, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-object v1, v1, Lo/getConfiguredChannel;->onNavigationEvent:[I

    iget-object v2, v0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-object v2, v2, Lo/getConfiguredChannel;->extraCallback:[F

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v11

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 218
    :goto_4
    iget-object v1, v0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 90
    iget-object v0, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 94
    :cond_0
    iget-object v0, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v0, v0, Lo/getConfiguredChannel;->getInterfaceDescriptor:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 95
    iget-object v1, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 96
    iget-object v2, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    .line 99
    iget-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v4, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v4, v4, Lo/getConfiguredChannel;->onPostMessage:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    neg-float v1, v2

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    move v3, v1

    goto :goto_1

    :cond_2
    neg-float v2, v1

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    goto :goto_2

    :cond_3
    neg-float v1, v2

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v2, v1

    move v3, v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    neg-float v2, v1

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v2, v1

    move v1, v2

    .line 120
    :goto_2
    iget-object v0, p0, Lo/і;->extraCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 121
    iget-object v0, p0, Lo/і;->extraCallback:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v2, v2, Lo/getConfiguredChannel;->getInterfaceDescriptor:F

    iget-object v4, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v0, v2, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 122
    iget-object v0, p0, Lo/і;->extraCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 123
    iget-object v0, p0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lo/і;->extraCallback:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 124
    iget-object v0, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method final extraCallback()V
    .locals 1

    .line 174
    iget-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo/getConfiguredChannel;->newSession:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lo/і;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/getConfiguredChannel;)V
    .locals 7

    .line 48
    iput-object p1, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lo/і;->onNavigationEvent:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    iget-object v1, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-boolean v1, v1, Lo/getConfiguredChannel;->postMessage:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    :cond_1
    invoke-direct {p0}, Lo/і;->ICustomTabsCallback()V

    .line 1149
    iget-object p1, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    if-eqz p1, :cond_3

    .line 1154
    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1155
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    .line 1156
    iget-object v1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1157
    iget-object v1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1162
    iget-object v3, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-wide v3, v3, Lo/getConfiguredChannel;->mayLaunchUrl:J

    iget-object v5, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-wide v5, v5, Lo/getConfiguredChannel;->requestPostMessageChannel:J

    div-long/2addr v3, v5

    long-to-float v3, v3

    add-float/2addr v3, v2

    aput v3, v1, v0

    .line 1163
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    .line 1164
    iget-object v1, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->extraCommand:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1165
    iget-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->updateVisuals:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1166
    iget-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-wide v1, v1, Lo/getConfiguredChannel;->requestPostMessageChannel:J

    iget-object v3, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-wide v3, v3, Lo/getConfiguredChannel;->mayLaunchUrl:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1167
    iget-object v0, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/і;->onPostMessage:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_3

    .line 1169
    iget-object p1, p0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 139
    iget-object v0, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/і;->ICustomTabsCallback$Stub:Lo/getConfiguredChannel;

    iget-boolean v0, v0, Lo/getConfiguredChannel;->postMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x3

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 7031
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 83
    iget-object v1, p0, Lo/і;->ICustomTabsCallback:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    invoke-direct {p0}, Lo/і;->ICustomTabsCallback()V

    .line 85
    invoke-virtual {p0}, Lo/і;->extraCallback()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
