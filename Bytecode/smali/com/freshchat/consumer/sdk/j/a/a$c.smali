.class Lcom/freshchat/consumer/sdk/j/a/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final iY:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field iZ:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$c;->iY:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshchat/consumer/sdk/j/a/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$c;->iY:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/a$c$1;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a$c$1;-><init>(Lcom/freshchat/consumer/sdk/j/a/a$c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/a$c;->iZ:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/a$c;->fe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized fe()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$c;->iY:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$c;->iZ:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a$c;->iZ:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
