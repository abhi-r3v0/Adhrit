.class Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic I:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;->I:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;->I:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;Z)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;->I:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
