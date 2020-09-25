.class Lcom/freshchat/consumer/sdk/service/a/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic fG:Lcom/freshchat/consumer/sdk/service/a/n;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/service/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/n$1;->fG:Lcom/freshchat/consumer/sdk/service/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/service/e/k;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/n$1;->fG:Lcom/freshchat/consumer/sdk/service/a/n;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/a/n$1;->fG:Lcom/freshchat/consumer/sdk/service/a/n;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
