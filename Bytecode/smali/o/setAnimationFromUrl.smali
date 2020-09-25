.class public final Lo/setAnimationFromUrl;
.super Lo/setFallbackResource;
.source ""


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/setFallbackResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 22
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 25
    invoke-virtual {p0}, Lo/setAnimationFromUrl;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-super {p0, p1}, Lo/setFallbackResource;->draw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lo/setAnimationFromUrl;->extraCallback()V

    .line 33
    invoke-virtual {p0}, Lo/setAnimationFromUrl;->onNavigationEvent()V

    .line 34
    iget-object v0, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 35
    invoke-super {p0, p1}, Lo/setFallbackResource;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method
