.class public Lcom/freshchat/consumer/sdk/j/m;
.super Lcom/freshchat/consumer/sdk/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/j/c<",
        "Lcom/freshchat/consumer/sdk/ConversationOptions;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/freshchat/consumer/sdk/beans/Channel;)V
    .locals 4

    if-eqz p1, :cond_0

    const-class v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/m;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v1

    const-string v3, "CHANNEL_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHANNEL_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getChannelType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CHANNEL_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/m;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public ea()V
    .locals 0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/m;->ev()V

    return-void
.end method

.method public eb()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ec()Lcom/freshchat/consumer/sdk/j/z;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/l;->a(Lcom/freshchat/consumer/sdk/ConversationOptions;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-class v1, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPTIONS_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public eu()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/m;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/m;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public ev()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/m;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/m;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/m;->c(Lcom/freshchat/consumer/sdk/beans/Channel;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/m;->eu()V

    return-void
.end method
