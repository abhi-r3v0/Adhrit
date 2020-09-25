.class Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Lcom/freshchat/consumer/sdk/beans/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/getCurrentControllerInfo;Lcom/freshchat/consumer/sdk/beans/Channel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_channel_disabled:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;J)J

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getChannelType()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->r(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(J)J

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->t(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->u(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    :cond_1
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->v(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->w(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    :cond_2
    instance-of p2, p1, Lcom/freshchat/consumer/sdk/g/g;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    check-cast p1, Lcom/freshchat/consumer/sdk/g/g;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/g/g;->dg()Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Conversation;)Lcom/freshchat/consumer/sdk/beans/Conversation;

    :cond_3
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->U()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/b/c;->dg:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lo/getCurrentControllerInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lo/getCurrentControllerInfo<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/freshchat/consumer/sdk/g/g;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CHANNEL_ID"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/g/g;-><init>(Landroid/content/Context;ZJ)V

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/freshchat/consumer/sdk/g/g;-><init>(Landroid/content/Context;Z)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->a(Lo/getCurrentControllerInfo;Lcom/freshchat/consumer/sdk/beans/Channel;)V

    return-void
.end method

.method public onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;J)J

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Conversation;)Lcom/freshchat/consumer/sdk/beans/Conversation;

    return-void
.end method
