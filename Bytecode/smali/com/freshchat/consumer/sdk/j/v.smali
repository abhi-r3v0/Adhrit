.class public Lcom/freshchat/consumer/sdk/j/v;
.super Lcom/freshchat/consumer/sdk/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/j/c<",
        "Lcom/freshchat/consumer/sdk/FaqOptions;",
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
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "category_name"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/as;->f([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "INPUT_TAGS"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public aE()V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ec()Lcom/freshchat/consumer/sdk/j/z;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getContactUsTags()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/ConversationOptions;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getContactUsTags()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getContactUsViewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/freshchat/consumer/sdk/ConversationOptions;->filterByTags(Ljava/util/Collection;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/Freshchat;->showConversations(Landroid/content/Context;Lcom/freshchat/consumer/sdk/ConversationOptions;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->showConversations(Landroid/content/Context;)V

    return-void
.end method

.method public e([Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force_search_open"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->f([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "INPUT_TAGS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public ea()V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ec()Lcom/freshchat/consumer/sdk/j/z;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/v;->ev()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/v;->eu()V

    return-void
.end method

.method public eb()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ec()Lcom/freshchat/consumer/sdk/j/z;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/u;->a(Lcom/freshchat/consumer/sdk/FaqOptions;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-class v1, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPTIONS_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public eu()V
    .locals 3

    const-class v0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ec()Lcom/freshchat/consumer/sdk/j/z;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v1, v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->filterByTags(Ljava/util/Collection;Ljava/lang/String;Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;)Lcom/freshchat/consumer/sdk/FaqOptions;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public ev()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_no_matching_faq_categories_found:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/v;->eu()V

    return-void

    :cond_0
    const-class p1, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_no_matching_faqs_found:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/v;->eu()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string p1, "article_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-class p1, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/v;->b(Landroid/os/Bundle;)V

    return-void
.end method
