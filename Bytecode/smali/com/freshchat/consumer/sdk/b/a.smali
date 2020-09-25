.class public Lcom/freshchat/consumer/sdk/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static W(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.KillCurrentUserSession"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static X(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.ExpectedConversationResponseTimeUpdated"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.FreshchatEvents"

    invoke-static {p0, v0, p1}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "STATUS_SUCCESS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static aJ(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.MessageCountChanged"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static aY(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static ai(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.UserRestoreIdGenerated"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static ax(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "STATUS_SUCCESS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->c(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object p0

    invoke-virtual {p0, v0}, Lo/fromMediaSession;->extraCallback(Landroid/content/Intent;)Z

    return-void
.end method

.method public static ba(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Lo/fromMediaSession;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "STATUS_SUCCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.MessagesUpdated"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.ChannelsUpdated"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.SolutionsUpdated"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FRESHCHAT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "FRESHCHAT_DEEPLINK"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.freshchat.consumer.sdk.FreshchatNotificationIntercepted"

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/b/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
