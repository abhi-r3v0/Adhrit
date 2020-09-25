.class public Lo/addQueueItemAt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    .line 64
    :cond_2
    instance-of v0, p0, Lo/skipToQueueItem;

    if-eqz v0, :cond_3

    .line 65
    check-cast p0, Lo/skipToQueueItem;

    invoke-interface {p0, p1}, Lo/skipToQueueItem;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public static extraCallback(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    instance-of v0, p0, Lo/skipToQueueItem;

    if-eqz v0, :cond_1

    .line 78
    check-cast p0, Lo/skipToQueueItem;

    invoke-interface {p0}, Lo/skipToQueueItem;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 91
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_3

    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    .line 102
    :cond_2
    instance-of v0, p0, Lo/skipToQueueItem;

    if-eqz v0, :cond_3

    .line 103
    check-cast p0, Lo/skipToQueueItem;

    invoke-interface {p0, p1}, Lo/skipToQueueItem;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-void
.end method

.method public static onPostMessage(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 40
    :cond_0
    instance-of v0, p0, Lo/skipToQueueItem;

    if-eqz v0, :cond_1

    .line 41
    check-cast p0, Lo/skipToQueueItem;

    invoke-interface {p0}, Lo/skipToQueueItem;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
