.class public Lo/Sequence;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lo/setComposition;
.implements Lo/setAnimationFromJson;
.implements Lo/LottieAnimationView;


# instance fields
.field private ICustomTabsCallback:Lo/setComposition;

.field private final onMessageChannelReady:Lo/updateRange;

.field private onNavigationEvent:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Lo/updateRange;

    invoke-direct {v0}, Lo/updateRange;-><init>()V

    iput-object v0, p0, Lo/Sequence;->onMessageChannelReady:Lo/updateRange;

    .line 52
    iput-object p1, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1076
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1077
    instance-of v0, p1, Lo/setAnimationFromJson;

    if-eqz v0, :cond_0

    .line 1078
    check-cast p1, Lo/setAnimationFromJson;

    invoke-interface {p1, p0}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/graphics/Matrix;)V
    .locals 1

    .line 6269
    iget-object v0, p0, Lo/Sequence;->ICustomTabsCallback:Lo/setComposition;

    if-eqz v0, :cond_0

    .line 6270
    invoke-interface {v0, p1}, Lo/setComposition;->ICustomTabsCallback(Landroid/graphics/Matrix;)V

    return-void

    .line 6272
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setComposition;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lo/Sequence;->ICustomTabsCallback:Lo/setComposition;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lo/Sequence;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 148
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 149
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 227
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 200
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 191
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 192
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 90
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 213
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 218
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 176
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result p1

    return p1

    .line 179
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/Sequence;->ICustomTabsCallback:Lo/setComposition;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p1}, Lo/setComposition;->onMessageChannelReady(Landroid/graphics/RectF;)V

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onNavigationEvent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2078
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3076
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3077
    instance-of v2, v0, Lo/setAnimationFromJson;

    if-eqz v2, :cond_0

    .line 3078
    move-object v2, v0

    check-cast v2, Lo/setAnimationFromJson;

    invoke-interface {v2, v1}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4076
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4077
    instance-of v2, p1, Lo/setAnimationFromJson;

    if-eqz v2, :cond_1

    .line 4078
    move-object v2, p1

    check-cast v2, Lo/setAnimationFromJson;

    invoke-interface {v2, v1}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    .line 2081
    :cond_1
    iget-object v1, p0, Lo/Sequence;->onMessageChannelReady:Lo/updateRange;

    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 5061
    :cond_2
    invoke-virtual {v1, p1}, Lo/updateRange;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    .line 2082
    :cond_3
    :goto_0
    invoke-static {p1, p0}, Lo/SequenceJsonAdapter;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_4

    .line 5076
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5077
    instance-of v1, p1, Lo/setAnimationFromJson;

    if-eqz v1, :cond_4

    .line 5078
    move-object v1, p1

    check-cast v1, Lo/setAnimationFromJson;

    invoke-interface {v1, p0}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    .line 2084
    :cond_4
    iput-object p1, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-object v0
.end method

.method protected final onPostMessage(Landroid/graphics/Matrix;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lo/Sequence;->ICustomTabsCallback:Lo/setComposition;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p1}, Lo/setComposition;->ICustomTabsCallback(Landroid/graphics/Matrix;)V

    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 167
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 251
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/Sequence;->onMessageChannelReady:Lo/updateRange;

    .line 6029
    iput p1, v0, Lo/updateRange;->ICustomTabsCallback:I

    .line 100
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/Sequence;->onMessageChannelReady:Lo/updateRange;

    .line 6033
    iput-object p1, v0, Lo/updateRange;->onMessageChannelReady:Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    .line 6034
    iput-boolean v1, v0, Lo/updateRange;->onNavigationEvent:Z

    .line 108
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/Sequence;->onMessageChannelReady:Lo/updateRange;

    .line 6038
    iput p1, v0, Lo/updateRange;->onPostMessage:I

    .line 116
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/Sequence;->onMessageChannelReady:Lo/updateRange;

    .line 6042
    iput p1, v0, Lo/updateRange;->extraCallback:I

    .line 124
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 307
    iget-object v0, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 131
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 132
    iget-object v1, p0, Lo/Sequence;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 256
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
