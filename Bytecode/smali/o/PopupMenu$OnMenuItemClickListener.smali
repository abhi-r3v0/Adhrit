.class public final Lo/PopupMenu$OnMenuItemClickListener;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PopupMenu$OnMenuItemClickListener$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000U\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0006\u0018\u0000 %2\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u0019H\u0002J\u0012\u0010\u001d\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0019H\u0016J\u001a\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u001b\u0010\u0008\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "()V",
        "loadingUtil",
        "Lcom/cred/pay/ui/utils/PaymentLoadingUtil;",
        "onClickListener",
        "com/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListFragment$onClickListener$1",
        "Lcom/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListFragment$onClickListener$1;",
        "parentViewModel",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel;",
        "getParentViewModel",
        "()Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel;",
        "parentViewModel$delegate",
        "Lkotlin/Lazy;",
        "paymentMethodId",
        "",
        "selectedInstrumentId",
        "viewModel",
        "Lcom/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListViewModel;",
        "getViewModel",
        "()Lcom/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListViewModel;",
        "viewModel$delegate",
        "getLayoutResource",
        "",
        "handleAction",
        "",
        "cta",
        "Lcom/cred/pay/repository/models/checkout/Cta;",
        "initLoadingUtil",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "updateCta",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/PopupMenu$OnMenuItemClickListener$onPostMessage;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsService:Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;

.field private extraCallback:Lo/setAppSearchData;

.field private final getInterfaceDescriptor:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Ljava/lang/String;

.field private warmup:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PopupMenu$OnMenuItemClickListener$onPostMessage;-><init>(B)V

    sput-object v0, Lo/PopupMenu$OnMenuItemClickListener;->onPostMessage:Lo/PopupMenu$OnMenuItemClickListener$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    .line 171
    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$ICustomTabsCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 171
    iput-object v2, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    .line 45
    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$ICustomTabsService;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$ICustomTabsService;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 45
    iput-object v1, p0, Lo/PopupMenu$OnMenuItemClickListener;->getInterfaceDescriptor:Lo/isSameListener;

    .line 130
    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    iput-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->ICustomTabsService:Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/PopupMenu$OnMenuItemClickListener;)V
    .locals 7

    .line 22000
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PopupMenu$OnDismissListener;

    .line 23000
    iget-object v1, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PopupMenu$OnDismissListener;

    .line 23036
    iget-object v1, v1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    const-string v2, "parentViewModel"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 23063
    :cond_0
    iget-object v1, v1, Lo/inflate;->warmup:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 23164
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 24118
    :goto_0
    iget-object v4, v0, Lo/PopupMenu$OnDismissListener;->onPostMessage:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 24164
    iget-object v6, v6, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 24119
    invoke-static {v6, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 24118
    :goto_1
    check-cast v5, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    if-eqz v5, :cond_4

    .line 24172
    iget-object v1, v5, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    if-eqz v1, :cond_4

    .line 24226
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v1, :cond_4

    .line 24234
    iget-object v3, v1, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    .line 24121
    :cond_4
    iget-object v0, v0, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez v0, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-static {v0, v3}, Lo/inflate;->extraCallback(Lo/inflate;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 25000
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PopupMenu$OnDismissListener;

    .line 25026
    iget-object v0, v0, Lo/PopupMenu$OnDismissListener;->onPostMessage:Ljava/util/List;

    .line 21121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 21122
    :goto_3
    sget v3, Lo/onItemHoverEnter$onNavigationEvent;->proceed:I

    invoke-virtual {p0, v3}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/createFullSpanItemFromEnd;

    const-string v4, "proceed"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v0, :cond_8

    const/16 v5, 0x8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    .line 21167
    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 21123
    sget v3, Lo/onItemHoverEnter$onNavigationEvent;->swipeProceed:I

    invoke-virtual {p0, v3}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/getSuggestionRowLayout;

    const-string/jumbo v3, "swipeProceed"

    invoke-static {p0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    .line 21169
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/PopupMenu$OnMenuItemClickListener;)Lo/setAppSearchData;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/PopupMenu$OnMenuItemClickListener;->extraCallback:Lo/setAppSearchData;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/PopupMenu$OnMenuItemClickListener;Lcom/cred/pay/repository/models/checkout/Cta;)V
    .locals 1

    .line 26000
    iget-object p0, p0, Lo/PopupMenu$OnMenuItemClickListener;->getInterfaceDescriptor:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/inflate;

    const-string v0, "instrument_list"

    .line 25127
    invoke-virtual {p0, p1, v0}, Lo/inflate;->onMessageChannelReady(Lcom/cred/pay/repository/models/checkout/Cta;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/PopupMenu$OnMenuItemClickListener;)Lo/PopupMenu$OnDismissListener;
    .locals 0

    .line 27000
    iget-object p0, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/PopupMenu$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->warmup:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 50
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget-object p1, Lo/merge;->extraCallback:Lo/merge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "CheckoutInstrumentListFragment"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "paymentMethodId"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->ICustomTabsCallback:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v3, "selectedInstrumentId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->onNavigationEvent:Ljava/lang/String;

    .line 2000
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PopupMenu$OnDismissListener;

    .line 54
    iget-object v3, p0, Lo/PopupMenu$OnMenuItemClickListener;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3000
    :cond_2
    iget-object v4, p0, Lo/PopupMenu$OnMenuItemClickListener;->getInterfaceDescriptor:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/inflate;

    .line 54
    iget-object v5, p0, Lo/PopupMenu$OnMenuItemClickListener;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentViewModel"

    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3043
    iput-object v4, p1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    .line 4065
    iget-object v6, v4, Lo/inflate;->ICustomTabsService:Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    if-eqz v6, :cond_5

    .line 5019
    iget-object v6, v6, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    if-eqz v6, :cond_5

    .line 3045
    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/cred/pay/repository/models/checkout/Widget;

    .line 5070
    iget-object v8, v8, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    .line 3045
    invoke-static {v8, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_4
    move-object v7, v2

    :goto_2
    check-cast v7, Lcom/cred/pay/repository/models/checkout/Widget;

    goto :goto_3

    :cond_5
    move-object v7, v2

    .line 3047
    :goto_3
    iget-object v3, p1, Lo/PopupMenu$OnDismissListener;->onPostMessage:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 5076
    iget-object v6, v7, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    goto :goto_4

    :cond_6
    move-object v6, v2

    :goto_4
    if-nez v6, :cond_7

    .line 6070
    sget-object v6, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v6, Ljava/util/List;

    .line 3047
    :cond_7
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3048
    iget-object v3, p1, Lo/PopupMenu$OnDismissListener;->onPostMessage:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 3124
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 6164
    iget-object v8, v8, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 3049
    invoke-static {v8, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_9
    move-object v6, v2

    .line 3125
    :goto_5
    check-cast v6, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    const/4 v3, 0x1

    if-nez v6, :cond_b

    .line 3050
    iget-object v5, p1, Lo/PopupMenu$OnDismissListener;->onPostMessage:Ljava/util/List;

    const-string v6, "$this$getOrNull"

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$this$lastIndex"

    .line 6266
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ltz v6, :cond_a

    .line 6266
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3050
    :cond_a
    move-object v6, v2

    check-cast v6, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 8032
    :cond_b
    iget-object v2, p1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez v2, :cond_c

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8063
    :cond_c
    iput-object v6, v2, Lo/inflate;->warmup:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 8033
    iget-object v0, p1, Lo/PopupMenu$OnDismissListener;->extraCallback:Lo/setActive;

    invoke-virtual {v0, v6}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8034
    invoke-static {p1, v6}, Lo/extraCallback;->onMessageChannelReady(Lo/PopupMenu$OnDismissListener;Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    .line 3052
    invoke-virtual {p1}, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback()V

    .line 3053
    iget-object v0, p1, Lo/PopupMenu$OnDismissListener;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    .line 8146
    iget-object v2, v4, Lo/inflate;->validateRelationship:Lo/setActive;

    .line 3053
    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance v4, Lo/PopupMenu$OnDismissListener$onPostMessage;

    invoke-direct {v4, p1}, Lo/PopupMenu$OnDismissListener$onPostMessage;-><init>(Lo/PopupMenu$OnDismissListener;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v2, v4}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 3056
    iget-object p1, p1, Lo/PopupMenu$OnDismissListener;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {p1, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const-string p1, "$this$instrumentListLoad"

    .line 55
    invoke-static {p0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p1, v3, [Lo/addWrite;

    .line 9043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v2, "template_value"

    const-string/jumbo v4, "single_payment_method_bottom_sheet"

    invoke-direct {v0, v2, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v1

    const-string v0, "pairs"

    .line 9007
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "payment_farm_screen_load"

    .line 9007
    invoke-static {p1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 19000
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->getInterfaceDescriptor:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/inflate;

    const/4 v1, 0x0

    .line 19063
    iput-object v1, v0, Lo/inflate;->warmup:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 144
    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 20000
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->warmup:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->warmup:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->warmup:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/PopupMenu$OnMenuItemClickListener;->warmup:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/PopupMenu$OnMenuItemClickListener;->warmup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 59
    sget v0, Lo/onItemHoverEnter$onTransact;->checkout_instrument_list_fragment:I

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    new-instance p1, Lo/onDismiss;

    iget-object p2, p0, Lo/PopupMenu$OnMenuItemClickListener;->ICustomTabsService:Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;

    check-cast p2, Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/onDismiss;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 65
    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->cardList:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const-string/jumbo v0, "this"

    .line 67
    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    new-instance v0, Lo/setGapStrategy;

    .line 70
    new-instance v4, Lo/getGapStrategy;

    .line 10009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v5, 0x1

    .line 10010
    invoke-static {v5, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v7, 0x0

    .line 70
    invoke-direct {v4, v1, v7, v7, v7}, Lo/getGapStrategy;-><init>(IIII)V

    .line 71
    new-instance v6, Lo/getGapStrategy;

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 11010
    invoke-static {v5, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v9, 0x42200000    # 40.0f

    .line 12010
    invoke-static {v5, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v10, 0x41e00000    # 28.0f

    .line 13010
    invoke-static {v5, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 14010
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 71
    invoke-direct {v6, v1, v8, v9, v2}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    move-object v1, v0

    move-object v5, v6

    move v6, v8

    .line 68
    invoke-direct/range {v1 .. v6}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15000
    iget-object p2, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/PopupMenu$OnDismissListener;

    .line 15024
    iget-object p2, p2, Lo/PopupMenu$OnDismissListener;->onNavigationEvent:Lo/MediaControllerCompatApi24$TransportControls;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/PopupMenu$OnMenuItemClickListener$onNavigationEvent;

    invoke-direct {v1, p0, p1}, Lo/PopupMenu$OnMenuItemClickListener$onNavigationEvent;-><init>(Lo/PopupMenu$OnMenuItemClickListener;Lo/onDismiss;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 16000
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PopupMenu$OnDismissListener;

    .line 16040
    iget-object p1, p1, Lo/PopupMenu$OnDismissListener;->extraCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$asInterface;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$asInterface;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 17000
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PopupMenu$OnDismissListener;

    .line 17020
    iget-object p1, p1, Lo/PopupMenu$OnDismissListener;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$onTransact;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$onTransact;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 97
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->proceed:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string p2, "proceed"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/PopupMenu$OnMenuItemClickListener$ICustomTabsCallback$Stub;

    invoke-direct {p2, p0}, Lo/PopupMenu$OnMenuItemClickListener$ICustomTabsCallback$Stub;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 100
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$asBinder;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$asBinder;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 109
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->swipeProceed:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSuggestionRowLayout;

    new-instance p2, Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;

    invoke-direct {p2, p0}, Lo/PopupMenu$OnMenuItemClickListener$onRelationshipValidationResult;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-virtual {p1, p2}, Lo/getSuggestionRowLayout;->setOnSwipeListener(Lo/onDisconnectSetValue;)V

    .line 17148
    new-instance p1, Lo/setAppSearchData;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->bottomSheetView:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    if-eqz p2, :cond_0

    const v0, 0x3f333333    # 0.7f

    const/4 v1, 0x2

    invoke-direct {p1, p2, v7, v0, v1}, Lo/setAppSearchData;-><init>(Lo/onChildrenLoaded;ZFI)V

    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->extraCallback:Lo/setAppSearchData;

    .line 18000
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener;->getInterfaceDescriptor:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/inflate;

    .line 18061
    iget-object p1, p1, Lo/inflate;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 17149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;

    invoke-direct {v0, p0}, Lo/PopupMenu$OnMenuItemClickListener$extraCallback;-><init>(Lo/PopupMenu$OnMenuItemClickListener;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 17148
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
