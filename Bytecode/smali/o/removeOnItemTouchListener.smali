.class public final Lo/removeOnItemTouchListener;
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "isCreateOrderInProcess",
        "",
        "storeService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StoreService;",
        "getStoreService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/store/StoreService;",
        "storeService$delegate",
        "Lkotlin/Lazy;",
        "createOrder",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/payments/model/DPBillResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "params",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StoreOrder;",
        "rollbackRedeem",
        "",
        "rewardUsageId",
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
.field ICustomTabsCallback:Z

.field final extraCallback:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 18
    sget-object v0, Lo/removeOnItemTouchListener$extraCallback;->extraCallback:Lo/removeOnItemTouchListener$extraCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 18
    iput-object v1, p0, Lo/removeOnItemTouchListener;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/removeOnItemTouchListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lo/removeOnItemTouchListener;->ICustomTabsCallback:Z

    return-void
.end method
