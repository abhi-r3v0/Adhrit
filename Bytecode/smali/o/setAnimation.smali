.class public final Lo/setAnimation;
.super Lo/Sequence;
.source ""


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/RectF;

.field private final extraCallback:Landroid/graphics/Matrix;

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/Sequence;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lo/setAnimation;->extraCallback:Landroid/graphics/Matrix;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 49
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    .line 50
    rem-int/lit8 p1, p2, 0x5a

    sub-int/2addr p2, p1

    iput p2, p0, Lo/setAnimation;->onMessageChannelReady:I

    if-ltz p3, :cond_0

    const/16 p1, 0x8

    if-gt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 51
    :goto_0
    iput p3, p0, Lo/setAnimation;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Matrix;)V
    .locals 1

    .line 136
    invoke-virtual {p0, p1}, Lo/setAnimation;->onPostMessage(Landroid/graphics/Matrix;)V

    .line 137
    iget-object v0, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 59
    iget v0, p0, Lo/setAnimation;->onMessageChannelReady:I

    if-gtz v0, :cond_1

    iget v0, p0, Lo/setAnimation;->onNavigationEvent:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 66
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 67
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 84
    iget v0, p0, Lo/setAnimation;->onNavigationEvent:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/setAnimation;->onMessageChannelReady:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0}, Lo/Sequence;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 87
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/Sequence;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 73
    iget v0, p0, Lo/setAnimation;->onNavigationEvent:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/setAnimation;->onMessageChannelReady:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-super {p0}, Lo/Sequence;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 76
    :cond_1
    :goto_0
    invoke-super {p0}, Lo/Sequence;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    iget v1, p0, Lo/setAnimation;->onMessageChannelReady:I

    if-gtz v1, :cond_1

    iget v1, p0, Lo/setAnimation;->onNavigationEvent:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    .line 99
    :cond_1
    :goto_0
    iget v1, p0, Lo/setAnimation;->onNavigationEvent:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    const/high16 v5, 0x43870000    # 270.0f

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 115
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    iget v2, p0, Lo/setAnimation;->onMessageChannelReady:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 108
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 104
    :cond_3
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 111
    :cond_4
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 112
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 101
    :cond_5
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 120
    :goto_1
    iget-object v1, p0, Lo/setAnimation;->extraCallback:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 121
    iget-object v1, p0, Lo/setAnimation;->onPostMessage:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setAnimation;->extraCallback:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 122
    iget-object v1, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 123
    iget-object p1, p0, Lo/setAnimation;->extraCallback:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 124
    iget-object p1, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget-object v1, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lo/setAnimation;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
