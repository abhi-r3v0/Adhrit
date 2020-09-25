.class Lcom/freshchat/consumer/sdk/activity/b$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic bu:Lcom/freshchat/consumer/sdk/activity/b;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.KillCurrentUserSession"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->al()V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.DismissFreshchatScreens"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->gs()V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Z)V

    :cond_3
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
