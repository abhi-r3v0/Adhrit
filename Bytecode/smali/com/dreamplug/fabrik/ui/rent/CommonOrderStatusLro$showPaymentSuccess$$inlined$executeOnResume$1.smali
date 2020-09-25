.class public final Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAddFocusables;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V
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
.field private synthetic ICustomTabsCallback:Landroidx/fragment/app/Fragment;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final synthetic onPostMessage:Lo/onAddFocusables;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onAddFocusables;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "state_successful_payment"

    .line 53
    invoke-static {p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 54
    new-instance p1, Lo/DefaultItemAnimator;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    .line 1034
    iget-object v0, v0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 54
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    .line 1055
    iget-object v3, v2, Lo/onAddFocusables;->onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v3}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "$this$getOrNull"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$lastIndex"

    .line 1266
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ltz v4, :cond_0

    const/4 v4, 0x0

    .line 1266
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 54
    :goto_0
    check-cast v3, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, ""

    .line 55
    :cond_2
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    .line 3034
    iget-object v4, v4, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 3215
    iget-object v4, v4, Lo/onAddFocusables$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 4034
    invoke-virtual {v2, v3, v4}, Lo/onAddFocusables;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Lo/onAddFocusables$extraCallback;->extraCallback(Lo/onAddFocusables$extraCallback;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v2

    .line 56
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    .line 5034
    iget-object v3, v0, Lo/onAddFocusables;->asBinder:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    .line 6034
    iget-object v4, v0, Lo/onAddFocusables;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 58
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/onAddFocusables;

    .line 6055
    iget-object v5, v0, Lo/onAddFocusables;->onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-object v0, p1

    .line 54
    invoke-direct/range {v0 .. v5}, Lo/DefaultItemAnimator;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 62
    new-instance v0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1$onPostMessage;

    invoke-direct {v0, p1, p0}, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1$onPostMessage;-><init>(Lo/DefaultItemAnimator;Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;)V

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 7000
    sget-object p1, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 68
    new-instance v0, Lo/getThumbTintList;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v6, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
