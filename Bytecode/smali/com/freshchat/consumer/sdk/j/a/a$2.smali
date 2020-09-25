.class Lcom/freshchat/consumer/sdk/j/a/a$2;
.super Lcom/freshchat/consumer/sdk/j/a/a$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/j/a/a$e<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic iU:Lcom/freshchat/consumer/sdk/j/a/a;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/a$2;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/a$e;-><init>(Lcom/freshchat/consumer/sdk/j/a/a$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$2;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a/a;->a(Lcom/freshchat/consumer/sdk/j/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$2;->iU:Lcom/freshchat/consumer/sdk/j/a/a;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a$e;->jg:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/a;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/a/a;->a(Lcom/freshchat/consumer/sdk/j/a/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
