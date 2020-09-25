.class Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

.field final synthetic bf:J

.field final synthetic bg:D

.field final synthetic bh:J


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;JJJDJ)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    iput-wide p6, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->bf:J

    iput-wide p8, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->bg:D

    iput-wide p10, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->bh:J

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->x(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    invoke-static {v1, v0, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    const-string v0, "FRESHCHAT"

    const-string v1, "Polling for new Messages"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->bf:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->bg:D

    mul-double v0, v0, v2

    double-to-long v0, v0

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->bh:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v2, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;J)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
