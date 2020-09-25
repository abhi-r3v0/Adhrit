.class Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_upvote:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gv:Lcom/freshchat/consumer/sdk/service/e/n$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gw:Lcom/freshchat/consumer/sdk/service/e/n$a;

    :goto_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/freshchat/consumer/sdk/service/e/n;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/freshchat/consumer/sdk/service/e/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;)V

    invoke-static {v2, v1, v3}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_downvote:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FaqOptions;->shouldShowContactUsOnFaqNotHelpful()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->f(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->f(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->g(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->h(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    :goto_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Lcom/freshchat/consumer/sdk/service/e/n$a;)V

    return-void
.end method
