.class Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/getCurrentControllerInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->c(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faqs_reload_and_redirect:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    iget-object p2, p2, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/Freshchat;->showFAQs(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->e(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->f(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

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
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string/jumbo p1, "search_key"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    const-string v0, "article_search"

    invoke-static {p2, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;

    new-instance p2, Lcom/freshchat/consumer/sdk/g/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;)V

    return-object p2

    :cond_0
    const-string p1, "category_id"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/g/b;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const-string p1, "FAQ_TAGS"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/g/b;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance p1, Lcom/freshchat/consumer/sdk/g/b;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/freshchat/consumer/sdk/g/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->a(Lo/getCurrentControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Article;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity$1;->ae:Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;->g(Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;)Lcom/freshchat/consumer/sdk/a/a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
