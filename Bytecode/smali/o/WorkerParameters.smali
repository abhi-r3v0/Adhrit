.class public abstract Lo/WorkerParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WorkDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WorkerParameters$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/WorkDatabase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:F

.field private extraCallback:Lo/WorkerParameters$extraCallback;

.field private onMessageChannelReady:Ljava/lang/Throwable;

.field private onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private onPostMessage:Z

.field private final onRelationshipValidationResult:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lo/ConstraintTrackingWorker<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;

    .line 53
    iput-object v0, p0, Lo/WorkerParameters;->onMessageChannelReady:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lo/WorkerParameters;->asInterface:F

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z

    .line 69
    sget-object v0, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    iput-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lo/WorkerParameters;->onRelationshipValidationResult:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private declared-synchronized ICustomTabsCallback$Stub()Z
    .locals 2

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    sget-object v1, Lo/WorkerParameters$extraCallback;->extraCallback:Lo/WorkerParameters$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized newSession()Z
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lo/WorkerParameters;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/WorkerParameters;->extraCallback()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onMessageChannelReady(Ljava/lang/Throwable;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 327
    :try_start_0
    iget-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    sget-object v1, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    sget-object v0, Lo/WorkerParameters$extraCallback;->extraCallback:Lo/WorkerParameters$extraCallback;

    iput-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    .line 331
    iput-object p1, p0, Lo/WorkerParameters;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 332
    iput-object p2, p0, Lo/WorkerParameters;->ICustomTabsCallback:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 333
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 328
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onNavigationEvent(Ljava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 302
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 303
    :try_start_1
    iget-boolean v1, p0, Lo/WorkerParameters;->onPostMessage:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    sget-object v2, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 308
    sget-object p2, Lo/WorkerParameters$extraCallback;->onPostMessage:Lo/WorkerParameters$extraCallback;

    iput-object p2, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 309
    iput p2, p0, Lo/WorkerParameters;->asInterface:F

    .line 311
    :cond_1
    iget-object p2, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;

    if-eq p2, p1, :cond_2

    .line 312
    iget-object p2, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 313
    :try_start_2
    iput-object p1, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :cond_2
    move-object p1, v0

    .line 315
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p0, p1}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 305
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_5

    .line 320
    invoke-virtual {p0, p1}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_5
    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 317
    :goto_2
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_6

    .line 320
    invoke-virtual {p0, v0}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method

.method private declared-synchronized onPostMessage(F)Z
    .locals 3

    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    sget-object v2, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget v0, p0, Lo/WorkerParameters;->asInterface:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 341
    monitor-exit p0

    return v1

    .line 343
    :cond_1
    :try_start_1
    iput p1, p0, Lo/WorkerParameters;->asInterface:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 344
    monitor-exit p0

    return p1

    .line 339
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onRelationshipValidationResult()V
    .locals 6

    .line 176
    invoke-direct {p0}, Lo/WorkerParameters;->ICustomTabsCallback$Stub()Z

    move-result v0

    .line 177
    invoke-direct {p0}, Lo/WorkerParameters;->newSession()Z

    move-result v1

    .line 178
    iget-object v2, p0, Lo/WorkerParameters;->onRelationshipValidationResult:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 179
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lo/ConstraintTrackingWorker;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 4188
    new-instance v5, Lo/WorkerParameters$4;

    invoke-direct {v5, p0, v0, v4, v1}, Lo/WorkerParameters$4;-><init>(Lo/WorkerParameters;ZLo/ConstraintTrackingWorker;Z)V

    .line 4205
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()Z
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ICustomTabsCallback(F)Z
    .locals 4

    .line 292
    invoke-direct {p0, p1}, Lo/WorkerParameters;->onPostMessage(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5349
    iget-object v0, p0, Lo/WorkerParameters;->onRelationshipValidationResult:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 5350
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lo/ConstraintTrackingWorker;

    .line 5351
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 5352
    new-instance v3, Lo/WorkerParameters$3;

    invoke-direct {v3, p0, v2}, Lo/WorkerParameters$3;-><init>(Lo/WorkerParameters;Lo/ConstraintTrackingWorker;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final declared-synchronized asBinder()F
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lo/WorkerParameters;->asInterface:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asInterface()Z
    .locals 3

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 124
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z

    .line 127
    iget-object v1, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 128
    iput-object v2, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lo/WorkerParameters;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-direct {p0}, Lo/WorkerParameters;->onRelationshipValidationResult()V

    .line 136
    :cond_2
    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v1, p0, Lo/WorkerParameters;->onRelationshipValidationResult:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 138
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    .line 129
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback()Z
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    sget-object v1, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback(Ljava/lang/Throwable;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Lo/WorkerParameters;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    invoke-direct {p0}, Lo/WorkerParameters;->onRelationshipValidationResult()V

    :cond_0
    return p1
.end method

.method public final onMessageChannelReady()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lo/WorkerParameters;->ICustomTabsCallback:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lo/WorkerParameters;->onNavigationEvent:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onNavigationEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onNavigationEvent(Ljava/lang/Object;ZLjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 5100
    iput-object p3, p0, Lo/WorkerParameters;->ICustomTabsCallback:Ljava/util/Map;

    .line 237
    invoke-direct {p0, p1, p2}, Lo/WorkerParameters;->onNavigationEvent(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    invoke-direct {p0}, Lo/WorkerParameters;->onRelationshipValidationResult()V

    :cond_0
    return p1
.end method

.method protected onNavigationEvent(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 5270
    invoke-direct {p0, p1, v0}, Lo/WorkerParameters;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5272
    invoke-direct {p0}, Lo/WorkerParameters;->onRelationshipValidationResult()V

    :cond_0
    return p1
.end method

.method protected final onPostMessage(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lo/WorkerParameters;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method public final onPostMessage(Lo/ConstraintTrackingWorker;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ConstraintTrackingWorker<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lo/WorkerParameters;->extraCallback:Lo/WorkerParameters$extraCallback;

    sget-object v1, Lo/WorkerParameters$extraCallback;->onMessageChannelReady:Lo/WorkerParameters$extraCallback;

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lo/WorkerParameters;->onRelationshipValidationResult:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    invoke-virtual {p0}, Lo/WorkerParameters;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lo/WorkerParameters;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lo/WorkerParameters;->newSession()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 168
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 171
    invoke-direct {p0}, Lo/WorkerParameters;->ICustomTabsCallback$Stub()Z

    move-result v0

    invoke-direct {p0}, Lo/WorkerParameters;->newSession()Z

    move-result v1

    .line 3188
    new-instance v2, Lo/WorkerParameters$4;

    invoke-direct {v2, p0, v0, p1, v1}, Lo/WorkerParameters$4;-><init>(Lo/WorkerParameters;ZLo/ConstraintTrackingWorker;Z)V

    .line 3205
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 168
    monitor-exit p0

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method

.method public final declared-synchronized onPostMessage()Z
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lo/WorkerParameters;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTransact()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lo/WorkerParameters;->onMessageChannelReady:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
