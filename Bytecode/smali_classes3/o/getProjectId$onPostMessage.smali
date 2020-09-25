.class Lo/getProjectId$onPostMessage;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getProjectId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/getGaTrackingId<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/Transaction;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lo/Transaction;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/getProjectId$onPostMessage;->extraCallback:Ljava/util/List;

    .line 9
    iget-object p1, p0, Lo/getProjectId$onPostMessage;->mLifecycleFragment:Lo/Transaction;

    const-string v0, "TaskOnStopCallback"

    invoke-interface {p1, v0, p0}, Lo/Transaction;->extraCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static onPostMessage(Landroid/app/Activity;)Lo/getProjectId$onPostMessage;
    .locals 2

    .line 1
    invoke-static {p0}, Lo/getProjectId$onPostMessage;->getFragment(Landroid/app/Activity;)Lo/Transaction;

    move-result-object p0

    .line 2
    const-class v0, Lo/getProjectId$onPostMessage;

    const-string v1, "TaskOnStopCallback"

    invoke-interface {p0, v1, v0}, Lo/Transaction;->extraCallback(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lo/getProjectId$onPostMessage;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lo/getProjectId$onPostMessage;

    invoke-direct {v0, p0}, Lo/getProjectId$onPostMessage;-><init>(Lo/Transaction;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getGaTrackingId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getGaTrackingId<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/getProjectId$onPostMessage;->extraCallback:Ljava/util/List;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lo/getProjectId$onPostMessage;->extraCallback:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStop()V
    .locals 3

    .line 14
    iget-object v0, p0, Lo/getProjectId$onPostMessage;->extraCallback:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lo/getProjectId$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getGaTrackingId;

    if-eqz v2, :cond_0

    .line 18
    invoke-interface {v2}, Lo/getGaTrackingId;->extraCallback()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lo/getProjectId$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
