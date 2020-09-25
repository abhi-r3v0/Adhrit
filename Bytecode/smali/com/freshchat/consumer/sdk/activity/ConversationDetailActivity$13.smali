.class Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field final synthetic bp:Lcom/freshchat/consumer/sdk/beans/Csat;

.field final synthetic bq:Z


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->bp:Lcom/freshchat/consumer/sdk/beans/Csat;

    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->bq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->bp:Lcom/freshchat/consumer/sdk/beans/Csat;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->bq:Z

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->r(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;->bq:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;JZILjava/lang/String;)V

    return-void
.end method
