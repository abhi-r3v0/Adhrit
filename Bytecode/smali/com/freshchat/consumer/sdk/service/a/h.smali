.class public Lcom/freshchat/consumer/sdk/service/a/h;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/a/d;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method


# virtual methods
.method public ds()V
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/v;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/v;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/v;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/freshchat/consumer/sdk/service/a/h$1;

    invoke-direct {v3, p0, v1}, Lcom/freshchat/consumer/sdk/service/a/h$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/h;Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method
