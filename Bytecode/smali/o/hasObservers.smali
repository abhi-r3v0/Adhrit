.class public final Lo/hasObservers;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\rJ\u000e\u0010\u0006\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\rJ\u0010\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u001eJ\u0008\u0010$\u001a\u00020\rH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/BottomBarViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_stateData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/main/BottomBarState;",
        "hideBar",
        "",
        "isScrolling",
        "showBottomBarOnIdeal",
        "Ljava/io/Closeable;",
        "showBottomBarRunnable",
        "Lkotlin/Function0;",
        "",
        "value",
        "state",
        "getState",
        "()Lcom/dreamplug/fabrik/ui/main/BottomBarState;",
        "setState",
        "(Lcom/dreamplug/fabrik/ui/main/BottomBarState;)V",
        "stateData",
        "Landroidx/lifecycle/LiveData;",
        "getStateData",
        "()Landroidx/lifecycle/LiveData;",
        "supportedFragment",
        "clearScrollState",
        "scrolled",
        "setFragmentSupported",
        "setMaxHeight",
        "maxHeight",
        "",
        "setTag",
        "bottomBarTag",
        "",
        "setVisibleHeight",
        "visibleHeight",
        "updateVisibility",
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
.field public ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

.field public extraCallback:Z

.field public final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/unregisterAdapterDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Z

.field public onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 14
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    .line 15
    new-instance v0, Lo/unregisterAdapterDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/unregisterAdapterDataObserver;-><init>(B)V

    iput-object v0, p0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    .line 22
    iget-object v1, p0, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lo/hasObservers$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/hasObservers$onNavigationEvent;-><init>(Lo/hasObservers;)V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lo/hasObservers;->extraCallback:Z

    return-void
.end method

.method public static final synthetic extraCallback(Lo/hasObservers;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lo/hasObservers;->onNavigationEvent:Z

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/hasObservers;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lo/hasObservers;->onPostMessage()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 6

    .line 61
    iget-object v0, p0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    iget-boolean v1, p0, Lo/hasObservers;->extraCallback:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lo/hasObservers;->onPostMessage:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-static/range {v0 .. v5}, Lo/unregisterAdapterDataObserver;->onNavigationEvent(Lo/unregisterAdapterDataObserver;ZFFLjava/lang/String;I)Lo/unregisterAdapterDataObserver;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    iput-object v0, p0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    .line 1018
    iget-object v1, p0, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
