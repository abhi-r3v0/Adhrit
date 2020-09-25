.class public final Lo/createSnapScroller;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0016J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0008\u0010\u001e\u001a\u00020\u0017H\u0002J\u0008\u0010\u001f\u001a\u00020\u0017H\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0002J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u001cH\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u000b*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u000b*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \u000b*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/ClaimedOutputHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "copyCode",
        "Lcom/dreamplug/ui/CredImageView;",
        "kotlin.jvm.PlatformType",
        "displayCopy",
        "Landroidx/constraintlayout/widget/Group;",
        "lastItemBroadcastAnimationState",
        "",
        "secondaryCta",
        "Landroid/widget/TextView;",
        "voucherBg",
        "Landroid/view/View;",
        "voucherCodeText",
        "voucherCodeTitle",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "onRecycle",
        "setBroadcastAnimation",
        "Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedOutputButton;",
        "setBroadcastAnimationEndedstate",
        "setBroadcastAnimationEndingState",
        "setBroadcastAnimationRunningstate",
        "setBroadcastAnimationStartingstate",
        "stateChange",
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
.field final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

.field private asInterface:I

.field private final extraCallback:Landroid/view/View;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onTransact:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 20010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e011c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/createSnapScroller;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/createSnapScroller;->onMessageChannelReady:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/createSnapScroller;->onPostMessage:Landroid/widget/TextView;

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->voucherBg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/createSnapScroller;->extraCallback:Landroid/view/View;

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    iput-object p1, p0, Lo/createSnapScroller;->onTransact:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getRemainingScrollVertical;

    iput-object p1, p0, Lo/createSnapScroller;->ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/createSnapScroller;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/createSnapScroller;->extraCallback()V

    return-void
.end method

.method private final extraCallback()V
    .locals 3

    .line 194
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "itemView.broadcastCodeAnimation"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lo/createCheckBox;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f12003f

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 197
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/createSnapScroller;)Lo/getRemainingScrollVertical;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/createSnapScroller;->ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/createSnapScroller;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/createSnapScroller;->onPostMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method private final onNavigationEvent()V
    .locals 4

    .line 163
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "itemView.broadcastCodeAnimation"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lo/createCheckBox;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f12003f

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 166
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v2, 0x20

    const/16 v3, 0x30

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 167
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/createSnapScroller;Lo/getRecycleChildrenOnDetach;)V
    .locals 2

    .line 20208
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/createSnapScroller$onTransact;

    invoke-direct {v0, p0, p1}, Lo/createSnapScroller$onTransact;-><init>(Lo/createSnapScroller;Lo/getRecycleChildrenOnDetach;)V

    check-cast v0, Lo/getServerTime;

    const-string p0, "command"

    invoke-static {v0, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21018
    new-instance p0, Lo/updateItemAt$extraCallback;

    invoke-direct {p0, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1, p0}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/createSnapScroller;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/createSnapScroller;->onNavigationEvent()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of v2, v1, Lo/getRecycleChildrenOnDetach;

    if-eqz v2, :cond_13

    .line 47
    iget-object v2, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    const-string/jumbo v3, "secondaryCta"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Lo/getRecycleChildrenOnDetach;

    .line 1096
    iget-object v5, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 2076
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v5, :cond_0

    .line 2088
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onMessageChannelReady:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "s_tWhiteFour_bgBlack"

    .line 3064
    :cond_1
    sget-object v6, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v6, Lo/calculateScrollDirectionForPosition;

    invoke-static {v2, v5, v6}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 49
    iget-object v2, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3096
    iget-object v5, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 4076
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v5, :cond_2

    .line 4089
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_2

    .line 5000
    iget-object v5, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 49
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v5, Lo/createSnapScroller$extraCallback;

    invoke-direct {v5, v0}, Lo/createSnapScroller$extraCallback;-><init>(Lo/createSnapScroller;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v2, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 5097
    iget-boolean v2, v4, Lo/getRecycleChildrenOnDetach;->onPostMessage:Z

    const-string v5, "displayCopy"

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    .line 55
    iget-object v1, v0, Lo/createSnapScroller;->onTransact:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v1, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 6096
    :cond_3
    iget-object v2, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 7079
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v9, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const v10, -0x521dd8ce

    const-string v11, "copyCode"

    const-string v12, "itemView.broadcastCode"

    const-string v13, "itemView"

    if-eq v9, v10, :cond_12

    const v10, 0x63a518c2

    const-string/jumbo v14, "voucherCodeText"

    const-string/jumbo v15, "voucherCodeTitle"

    const-string/jumbo v6, "voucherBg"

    if-eq v9, v10, :cond_11

    const v10, 0x6f7e005a

    if-eq v9, v10, :cond_7

    goto/16 :goto_5

    :cond_7
    const-string v9, "display_w_copy"

    .line 59
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 60
    iget-object v2, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7096
    iget-object v9, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 8076
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v9, :cond_8

    .line 8089
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_8

    .line 9000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    .line 60
    :goto_2
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v0, Lo/createSnapScroller;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v2, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9096
    iget-object v9, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 10077
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onPostMessage:Ljava/lang/String;

    .line 61
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v0, Lo/createSnapScroller;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10096
    iget-object v9, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 11078
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 62
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v0, Lo/createSnapScroller;->extraCallback:Landroid/view/View;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v6, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f08012c

    invoke-static {v6, v9}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v2, v0, Lo/createSnapScroller;->onTransact:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v2, v0, Lo/createSnapScroller;->ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 66
    iget-object v2, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    check-cast v2, Landroid/content/ClipboardManager;

    .line 68
    iget-object v3, v0, Lo/createSnapScroller;->ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v5, Lo/createSnapScroller$ICustomTabsCallback;

    invoke-direct {v5, v0, v2, v1}, Lo/createSnapScroller$ICustomTabsCallback;-><init>(Lo/createSnapScroller;Landroid/content/ClipboardManager;Lo/StaggeredGridLayoutManager;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 11096
    iget-object v2, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 12081
    iget-boolean v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->extraCallback:Z

    if-eqz v2, :cond_f

    .line 83
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 13098
    iget v2, v4, Lo/getRecycleChildrenOnDetach;->onNavigationEvent:I

    const v3, 0x7f12003f

    const-string v5, "itemView.broadcastCodeAnimation"

    if-nez v2, :cond_b

    .line 12121
    iget v2, v0, Lo/createSnapScroller;->asInterface:I

    .line 14098
    iget v6, v4, Lo/getRecycleChildrenOnDetach;->onNavigationEvent:I

    if-eq v2, v6, :cond_a

    .line 14171
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 14172
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lo/createCheckBox;

    move-result-object v2

    if-nez v2, :cond_9

    .line 14173
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 14174
    :cond_9
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v3, 0x30

    const/16 v5, 0x46

    invoke-virtual {v2, v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 14175
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 14176
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lo/createSnapScroller$onNavigationEvent;

    invoke-direct {v3, v0}, Lo/createSnapScroller$onNavigationEvent;-><init>(Lo/createSnapScroller;)V

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14190
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_3

    .line 12124
    :cond_a
    invoke-direct/range {p0 .. p0}, Lo/createSnapScroller;->extraCallback()V

    goto/16 :goto_3

    :cond_b
    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    .line 12128
    iget v2, v0, Lo/createSnapScroller;->asInterface:I

    .line 15098
    iget v6, v4, Lo/getRecycleChildrenOnDetach;->onNavigationEvent:I

    if-eq v2, v6, :cond_d

    .line 15139
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v6, "$this$visible"

    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16009
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 15140
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_c

    .line 15141
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 15142
    :cond_c
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 15143
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v3, 0x20

    invoke-virtual {v2, v8, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 15144
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 15145
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 15146
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lo/createSnapScroller$onPostMessage;

    invoke-direct {v3, v0}, Lo/createSnapScroller$onPostMessage;-><init>(Lo/createSnapScroller;)V

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 12131
    :cond_d
    invoke-direct/range {p0 .. p0}, Lo/createSnapScroller;->onNavigationEvent()V

    .line 16098
    :cond_e
    :goto_3
    iget v2, v4, Lo/getRecycleChildrenOnDetach;->onNavigationEvent:I

    .line 12135
    iput v2, v0, Lo/createSnapScroller;->asInterface:I

    goto :goto_4

    .line 86
    :cond_f
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_4
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->broadcastCode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lo/createSnapScroller$onMessageChannelReady;

    invoke-direct {v3, v0, v1}, Lo/createSnapScroller$onMessageChannelReady;-><init>(Lo/createSnapScroller;Lo/StaggeredGridLayoutManager;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 67
    :cond_10
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string v1, "display"

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 95
    iget-object v1, v0, Lo/createSnapScroller;->extraCallback:Landroid/view/View;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0801c1

    invoke-static {v2, v6}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v1, v0, Lo/createSnapScroller;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17096
    iget-object v2, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 18077
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onPostMessage:Ljava/lang/String;

    .line 96
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, v0, Lo/createSnapScroller;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18096
    iget-object v2, v4, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 19078
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 97
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v0, Lo/createSnapScroller;->onTransact:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v1, v0, Lo/createSnapScroller;->ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 101
    iget-object v1, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_12
    const-string v1, "button"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 105
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v1, v0, Lo/createSnapScroller;->onTransact:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v1, v0, Lo/createSnapScroller;->ICustomTabsCallback$Stub:Lo/getRemainingScrollVertical;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 108
    iget-object v1, v0, Lo/createSnapScroller;->onNavigationEvent:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_5
    return-void
.end method

.method public final j_()V
    .locals 3

    .line 201
    invoke-super {p0}, Lo/createOrientationHelpers;->j_()V

    .line 202
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 203
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->broadcastCodeAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "itemView.broadcastCodeAnimation"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    return-void
.end method
