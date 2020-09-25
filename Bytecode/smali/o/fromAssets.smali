.class public final Lo/fromAssets;
.super Lo/Sequence;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:Landroid/graphics/Matrix;

.field public extraCallback:Ljava/lang/Object;

.field public onMessageChannelReady:Landroid/graphics/PointF;

.field private onNavigationEvent:I

.field public onPostMessage:Lo/setFailureListener$extraCallback;

.field private onRelationshipValidationResult:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lo/setFailureListener$extraCallback;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/Sequence;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iput-object v0, p0, Lo/fromAssets;->onMessageChannelReady:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lo/fromAssets;->onNavigationEvent:I

    .line 39
    iput p1, p0, Lo/fromAssets;->ICustomTabsCallback:I

    .line 45
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lo/fromAssets;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    .line 55
    iput-object p2, p0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    return-void

    .line 1215
    :cond_0
    throw v0
.end method

.method private onMessageChannelReady()V
    .locals 5

    .line 160
    iget-object v0, p0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    instance-of v1, v0, Lo/setFailureListener$warmup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 161
    check-cast v0, Lo/setFailureListener$warmup;

    invoke-interface {v0}, Lo/setFailureListener$warmup;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 163
    :goto_1
    iput-object v0, p0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 165
    :goto_2
    iget v0, p0, Lo/fromAssets;->onNavigationEvent:I

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-ne v0, v4, :cond_4

    iget v0, p0, Lo/fromAssets;->ICustomTabsCallback:I

    .line 167
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v0, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-eqz v1, :cond_6

    .line 169
    :cond_5
    invoke-virtual {p0}, Lo/fromAssets;->ICustomTabsCallback()V

    :cond_6
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 8

    .line 179
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 182
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lo/fromAssets;->onNavigationEvent:I

    .line 184
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lo/fromAssets;->ICustomTabsCallback:I

    const/4 v6, 0x0

    if-lez v4, :cond_5

    if-gtz v5, :cond_0

    goto :goto_2

    :cond_0
    if-ne v4, v1, :cond_1

    if-ne v5, v2, :cond_1

    .line 195
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 196
    iput-object v6, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    sget-object v2, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    if-ne v1, v2, :cond_2

    .line 203
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 204
    iput-object v6, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    iget-object v1, p0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    iget-object v2, p0, Lo/fromAssets;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    iget-object v0, p0, Lo/fromAssets;->onMessageChannelReady:Landroid/graphics/PointF;

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iget-object v7, p0, Lo/fromAssets;->onMessageChannelReady:Landroid/graphics/PointF;

    if-eqz v7, :cond_4

    iget v6, v7, Landroid/graphics/PointF;->y:F

    move v7, v6

    goto :goto_1

    :cond_4
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_1
    move v6, v0

    invoke-interface/range {v1 .. v7}, Lo/setFailureListener$extraCallback;->ICustomTabsCallback(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 217
    iget-object v0, p0, Lo/fromAssets;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    iput-object v0, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    return-void

    .line 188
    :cond_5
    :goto_2
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    iput-object v6, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/graphics/Matrix;)V
    .locals 1

    .line 227
    invoke-virtual {p0, p1}, Lo/fromAssets;->onPostMessage(Landroid/graphics/Matrix;)V

    .line 230
    invoke-direct {p0}, Lo/fromAssets;->onMessageChannelReady()V

    .line 231
    iget-object v0, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Lo/fromAssets;->onMessageChannelReady()V

    .line 141
    iget-object v0, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 144
    iget-object v1, p0, Lo/fromAssets;->asBinder:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 145
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 149
    :cond_0
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lo/fromAssets;->ICustomTabsCallback()V

    return-void
.end method

.method public final onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lo/Sequence;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lo/fromAssets;->ICustomTabsCallback()V

    return-object p1
.end method
