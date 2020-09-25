.class public final Lo/setCacheComposition;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/enableMergePathsForKitKatAndAbove;


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:F

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Landroid/graphics/Path;

.field private asBinder:Z

.field private asInterface:I

.field private extraCallback:Landroid/graphics/Paint;

.field private getInterfaceDescriptor:I

.field private final newSession:Landroid/graphics/RectF;

.field private onMessageChannelReady:[F

.field private onNavigationEvent:[F

.field private final onPostMessage:[F

.field private onRelationshipValidationResult:Z

.field private onTransact:F

.field private warmup:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 27
    iput-object v1, p0, Lo/setCacheComposition;->onPostMessage:[F

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lo/setCacheComposition;->onMessageChannelReady:[F

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lo/setCacheComposition;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    .line 33
    iput v1, p0, Lo/setCacheComposition;->onTransact:F

    .line 34
    iput v0, p0, Lo/setCacheComposition;->asInterface:I

    .line 35
    iput-boolean v0, p0, Lo/setCacheComposition;->onRelationshipValidationResult:Z

    .line 36
    iput-boolean v0, p0, Lo/setCacheComposition;->asBinder:Z

    .line 37
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lo/setCacheComposition;->warmup:Landroid/graphics/Path;

    .line 38
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lo/setCacheComposition;->ICustomTabsService:Landroid/graphics/Path;

    .line 39
    iput v0, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub$Proxy:I

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    const/16 v0, 0xff

    .line 41
    iput v0, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    .line 1167
    iget v0, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub$Proxy:I

    if-eq v0, p1, :cond_0

    .line 1168
    iput p1, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub$Proxy:I

    .line 1169
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method private extraCallback()V
    .locals 7

    .line 315
    iget-object v0, p0, Lo/setCacheComposition;->warmup:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 316
    iget-object v0, p0, Lo/setCacheComposition;->ICustomTabsService:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 317
    iget-object v0, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 319
    iget-object v0, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    iget v1, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 320
    iget-boolean v0, p0, Lo/setCacheComposition;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 322
    iget-object v3, p0, Lo/setCacheComposition;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    iget-object v3, p0, Lo/setCacheComposition;->onMessageChannelReady:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 325
    iget-object v4, p0, Lo/setCacheComposition;->onPostMessage:[F

    aget v4, v4, v0

    iget v5, p0, Lo/setCacheComposition;->onTransact:F

    add-float/2addr v4, v5

    iget v5, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lo/setCacheComposition;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 329
    :goto_1
    iget-object v0, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    iget v3, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 331
    iget v0, p0, Lo/setCacheComposition;->onTransact:F

    iget-boolean v3, p0, Lo/setCacheComposition;->onRelationshipValidationResult:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 332
    iget-object v3, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 333
    iget-boolean v3, p0, Lo/setCacheComposition;->ICustomTabsCallback:Z

    if-eqz v3, :cond_3

    .line 334
    iget-object v1, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    .line 335
    iget-object v2, p0, Lo/setCacheComposition;->warmup:Landroid/graphics/Path;

    iget-object v3, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 336
    :cond_3
    iget-boolean v2, p0, Lo/setCacheComposition;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_6

    .line 337
    iget-object v2, p0, Lo/setCacheComposition;->onNavigationEvent:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 338
    iput-object v2, p0, Lo/setCacheComposition;->onNavigationEvent:[F

    .line 340
    :cond_4
    :goto_3
    iget-object v2, p0, Lo/setCacheComposition;->onNavigationEvent:[F

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 341
    iget-object v3, p0, Lo/setCacheComposition;->onPostMessage:[F

    aget v3, v3, v1

    iget v4, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 343
    :cond_5
    iget-object v1, p0, Lo/setCacheComposition;->warmup:Landroid/graphics/Path;

    iget-object v3, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 345
    :cond_6
    iget-object v1, p0, Lo/setCacheComposition;->warmup:Landroid/graphics/Path;

    iget-object v2, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    iget-object v3, p0, Lo/setCacheComposition;->onPostMessage:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 347
    :goto_4
    iget-object v1, p0, Lo/setCacheComposition;->newSession:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 0

    .line 236
    iget-boolean p1, p0, Lo/setCacheComposition;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lo/setCacheComposition;->onRelationshipValidationResult:Z

    .line 238
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    iget v1, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub$Proxy:I

    iget v2, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    invoke-static {v1, v2}, Lo/SequenceJsonAdapter;->onPostMessage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    .line 1268
    iget-boolean v1, p0, Lo/setCacheComposition;->asBinder:Z

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 97
    iget-object v0, p0, Lo/setCacheComposition;->warmup:Landroid/graphics/Path;

    iget-object v1, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    iget v0, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    iget v1, p0, Lo/setCacheComposition;->asInterface:I

    iget v2, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    invoke-static {v1, v2}, Lo/SequenceJsonAdapter;->onPostMessage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    iget v1, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lo/setCacheComposition;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v1, p0, Lo/setCacheComposition;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(F)V
    .locals 1

    .line 216
    iget v0, p0, Lo/setCacheComposition;->onTransact:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 217
    iput p1, p0, Lo/setCacheComposition;->onTransact:F

    .line 218
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 291
    iget v0, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    return v0
.end method

.method public final getOpacity()I
    .locals 2

    .line 311
    iget v0, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub$Proxy:I

    iget v1, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    invoke-static {v0, v1}, Lo/SequenceJsonAdapter;->onPostMessage(II)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    const/4 v0, -0x3

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 89
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 1

    .line 190
    iget v0, p0, Lo/setCacheComposition;->asInterface:I

    if-eq v0, p1, :cond_0

    .line 191
    iput p1, p0, Lo/setCacheComposition;->asInterface:I

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 195
    :cond_0
    iget p1, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 196
    iput p2, p0, Lo/setCacheComposition;->ICustomTabsCallback$Stub:F

    .line 197
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    .line 259
    iget-boolean p1, p0, Lo/setCacheComposition;->asBinder:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 260
    iput-boolean p1, p0, Lo/setCacheComposition;->asBinder:Z

    .line 261
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady([F)V
    .locals 3

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lo/setCacheComposition;->onPostMessage:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 135
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lo/setCacheComposition;->onPostMessage:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :goto_1
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 2125
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "radii should have exactly 8 values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lo/setCacheComposition;->ICustomTabsCallback:Z

    .line 114
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 156
    iget-object v0, p0, Lo/setCacheComposition;->onPostMessage:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 157
    invoke-direct {p0}, Lo/setCacheComposition;->extraCallback()V

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 278
    iget v0, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    if-eq p1, v0, :cond_0

    .line 279
    iput p1, p0, Lo/setCacheComposition;->getInterfaceDescriptor:I

    .line 280
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
