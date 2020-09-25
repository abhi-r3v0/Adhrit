.class Lcom/freshchat/consumer/sdk/j/a/a$3;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic iU:Lcom/freshchat/consumer/sdk/j/a/a;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/a$3;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a$3;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/a/a;->b(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a$3;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/a/a;->b(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)V

    return-void

    :catch_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a$3;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/a/a;->b(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)V

    return-void

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const-string v1, "AsyncTask"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
