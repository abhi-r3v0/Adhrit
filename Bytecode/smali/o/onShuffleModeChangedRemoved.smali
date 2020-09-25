.class public final Lo/onShuffleModeChangedRemoved;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onShuffleModeChangedRemoved$onNavigationEvent;
    }
.end annotation


# direct methods
.method public static ICustomTabsCallback(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result p0

    return p0
.end method

.method public static extraCallback(Landroid/view/MenuItem;Lo/IMediaControllerCallback;)Landroid/view/MenuItem;
    .locals 1

    .line 207
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 208
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1}, Lo/MediaMetadataCompat$RatingKey;->onPostMessage(Lo/IMediaControllerCallback;)Lo/MediaMetadataCompat$RatingKey;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "MenuItemCompat"

    const-string/jumbo v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 211
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static extraCallback(Landroid/view/MenuItem;Lo/onShuffleModeChangedRemoved$onNavigationEvent;)Landroid/view/MenuItem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    new-instance v0, Lo/onShuffleModeChangedRemoved$2;

    invoke-direct {v0, p1}, Lo/onShuffleModeChangedRemoved$2;-><init>(Lo/onShuffleModeChangedRemoved$onNavigationEvent;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Landroid/view/MenuItem;CI)V
    .locals 2

    .line 463
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 464
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1, p2}, Lo/MediaMetadataCompat$RatingKey;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-void

    .line 465
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 466
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 534
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 535
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-void

    .line 536
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 537
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    .line 351
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 352
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1}, Lo/MediaMetadataCompat$RatingKey;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;

    return-void

    .line 353
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 354
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 503
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 504
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-void

    .line 505
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 506
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 2

    .line 322
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 323
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1}, Lo/MediaMetadataCompat$RatingKey;->extraCallback(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;

    return-void

    .line 324
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 325
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result p0

    return p0
.end method

.method public static onPostMessage(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Landroid/view/MenuItem;CI)V
    .locals 2

    .line 418
    instance-of v0, p0, Lo/MediaMetadataCompat$RatingKey;

    if-eqz v0, :cond_0

    .line 419
    check-cast p0, Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p0, p1, p2}, Lo/MediaMetadataCompat$RatingKey;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-void

    .line 420
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 421
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
