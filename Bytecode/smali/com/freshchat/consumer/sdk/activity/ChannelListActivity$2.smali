.class Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/beans/Channel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/getCurrentControllerInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Channel;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;Lcom/freshchat/consumer/sdk/beans/Channel;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    instance-of p2, p1, Lcom/freshchat/consumer/sdk/g/h;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/Map;

    move-result-object p2

    check-cast p1, Lcom/freshchat/consumer/sdk/g/h;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/g/h;->dh()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;Z)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->c(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Lcom/freshchat/consumer/sdk/a/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lo/getCurrentControllerInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/freshchat/consumer/sdk/g/h;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TAGS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lcom/freshchat/consumer/sdk/g/h;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/freshchat/consumer/sdk/g/h;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->a(Lo/getCurrentControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity$2;->au:Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;)Lcom/freshchat/consumer/sdk/a/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
