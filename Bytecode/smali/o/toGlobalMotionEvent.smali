.class public Lo/toGlobalMotionEvent;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/getShowDividers$onNavigationEvent;
.implements Landroid/graphics/drawable/Animatable;
.implements Lo/MediaSessionCompatApi22;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/toGlobalMotionEvent$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:I

.field private asBinder:Landroid/graphics/Paint;

.field private asInterface:I

.field private extraCallback:Z

.field onMessageChannelReady:Z

.field public final onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Landroid/graphics/Rect;

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setSupportImageTintList;Lo/AppCompatRadioButton;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setSupportImageTintList;",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 128
    new-instance v0, Lo/toGlobalMotionEvent$extraCallback;

    new-instance v8, Lo/getShowDividers;

    .line 132
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lo/getShowDividers;-><init>(Lcom/bumptech/glide/Glide;Lo/setSupportImageTintList;IILo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lo/toGlobalMotionEvent$extraCallback;-><init>(Lo/getShowDividers;)V

    .line 128
    invoke-direct {p0, v0}, Lo/toGlobalMotionEvent;-><init>(Lo/toGlobalMotionEvent$extraCallback;)V

    return-void
.end method

.method constructor <init>(Lo/toGlobalMotionEvent$extraCallback;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback:Z

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lo/toGlobalMotionEvent;->asInterface:I

    .line 141
    check-cast p1, Lo/toGlobalMotionEvent$extraCallback;

    iput-object p1, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    return-void
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 218
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->onMessageChannelReady:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 3163
    iget-object v0, v0, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v0}, Lo/setSupportImageTintList;->extraCallback()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->onPostMessage:Z

    if-nez v0, :cond_1

    .line 226
    iput-boolean v1, p0, Lo/toGlobalMotionEvent;->onPostMessage:Z

    .line 227
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    invoke-virtual {v0, p0}, Lo/getShowDividers;->ICustomTabsCallback(Lo/getShowDividers$onNavigationEvent;)V

    .line 228
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void

    .line 3017
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 281
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->onTransact:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x77

    .line 286
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 6305
    iget-object v4, p0, Lo/toGlobalMotionEvent;->onRelationshipValidationResult:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 6306
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lo/toGlobalMotionEvent;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 6308
    :cond_1
    iget-object v4, p0, Lo/toGlobalMotionEvent;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 286
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lo/toGlobalMotionEvent;->onTransact:Z

    .line 290
    :cond_2
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 7205
    iget-object v1, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    .line 7328
    iget-object v0, v0, Lo/getShowDividers$ICustomTabsCallback;->onPostMessage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 7205
    :cond_3
    iget-object v0, v0, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v1, 0x0

    .line 8305
    iget-object v2, p0, Lo/toGlobalMotionEvent;->onRelationshipValidationResult:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    .line 8306
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lo/toGlobalMotionEvent;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 8308
    :cond_4
    iget-object v2, p0, Lo/toGlobalMotionEvent;->onRelationshipValidationResult:Landroid/graphics/Rect;

    .line 8312
    iget-object v3, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    if-nez v3, :cond_5

    .line 8313
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    .line 8315
    :cond_5
    iget-object v3, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    .line 291
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 10326
    invoke-virtual {p0}, Lo/toGlobalMotionEvent;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 10327
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 10328
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lo/toGlobalMotionEvent;->stop()V

    .line 337
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11184
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 12155
    iget-object v1, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lo/getShowDividers;->asBinder:Lo/getShowDividers$ICustomTabsCallback;

    iget v0, v0, Lo/getShowDividers$ICustomTabsCallback;->onNavigationEvent:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 12174
    :goto_1
    iget-object v1, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v1, v1, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 13163
    iget-object v1, v1, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {v1}, Lo/setSupportImageTintList;->extraCallback()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 344
    iget v0, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback$Stub:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback$Stub:I

    .line 347
    :cond_3
    iget v0, p0, Lo/toGlobalMotionEvent;->asInterface:I

    if-eq v0, v2, :cond_4

    iget v1, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback$Stub:I

    if-lt v1, v0, :cond_4

    .line 349
    invoke-virtual {p0}, Lo/toGlobalMotionEvent;->stop()V

    :cond_4
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 363
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 260
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 6147
    iget v0, v0, Lo/getShowDividers;->warmup:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 255
    iget-object v0, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v0, v0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 6143
    iget v0, v0, Lo/getShowDividers;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->onPostMessage:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lo/toGlobalMotionEvent;->onTransact:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 9312
    iget-object v0, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 9313
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    .line 9315
    :cond_0
    iget-object v0, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    .line 296
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 10312
    iget-object v0, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 10313
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    .line 10315
    :cond_0
    iget-object v0, p0, Lo/toGlobalMotionEvent;->asBinder:Landroid/graphics/Paint;

    .line 301
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 3

    .line 239
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->onMessageChannelReady:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 244
    iput-boolean p1, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 4233
    iput-boolean v0, p0, Lo/toGlobalMotionEvent;->onPostMessage:Z

    .line 4234
    iget-object v1, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v1, v1, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 5136
    iget-object v2, v1, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5137
    iget-object v2, v1, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5181
    iput-boolean v0, v1, Lo/getShowDividers;->onNavigationEvent:Z

    goto :goto_0

    .line 247
    :cond_0
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->extraCallback:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lo/toGlobalMotionEvent;->onNavigationEvent()V

    .line 250
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 4017
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lo/toGlobalMotionEvent;->extraCallback:Z

    const/4 v0, 0x0

    .line 1188
    iput v0, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback$Stub:I

    .line 206
    iget-boolean v0, p0, Lo/toGlobalMotionEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lo/toGlobalMotionEvent;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lo/toGlobalMotionEvent;->extraCallback:Z

    .line 1233
    iput-boolean v0, p0, Lo/toGlobalMotionEvent;->onPostMessage:Z

    .line 1234
    iget-object v1, p0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v1, v1, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 2136
    iget-object v2, v1, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2137
    iget-object v2, v1, Lo/getShowDividers;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2181
    iput-boolean v0, v1, Lo/getShowDividers;->onNavigationEvent:Z

    :cond_0
    return-void
.end method
