.class public final Lo/canScrollHorizontally;
.super Lo/setQueue;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 J\u001e\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%J\u0016\u0010&\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u001dR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\'\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00070\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\'\u0010\u0018\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00070\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashPayViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_loanManagementResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
        "_loanOrderResponse",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "_orderStatusResponse",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "lendingService",
        "Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "getLendingService",
        "()Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "lendingService$delegate",
        "Lkotlin/Lazy;",
        "loanManagementResponse",
        "Landroidx/lifecycle/LiveData;",
        "getLoanManagementResponse",
        "()Landroidx/lifecycle/LiveData;",
        "loanOrderResponse",
        "getLoanOrderResponse",
        "orderStatusResponse",
        "getOrderStatusResponse",
        "checkOrderStatus",
        "",
        "orderId",
        "",
        "createOrder",
        "body",
        "Lcom/dreamplug/fabrik/ui/lending/CreateLoanPayRequest;",
        "getCustomAmountLoanPayAmount",
        "locId",
        "loanId",
        "amount",
        "",
        "getLoanPayAmount",
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
.field public final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/addWrite<",
            "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/addWrite<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 20
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/canScrollHorizontally;->onMessageChannelReady:Lo/setActive;

    .line 25
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/canScrollHorizontally;->extraCallback:Lo/setActive;

    .line 29
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/canScrollHorizontally;->onNavigationEvent:Lo/setActive;

    .line 32
    sget-object v0, Lo/canScrollHorizontally$extraCallback;->onPostMessage:Lo/canScrollHorizontally$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 32
    iput-object v1, p0, Lo/canScrollHorizontally;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/canScrollHorizontally;)Lo/setActive;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/canScrollHorizontally;->onMessageChannelReady:Lo/setActive;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/canScrollHorizontally;)Lo/setActive;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/canScrollHorizontally;->extraCallback:Lo/setActive;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/canScrollHorizontally;)Lo/setActive;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/canScrollHorizontally;->onNavigationEvent:Lo/setActive;

    return-object p0
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lo/canScrollHorizontally;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/calculateItemBorders;

    .line 89
    invoke-interface {v0, p1}, Lo/calculateItemBorders;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 90
    new-instance v0, Lo/canScrollHorizontally$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/canScrollHorizontally$onMessageChannelReady;-><init>(Lo/canScrollHorizontally;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
