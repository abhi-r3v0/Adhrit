.class Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/a/b$a;


# instance fields
.field final synthetic al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->a(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Category;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->c(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object p2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Category;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Category;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity$1;->al:Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;->b(Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/v;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
