.class public final Lo/onSmoothScrollerStopped;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/getMaxAvailableHeight$ICustomTabsCallback;
.implements Lo/createScroller;
.implements Lo/getMenuListView$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSmoothScrollerStopped$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 ?2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001?B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J&\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u0001042\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u00105\u001a\u00020\"H\u0016J\u0010\u00106\u001a\u00020\"2\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\"2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u00109\u001a\u00020\"2\u0006\u0010<\u001a\u00020\u0014H\u0016J\u0018\u0010=\u001a\u00020\"2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020(H\u0002J\u0008\u0010>\u001a\u00020\"H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\r\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006@"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/cred/pay/ui/PaymentContainerFragment$CommunicationInterface;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerFragment$CommunicationInterface;",
        "()V",
        "errorToast",
        "Lcom/dreamplug/widget/ErrorToast;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RentPayExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RentPayExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "orderId",
        "",
        "paymentContainer",
        "getPaymentContainer",
        "()Landroidx/fragment/app/Fragment;",
        "setPaymentContainer",
        "(Landroidx/fragment/app/Fragment;)V",
        "progressDialog",
        "Lcom/dreamplug/widget/CredProgressDialog;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/rent/RentPayViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/rent/RentPayViewModel;",
        "viewModel$delegate",
        "fetchRentOrderDetails",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getPaymentStatusConfig",
        "Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$PaymentStatusConfig;",
        "amount",
        "",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onBackPressed",
        "",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDetach",
        "paymentCanceled",
        "reason",
        "",
        "paymentFinished",
        "paymentStatus",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;",
        "paymentMethodGroup",
        "updateOrderToPaymentUi",
        "userCanceled",
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


# instance fields
.field ICustomTabsCallback:Landroidx/fragment/app/Fragment;

.field private final asInterface:Lo/isSameListener;

.field private extraCallback:Lo/createFullSpanItemFromStart;

.field private final onMessageChannelReady:Lo/setReenterTransition$onPostMessage;

.field public final onNavigationEvent:Lo/isSameListener;

.field public final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 40
    new-instance v0, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v0}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/onSmoothScrollerStopped;->onMessageChannelReady:Lo/setReenterTransition$onPostMessage;

    .line 43
    invoke-static {p0}, Lo/setAddDuration;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/isSameListener;

    move-result-object v0

    iput-object v0, p0, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    .line 45
    new-instance v0, Lo/onSmoothScrollerStopped$onPostMessage;

    invoke-direct {v0, p0}, Lo/onSmoothScrollerStopped$onPostMessage;-><init>(Lo/onSmoothScrollerStopped;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 45
    iput-object v2, p0, Lo/onSmoothScrollerStopped;->asInterface:Lo/isSameListener;

    .line 51
    new-instance v0, Lo/onSmoothScrollerStopped$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/onSmoothScrollerStopped$ICustomTabsCallback$Stub;-><init>(Lo/onSmoothScrollerStopped;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 51
    iput-object v1, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method private final extraCallback(D)Lo/onAddFocusables$extraCallback;
    .locals 28

    move-object/from16 v0, p0

    .line 214
    new-instance v18, Lo/onAddFocusables$extraCallback;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 24000
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 24026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 24045
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->newSession:Ljava/lang/String;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 25000
    :goto_0
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 25026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_1

    .line 25041
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->asInterface:Ljava/lang/String;

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 26000
    :goto_1
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 26026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_2

    .line 26043
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->asBinder:Ljava/lang/String;

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 27000
    :goto_2
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 27026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    const-string v7, ""

    if-eqz v1, :cond_4

    .line 27038
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, v1

    goto :goto_4

    :cond_4
    :goto_3
    move-object v8, v7

    .line 28000
    :goto_4
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 28026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_6

    .line 28035
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v9, v1

    goto :goto_6

    :cond_6
    :goto_5
    move-object v9, v7

    .line 29000
    :goto_6
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 29026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_7

    .line 29048
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 221
    :cond_7
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1303bb

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object/from16 v16, v1

    .line 223
    sget-object v1, Lo/length;->extraCallback:Lo/length;

    const/16 v21, 0x0

    .line 30000
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 30026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_9

    .line 30051
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v22, v1

    goto :goto_7

    :cond_9
    move-object/from16 v22, v3

    :goto_7
    const/16 v23, 0x0

    .line 227
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x374

    const-string v19, "home"

    const-string/jumbo v20, "web"

    .line 223
    invoke-static/range {v19 .. v27}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 31000
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 31026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_a

    .line 31055
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->warmup:Ljava/lang/String;

    move-object v12, v1

    goto :goto_8

    :cond_a
    move-object v12, v3

    .line 32000
    :goto_8
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 32026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_b

    .line 32030
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->extraCallback:Ljava/lang/String;

    move-object v14, v1

    goto :goto_9

    :cond_b
    move-object v14, v3

    .line 33000
    :goto_9
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 33026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_c

    .line 33028
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->onMessageChannelReady:Ljava/lang/String;

    move-object v15, v1

    goto :goto_a

    :cond_c
    move-object v15, v3

    .line 34000
    :goto_a
    iget-object v1, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/stopSmoothScroller;

    .line 34026
    iget-object v1, v1, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v1, :cond_d

    .line 34053
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/rent/Config;->getInterfaceDescriptor:Ljava/lang/String;

    move-object/from16 v19, v1

    goto :goto_b

    :cond_d
    move-object/from16 v19, v3

    :goto_b
    const/4 v10, 0x0

    const/16 v17, 0x2

    const/4 v3, 0x0

    const-string v13, "rent_payment_status"

    move-object/from16 v1, v18

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, v19

    .line 214
    invoke-direct/range {v1 .. v17}, Lo/onAddFocusables$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v18
.end method

.method public static final synthetic extraCallback(Lo/onSmoothScrollerStopped;Ljava/lang/String;D)V
    .locals 10

    .line 36072
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 36073
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "source"

    const-string v2, "rent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36074
    new-instance v9, Lcom/cred/pay/repository/models/PaymentOrder;

    .line 36075
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, ""

    const-string v4, "RENT"

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    .line 36074
    invoke-direct/range {v0 .. v8}, Lcom/cred/pay/repository/models/PaymentOrder;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/cred/pay/repository/models/RetryInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36079
    iget-object p0, p0, Lo/onSmoothScrollerStopped;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    instance-of p1, p0, Lo/getMaxAvailableHeight;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lo/getMaxAvailableHeight;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v9}, Lo/getMaxAvailableHeight;->ICustomTabsCallback(Lcom/cred/pay/repository/models/PaymentOrder;)V

    :cond_1
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/onSmoothScrollerStopped;D)Lo/onAddFocusables$extraCallback;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/onSmoothScrollerStopped;->extraCallback(D)Lo/onAddFocusables$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/onSmoothScrollerStopped;)Lo/setReenterTransition$onPostMessage;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/onSmoothScrollerStopped;->onMessageChannelReady:Lo/setReenterTransition$onPostMessage;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/onSmoothScrollerStopped;)Lo/createFullSpanItemFromStart;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/onSmoothScrollerStopped;->extraCallback:Lo/createFullSpanItemFromStart;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 238
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 239
    instance-of v1, v0, Lo/createScroller;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Lo/createScroller;

    invoke-interface {v0}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()V
    .locals 5

    .line 156
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 15000
    :cond_0
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 157
    invoke-static {v0, v1, v2, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public final extraCallback(I)V
    .locals 4

    .line 181
    iget-object p1, p0, Lo/onSmoothScrollerStopped;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 19000
    :cond_0
    iget-object p1, p0, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 182
    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 205
    sget-object p1, Lo/getParentFragmentManager;->onTransact:Lo/getParentFragmentManager;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1000
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 2000
    iget-object v1, p0, Lo/onSmoothScrollerStopped;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$cancel;

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    iput-object v1, v0, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    .line 56
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "RentPaymentFragment"

    .line 2029
    invoke-interface {v0, v3, v1, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const-string v0, "rent_pay_flow_start"

    .line 57
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 58
    new-instance v0, Lo/createFullSpanItemFromStart;

    invoke-direct {v0}, Lo/createFullSpanItemFromStart;-><init>()V

    iput-object v0, p0, Lo/onSmoothScrollerStopped;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0, v2}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 60
    :cond_1
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v3, "progress"

    invoke-virtual {v0, v1, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 3000
    :cond_2
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 3021
    iget-object v0, v0, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    const-string v1, "extra"

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3168
    :cond_3
    iget-object v0, v0, Lo/onDetach$cancel;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4000
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 4015
    iget-object v0, v0, Lo/stopSmoothScroller;->onMessageChannelReady:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 2085
    move-object v3, p0

    check-cast v3, Lo/toLegacyStreamType;

    new-instance v4, Lo/onSmoothScrollerStopped$onNavigationEvent;

    invoke-direct {v4, p0, p1}, Lo/onSmoothScrollerStopped$onNavigationEvent;-><init>(Lo/onSmoothScrollerStopped;Landroid/os/Bundle;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 5000
    :cond_4
    iget-object p1, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/stopSmoothScroller;

    .line 5023
    iget-object p1, p1, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez p1, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5168
    :cond_5
    iget-object p1, p1, Lo/onDetach$cancel;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 2127
    sget-object p1, Lo/setWindowLayoutType;->onPostMessage:Lo/setWindowLayoutType;

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string v4, "lob"

    const-string v5, "rent"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    const-string v3, "pairs"

    .line 2127
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(I)V

    move-object p1, v3

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 2127
    invoke-static {v3}, Lo/setWindowLayoutType;->onPostMessage(Ljava/util/HashMap;)V

    .line 2130
    new-instance p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder;

    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v0, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 2130
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-direct {p1, v0}, Lcom/cred/pay/ui/checkout/CheckoutBuilder;-><init>(Ljava/lang/String;)V

    .line 2131
    new-instance v0, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;

    const/4 v4, 0x0

    .line 8000
    iget-object v3, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/stopSmoothScroller;

    .line 8023
    iget-object v3, v3, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez v3, :cond_7

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8168
    :cond_7
    iget-object v5, v3, Lo/onDetach$cancel;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 2132
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2133
    :cond_8
    sget-object v3, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 9122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v3

    if-nez v3, :cond_9

    const-string v6, "context"

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_9
    const v6, 0x7f130272

    .line 2133
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "DreamApplication.context\u2026(R.string.google_api_key)"

    invoke-static {v6, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2134
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v3}, Lo/setTrackTintMode;->onPostMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v8, "rent_pay"

    move-object v3, v0

    .line 2131
    invoke-direct/range {v3 .. v10}, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "data"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10018
    iput-object v0, p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->onNavigationEvent:Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;

    .line 2138
    sget-object v0, Lo/getContentInsetEndWithActions;->ICustomTabsCallback:Lo/getContentInsetEndWithActions;

    invoke-static {v2}, Lo/getContentInsetEndWithActions;->onMessageChannelReady(Z)Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    move-result-object v0

    const-string v2, "checkoutConfigs"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10023
    iput-object v0, p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->extraCallback:Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    .line 2141
    invoke-virtual {p1}, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->extraCallback()Lo/getMenuListView;

    move-result-object p1

    .line 2142
    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lo/onSmoothScrollerStopped;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 2143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 10464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const v0, 0x7f0b0542

    const/4 v3, 0x2

    const-string v4, "paymentFragment"

    .line 11343
    invoke-virtual {v2, v0, p1, v4, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 2146
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 2147
    iget-object p1, p0, Lo/onSmoothScrollerStopped;->extraCallback:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 12000
    :cond_b
    iget-object p1, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/stopSmoothScroller;

    .line 12021
    iget-object p1, p1, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez p1, :cond_c

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 12168
    :cond_c
    iget-object p1, p1, Lo/onDetach$cancel;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 13000
    iget-object v0, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    const-string v1, "id"

    .line 2149
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14000
    iget-object v1, v0, Lo/stopSmoothScroller;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeAndRecycleAllViews;

    .line 13035
    invoke-interface {v1, p1}, Lo/removeAndRecycleAllViews;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 13036
    new-instance v1, Lo/stopSmoothScroller$onPostMessage;

    invoke-direct {v1, v0}, Lo/stopSmoothScroller$onPostMessage;-><init>(Lo/stopSmoothScroller;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_d
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e009d

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 210
    sget-object v0, Lo/getParentFragmentManager;->onTransact:Lo/getParentFragmentManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
    .locals 10

    const-string v0, "paymentStatus"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 270
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 271
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 19212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_7

    .line 20015
    iget-object v5, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    if-eqz v5, :cond_1

    .line 20034
    iget-object v5, v5, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->asInterface:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_2

    .line 192
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 21015
    :cond_2
    iget-object v7, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    if-eqz v7, :cond_3

    .line 21026
    iget-object v7, v7, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->ICustomTabsCallback:Ljava/lang/Double;

    if-nez v7, :cond_5

    .line 22015
    :cond_3
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusData;

    if-eqz p1, :cond_4

    .line 22024
    iget-object v7, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusData;->onPostMessage:Ljava/lang/Double;

    goto :goto_2

    :cond_4
    move-object v7, v4

    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 194
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    goto :goto_3

    :cond_6
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 22039
    :goto_3
    invoke-direct {p0, v7, v8}, Lo/onSmoothScrollerStopped;->extraCallback(D)Lo/onAddFocusables$extraCallback;

    move-result-object p1

    .line 196
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 190
    new-instance v8, Lo/onAddFocusables;

    const-string v9, "RENT"

    invoke-direct {v8, v9, v5, p1, v7}, Lo/onAddFocusables;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onAddFocusables$extraCallback;Ljava/util/Map;)V

    .line 197
    sget-object p1, Lo/setTextOff;->onNavigationEvent:Lo/setTextOff;

    move-object p1, v8

    check-cast p1, Lo/getSplitTrack;

    const-string v5, "paymentData"

    invoke-static {v5, p1}, Lo/setTextOff;->extraCallback(Ljava/lang/String;Lo/getSplitTrack;)V

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v8, p1}, Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    .line 23000
    iget-object p1, p0, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v5, 0x7

    .line 199
    invoke-static {p1, v4, v2, v2, v5}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 273
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_4

    .line 274
    :cond_7
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_8

    .line 275
    new-instance v2, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onSmoothScrollerStopped;Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 276
    iget-object p1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 278
    :cond_8
    :goto_4
    new-instance p1, Lo/onSmoothScrollerStopped$onMessageChannelReady;

    invoke-direct {p1, v3, v0}, Lo/onSmoothScrollerStopped$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 10

    const-string v0, "paymentMethodGroup"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 260
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 15212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 16000
    iget-object v4, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/stopSmoothScroller;

    .line 16019
    iget-object v4, v4, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez v4, :cond_1

    const-string v6, "extra"

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 16168
    :cond_1
    iget-object v4, v4, Lo/onDetach$cancel;->onMessageChannelReady:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 168
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 17000
    :cond_2
    iget-object v6, p0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/stopSmoothScroller;

    .line 17024
    iget-object v6, v6, Lo/stopSmoothScroller;->extraCallback:Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 169
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    goto :goto_1

    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 17039
    :goto_1
    invoke-direct {p0, v6, v7}, Lo/onSmoothScrollerStopped;->extraCallback(D)Lo/onAddFocusables$extraCallback;

    move-result-object v6

    .line 170
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    .line 166
    new-instance v8, Lo/onAddFocusables;

    const-string v9, "RENT"

    invoke-direct {v8, v9, v4, v6, v7}, Lo/onAddFocusables;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onAddFocusables$extraCallback;Ljava/util/Map;)V

    .line 171
    sget-object v4, Lo/setTextOff;->onNavigationEvent:Lo/setTextOff;

    move-object v4, v8

    check-cast v4, Lo/getSplitTrack;

    const-string v6, "paymentData"

    invoke-static {v6, v4}, Lo/setTextOff;->extraCallback(Ljava/lang/String;Lo/getSplitTrack;)V

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v8, v4}, Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    .line 18000
    iget-object v4, p0, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMoveDuration;

    const/4 v6, 0x7

    .line 173
    invoke-static {v4, v3, v1, v1, v6}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 263
    iput-boolean v5, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 264
    :cond_4
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_5

    .line 265
    new-instance v1, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/rent/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onSmoothScrollerStopped;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 266
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 268
    :cond_5
    :goto_2
    new-instance v0, Lo/onSmoothScrollerStopped$ICustomTabsCallback;

    invoke-direct {v0, v2, p1}, Lo/onSmoothScrollerStopped$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
