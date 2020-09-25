.class Lcom/freshchat/consumer/sdk/j/a/a$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ja:Ljava/lang/Runnable;

.field final synthetic jb:Lcom/freshchat/consumer/sdk/j/a/a$c;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/a/a$c;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/a$c$1;->jb:Lcom/freshchat/consumer/sdk/j/a/a$c;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/a/a$c$1;->ja:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$c$1;->ja:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/a$c$1;->jb:Lcom/freshchat/consumer/sdk/j/a/a$c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/a$c;->fe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/a$c$1;->jb:Lcom/freshchat/consumer/sdk/j/a/a$c;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/a/a$c;->fe()V

    throw v0
.end method
