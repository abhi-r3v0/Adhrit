.class Lcom/freshchat/consumer/sdk/j/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jv:Lcom/freshchat/consumer/sdk/j/a/b;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/c;->fi()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public fi()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Lcom/freshchat/consumer/sdk/j/a/b;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->b(Lcom/freshchat/consumer/sdk/j/a/b;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->c(Lcom/freshchat/consumer/sdk/j/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a/b;->d(Lcom/freshchat/consumer/sdk/j/a/b;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/c;->jv:Lcom/freshchat/consumer/sdk/j/a/b;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/freshchat/consumer/sdk/j/a/b;->a(Lcom/freshchat/consumer/sdk/j/a/b;I)I

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
