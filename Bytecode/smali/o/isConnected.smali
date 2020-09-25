.class public final Lo/isConnected;
.super Lo/compareTo;
.source ""

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isConnected$extraCallback;,
        Lo/isConnected$onMessageChannelReady;,
        Lo/isConnected$onPostMessage;,
        Lo/isConnected$onNavigationEvent;,
        Lo/isConnected$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/reflect/Method;

.field public final onPostMessage:Lo/MediaMetadataCompat$RatingKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/MediaMetadataCompat$RatingKey;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/compareTo;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 60
    iput-object p2, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped Object can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final collapseActionView()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 312
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->extraCallback()Lo/IMediaControllerCallback;

    move-result-object v0

    .line 313
    instance-of v1, v0, Lo/isConnected$onPostMessage;

    if-eqz v1, :cond_0

    .line 314
    check-cast v0, Lo/isConnected$onPostMessage;

    iget-object v0, v0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 2

    .line 291
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 292
    instance-of v1, v0, Lo/isConnected$extraCallback;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Lo/isConnected$extraCallback;

    .line 1528
    iget-object v0, v0, Lo/isConnected$extraCallback;->onNavigationEvent:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    .line 188
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .line 183
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 349
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 70
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getGroupId()I

    move-result v0

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 371
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 382
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    .line 65
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getItemId()I

    move-result v0

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    .line 166
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .line 161
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .line 75
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getOrder()I

    move-result v0

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 241
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/compareTo;->onNavigationEvent(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 360
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public final isCheckable()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$RatingKey;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 302
    new-instance v0, Lo/isConnected$onMessageChannelReady;

    iget-object v1, p0, Lo/compareTo;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lo/isConnected$onMessageChannelReady;-><init>(Lo/isConnected;Landroid/content/Context;Landroid/view/ActionProvider;)V

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Lo/isConnected$onPostMessage;

    iget-object v1, p0, Lo/compareTo;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lo/isConnected$onPostMessage;-><init>(Lo/isConnected;Landroid/content/Context;Landroid/view/ActionProvider;)V

    .line 306
    :goto_0
    iget-object v1, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0}, Lo/MediaMetadataCompat$RatingKey;->onPostMessage(Lo/IMediaControllerCallback;)Lo/MediaMetadataCompat$RatingKey;

    return-object p0
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 2

    .line 279
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setActionView(I)Landroid/view/MenuItem;

    .line 281
    iget-object p1, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {p1}, Lo/MediaMetadataCompat$RatingKey;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 282
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    new-instance v1, Lo/isConnected$extraCallback;

    invoke-direct {v1, p1}, Lo/isConnected$extraCallback;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Lo/MediaMetadataCompat$RatingKey;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 269
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lo/isConnected$extraCallback;

    invoke-direct {v0, p1}, Lo/isConnected$extraCallback;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 272
    :cond_0
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 171
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 177
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1, p2}, Lo/MediaMetadataCompat$RatingKey;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 193
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 204
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 343
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->extraCallback(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 225
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 365
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 376
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 149
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1, p2}, Lo/MediaMetadataCompat$RatingKey;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .line 336
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    if-eqz p1, :cond_0

    .line 337
    new-instance v1, Lo/isConnected$onNavigationEvent;

    invoke-direct {v1, p0, p1}, Lo/isConnected$onNavigationEvent;-><init>(Lo/isConnected;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 336
    :goto_0
    invoke-interface {v0, v1}, Lo/MediaMetadataCompat$RatingKey;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    .line 246
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    if-eqz p1, :cond_0

    .line 247
    new-instance v1, Lo/isConnected$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/isConnected$ICustomTabsCallback;-><init>(Lo/isConnected;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    :goto_0
    invoke-interface {v0, v1}, Lo/MediaMetadataCompat$RatingKey;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1, p2}, Lo/MediaMetadataCompat$RatingKey;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    .line 143
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/MediaMetadataCompat$RatingKey;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setShowAsAction(I)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .line 263
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .line 215
    iget-object v0, p0, Lo/isConnected;->onPostMessage:Lo/MediaMetadataCompat$RatingKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$RatingKey;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
