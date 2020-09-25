.class public final Lo/Empty;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/processLeaf;


# instance fields
.field public ICustomTabsCallback:Z

.field public final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/isDefinedOn;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lo/startChild;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lo/Empty;->ICustomTabsCallback:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Empty;->extraCallback:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lo/Empty;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onPostMessage(Ljava/lang/String;)Lo/currentHashLength;
    .locals 3

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lo/Empty;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isDefinedOn;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lo/isDefinedOn;

    iget-object v1, p0, Lo/Empty;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lo/Empty;->ICustomTabsCallback:Z

    invoke-direct {v0, p1, v1, v2}, Lo/isDefinedOn;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    .line 55
    iget-object v1, p0, Lo/Empty;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
