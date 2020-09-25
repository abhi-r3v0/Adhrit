.class public final Lo/onVisibilityChanged;
.super Lo/Sequence;
.source ""


# instance fields
.field private extraCallback:I

.field private onNavigationEvent:I

.field private onPostMessage:Landroid/graphics/Matrix;


# direct methods
.method private onMessageChannelReady()V
    .locals 5

    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lo/onVisibilityChanged;->extraCallback:I

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lo/onVisibilityChanged;->onNavigationEvent:I

    const/4 v4, 0x0

    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iput-object v4, p0, Lo/onVisibilityChanged;->onPostMessage:Landroid/graphics/Matrix;

    return-void

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    iput-object v4, p0, Lo/onVisibilityChanged;->onPostMessage:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Matrix;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lo/Sequence;->ICustomTabsCallback(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1092
    iget v0, p0, Lo/onVisibilityChanged;->extraCallback:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/onVisibilityChanged;->onNavigationEvent:I

    .line 1093
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1094
    :cond_0
    invoke-direct {p0}, Lo/onVisibilityChanged;->onMessageChannelReady()V

    .line 81
    :cond_1
    invoke-super {p0, p1}, Lo/Sequence;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lo/Sequence;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    invoke-direct {p0}, Lo/onVisibilityChanged;->onMessageChannelReady()V

    return-void
.end method

.method public final onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lo/Sequence;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 45
    invoke-direct {p0}, Lo/onVisibilityChanged;->onMessageChannelReady()V

    return-object p1
.end method
