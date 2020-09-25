.class public final Lo/getTopDecorationHeight;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0011\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u0013\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \t*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardingCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "bottomCtaGroup",
        "Landroidx/constraintlayout/widget/Group;",
        "kotlin.jvm.PlatformType",
        "card",
        "Lcom/dreamplug/fabrik/helper/ui/widget/CredCard;",
        "getCard",
        "()Lcom/dreamplug/fabrik/helper/ui/widget/CredCard;",
        "cardBackGroundView",
        "Landroid/view/View;",
        "cardClickListener",
        "com/dreamplug/fabrik/ui/onboardAddCard/OnboardingCardViewHolder$cardClickListener$1",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardingCardViewHolder$cardClickListener$1;",
        "cardOverlay",
        "ctaDesc",
        "Lcom/dreamplug/widget/CredTextView;",
        "setupButton",
        "Lcom/dreamplug/ui/NeuButton;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/View;

.field private final ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field private final extraCallback:Lo/onActivityCreated;

.field private final onMessageChannelReady:Lo/saveOldPosition;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Landroid/view/View;

.field private final onTransact:Lo/getTopDecorationHeight$onPostMessage;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 10

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 2010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onActivityCreated;

    const-string v0, "itemView.card"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getTopDecorationHeight;->extraCallback:Lo/onActivityCreated;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBackGroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getTopDecorationHeight;->ICustomTabsCallback:Landroid/view/View;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardOverlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getTopDecorationHeight;->onPostMessage:Landroid/view/View;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->setupButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    iput-object p1, p0, Lo/getTopDecorationHeight;->onMessageChannelReady:Lo/saveOldPosition;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaDesc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/getTopDecorationHeight;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->bottomCtaGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    iput-object p1, p0, Lo/getTopDecorationHeight;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 31
    iget-object p1, p0, Lo/getTopDecorationHeight;->ICustomTabsCallback:Landroid/view/View;

    const-string p2, "cardBackGroundView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/isBound;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf7

    const/4 v9, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lo/isBound;-><init>(FIZZZZFIB)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p1, p0, Lo/getTopDecorationHeight;->onPostMessage:Landroid/view/View;

    const-string p2, "cardOverlay"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/isBound;

    const/16 v8, 0xfb

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lo/isBound;-><init>(FIZZZZFIB)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance p1, Lo/getTopDecorationHeight$onPostMessage;

    invoke-direct {p1, p0}, Lo/getTopDecorationHeight$onPostMessage;-><init>(Lo/getTopDecorationHeight;)V

    iput-object p1, p0, Lo/getTopDecorationHeight;->onTransact:Lo/getTopDecorationHeight$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lo/getDecoratedRight;

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast p1, Lo/getDecoratedRight;

    .line 1034
    iget-object v4, p1, Lo/getDecoratedRight;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3b

    const/4 v9, 0x0

    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v9}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;-><init>(Lcom/dreamplug/fabrik/ui/control/Template;Lcom/dreamplug/fabrik/ui/control/Overlay;Lcom/dreamplug/fabrik/ui/control/CardDetails;Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/ControlMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    iget-object p1, p0, Lo/getTopDecorationHeight;->extraCallback:Lo/onActivityCreated;

    new-instance v1, Lo/onCanceled;

    check-cast v0, Lo/StaggeredGridLayoutManager;

    invoke-direct {v1, v0}, Lo/onCanceled;-><init>(Lo/StaggeredGridLayoutManager;)V

    iget-object v0, p0, Lo/getTopDecorationHeight;->onTransact:Lo/getTopDecorationHeight$onPostMessage;

    check-cast v0, Lo/onActivityCreated$onNavigationEvent;

    invoke-virtual {p1, v1, v0}, Lo/onActivityCreated;->ICustomTabsCallback(Lo/onCanceled;Lo/onActivityCreated$onNavigationEvent;)V

    .line 39
    iget-object p1, p0, Lo/getTopDecorationHeight;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string v0, "ctaDesc"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f1304d5

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lo/getTopDecorationHeight;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v0, "bottomCtaGroup"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->INotificationSideChannel$Default:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 75
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lo/getTopDecorationHeight;->onMessageChannelReady:Lo/saveOldPosition;

    const-string/jumbo v0, "setupButton"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/getTopDecorationHeight$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/getTopDecorationHeight$onNavigationEvent;-><init>(Lo/getTopDecorationHeight;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_1
    return-void
.end method
