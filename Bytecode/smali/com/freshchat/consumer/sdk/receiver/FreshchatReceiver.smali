.class public Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "FRESHCHAT_WARNING"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "FRESHCHAT_DEEPLINK"

    invoke-static {p2, v1}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/a;->p(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->hx:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "{{action_str}}"

    const-string v1, "com.freshchat.consumer.sdk.actions.NotificationClicked"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "Extras cannot be null in FreshchatReceiver::onReceive()."

    goto :goto_0
.end method

.method private f(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eT()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private h(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private i(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.ALARM_COUNT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private p(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bN()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->ef()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->u(Landroid/content/Context;)V

    return-void
.end method

.method private q(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/g;->ah(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->u(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "FRESHCHAT"

    const-string v1, "FreshchatReceiver::onReceive() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/ag;->a(Ljava/lang/String;Landroid/content/Intent;)V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->h(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/service/e/s;

    invoke-direct {p2}, Lcom/freshchat/consumer/sdk/service/e/s;-><init>()V

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->i(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fD()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->g(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->p(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->f(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->q(Landroid/content/Context;)V

    return-void

    :cond_3
    const-string v0, "com.freshchat.consumer.sdk.actions.NotificationClicked"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
