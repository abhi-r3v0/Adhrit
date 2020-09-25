.class public Lo/ab;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "attemptNumber"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 36
    invoke-static {p1}, Lo/OaidClient;->onPostMessage(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lo/OaidClient$Info;->onNavigationEvent()Lo/OaidClient$Info$onPostMessage;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Lo/OaidClient$Info$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/OaidClient$Info$onPostMessage;

    move-result-object p1

    .line 41
    invoke-static {v2}, Lo/getItemDelegate$onMessageChannelReady;->extraCallback(I)Lo/setReferrer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/OaidClient$Info$onPostMessage;->onNavigationEvent(Lo/setReferrer;)Lo/OaidClient$Info$onPostMessage;

    move-result-object p1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/OaidClient$Info$onPostMessage;->onMessageChannelReady([B)Lo/OaidClient$Info$onPostMessage;

    .line 1091
    :cond_0
    sget-object v0, Lo/OaidClient;->onPostMessage:Lo/ServerConfigHandler;

    if-eqz v0, :cond_1

    .line 1095
    invoke-virtual {v0}, Lo/ServerConfigHandler;->extraCallback()Lo/OaidClient;

    move-result-object v0

    .line 1146
    iget-object v0, v0, Lo/OaidClient;->onMessageChannelReady:Lo/ae;

    .line 49
    invoke-virtual {p1}, Lo/OaidClient$Info$onPostMessage;->onPostMessage()Lo/OaidClient$Info;

    move-result-object p1

    .line 2000
    sget-object v1, Lo/getTargetPosition;->ICustomTabsCallback:Lo/getTargetPosition;

    .line 2077
    iget-object v2, v0, Lo/ae;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 3000
    new-instance v3, Lo/Lifecycling$1$onMessageChannelReady;

    invoke-direct {v3, v0, p1, p2, v1}, Lo/Lifecycling$1$onMessageChannelReady;-><init>(Lo/ae;Lo/OaidClient$Info;ILjava/lang/Runnable;)V

    .line 2077
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1093
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not initialized!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
