.class public final Lo/handleMissingPreInfoForChangeError;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015R$\u0010\u0003\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\'\u0010\u000e\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00050\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_winTncDetailsResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "lendingService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinService;",
        "getLendingService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinService;",
        "lendingService$delegate",
        "Lkotlin/Lazy;",
        "winTncDetailsResponse",
        "Landroidx/lifecycle/LiveData;",
        "getWinTncDetailsResponse",
        "()Landroidx/lifecycle/LiveData;",
        "fetchTncDetails",
        "",
        "id",
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
.field final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/addWrite<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 16
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/handleMissingPreInfoForChangeError;->ICustomTabsCallback:Lo/setActive;

    .line 18
    sget-object v0, Lo/handleMissingPreInfoForChangeError$ICustomTabsCallback;->onMessageChannelReady:Lo/handleMissingPreInfoForChangeError$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 18
    iput-object v1, p0, Lo/handleMissingPreInfoForChangeError;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/handleMissingPreInfoForChangeError;)Lo/setActive;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/handleMissingPreInfoForChangeError;->ICustomTabsCallback:Lo/setActive;

    return-object p0
.end method
