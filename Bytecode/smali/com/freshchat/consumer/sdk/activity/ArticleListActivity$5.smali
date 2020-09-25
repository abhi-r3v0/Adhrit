.class Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->dH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->o(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)V

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$5;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
