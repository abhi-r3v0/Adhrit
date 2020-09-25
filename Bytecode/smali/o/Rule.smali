.class public Lo/Rule;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lo/setComposition;
.implements Lo/setAnimationFromJson;


# instance fields
.field public final ICustomTabsCallback:[Lo/LottieAnimationView;

.field private asBinder:Z

.field private asInterface:Z

.field private extraCallback:Lo/setComposition;

.field private final onMessageChannelReady:Landroid/graphics/Rect;

.field private final onNavigationEvent:Lo/updateRange;

.field public final onPostMessage:[Landroid/graphics/drawable/Drawable;

.field private onTransact:Z


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Lo/updateRange;

    invoke-direct {v0}, Lo/updateRange;-><init>()V

    iput-object v0, p0, Lo/Rule;->onNavigationEvent:Lo/updateRange;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/Rule;->onMessageChannelReady:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/Rule;->asBinder:Z

    .line 45
    iput-boolean v0, p0, Lo/Rule;->asInterface:Z

    .line 47
    iput-boolean v0, p0, Lo/Rule;->onTransact:Z

    if-eqz p1, :cond_2

    .line 56
    iput-object p1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    .line 57
    :goto_0
    iget-object p1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 58
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 2076
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2077
    instance-of v1, p1, Lo/setAnimationFromJson;

    if-eqz v1, :cond_0

    .line 2078
    check-cast p1, Lo/setAnimationFromJson;

    invoke-interface {p1, p0}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    array-length p1, p1

    new-array p1, p1, [Lo/LottieAnimationView;

    iput-object p1, p0, Lo/Rule;->ICustomTabsCallback:[Lo/LottieAnimationView;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    aget-object p1, v0, p1

    return-object p1

    .line 3111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final ICustomTabsCallback(Landroid/graphics/Matrix;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lo/Rule;->extraCallback:Lo/setComposition;

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p1}, Lo/setComposition;->ICustomTabsCallback(Landroid/graphics/Matrix;)V

    return-void

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setComposition;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lo/Rule;->extraCallback:Lo/setComposition;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 182
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 123
    :goto_0
    iget-object v3, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 124
    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 111
    :goto_0
    iget-object v3, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 112
    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getOpacity()I
    .locals 4

    .line 223
    iget-object v0, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 227
    :goto_0
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 228
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x0

    .line 191
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 192
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 193
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 194
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 195
    iget-object v1, p0, Lo/Rule;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 196
    :goto_0
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 197
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 200
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 201
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 202
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 203
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 319
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 5

    .line 144
    iget-boolean v0, p0, Lo/Rule;->asInterface:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lo/Rule;->asBinder:Z

    const/4 v1, 0x0

    .line 146
    :goto_0
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 147
    aget-object v2, v2, v1

    .line 148
    iget-boolean v3, p0, Lo/Rule;->asBinder:Z

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int v2, v3, v4

    iput-boolean v2, p0, Lo/Rule;->asBinder:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iput-boolean v4, p0, Lo/Rule;->asInterface:Z

    .line 152
    :cond_2
    iget-boolean v0, p0, Lo/Rule;->asBinder:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 211
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 212
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lo/Rule;->onTransact:Z

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 135
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    :goto_0
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 171
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lo/Rule;->extraCallback:Lo/setComposition;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p1}, Lo/setComposition;->onMessageChannelReady(Landroid/graphics/RectF;)V

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onNavigationEvent(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    .line 89
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eq p2, v0, :cond_8

    if-eqz p2, :cond_2

    .line 92
    iget-boolean v2, p0, Lo/Rule;->onTransact:Z

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_2
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6076
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6077
    instance-of v4, v2, Lo/setAnimationFromJson;

    if-eqz v4, :cond_3

    .line 6078
    check-cast v2, Lo/setAnimationFromJson;

    invoke-interface {v2, v3}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 7076
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7077
    instance-of v2, p2, Lo/setAnimationFromJson;

    if-eqz v2, :cond_4

    .line 7078
    move-object v2, p2

    check-cast v2, Lo/setAnimationFromJson;

    invoke-interface {v2, v3}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    .line 98
    :cond_4
    iget-object v2, p0, Lo/Rule;->onNavigationEvent:Lo/updateRange;

    if-eqz p2, :cond_6

    if-nez v2, :cond_5

    goto :goto_2

    .line 8061
    :cond_5
    invoke-virtual {v2, p2}, Lo/updateRange;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_6
    :goto_2
    invoke-static {p2, p0}, Lo/SequenceJsonAdapter;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_7

    .line 8076
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8077
    instance-of v2, p2, Lo/setAnimationFromJson;

    if-eqz v2, :cond_7

    .line 8078
    move-object v2, p2

    check-cast v2, Lo/setAnimationFromJson;

    invoke-interface {v2, p0}, Lo/setAnimationFromJson;->ICustomTabsCallback(Lo/setComposition;)V

    .line 101
    :cond_7
    iput-boolean v1, p0, Lo/Rule;->asInterface:Z

    .line 102
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v1, p1

    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_8
    return-object v0

    .line 5111
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4111
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected onStateChange([I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 158
    :goto_0
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 159
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 324
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    .line 238
    iget-object v0, p0, Lo/Rule;->onNavigationEvent:Lo/updateRange;

    .line 9029
    iput p1, v0, Lo/updateRange;->ICustomTabsCallback:I

    const/4 v0, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 240
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lo/Rule;->onNavigationEvent:Lo/updateRange;

    .line 9033
    iput-object p1, v0, Lo/updateRange;->onMessageChannelReady:Landroid/graphics/ColorFilter;

    const/4 v1, 0x1

    .line 9034
    iput-boolean v1, v0, Lo/updateRange;->onNavigationEvent:Z

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 251
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDither(Z)V
    .locals 3

    .line 260
    iget-object v0, p0, Lo/Rule;->onNavigationEvent:Lo/updateRange;

    .line 9038
    iput p1, v0, Lo/updateRange;->onPostMessage:I

    const/4 v0, 0x0

    .line 261
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 262
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 3

    .line 271
    iget-object v0, p0, Lo/Rule;->onNavigationEvent:Lo/updateRange;

    .line 9042
    iput p1, v0, Lo/updateRange;->extraCallback:I

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 273
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHotspot(FF)V
    .locals 3

    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 361
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 4

    .line 282
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    const/4 v1, 0x0

    .line 283
    :goto_0
    iget-object v2, p0, Lo/Rule;->onPostMessage:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 284
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 329
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
