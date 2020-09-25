.class public final Lo/notifyItemInserted;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u001fR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/FabMenuViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_stateData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/main/FabState;",
        "value",
        "",
        "isExpanded",
        "()Z",
        "setExpanded",
        "(Z)V",
        "runnable",
        "Ljava/lang/Runnable;",
        "getRunnable",
        "()Ljava/lang/Runnable;",
        "setRunnable",
        "(Ljava/lang/Runnable;)V",
        "show",
        "getShow",
        "setShow",
        "state",
        "getState",
        "()Lcom/dreamplug/fabrik/ui/main/FabState;",
        "setState",
        "(Lcom/dreamplug/fabrik/ui/main/FabState;)V",
        "stateData",
        "Landroidx/lifecycle/LiveData;",
        "getStateData",
        "()Landroidx/lifecycle/LiveData;",
        "nudge",
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
.field public extraCallback:Lo/notifyItemRangeChanged;

.field public final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/notifyItemRangeChanged;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 13
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/notifyItemInserted;->onMessageChannelReady:Lo/setActive;

    .line 14
    new-instance v0, Lo/notifyItemRangeChanged;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/notifyItemRangeChanged;-><init>(B)V

    iput-object v0, p0, Lo/notifyItemInserted;->extraCallback:Lo/notifyItemRangeChanged;

    .line 23
    iget-object v1, p0, Lo/notifyItemInserted;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Z)V
    .locals 4

    .line 41
    iget-object v0, p0, Lo/notifyItemInserted;->extraCallback:Lo/notifyItemRangeChanged;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, p1, v3}, Lo/notifyItemRangeChanged;->ICustomTabsCallback(Lo/notifyItemRangeChanged;ZLo/throwIfInMutationOperation;ZI)Lo/notifyItemRangeChanged;

    move-result-object p1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    iput-object p1, p0, Lo/notifyItemInserted;->extraCallback:Lo/notifyItemRangeChanged;

    .line 1017
    iget-object v0, p0, Lo/notifyItemInserted;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
