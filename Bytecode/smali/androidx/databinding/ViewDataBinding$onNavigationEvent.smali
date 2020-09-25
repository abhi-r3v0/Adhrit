.class final Landroidx/databinding/ViewDataBinding$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;
.implements Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote;",
        "Landroidx/databinding/ViewDataBinding$ICustomTabsCallback<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Landroidx/databinding/ViewDataBinding$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$asBinder<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    new-instance v0, Landroidx/databinding/ViewDataBinding$asBinder;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$asBinder;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ICustomTabsCallback;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$onNavigationEvent;->ICustomTabsCallback:Landroidx/databinding/ViewDataBinding$asBinder;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1571
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3609
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 1614
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$onNavigationEvent;->ICustomTabsCallback:Landroidx/databinding/ViewDataBinding$asBinder;

    .line 2423
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_1

    .line 3410
    iget-object v1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3411
    iget-object v1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    iget-object v2, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 3414
    iput-object v1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 1616
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$onNavigationEvent;->ICustomTabsCallback:Landroidx/databinding/ViewDataBinding$asBinder;

    iget p1, p1, Landroidx/databinding/ViewDataBinding$asBinder;->extraCallback:I

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$onNavigationEvent;->ICustomTabsCallback:Landroidx/databinding/ViewDataBinding$asBinder;

    .line 3419
    iget-object v1, v1, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1616
    invoke-static {v0, p1, v1, v2}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
