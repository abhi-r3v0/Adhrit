.class public final Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/layoutChildLeft;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Landroidx/fragment/app/Fragment;

.field final synthetic onPostMessage:Lo/layoutChildLeft;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/layoutChildLeft;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/layoutChildLeft;

    iput-object p4, p0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "owner"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/layoutChildLeft;

    .line 1265
    iget-object v7, v1, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    const/4 v1, 0x1

    if-eqz v7, :cond_1

    const-string/jumbo v2, "state_successful_payment"

    .line 54
    invoke-static {v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 55
    new-instance v8, Lo/DefaultItemAnimator;

    iget-object v3, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onNavigationEvent:Landroidx/fragment/app/Fragment;

    .line 56
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/layoutChildLeft;

    .line 2056
    iget-wide v4, v2, Lo/layoutChildLeft;->ICustomTabsCallback:D

    .line 57
    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f130382

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/layoutChildLeft;

    .line 3056
    iget-wide v11, v11, Lo/layoutChildLeft;->ICustomTabsCallback:D

    .line 57
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    invoke-static/range {v12 .. v19}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 3287
    invoke-virtual {v2, v4, v5, v6, v9}, Lo/layoutChildLeft;->onMessageChannelReady(DLjava/lang/String;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v4

    .line 58
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/layoutChildLeft;

    .line 4052
    iget-object v5, v2, Lo/layoutChildLeft;->ICustomTabsService:Ljava/lang/String;

    .line 59
    sget-object v2, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/layoutChildLeft;

    .line 4055
    iget-object v2, v2, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v2, :cond_0

    const-string v6, "paymentItem"

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v2

    const-string v6, "NA"

    .line 5010
    invoke-static {v2, v6}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    move-object v2, v8

    .line 55
    invoke-direct/range {v2 .. v7}, Lo/DefaultItemAnimator;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 61
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 62
    new-instance v2, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1$onMessageChannelReady;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1$onMessageChannelReady;-><init>(Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v8, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    sget-object v2, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 6000
    sget-object v2, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setActive;

    .line 65
    new-instance v3, Lo/getThumbTintList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 66
    sget-object v2, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->getInterfaceDescriptor()V

    .line 27
    :cond_1
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v3, v0

    check-cast v3, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v2, v3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v1, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
