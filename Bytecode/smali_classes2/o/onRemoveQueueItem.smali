.class public abstract Lo/onRemoveQueueItem;
.super Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent()Ljava/lang/String;
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)I"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-virtual {p0, v0, v2}, Lo/onRemoveQueueItem;->onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V

    .line 88
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady(Lo/getDrawerToggleDelegate$onNavigationEvent;)V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady(Lo/getDrawerToggleDelegate$onNavigationEvent;)V

    .line 93
    throw p1
.end method

.method protected abstract onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDrawerToggleDelegate$onNavigationEvent;",
            "TT;)V"
        }
    .end annotation
.end method
