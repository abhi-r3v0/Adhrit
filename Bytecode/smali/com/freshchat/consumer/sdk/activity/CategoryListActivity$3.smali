.class Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/beans/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/getCurrentControllerInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->d(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faqs_reload_and_redirect:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->e(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/Freshchat;->showFAQs(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->f(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->D()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

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
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p1, "TAGS"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/g/f;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/freshchat/consumer/sdk/g/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/freshchat/consumer/sdk/g/f;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freshchat/consumer/sdk/g/f;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->a(Lo/getCurrentControllerInfo;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$3;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->g(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
