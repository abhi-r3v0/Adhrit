.class public abstract Lo/setFallbackResource;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/enableMergePathsForKitKatAndAbove;
.implements Lo/setAnimationFromJson;


# instance fields
.field protected final ICustomTabsCallback:Landroid/graphics/Path;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

.field private ICustomTabsService:[F

.field private ICustomTabsService$Stub:Landroid/graphics/Matrix;

.field private ICustomTabsService$Stub$Proxy:F

.field private INotificationSideChannel:Z

.field private IPostMessageService:Landroid/graphics/Matrix;

.field private IPostMessageService$Stub:Landroid/graphics/Matrix;

.field private asBinder:Z

.field private final asInterface:Landroid/graphics/drawable/Drawable;

.field private cancel:Z

.field private cancelAll:Z

.field protected extraCallback:F

.field private extraCommand:Landroid/graphics/Matrix;

.field private getInterfaceDescriptor:[F

.field private mayLaunchUrl:Landroid/graphics/Matrix;

.field private newSession:Landroid/graphics/RectF;

.field private notify:Lo/setComposition;

.field protected onMessageChannelReady:Z

.field protected onNavigationEvent:I

.field protected final onPostMessage:Landroid/graphics/Path;

.field final onRelationshipValidationResult:Landroid/graphics/Matrix;

.field final onTransact:Landroid/graphics/Matrix;

.field private postMessage:Landroid/graphics/RectF;

.field private requestPostMessageChannel:Landroid/graphics/RectF;

.field private updateVisuals:Landroid/graphics/RectF;

.field private validateRelationship:Landroid/graphics/Matrix;

.field private final warmup:[F


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lo/setFallbackResource;->asBinder:Z

    .line 42
    iput-boolean v0, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lo/setFallbackResource;->extraCallback:F

    .line 44
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lo/setFallbackResource;->onMessageChannelReady:Z

    .line 46
    iput v0, p0, Lo/setFallbackResource;->onNavigationEvent:I

    .line 47
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->ICustomTabsCallback:Landroid/graphics/Path;

    const/16 v3, 0x8

    new-array v4, v3, [F

    .line 49
    iput-object v4, p0, Lo/setFallbackResource;->warmup:[F

    new-array v3, v3, [F

    .line 50
    iput-object v3, p0, Lo/setFallbackResource;->getInterfaceDescriptor:[F

    .line 53
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    .line 54
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    .line 55
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 56
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->postMessage:Landroid/graphics/RectF;

    .line 59
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->extraCommand:Landroid/graphics/Matrix;

    .line 60
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->mayLaunchUrl:Landroid/graphics/Matrix;

    .line 62
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    .line 63
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->IPostMessageService:Landroid/graphics/Matrix;

    .line 64
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->onTransact:Landroid/graphics/Matrix;

    .line 69
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lo/setFallbackResource;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    .line 70
    iput v1, p0, Lo/setFallbackResource;->ICustomTabsService$Stub$Proxy:F

    .line 71
    iput-boolean v0, p0, Lo/setFallbackResource;->cancel:Z

    .line 72
    iput-boolean v0, p0, Lo/setFallbackResource;->cancelAll:Z

    .line 74
    iput-boolean v2, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 38
    iput-object p1, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setComposition;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lo/setFallbackResource;->notify:Lo/setComposition;

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    .line 195
    iget-boolean p1, p0, Lo/setFallbackResource;->cancel:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lo/setFallbackResource;->cancel:Z

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method ICustomTabsCallback()Z
    .locals 2

    .line 341
    iget-boolean v0, p0, Lo/setFallbackResource;->asBinder:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    iget v0, p0, Lo/setFallbackResource;->extraCallback:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    .line 383
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 399
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 402
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 403
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method protected final extraCallback()V
    .locals 4

    .line 237
    iget-object v0, p0, Lo/setFallbackResource;->notify:Lo/setComposition;

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lo/setComposition;->ICustomTabsCallback(Landroid/graphics/Matrix;)V

    .line 239
    iget-object v0, p0, Lo/setFallbackResource;->notify:Lo/setComposition;

    iget-object v1, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lo/setComposition;->onMessageChannelReady(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 242
    iget-object v0, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 245
    :goto_0
    iget-object v0, p0, Lo/setFallbackResource;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    iget-object v0, p0, Lo/setFallbackResource;->postMessage:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 247
    iget-object v0, p0, Lo/setFallbackResource;->extraCommand:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/setFallbackResource;->requestPostMessageChannel:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/setFallbackResource;->postMessage:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 248
    iget-boolean v0, p0, Lo/setFallbackResource;->cancel:Z

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lo/setFallbackResource;->updateVisuals:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lo/setFallbackResource;->updateVisuals:Landroid/graphics/RectF;

    goto :goto_1

    .line 252
    :cond_1
    iget-object v1, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 254
    :goto_1
    iget-object v0, p0, Lo/setFallbackResource;->updateVisuals:Landroid/graphics/RectF;

    iget v1, p0, Lo/setFallbackResource;->extraCallback:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 255
    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 256
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    .line 258
    :cond_2
    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/setFallbackResource;->updateVisuals:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_2

    .line 260
    :cond_3
    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 264
    :cond_4
    :goto_2
    iget-object v0, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/setFallbackResource;->IPostMessageService:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/setFallbackResource;->extraCommand:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->mayLaunchUrl:Landroid/graphics/Matrix;

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lo/setFallbackResource;->validateRelationship:Landroid/graphics/Matrix;

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 268
    :cond_5
    iput-boolean v1, p0, Lo/setFallbackResource;->onMessageChannelReady:Z

    .line 270
    iget-object v0, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->onTransact:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 271
    iget-object v0, p0, Lo/setFallbackResource;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 272
    iget-boolean v0, p0, Lo/setFallbackResource;->cancel:Z

    if-eqz v0, :cond_6

    .line 273
    iget-object v0, p0, Lo/setFallbackResource;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 275
    :cond_6
    iget-object v0, p0, Lo/setFallbackResource;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->extraCommand:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 277
    iget-object v0, p0, Lo/setFallbackResource;->IPostMessageService:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->IPostMessageService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 278
    iget-object v0, p0, Lo/setFallbackResource;->mayLaunchUrl:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->extraCommand:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 279
    iget-boolean v0, p0, Lo/setFallbackResource;->cancel:Z

    if-eqz v0, :cond_8

    .line 280
    iget-object v0, p0, Lo/setFallbackResource;->validateRelationship:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 281
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lo/setFallbackResource;->validateRelationship:Landroid/graphics/Matrix;

    goto :goto_3

    .line 283
    :cond_7
    iget-object v2, p0, Lo/setFallbackResource;->ICustomTabsService$Stub:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 285
    :cond_8
    iget-object v0, p0, Lo/setFallbackResource;->validateRelationship:Landroid/graphics/Matrix;

    if-eqz v0, :cond_9

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 290
    :cond_9
    :goto_3
    iget-object v0, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 291
    iput-boolean v1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 292
    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_a
    return-void
.end method

.method public final extraCallback(F)V
    .locals 1

    .line 175
    iget v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub$Proxy:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 176
    iput p1, p0, Lo/setFallbackResource;->ICustomTabsService$Stub$Proxy:F

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 178
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 389
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 378
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 356
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 351
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 361
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 1

    .line 148
    iget v0, p0, Lo/setFallbackResource;->onNavigationEvent:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/setFallbackResource;->extraCallback:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    iput p1, p0, Lo/setFallbackResource;->onNavigationEvent:I

    .line 150
    iput p2, p0, Lo/setFallbackResource;->extraCallback:F

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 152
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    .line 218
    iget-boolean p1, p0, Lo/setFallbackResource;->cancelAll:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lo/setFallbackResource;->cancelAll:Z

    .line 220
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady([F)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lo/setFallbackResource;->warmup:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 121
    iput-boolean v2, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    goto :goto_3

    .line 123
    :cond_0
    array-length v3, p1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 124
    iget-object v3, p0, Lo/setFallbackResource;->warmup:[F

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-boolean v2, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 127
    iget-boolean v5, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    aget v6, p1, v3

    cmpl-float v6, v6, v0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    :cond_3
    :goto_3
    iput-boolean v1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 2125
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "radii should have exactly 8 values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lo/setFallbackResource;->cancelAll:Z

    return v0
.end method

.method protected final onNavigationEvent()V
    .locals 8

    .line 297
    iget-boolean v0, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    if-eqz v0, :cond_7

    .line 298
    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 299
    iget-object v0, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    iget v1, p0, Lo/setFallbackResource;->extraCallback:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 300
    iget-boolean v0, p0, Lo/setFallbackResource;->asBinder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v2

    .line 302
    iget-object v3, p0, Lo/setFallbackResource;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    .line 303
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 302
    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v3, p0, Lo/setFallbackResource;->getInterfaceDescriptor:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 306
    iget-object v4, p0, Lo/setFallbackResource;->warmup:[F

    aget v4, v4, v0

    iget v5, p0, Lo/setFallbackResource;->ICustomTabsService$Stub$Proxy:F

    add-float/2addr v4, v5

    iget v5, p0, Lo/setFallbackResource;->extraCallback:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lo/setFallbackResource;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 310
    :goto_1
    iget-object v0, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    iget v3, p0, Lo/setFallbackResource;->extraCallback:F

    neg-float v4, v3

    div-float/2addr v4, v2

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 312
    iget-object v0, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 313
    iget v0, p0, Lo/setFallbackResource;->ICustomTabsService$Stub$Proxy:F

    iget-boolean v3, p0, Lo/setFallbackResource;->cancel:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lo/setFallbackResource;->extraCallback:F

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-float/2addr v0, v3

    .line 314
    iget-object v3, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 315
    iget-boolean v3, p0, Lo/setFallbackResource;->asBinder:Z

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    .line 317
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    .line 318
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    .line 319
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 316
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 321
    :cond_3
    iget-boolean v2, p0, Lo/setFallbackResource;->cancel:Z

    if-eqz v2, :cond_6

    .line 322
    iget-object v2, p0, Lo/setFallbackResource;->ICustomTabsService:[F

    if-nez v2, :cond_4

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 323
    iput-object v2, p0, Lo/setFallbackResource;->ICustomTabsService:[F

    :cond_4
    const/4 v2, 0x0

    .line 325
    :goto_3
    iget-object v3, p0, Lo/setFallbackResource;->getInterfaceDescriptor:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 326
    iget-object v3, p0, Lo/setFallbackResource;->ICustomTabsService:[F

    iget-object v4, p0, Lo/setFallbackResource;->warmup:[F

    aget v4, v4, v2

    iget v5, p0, Lo/setFallbackResource;->extraCallback:F

    sub-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 328
    :cond_5
    iget-object v2, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    iget-object v3, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/setFallbackResource;->ICustomTabsService:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 330
    :cond_6
    iget-object v2, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    iget-object v3, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/setFallbackResource;->warmup:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 332
    :goto_4
    iget-object v2, p0, Lo/setFallbackResource;->newSession:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 333
    iget-object v0, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 334
    iput-boolean v1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    :cond_7
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lo/setFallbackResource;->asBinder:Z

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 105
    iget-object v0, p0, Lo/setFallbackResource;->warmup:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lo/setFallbackResource;->ICustomTabsCallback$Stub:Z

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lo/setFallbackResource;->INotificationSideChannel:Z

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 394
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lo/setFallbackResource;->asInterface:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
