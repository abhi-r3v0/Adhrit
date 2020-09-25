.class final Lo/getCompoundHash$newSession;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "newSession"
.end annotation


# instance fields
.field private final extraCallback:Lo/onDataUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lo/onDataUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDataUpdate<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1787
    check-cast p1, Lo/onDataUpdate;

    iput-object p1, p0, Lo/getCompoundHash$newSession;->extraCallback:Lo/onDataUpdate;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "executorPool"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final declared-synchronized extraCallback()V
    .locals 2

    monitor-enter p0

    .line 1798
    :try_start_0
    iget-object v0, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lo/getCompoundHash$newSession;->extraCallback:Lo/onDataUpdate;

    iget-object v1, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lo/onDataUpdate;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onMessageChannelReady()Ljava/util/concurrent/Executor;
    .locals 5

    monitor-enter p0

    .line 1791
    :try_start_0
    iget-object v0, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 1792
    iget-object v0, p0, Lo/getCompoundHash$newSession;->extraCallback:Lo/onDataUpdate;

    invoke-interface {v0}, Lo/onDataUpdate;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.getObject()"

    iget-object v2, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 2005
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1794
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getCompoundHash$newSession;->onPostMessage:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
