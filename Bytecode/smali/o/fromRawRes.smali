.class public final Lo/fromRawRes;
.super Lo/Sequence;
.source ""

# interfaces
.implements Lo/enableMergePathsForKitKatAndAbove;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromRawRes$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:F

.field private ICustomTabsCallback$Stub$Proxy:F

.field private final ICustomTabsService:Landroid/graphics/Path;

.field private asBinder:Landroid/graphics/Paint;

.field private asInterface:Z

.field private extraCallback:Landroid/graphics/RectF;

.field private getInterfaceDescriptor:Z

.field private final mayLaunchUrl:Landroid/graphics/Path;

.field private newSession:Z

.field private onMessageChannelReady:Landroid/graphics/Matrix;

.field private onNavigationEvent:Lo/fromRawRes$ICustomTabsCallback;

.field private final onPostMessage:Landroid/graphics/RectF;

.field private onRelationshipValidationResult:[F

.field private final onTransact:[F

.field private final postMessage:Landroid/graphics/RectF;

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/Sequence;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 38
    sget-object p1, Lo/fromRawRes$ICustomTabsCallback;->onPostMessage:Lo/fromRawRes$ICustomTabsCallback;

    iput-object p1, p0, Lo/fromRawRes;->onNavigationEvent:Lo/fromRawRes$ICustomTabsCallback;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    const/16 p1, 0x8

    new-array v0, p1, [F

    .line 42
    iput-object v0, p0, Lo/fromRawRes;->onTransact:[F

    new-array p1, p1, [F

    .line 43
    iput-object p1, p0, Lo/fromRawRes;->onRelationshipValidationResult:[F

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lo/fromRawRes;->asInterface:Z

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    .line 47
    iput p1, p0, Lo/fromRawRes;->warmup:I

    .line 48
    iput p1, p0, Lo/fromRawRes;->ICustomTabsCallback:I

    .line 49
    iput v0, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub$Proxy:F

    .line 50
    iput-boolean p1, p0, Lo/fromRawRes;->newSession:Z

    .line 51
    iput-boolean p1, p0, Lo/fromRawRes;->getInterfaceDescriptor:Z

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    .line 53
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/fromRawRes;->mayLaunchUrl:Landroid/graphics/Path;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method private extraCallback()V
    .locals 6

    .line 231
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v0, p0, Lo/fromRawRes;->mayLaunchUrl:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 233
    iget-object v0, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 235
    iget-object v0, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    iget v1, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub$Proxy:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 236
    iget-object v0, p0, Lo/fromRawRes;->onNavigationEvent:Lo/fromRawRes$ICustomTabsCallback;

    sget-object v1, Lo/fromRawRes$ICustomTabsCallback;->onPostMessage:Lo/fromRawRes$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v1, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 239
    :cond_0
    iget-boolean v0, p0, Lo/fromRawRes;->asInterface:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v2, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    .line 241
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    .line 242
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    .line 243
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 240
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v2, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    iget-object v3, p0, Lo/fromRawRes;->onTransact:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    iget v2, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub$Proxy:F

    neg-float v3, v2

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 250
    iget-object v0, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    iget v2, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 251
    iget-boolean v0, p0, Lo/fromRawRes;->asInterface:Z

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v1

    .line 253
    iget-object v2, p0, Lo/fromRawRes;->mayLaunchUrl:Landroid/graphics/Path;

    iget-object v3, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    .line 254
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 253
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 256
    :goto_1
    iget-object v2, p0, Lo/fromRawRes;->onRelationshipValidationResult:[F

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 257
    iget-object v3, p0, Lo/fromRawRes;->onTransact:[F

    aget v3, v3, v0

    iget v4, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub$Proxy:F

    add-float/2addr v3, v4

    iget v4, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_3
    iget-object v0, p0, Lo/fromRawRes;->mayLaunchUrl:Landroid/graphics/Path;

    iget-object v3, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 261
    :goto_2
    iget-object v0, p0, Lo/fromRawRes;->postMessage:Landroid/graphics/RectF;

    iget v2, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lo/fromRawRes;->newSession:Z

    .line 192
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    .line 193
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 266
    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 267
    sget-object v0, Lo/fromRawRes$5;->onPostMessage:[I

    iget-object v1, p0, Lo/fromRawRes;->onNavigationEvent:Lo/fromRawRes$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 275
    :cond_0
    iget-boolean v0, p0, Lo/fromRawRes;->newSession:Z

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lo/fromRawRes;->extraCallback:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lo/fromRawRes;->extraCallback:Landroid/graphics/RectF;

    .line 278
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/fromRawRes;->onMessageChannelReady:Landroid/graphics/Matrix;

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 282
    :goto_0
    iget-object v0, p0, Lo/fromRawRes;->extraCallback:Landroid/graphics/RectF;

    iget v1, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 283
    iget-object v0, p0, Lo/fromRawRes;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/fromRawRes;->extraCallback:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 287
    iget-object v1, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 288
    iget-object v1, p0, Lo/fromRawRes;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 289
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    .line 290
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 292
    :cond_2
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    .line 295
    :goto_1
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    iget v1, p0, Lo/fromRawRes;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 298
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    .line 2221
    iget-boolean v2, p0, Lo/fromRawRes;->getInterfaceDescriptor:Z

    .line 298
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 299
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 300
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    iget-object v2, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    iget-boolean v0, p0, Lo/fromRawRes;->asInterface:Z

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 306
    iget-object v3, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 308
    iget-object v2, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v7, v2, v0

    iget-object v2, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 310
    iget-object v2, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v5, v2, v0

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    cmpl-float v0, v3, v1

    if-lez v0, :cond_5

    .line 314
    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v0, v3

    iget-object v9, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 316
    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v0, v3

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lo/fromRawRes;->onPostMessage:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 269
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 270
    iget-object v1, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 271
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    .line 272
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 323
    :cond_5
    :goto_2
    iget v0, p0, Lo/fromRawRes;->warmup:I

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    iget v1, p0, Lo/fromRawRes;->warmup:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v0, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    iget v1, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget-object v0, p0, Lo/fromRawRes;->ICustomTabsService:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 328
    iget-object v0, p0, Lo/fromRawRes;->mayLaunchUrl:Landroid/graphics/Path;

    iget-object v1, p0, Lo/fromRawRes;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public final extraCallback(F)V
    .locals 0

    .line 173
    iput p1, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub$Proxy:F

    .line 174
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lo/Sequence;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 227
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 0

    .line 153
    iput p1, p0, Lo/fromRawRes;->warmup:I

    .line 154
    iput p2, p0, Lo/fromRawRes;->ICustomTabsCallback$Stub:F

    .line 155
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    .line 156
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    .line 212
    iget-boolean p1, p0, Lo/fromRawRes;->getInterfaceDescriptor:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lo/fromRawRes;->getInterfaceDescriptor:Z

    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady([F)V
    .locals 3

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lo/fromRawRes;->onTransact:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 117
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

    .line 118
    iget-object v0, p0, Lo/fromRawRes;->onTransact:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_1
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    .line 121
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

    .line 83
    iput-boolean p1, p0, Lo/fromRawRes;->asInterface:Z

    .line 84
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    .line 85
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/fromRawRes;->onTransact:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 102
    invoke-direct {p0}, Lo/fromRawRes;->extraCallback()V

    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
