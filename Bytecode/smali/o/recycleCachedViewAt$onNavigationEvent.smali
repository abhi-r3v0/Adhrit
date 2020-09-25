.class public final Lo/recycleCachedViewAt$onNavigationEvent;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycleCachedViewAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lo/getViewForPosition<",
        "+TR;+TE;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/network/internals/LiveDataNetworkAdapter$adapt$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/network/helper/Response;",
        "isEnqueued",
        "",
        "()Z",
        "setEnqueued",
        "(Z)V",
        "onActive",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic asBinder:Lo/clearScrap;

.field private asInterface:Z


# direct methods
.method constructor <init>(Lo/clearScrap;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/recycleCachedViewAt$onNavigationEvent;->asBinder:Lo/clearScrap;

    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 30
    iget-boolean v0, p0, Lo/recycleCachedViewAt$onNavigationEvent;->asInterface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lo/recycleCachedViewAt$onNavigationEvent;->asInterface:Z

    .line 32
    iget-object v0, p0, Lo/recycleCachedViewAt$onNavigationEvent;->asBinder:Lo/clearScrap;

    new-instance v1, Lo/recycleCachedViewAt$onNavigationEvent$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/recycleCachedViewAt$onNavigationEvent$onNavigationEvent;-><init>(Lo/recycleCachedViewAt$onNavigationEvent;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method
