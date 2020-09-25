.class public final Lo/INotificationSideChannel$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaMetadataCompat$RatingKey;


# instance fields
.field private final ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

.field private ICustomTabsService:Ljava/lang/CharSequence;

.field private asBinder:C

.field private asInterface:I

.field private extraCallback:Ljava/lang/CharSequence;

.field private getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

.field private mayLaunchUrl:Z

.field private newSession:Landroid/content/Context;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private onPostMessage:Ljava/lang/CharSequence;

.field private onRelationshipValidationResult:C

.field private onTransact:Landroid/content/Intent;

.field private postMessage:Z

.field private requestPostMessageChannel:Landroid/graphics/PorterDuff$Mode;

.field private updateVisuals:I

.field private warmup:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 53
    iput v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub:I

    .line 55
    iput v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->asInterface:I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 67
    iput-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->requestPostMessageChannel:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->mayLaunchUrl:Z

    .line 69
    iput-boolean v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->postMessage:Z

    const/16 v1, 0x10

    .line 71
    iput v1, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    .line 80
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->newSession:Landroid/content/Context;

    const p1, 0x102002c

    .line 81
    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback:I

    .line 82
    iput v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onNavigationEvent:I

    .line 83
    iput v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onMessageChannelReady:I

    .line 84
    iput-object p2, p0, Lo/INotificationSideChannel$Stub$Proxy;->extraCallback:Ljava/lang/CharSequence;

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 2

    .line 437
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->mayLaunchUrl:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->postMessage:Z

    if-eqz v0, :cond_2

    .line 438
    :cond_0
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    .line 439
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    .line 441
    iget-boolean v1, p0, Lo/INotificationSideChannel$Stub$Proxy;->mayLaunchUrl:Z

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 445
    :cond_1
    iget-boolean v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->postMessage:Z

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lo/INotificationSideChannel$Stub$Proxy;->requestPostMessageChannel:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Lo/IMediaControllerCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;
    .locals 0

    .line 386
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsService:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    .line 94
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->asInterface:I

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .line 89
    iget-char v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->asBinder:C

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 392
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsService:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 99
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onNavigationEvent:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 418
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 433
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->requestPostMessageChannel:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onTransact:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    .line 114
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    .line 129
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .line 124
    iget-char v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onRelationshipValidationResult:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .line 134
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onMessageChannelReady:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 144
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->extraCallback:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->onPostMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->extraCallback:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 403
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->warmup:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    .line 159
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 164
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 169
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 174
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;
    .locals 0

    .line 397
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->warmup:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final onPostMessage(Lo/IMediaControllerCallback;)Lo/MediaMetadataCompat$RatingKey;
    .locals 0

    .line 355
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 335
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 1345
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 2325
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 179
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->asBinder:C

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 0

    .line 185
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->asBinder:C

    .line 186
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->asInterface:I

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 192
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 203
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    return-object p0
.end method

.method public final bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3386
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsService:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 209
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 223
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->newSession:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-direct {p0}, Lo/INotificationSideChannel$Stub$Proxy;->onMessageChannelReady()V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    .line 215
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->getInterfaceDescriptor:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-direct {p0}, Lo/INotificationSideChannel$Stub$Proxy;->onMessageChannelReady()V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 0

    .line 408
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->mayLaunchUrl:Z

    .line 411
    invoke-direct {p0}, Lo/INotificationSideChannel$Stub$Proxy;->onMessageChannelReady()V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 0

    .line 423
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->requestPostMessageChannel:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 424
    iput-boolean p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->postMessage:Z

    .line 426
    invoke-direct {p0}, Lo/INotificationSideChannel$Stub$Proxy;->onMessageChannelReady()V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 231
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->onTransact:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 237
    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->onRelationshipValidationResult:C

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 0

    .line 243
    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->onRelationshipValidationResult:C

    .line 244
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub:I

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 381
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 256
    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->onRelationshipValidationResult:C

    .line 257
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->asBinder:C

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 264
    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->onRelationshipValidationResult:C

    .line 265
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->ICustomTabsCallback$Stub:I

    .line 266
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->asBinder:C

    .line 267
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->asInterface:I

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 2360
    invoke-virtual {p0, p1}, Lo/INotificationSideChannel$Stub$Proxy;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 279
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->newSession:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->extraCallback:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 273
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->extraCallback:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 285
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->onPostMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 2397
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->warmup:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 291
    iget v0, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    or-int p1, v0, v1

    iput p1, p0, Lo/INotificationSideChannel$Stub$Proxy;->updateVisuals:I

    return-object p0
.end method
