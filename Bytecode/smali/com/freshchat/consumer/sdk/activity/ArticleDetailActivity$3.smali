.class Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->i(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->j(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/v;->aE()V

    :goto_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$3;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->k(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V

    return-void
.end method
