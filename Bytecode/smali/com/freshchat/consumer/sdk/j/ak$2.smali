.class Lcom/freshchat/consumer/sdk/j/ak$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic iC:Lcom/freshchat/consumer/sdk/j/ak;

.field final synthetic iD:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/ak;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak$2;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/ak$2;->iD:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak$2;->iD:Landroid/net/Uri;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "LAUNCHED_FROM_CONVERSATION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak$2;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ak$2;->iD:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
