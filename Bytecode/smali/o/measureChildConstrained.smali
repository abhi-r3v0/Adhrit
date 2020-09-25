.class public final Lo/measureChildConstrained;
.super Lo/findLastVisibleItemPositions;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/measureChildConstrained$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0005\u0018\u0000 \u00162\u00020\u00012\u00020\u0002:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0016J\u000c\u0010\u000b\u001a\u00060\u000cj\u0002`\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u001a\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/checkout/paymentstatus/CheckoutSuccessFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "()V",
        "onClickListener",
        "com/dreamplug/androidapp/payments/checkout/paymentstatus/CheckoutSuccessFragment$onClickListener$1",
        "Lcom/dreamplug/androidapp/payments/checkout/paymentstatus/CheckoutSuccessFragment$onClickListener$1;",
        "status",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;",
        "getLayoutResource",
        "",
        "onBackPressed",
        "",
        "Lcom/dreamplug/utils/IsHandled;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDismiss",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/measureChildConstrained$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private final extraCallback:Lo/measureChildConstrained$ICustomTabsCallback;

.field private onNavigationEvent:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/measureChildConstrained$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/measureChildConstrained$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/measureChildConstrained;->onMessageChannelReady:Lo/measureChildConstrained$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    .line 64
    new-instance v0, Lo/measureChildConstrained$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/measureChildConstrained$ICustomTabsCallback;-><init>(Lo/measureChildConstrained;)V

    iput-object v0, p0, Lo/measureChildConstrained;->extraCallback:Lo/measureChildConstrained$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lo/findLastVisibleItemPositions;->onTransact()V

    const/4 v0, 0x1

    return v0
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/measureChildConstrained;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "status"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    iput-object p1, p0, Lo/measureChildConstrained;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    :cond_0
    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 9000
    iget-object v0, p0, Lo/measureChildConstrained;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/measureChildConstrained;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/measureChildConstrained;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/measureChildConstrained;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/measureChildConstrained;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e0098

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 36
    new-instance p2, Lo/measureChildCollapseMargins;

    iget-object v0, p0, Lo/measureChildConstrained;->extraCallback:Lo/measureChildConstrained$ICustomTabsCallback;

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0}, Lo/measureChildCollapseMargins;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v0, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 39
    iget-object v1, p0, Lo/measureChildConstrained;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    if-eqz v1, :cond_4

    .line 2017
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onPostMessage:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 39
    check-cast v1, Ljava/lang/Iterable;

    .line 91
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cred/pay/repository/models/checkout/ViewContainer;

    .line 2068
    iget-object v3, v2, Lcom/cred/pay/repository/models/checkout/ViewContainer;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "CS_1"

    .line 40
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    new-instance v3, Lo/addSystemView$onNavigationEvent;

    .line 2070
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/ViewContainer;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    if-nez v2, :cond_1

    .line 41
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-direct {v3, v2}, Lo/addSystemView$onNavigationEvent;-><init>(Lcom/cred/pay/repository/models/checkout/OrderStatusView;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3068
    :cond_2
    iget-object v3, v2, Lcom/cred/pay/repository/models/checkout/ViewContainer;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "CS_2"

    .line 42
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    new-instance v3, Lo/ensureCollapseButtonView$ICustomTabsCallback;

    .line 3070
    iget-object v2, v2, Lcom/cred/pay/repository/models/checkout/ViewContainer;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    if-nez v2, :cond_3

    .line 43
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-direct {v3, v2}, Lo/ensureCollapseButtonView$ICustomTabsCallback;-><init>(Lcom/cred/pay/repository/models/checkout/OrderStatusView;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "value"

    .line 46
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v1, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v1, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 48
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const-string/jumbo v1, "this"

    .line 50
    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    new-instance p2, Lo/setGapStrategy;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v4, Lo/getGapStrategy;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "Resources.getSystem()"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x1

    .line 5010
    invoke-static {v7, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 53
    invoke-direct {v4, v1, v0, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    .line 54
    new-instance v8, Lo/getGapStrategy;

    .line 55
    sget-object v1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v1

    .line 5320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v9, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 55
    :goto_1
    check-cast v1, Landroid/view/WindowInsets;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 6009
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 6010
    invoke-static {v7, v6, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v1, v6

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v9, 0x41a00000    # 20.0f

    .line 7010
    invoke-static {v7, v9, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 8010
    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 54
    invoke-direct {v8, v0, v1, v6, v5}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v6, 0x2

    move-object v1, p2

    move-object v5, v8

    .line 51
    invoke-direct/range {v1 .. v6}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
