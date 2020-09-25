.class Lo/putString;
.super Lo/putRating;
.source ""


# static fields
.field private static onPostMessage:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/putRating;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-direct {p0}, Lo/putString;->onMessageChannelReady()V

    return-void
.end method

.method constructor <init>(Lo/putBitmap;Landroid/content/res/Resources;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lo/putRating;-><init>(Lo/putBitmap;Landroid/content/res/Resources;)V

    .line 49
    invoke-direct {p0}, Lo/putString;->onMessageChannelReady()V

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 3

    .line 141
    sget-object v0, Lo/putString;->onPostMessage:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 143
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "isProjected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lo/putString;->onPostMessage:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WrappedDrawableApi21"

    const-string v2, "Failed to retrieve Drawable#isProjected() method"

    .line 145
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method protected onNavigationEvent()Z
    .locals 3

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_2

    .line 114
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    .line 115
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_1

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setState([I)Z
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lo/putRating;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTint(I)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lo/putString;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lo/putRating;->setTint(I)V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lo/putString;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1}, Lo/putRating;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lo/putString;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Lo/putRating;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lo/putRating;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
