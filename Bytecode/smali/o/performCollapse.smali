.class public final Lo/performCollapse;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/adapter/UpiSetupViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "btFetchAccounts",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "headerBanner",
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "itemSetupUpiInstrument",
        "Lcom/cred/pay/ui/instrumentlisting/adapter/SetupUpiInstrument;",
        "loadingAnimView",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "tvTitle",
        "tvUpiApps",
        "tvUpiSetupText",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "showProgress",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/ScrollingTabContainerView;

.field private final ICustomTabsCallback$Stub:Lo/hasGapsToFix$onMessageChannelReady;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

.field private final onTransact:Lo/getNextSpan;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Lo/onItemHoverEnter$onTransact;->item_payment_upi_setup:I

    const-string v1, "$this$inflate"

    .line 7010
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/performCollapse;->ICustomTabsCallback$Stub:Lo/hasGapsToFix$onMessageChannelReady;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvUpiSetupText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performCollapse;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->tvUpiApps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->btFetchAccounts:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->loadingAnimView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lo/performCollapse;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->headerBanner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getNextSpan;

    iput-object p1, p0, Lo/performCollapse;->onTransact:Lo/getNextSpan;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/performCollapse;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/performCollapse;->ICustomTabsCallback$Stub:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/performCollapse;)Lo/ScrollingTabContainerView;
    .locals 1

    .line 22
    iget-object p0, p0, Lo/performCollapse;->ICustomTabsCallback:Lo/ScrollingTabContainerView;

    if-nez p0, :cond_0

    const-string v0, "itemSetupUpiInstrument"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lo/ScrollingTabContainerView;

    if-eqz v0, :cond_8

    .line 37
    iget-object v0, p0, Lo/performCollapse;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 38
    iget-object v0, p0, Lo/performCollapse;->onPostMessage:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "loadingAnimView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 1017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string v3, "btFetchAccounts"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v4, "$this$visible"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2009
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lo/performCollapse;->onTransact:Lo/getNextSpan;

    const-string v5, "headerBanner"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    check-cast p1, Lo/ScrollingTabContainerView;

    .line 2020
    iget-object v5, p1, Lo/ScrollingTabContainerView;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    .line 41
    invoke-static {v0, v5}, Lo/extraCallback;->onPostMessage(Landroid/view/View;Lcom/cred/pay/repository/models/Status;)V

    .line 3018
    iget v0, p1, Lo/ScrollingTabContainerView;->onPostMessage:I

    const/4 v5, 0x1

    const-string/jumbo v6, "s_tWhiteFour_bgBlack"

    const-string/jumbo v7, "tvUpiApps"

    if-ne v0, v5, :cond_1

    .line 45
    iget-object v0, p0, Lo/performCollapse;->extraCallback:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_setup_content:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 46
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_fetch_accounts:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 47
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->other_upi:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 48
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v6, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 49
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    const-string v5, "h_tDarkTwo_brDarkTwo"

    invoke-static {v0, v5, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 50
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/performCollapse$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/performCollapse$onMessageChannelReady;-><init>(Lo/performCollapse;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 53
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/performCollapse$onPostMessage;

    invoke-direct {v1, p0}, Lo/performCollapse$onPostMessage;-><init>(Lo/performCollapse;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 56
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 3019
    iget-boolean v1, p1, Lo/ScrollingTabContainerView;->extraCallback:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 108
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v8, 0x2

    const-string/jumbo v9, "s_tDarkTwo_bgLightPeach"

    if-ne v0, v8, :cond_4

    .line 59
    iget-object v0, p0, Lo/performCollapse;->extraCallback:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_setup_content:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 60
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->pay_select_bank:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 61
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->pay_change_sim:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 62
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v6, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 63
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v9, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 64
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/performCollapse$extraCallback;

    invoke-direct {v1, p0}, Lo/performCollapse$extraCallback;-><init>(Lo/performCollapse;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 67
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/performCollapse$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/performCollapse$onNavigationEvent;-><init>(Lo/performCollapse;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 70
    new-instance v0, Lo/requireArguments;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/requireArguments;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    .line 3150
    iget-boolean v3, v0, Lo/requireArguments;->onMessageChannelReady:Z

    if-eqz v3, :cond_2

    .line 3154
    iget-boolean v0, v0, Lo/requireArguments;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    const/4 v2, 0x0

    .line 110
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v0, v5, :cond_6

    .line 74
    iget-object v0, p0, Lo/performCollapse;->extraCallback:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_session_failed_content:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 75
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->upi_refresh:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 76
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->other_upi:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 77
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v6, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 78
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast v1, Lo/calculateScrollDirectionForPosition;

    invoke-static {v0, v9, v1}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 79
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/performCollapse$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/performCollapse$ICustomTabsCallback;-><init>(Lo/performCollapse;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 83
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/performCollapse$onTransact;

    invoke-direct {v1, p0}, Lo/performCollapse$onTransact;-><init>(Lo/performCollapse;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 86
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 4019
    iget-boolean v1, p1, Lo/ScrollingTabContainerView;->extraCallback:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 112
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    if-ne v0, v4, :cond_7

    .line 89
    iget-object v0, p0, Lo/performCollapse;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lo/performCollapse;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lo/performCollapse;->extraCallback:Lo/createFullSpanItemFromEnd;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->session_timeout_message:I

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 94
    :cond_7
    :goto_1
    iput-object p1, p0, Lo/performCollapse;->ICustomTabsCallback:Lo/ScrollingTabContainerView;

    :cond_8
    return-void
.end method
