.class public Lcom/freshchat/consumer/sdk/service/a/n;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/a/d;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method


# virtual methods
.method public ds()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/n$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/service/a/n$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/n;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
