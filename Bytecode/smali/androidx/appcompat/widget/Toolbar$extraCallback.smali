.class Landroidx/appcompat/widget/Toolbar$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/appcompat/widget/Toolbar;

.field onMessageChannelReady:Lo/MediaBrowserCompat;

.field private onPostMessage:Lo/AudioAttributesImplBaseParcelizer;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 1

    .line 2451
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onPostMessage:Lo/AudioAttributesImplBaseParcelizer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat;

    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/MediaBrowserCompat;)Z

    .line 2454
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onPostMessage:Lo/AudioAttributesImplBaseParcelizer;

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 4

    .line 2465
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat;

    if-eqz p1, :cond_2

    .line 2468
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onPostMessage:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2469
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2471
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onPostMessage:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v2, v1}, Lo/AudioAttributesImplBaseParcelizer;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2472
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2481
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady(Lo/MediaBrowserCompat;)Z

    :cond_2
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback(Lo/MediaBrowserCompat;)Z
    .locals 3

    .line 2506
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 2507
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2508
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2509
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2510
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2512
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2514
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Lo/MediaBrowserCompat;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2515
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat;

    .line 2516
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2517
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    if-eq v0, v1, :cond_3

    .line 2518
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 2519
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2521
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 2522
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget v2, v2, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lo/onPostMessage$onNavigationEvent;->gravity:I

    const/4 v1, 0x2

    .line 2523
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2524
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2525
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2528
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2529
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    .line 2865
    iput-boolean v0, p1, Lo/MediaBrowserCompat;->newSession:Z

    .line 2866
    iget-object p1, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    .line 2532
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Lo/notify;

    if-eqz p1, :cond_4

    .line 2533
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Lo/notify;

    invoke-interface {p1}, Lo/notify;->onActionViewExpanded()V

    :cond_4
    return v0
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/getSessionToken$extraCallback;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaBrowserCompat;)Z
    .locals 2

    .line 2543
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Lo/notify;

    if-eqz v0, :cond_0

    .line 2544
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Lo/notify;

    invoke-interface {v0}, Lo/notify;->onActionViewCollapsed()V

    .line 2547
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2548
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2549
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2551
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2552
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat;

    .line 2553
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$extraCallback;->extraCallback:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x0

    .line 3865
    iput-boolean v0, p1, Lo/MediaBrowserCompat;->newSession:Z

    .line 3866
    iget-object p1, p1, Lo/MediaBrowserCompat;->onRelationshipValidationResult:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {p1, v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(Lo/getItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
