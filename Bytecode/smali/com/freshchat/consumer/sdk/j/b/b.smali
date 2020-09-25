.class public Lcom/freshchat/consumer/sdk/j/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/b/a;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/b/a;-><init>()V

    const-string v1, "pool.ntp.org"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/b/a;->c(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b/c;->a(Lcom/freshchat/consumer/sdk/j/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
