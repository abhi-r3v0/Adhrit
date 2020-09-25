.class public final Lo/prepareForDrop;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashNameViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_updateNameResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "lendingService",
        "Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "getLendingService",
        "()Lcom/dreamplug/fabrik/ui/lending/LendingService;",
        "lendingService$delegate",
        "Lkotlin/Lazy;",
        "updateNameResponse",
        "Landroidx/lifecycle/LiveData;",
        "getUpdateNameResponse",
        "()Landroidx/lifecycle/LiveData;",
        "updateName",
        "",
        "locId",
        "",
        "loanId",
        "name",
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
.field public final extraCallback:Lo/isSameListener;

.field public final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 16
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/prepareForDrop;->onPostMessage:Lo/setActive;

    .line 18
    sget-object v0, Lo/prepareForDrop$ICustomTabsCallback;->onPostMessage:Lo/prepareForDrop$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 18
    iput-object v1, p0, Lo/prepareForDrop;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/prepareForDrop;)Lo/setActive;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/prepareForDrop;->onPostMessage:Lo/setActive;

    return-object p0
.end method
