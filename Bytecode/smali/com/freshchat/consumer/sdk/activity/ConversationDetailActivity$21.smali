.class Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/beans/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/getCurrentControllerInfo;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->k(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->i(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->i(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->j(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/freshchat/consumer/sdk/k/c;->a(IILjava/util/List;Ljava/util/List;)Z

    move-result v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->j(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->j(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->l(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    move-object p2, p1

    check-cast p2, Lcom/freshchat/consumer/sdk/g/i;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/g/i;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/Participant;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->l(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Participant;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->m(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->o(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    instance-of p1, p1, Lcom/freshchat/consumer/sdk/g/i;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/g/i;->di()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)Z

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->p(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ap()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->an()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->n(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->q(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->r(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/bg;->k(Landroid/content/Context;J)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->s(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lo/getCurrentControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;"
        }
    .end annotation

    const-string p1, "CHANNEL_ID"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    new-instance v0, Lcom/freshchat/consumer/sdk/g/i;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/freshchat/consumer/sdk/g/i;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->a(Lo/getCurrentControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->j(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->l(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->m(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/a/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)Z

    return-void
.end method
