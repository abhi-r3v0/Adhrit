.class public final Lo/ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isSessionReady$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ICustomTabsCallback$onNavigationEvent;
    }
.end annotation


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 4318
    iget-boolean v0, p1, Lo/ICustomTabsService$Stub$Proxy;->extraCallback:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4320
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5448
    :cond_0
    iget v0, p1, Lo/ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 5450
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 7318
    iget-boolean v0, p1, Lo/ICustomTabsService$Stub$Proxy;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 7320
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7448
    :cond_0
    iget v0, p1, Lo/ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 7450
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 3318
    iget-boolean v0, p1, Lo/ICustomTabsService$Stub$Proxy;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 3320
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3448
    :cond_0
    iget v0, p1, Lo/ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3450
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
