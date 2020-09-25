.class public final Lo/getCurrentContentInsetRight;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00150\u00142\u0006\u0010\u0018\u001a\u00020\u0019J\u001a\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/PaymentsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "isCreateOrderInProcess",
        "",
        "paymentService",
        "Lcom/dreamplug/androidapp/payments/PaymentService;",
        "getPaymentService",
        "()Lcom/dreamplug/androidapp/payments/PaymentService;",
        "paymentService$delegate",
        "Lkotlin/Lazy;",
        "snackBarViewModel",
        "Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;",
        "getSnackBarViewModel",
        "()Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;",
        "setSnackBarViewModel",
        "(Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;)V",
        "createOrder",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/payments/model/DPBillResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "params",
        "Lcom/dreamplug/androidapp/payments/model/CreateOrderRequest;",
        "sendUPICommunication",
        "",
        "",
        "",
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
.field public extraCallback:Z

.field public final onMessageChannelReady:Lo/isSameListener;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 22
    sget-object p1, Lo/getCurrentContentInsetRight$extraCallback;->ICustomTabsCallback:Lo/getCurrentContentInsetRight$extraCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 22
    iput-object v0, p0, Lo/getCurrentContentInsetRight;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getCurrentContentInsetRight;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lo/getCurrentContentInsetRight;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lo/getCurrentContentInsetRight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCurrentContentInsetEnd;

    .line 51
    invoke-interface {v0, p1}, Lo/getCurrentContentInsetEnd;->onPostMessage(Ljava/util/Map;)Lo/tryBindViewHolderByDeadline;

    move-result-object p1

    .line 52
    new-instance v0, Lo/getCurrentContentInsetRight$onMessageChannelReady;

    invoke-direct {v0}, Lo/getCurrentContentInsetRight$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/RecyclerView$Recycler;

    const-string v1, "getSessionToken"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    iget-object p1, p1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v1, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
