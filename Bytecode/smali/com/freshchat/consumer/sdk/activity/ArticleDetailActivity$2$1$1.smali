.class Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic J:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1$1;->J:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1$1;->J:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2$1;->I:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$2;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_vote_successful:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
