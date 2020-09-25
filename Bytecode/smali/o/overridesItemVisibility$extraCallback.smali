.class public final Lo/overridesItemVisibility$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/overridesItemVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/batcher/sync/RequestDispatcher$Companion;",
        "",
        "()V",
        "MAX_REQUEST_IN_PARALLEL",
        "",
        "RESULT_PENDING_TASKS",
        "RESULT_SUCCESS",
        "concurrentHashMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/dreamplug/batcher/sync/RequestDispatcher;",
        "getInstance",
        "url",
        "source",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lo/overridesItemVisibility$extraCallback;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/overridesItemVisibility;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lo/overridesItemVisibility;->onNavigationEvent()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_0
    invoke-static {}, Lo/overridesItemVisibility;->onNavigationEvent()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/overridesItemVisibility;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lo/overridesItemVisibility;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/overridesItemVisibility;-><init>(Ljava/lang/String;B)V

    .line 172
    invoke-static {}, Lo/overridesItemVisibility;->onNavigationEvent()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    invoke-static {v1, p1}, Lo/overridesItemVisibility;->ICustomTabsCallback(Lo/overridesItemVisibility;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0

    throw p0
.end method
