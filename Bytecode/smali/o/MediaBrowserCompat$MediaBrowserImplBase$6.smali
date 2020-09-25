.class final Lo/MediaBrowserCompat$MediaBrowserImplBase$6;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final asBinder:D

.field static extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;


# instance fields
.field ICustomTabsCallback:F

.field ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

.field private ICustomTabsService:F

.field asInterface:Landroid/content/res/ColorStateList;

.field private final extraCommand:I

.field private final getInterfaceDescriptor:Landroid/graphics/RectF;

.field private final mayLaunchUrl:I

.field private newSession:Landroid/graphics/Paint;

.field final onMessageChannelReady:I

.field onNavigationEvent:F

.field onPostMessage:F

.field onRelationshipValidationResult:Z

.field private onTransact:Landroid/graphics/Paint;

.field private requestPostMessageChannel:Z

.field private warmup:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asBinder:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    .line 84
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub:Z

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->requestPostMessageChannel:Z

    .line 93
    sget v1, Lo/isCurrent$onNavigationEvent;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->mayLaunchUrl:I

    .line 94
    sget v1, Lo/isCurrent$onNavigationEvent;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCommand:I

    .line 95
    sget v1, Lo/isCurrent$onMessageChannelReady;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p0, p2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCallback(Landroid/content/res/ColorStateList;)V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    .line 99
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    .line 100
    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-virtual {p0, p4, p5}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady(FF)V

    return-void
.end method

.method static ICustomTabsCallback(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 190
    sget-wide v4, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asBinder:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method static onMessageChannelReady(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float p0, p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 181
    sget-wide v4, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asBinder:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_0
    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 238
    iget-boolean v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2334
    iget v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v4, v4, v5

    .line 2335
    iget-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v12, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    add-float/2addr v6, v12

    iget v12, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    iget v13, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v14, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    sub-float/2addr v13, v14

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    invoke-virtual {v5, v6, v12, v13, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3297
    new-instance v1, Landroid/graphics/RectF;

    iget v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v5, v4

    neg-float v6, v4

    invoke-direct {v1, v5, v6, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3298
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 3299
    iget v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    neg-float v6, v5

    neg-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 3301
    iget-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    if-nez v5, :cond_0

    .line 3302
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    goto :goto_0

    .line 3304
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 3306
    :goto_0
    iget-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3307
    iget-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    iget v6, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3308
    iget-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    iget v6, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 3310
    iget-object v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v10, v9, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 3312
    iget-object v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v1, v8, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 3313
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3314
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    add-float/2addr v4, v1

    div-float/2addr v1, v4

    .line 3315
    iget-object v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RadialGradient;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v6, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget v12, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    add-float v15, v6, v12

    const/4 v6, 0x3

    new-array v12, v6, [I

    iget v9, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->mayLaunchUrl:I

    aput v9, v12, v3

    aput v9, v12, v2

    iget v9, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCommand:I

    const/16 v19, 0x2

    aput v9, v12, v19

    new-array v9, v6, [F

    aput v11, v9, v3

    aput v1, v9, v2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v9, v19

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v12

    move-object v12, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3323
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v21, 0x0

    iget v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v9, v5

    iget v12, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    add-float v22, v9, v12

    const/16 v23, 0x0

    neg-float v5, v5

    sub-float v24, v5, v12

    new-array v5, v6, [I

    iget v9, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->mayLaunchUrl:I

    aput v9, v5, v3

    aput v9, v5, v2

    iget v9, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCommand:I

    aput v9, v5, v19

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v20, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3327
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iput-boolean v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    .line 242
    :cond_1
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    invoke-virtual {v7, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4249
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v4, v1

    iget v5, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    sub-float v12, v4, v5

    .line 4250
    iget v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    div-float/2addr v4, v9

    add-float v13, v1, v4

    .line 4251
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v14, v13, v9

    sub-float/2addr v1, v14

    cmpl-float v1, v1, v11

    if-lez v1, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    .line 4252
    :goto_1
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v14

    cmpl-float v1, v1, v11

    if-lez v1, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 4254
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4255
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4256
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_4

    const/4 v2, 0x0

    .line 4258
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    .line 4259
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v5, v1

    iget-object v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v12

    move v11, v6

    move-object/from16 v6, v17

    .line 4258
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    move v11, v6

    .line 4262
    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4264
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 4265
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4266
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4267
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_5

    const/4 v2, 0x0

    .line 4269
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    .line 4270
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v1, v1

    iget v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    add-float v5, v1, v3

    iget-object v6, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    .line 4269
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4273
    :cond_5
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4275
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 4276
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4277
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4278
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_6

    const/4 v2, 0x0

    .line 4280
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    .line 4281
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v5, v1

    iget-object v6, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    .line 4280
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4283
    :cond_6
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 4286
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 4287
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4288
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->warmup:Landroid/graphics/Path;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_7

    const/4 v2, 0x0

    .line 4290
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    .line 4291
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    neg-float v5, v1

    iget-object v6, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    .line 4290
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4293
    :cond_7
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 244
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    neg-float v1, v1

    div-float/2addr v1, v9

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    sget-object v1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->getInterfaceDescriptor:Landroid/graphics/RectF;

    iget v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget-object v4, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    invoke-interface {v1, v7, v2, v3, v4}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;->onMessageChannelReady(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method final extraCallback(Landroid/content/res/ColorStateList;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asInterface:Landroid/content/res/ColorStateList;

    .line 109
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asInterface:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 9

    .line 170
    iget v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget-boolean v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub:Z

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/high16 v5, 0x3fc00000    # 1.5f

    if-eqz v2, :cond_0

    mul-float v0, v0, v5

    float-to-double v5, v0

    .line 2181
    sget-wide v7, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asBinder:D

    sub-double v7, v3, v7

    float-to-double v0, v1

    mul-double v7, v7, v0

    add-double/2addr v5, v7

    double-to-float v0, v5

    goto :goto_0

    :cond_0
    mul-float v0, v0, v5

    :goto_0
    float-to-double v0, v0

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 172
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    iget v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget-boolean v5, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub:Z

    if-eqz v5, :cond_1

    float-to-double v5, v1

    .line 2190
    sget-wide v7, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asBinder:D

    sub-double/2addr v3, v7

    float-to-double v1, v2

    mul-double v3, v3, v1

    add-double/2addr v5, v3

    double-to-float v1, v5

    :cond_1
    float-to-double v1, v1

    .line 172
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 174
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isStateful()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asInterface:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    return-void
.end method

.method final onMessageChannelReady(FF)V
    .locals 3

    const-string v0, ". Must be >= 0"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_6

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 1117
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    int-to-float p1, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 2117
    rem-int/lit8 v1, p2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    int-to-float p2, p2

    cmpl-float v1, p1, p2

    if-lez v1, :cond_3

    .line 154
    iget-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->requestPostMessageChannel:Z

    if-nez p1, :cond_2

    .line 155
    iput-boolean v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->requestPostMessageChannel:Z

    :cond_2
    move p1, p2

    .line 158
    :cond_3
    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_4

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_4

    return-void

    .line 161
    :cond_4
    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    .line 162
    iput p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float p1, p1, p2

    .line 163
    iget p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsService:F

    .line 164
    iput-boolean v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 147
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid max shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .line 198
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asInterface:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 199
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    .line 204
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
