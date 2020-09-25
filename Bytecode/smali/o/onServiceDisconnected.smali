.class Lo/onServiceDisconnected;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private ICustomTabsCallback:F

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:Landroid/content/res/ColorStateList;

.field private asInterface:Landroid/content/res/ColorStateList;

.field private final extraCallback:Landroid/graphics/Paint;

.field private onMessageChannelReady:F

.field private final onNavigationEvent:Landroid/graphics/RectF;

.field private final onPostMessage:Landroid/graphics/Rect;

.field private onRelationshipValidationResult:Z

.field private onTransact:Landroid/graphics/PorterDuffColorFilter;

.field private warmup:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lo/onServiceDisconnected;->onRelationshipValidationResult:Z

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lo/onServiceDisconnected;->ICustomTabsCallback$Stub:Z

    .line 53
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/onServiceDisconnected;->warmup:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput p2, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    .line 58
    invoke-direct {p0, p1}, Lo/onServiceDisconnected;->onPostMessage(Landroid/content/res/ColorStateList;)V

    .line 60
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/onServiceDisconnected;->onNavigationEvent:Landroid/graphics/RectF;

    .line 61
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/onServiceDisconnected;->onPostMessage:Landroid/graphics/Rect;

    return-void
.end method

.method private onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 210
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onNavigationEvent(Landroid/graphics/Rect;)V
    .locals 5

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 108
    :cond_0
    iget-object v0, p0, Lo/onServiceDisconnected;->onNavigationEvent:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v0, p0, Lo/onServiceDisconnected;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget-boolean p1, p0, Lo/onServiceDisconnected;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_1

    .line 111
    iget p1, p0, Lo/onServiceDisconnected;->onMessageChannelReady:F

    iget v0, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    iget-boolean v1, p0, Lo/onServiceDisconnected;->ICustomTabsCallback$Stub:Z

    invoke-static {p1, v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady(FFZ)F

    move-result p1

    .line 112
    iget v0, p0, Lo/onServiceDisconnected;->onMessageChannelReady:F

    iget v1, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    iget-boolean v2, p0, Lo/onServiceDisconnected;->ICustomTabsCallback$Stub:Z

    invoke-static {v0, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback(FFZ)F

    move-result v0

    .line 113
    iget-object v1, p0, Lo/onServiceDisconnected;->onPostMessage:Landroid/graphics/Rect;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 115
    iget-object p1, p0, Lo/onServiceDisconnected;->onNavigationEvent:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/onServiceDisconnected;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private onPostMessage(Landroid/content/res/ColorStateList;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lo/onServiceDisconnected;->asBinder:Landroid/content/res/ColorStateList;

    .line 66
    iget-object v0, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lo/onServiceDisconnected;->asBinder:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()F
    .locals 1

    .line 155
    iget v0, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    return v0
.end method

.method ICustomTabsCallback(F)V
    .locals 1

    .line 131
    iget v0, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iput p1, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, p1}, Lo/onServiceDisconnected;->onNavigationEvent(Landroid/graphics/Rect;)V

    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method ICustomTabsCallback(FZZ)V
    .locals 1

    .line 70
    iget v0, p0, Lo/onServiceDisconnected;->onMessageChannelReady:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/onServiceDisconnected;->onRelationshipValidationResult:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lo/onServiceDisconnected;->ICustomTabsCallback$Stub:Z

    if-ne v0, p3, :cond_0

    return-void

    .line 74
    :cond_0
    iput p1, p0, Lo/onServiceDisconnected;->onMessageChannelReady:F

    .line 75
    iput-boolean p2, p0, Lo/onServiceDisconnected;->onRelationshipValidationResult:Z

    .line 76
    iput-boolean p3, p0, Lo/onServiceDisconnected;->ICustomTabsCallback$Stub:Z

    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lo/onServiceDisconnected;->onNavigationEvent(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    .line 90
    iget-object v1, p0, Lo/onServiceDisconnected;->onTransact:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lo/onServiceDisconnected;->onTransact:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    iget-object v2, p0, Lo/onServiceDisconnected;->onNavigationEvent:Landroid/graphics/RectF;

    iget v3, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    return-void
.end method

.method extraCallback()F
    .locals 1

    .line 82
    iget v0, p0, Lo/onServiceDisconnected;->onMessageChannelReady:F

    return v0
.end method

.method public extraCallback(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lo/onServiceDisconnected;->onPostMessage(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lo/onServiceDisconnected;->onPostMessage:Landroid/graphics/Rect;

    iget v1, p0, Lo/onServiceDisconnected;->ICustomTabsCallback:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lo/onServiceDisconnected;->asInterface:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lo/onServiceDisconnected;->asBinder:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 122
    invoke-direct {p0, p1}, Lo/onServiceDisconnected;->onNavigationEvent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onNavigationEvent()Landroid/content/res/ColorStateList;
    .locals 1

    .line 164
    iget-object v0, p0, Lo/onServiceDisconnected;->asBinder:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onStateChange([I)Z
    .locals 3

    .line 183
    iget-object v0, p0, Lo/onServiceDisconnected;->asBinder:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 184
    iget-object v0, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 186
    iget-object v2, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    :cond_1
    iget-object p1, p0, Lo/onServiceDisconnected;->asInterface:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lo/onServiceDisconnected;->warmup:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    .line 189
    invoke-direct {p0, p1, v2}, Lo/onServiceDisconnected;->onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/onServiceDisconnected;->onTransact:Landroid/graphics/PorterDuffColorFilter;

    return v1

    :cond_2
    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lo/onServiceDisconnected;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 169
    iput-object p1, p0, Lo/onServiceDisconnected;->asInterface:Landroid/content/res/ColorStateList;

    .line 170
    iget-object v0, p0, Lo/onServiceDisconnected;->warmup:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lo/onServiceDisconnected;->onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/onServiceDisconnected;->onTransact:Landroid/graphics/PorterDuffColorFilter;

    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 176
    iput-object p1, p0, Lo/onServiceDisconnected;->warmup:Landroid/graphics/PorterDuff$Mode;

    .line 177
    iget-object v0, p0, Lo/onServiceDisconnected;->asInterface:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lo/onServiceDisconnected;->onMessageChannelReady(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lo/onServiceDisconnected;->onTransact:Landroid/graphics/PorterDuffColorFilter;

    .line 178
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
