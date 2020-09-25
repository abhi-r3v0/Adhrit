.class public final Lo/MediaBrowserCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaMetadataCompat$RatingKey;


# instance fields
.field ICustomTabsCallback:C

.field public ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:I

.field private ICustomTabsService$Stub:Ljava/lang/CharSequence;

.field private ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

.field private INotificationSideChannel:Z

.field private IPostMessageService:Ljava/lang/CharSequence;

.field private IPostMessageService$Stub:Z

.field public asBinder:I

.field asInterface:Lo/getItem;

.field private cancel:Landroid/view/View;

.field private cancelAll:Landroid/view/MenuItem$OnActionExpandListener;

.field extraCallback:I

.field private extraCommand:Landroid/graphics/drawable/Drawable;

.field private getInterfaceDescriptor:Ljava/lang/CharSequence;

.field private mayLaunchUrl:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public newSession:Z

.field private notify:Z

.field onMessageChannelReady:I

.field final onNavigationEvent:I

.field onPostMessage:C

.field public onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

.field public onTransact:I

.field private postMessage:Landroid/content/Intent;

.field private requestPostMessageChannel:Ljava/lang/CharSequence;

.field private updateVisuals:I

.field private validateRelationship:Landroid/graphics/PorterDuff$Mode;

.field private final warmup:I


# direct methods
.method constructor <init>(Lo/AudioAttributesImplBaseParcelizer;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 68
    iput v0, p0, Lo/MediaBrowserCompat;->onMessageChannelReady:I

    .line 70
    iput v0, p0, Lo/MediaBrowserCompat;->extraCallback:I

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lo/MediaBrowserCompat;->updateVisuals:I

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    .line 94
    iput-object v1, p0, Lo/MediaBrowserCompat;->validateRelationship:Landroid/graphics/PorterDuff$Mode;

    .line 95
    iput-boolean v0, p0, Lo/MediaBrowserCompat;->IPostMessageService$Stub:Z

    .line 96
    iput-boolean v0, p0, Lo/MediaBrowserCompat;->notify:Z

    .line 97
    iput-boolean v0, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    const/16 v1, 0x10

    .line 99
    iput v1, p0, Lo/MediaBrowserCompat;->onTransact:I

    .line 107
    iput v0, p0, Lo/MediaBrowserCompat;->asBinder:I

    .line 112
    iput-boolean v0, p0, Lo/MediaBrowserCompat;->newSession:Z

    .line 139
    iput-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 140
    iput p3, p0, Lo/MediaBrowserCompat;->ICustomTabsService:I

    .line 141
    iput p2, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub$Proxy:I

    .line 142
    iput p4, p0, Lo/MediaBrowserCompat;->warmup:I

    .line 143
    iput p5, p0, Lo/MediaBrowserCompat;->onNavigationEvent:I

    .line 144
    iput-object p6, p0, Lo/MediaBrowserCompat;->getInterfaceDescriptor:Ljava/lang/CharSequence;

    .line 145
    iput p7, p0, Lo/MediaBrowserCompat;->asBinder:I

    return-void
.end method

.method private ICustomTabsCallback(Z)V
    .locals 3

    .line 631
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    .line 632
    iput p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    if-eq v0, p1, :cond_1

    .line 634
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {p1, v2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_1
    return-void
.end method

.method private extraCallback(Landroid/view/View;)Lo/MediaMetadataCompat$RatingKey;
    .locals 2

    .line 751
    iput-object p1, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz p1, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/MediaBrowserCompat;->ICustomTabsService:I

    if-lez v0, :cond_0

    .line 754
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 756
    :cond_0
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x1

    .line 6112
    iput-boolean v0, p1, Lo/AudioAttributesImplBaseParcelizer;->asBinder:Z

    .line 6113
    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method private onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    .line 570
    iget-boolean v0, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/MediaBrowserCompat;->IPostMessageService$Stub:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/MediaBrowserCompat;->notify:Z

    if-eqz v0, :cond_3

    .line 571
    :cond_0
    invoke-static {p1}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback$Stub(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 574
    iget-boolean v0, p0, Lo/MediaBrowserCompat;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    iget-boolean v0, p0, Lo/MediaBrowserCompat;->notify:Z

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lo/MediaBrowserCompat;->validateRelationship:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lo/MediaMetadataCompat$BitmapKey;->onPostMessage(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    :cond_3
    return-object p1
.end method

.method static onPostMessage(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    .line 403
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 855
    iget v0, p0, Lo/MediaBrowserCompat;->asBinder:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, p0}, Lo/IMediaControllerCallback;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    .line 859
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final collapseActionView()Z
    .locals 2

    .line 838
    iget v0, p0, Lo/MediaBrowserCompat;->asBinder:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 841
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 846
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat;->cancelAll:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    .line 847
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 848
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/MediaBrowserCompat;)Z

    move-result v0

    return v0
.end method

.method public final expandActionView()Z
    .locals 2

    .line 824
    invoke-virtual {p0}, Lo/MediaBrowserCompat;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->cancelAll:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    .line 829
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 830
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p0}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/MediaBrowserCompat;)Z

    move-result v0

    return v0
.end method

.method public final extraCallback()Lo/IMediaControllerCallback;
    .locals 1

    .line 794
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;
    .locals 1

    .line 882
    iput-object p1, p0, Lo/MediaBrowserCompat;->IPostMessageService:Ljava/lang/CharSequence;

    .line 884
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method final extraCallback(Z)Z
    .locals 3

    .line 655
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    .line 656
    iput p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 788
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .line 770
    iget-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 772
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {v0, p0}, Lo/IMediaControllerCallback;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    .line 275
    iget v0, p0, Lo/MediaBrowserCompat;->extraCallback:I

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .line 243
    iget-char v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 891
    iget-object v0, p0, Lo/MediaBrowserCompat;->IPostMessageService:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 203
    iget v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 500
    iget-object v0, p0, Lo/MediaBrowserCompat;->extraCommand:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0, v0}, Lo/MediaBrowserCompat;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    iget v0, p0, Lo/MediaBrowserCompat;->updateVisuals:I

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 3830
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 505
    iget v1, p0, Lo/MediaBrowserCompat;->updateVisuals:I

    invoke-static {v0, v1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 506
    iput v1, p0, Lo/MediaBrowserCompat;->updateVisuals:I

    .line 507
    iput-object v0, p0, Lo/MediaBrowserCompat;->extraCommand:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-direct {p0, v0}, Lo/MediaBrowserCompat;->onPostMessage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 550
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 566
    iget-object v0, p0, Lo/MediaBrowserCompat;->validateRelationship:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 223
    iget-object v0, p0, Lo/MediaBrowserCompat;->postMessage:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 209
    iget v0, p0, Lo/MediaBrowserCompat;->ICustomTabsService:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    .line 285
    iget v0, p0, Lo/MediaBrowserCompat;->onMessageChannelReady:I

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .line 280
    iget-char v0, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .line 214
    iget v0, p0, Lo/MediaBrowserCompat;->warmup:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 419
    iget-object v0, p0, Lo/MediaBrowserCompat;->asInterface:Lo/getItem;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 436
    iget-object v0, p0, Lo/MediaBrowserCompat;->getInterfaceDescriptor:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .line 471
    iget-object v0, p0, Lo/MediaBrowserCompat;->requestPostMessageChannel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->getInterfaceDescriptor:Ljava/lang/CharSequence;

    .line 473
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 477
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 905
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lo/MediaBrowserCompat;->asInterface:Lo/getItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .line 871
    iget-boolean v0, p0, Lo/MediaBrowserCompat;->newSession:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    .line 590
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isChecked()Z
    .locals 2

    .line 614
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 185
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 3

    .line 640
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/IMediaControllerCallback;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    invoke-virtual {v0}, Lo/IMediaControllerCallback;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 643
    :cond_1
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final onMessageChannelReady(Ljava/lang/CharSequence;)Lo/MediaMetadataCompat$RatingKey;
    .locals 1

    .line 896
    iput-object p1, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub:Ljava/lang/CharSequence;

    .line 898
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final onMessageChannelReady()Z
    .locals 4

    .line 154
    iget-object v0, p0, Lo/MediaBrowserCompat;->mayLaunchUrl:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, v0, p0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 167
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat;->postMessage:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 169
    :try_start_0
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 1830
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 169
    iget-object v2, p0, Lo/MediaBrowserCompat;->postMessage:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 172
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_2
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/IMediaControllerCallback;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Lo/IMediaControllerCallback;)Lo/MediaMetadataCompat$RatingKey;
    .locals 1

    .line 799
    iget-object v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lo/IMediaControllerCallback;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 802
    iput-object v0, p0, Lo/MediaBrowserCompat;->cancel:Landroid/view/View;

    .line 803
    iput-object p1, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    .line 804
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    .line 805
    iget-object p1, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback$Stub:Lo/IMediaControllerCallback;

    if-eqz p1, :cond_1

    .line 806
    new-instance v0, Lo/MediaBrowserCompat$5;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$5;-><init>(Lo/MediaBrowserCompat;)V

    invoke-virtual {p1, v0}, Lo/IMediaControllerCallback;->setVisibilityListener(Lo/IMediaControllerCallback$ICustomTabsCallback;)V

    :cond_1
    return-object p0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .line 782
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 6762
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 6830
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 6763
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 6764
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/MediaBrowserCompat;->extraCallback(Landroid/view/View;)Lo/MediaMetadataCompat$RatingKey;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat;->extraCallback(Landroid/view/View;)Lo/MediaMetadataCompat$RatingKey;

    move-result-object p1

    return-object p1
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 248
    iget-char v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    .line 254
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 261
    iget-char v0, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/MediaBrowserCompat;->extraCallback:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    .line 267
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat;->extraCallback:I

    .line 269
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 595
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    .line 596
    iput p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    if-eq v0, p1, :cond_0

    .line 598
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_0
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 7

    .line 619
    iget v0, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 622
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 4613
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 4615
    iget-object v1, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 5078
    iget-boolean v2, p1, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 5079
    iput-boolean v3, p1, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 5080
    iput-boolean v4, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 5081
    iput-boolean v4, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 4618
    iget-object v5, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/MediaBrowserCompat;

    .line 4619
    invoke-virtual {v5}, Lo/MediaBrowserCompat;->getGroupId()I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 5609
    iget v6, v5, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 4621
    invoke-virtual {v5}, Lo/MediaBrowserCompat;->isCheckable()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ne v5, p0, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 4624
    :goto_2
    invoke-direct {v5, v6}, Lo/MediaBrowserCompat;->ICustomTabsCallback(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6086
    :cond_4
    iput-boolean v4, p1, Lo/AudioAttributesImplBaseParcelizer;->getInterfaceDescriptor:Z

    .line 6088
    iget-boolean v0, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    if-eqz v0, :cond_6

    .line 6089
    iput-boolean v4, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsService:Z

    .line 6090
    iget-boolean v0, p1, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    goto :goto_3

    .line 624
    :cond_5
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat;->ICustomTabsCallback(Z)V

    :cond_6
    :goto_3
    return-object p0
.end method

.method public final synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 8882
    iput-object p1, p0, Lo/MediaBrowserCompat;->IPostMessageService:Ljava/lang/CharSequence;

    .line 8884
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    iget p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    goto :goto_0

    .line 193
    :cond_0
    iget p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lo/MediaBrowserCompat;->onTransact:I

    .line 196
    :goto_0
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lo/MediaBrowserCompat;->extraCommand:Landroid/graphics/drawable/Drawable;

    .line 527
    iput p1, p0, Lo/MediaBrowserCompat;->updateVisuals:I

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    .line 531
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lo/MediaBrowserCompat;->updateVisuals:I

    .line 517
    iput-object p1, p0, Lo/MediaBrowserCompat;->extraCommand:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    .line 519
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 539
    iput-object p1, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub$Proxy:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Lo/MediaBrowserCompat;->IPostMessageService$Stub:Z

    .line 541
    iput-boolean p1, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    .line 543
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 555
    iput-object p1, p0, Lo/MediaBrowserCompat;->validateRelationship:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Lo/MediaBrowserCompat;->notify:Z

    .line 557
    iput-boolean p1, p0, Lo/MediaBrowserCompat;->INotificationSideChannel:Z

    .line 559
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 228
    iput-object p1, p0, Lo/MediaBrowserCompat;->postMessage:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 290
    iget-char v0, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 294
    :cond_0
    iput-char p1, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    .line 296
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 303
    iget-char v0, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/MediaBrowserCompat;->onMessageChannelReady:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 307
    :cond_0
    iput-char p1, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    .line 308
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat;->onMessageChannelReady:I

    .line 310
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 876
    iput-object p1, p0, Lo/MediaBrowserCompat;->cancelAll:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 672
    iput-object p1, p0, Lo/MediaBrowserCompat;->mayLaunchUrl:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 317
    iput-char p1, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    .line 318
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    .line 320
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 328
    iput-char p1, p0, Lo/MediaBrowserCompat;->onPostMessage:C

    .line 329
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat;->onMessageChannelReady:I

    .line 330
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lo/MediaBrowserCompat;->ICustomTabsCallback:C

    .line 331
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat;->extraCallback:I

    .line 333
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 745
    :cond_1
    :goto_0
    iput p1, p0, Lo/MediaBrowserCompat;->asBinder:I

    .line 746
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent()V

    return-void
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 7818
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 466
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    .line 2830
    iget-object v0, v0, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage:Landroid/content/Context;

    .line 466
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 453
    iput-object p1, p0, Lo/MediaBrowserCompat;->getInterfaceDescriptor:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    .line 457
    iget-object v0, p0, Lo/MediaBrowserCompat;->asInterface:Lo/getItem;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lo/getItem;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 486
    iput-object p1, p0, Lo/MediaBrowserCompat;->requestPostMessageChannel:Ljava/lang/CharSequence;

    .line 493
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 7896
    iput-object p1, p0, Lo/MediaBrowserCompat;->ICustomTabsService$Stub:Ljava/lang/CharSequence;

    .line 7898
    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .line 665
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat;->extraCallback(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x1

    .line 6101
    iput-boolean v0, p1, Lo/AudioAttributesImplBaseParcelizer;->extraCallback:Z

    .line 6102
    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lo/MediaBrowserCompat;->getInterfaceDescriptor:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
