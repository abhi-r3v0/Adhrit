.class public final Lo/writeSessionApp;
.super Lo/removeDependent;


# instance fields
.field private synthetic onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/doOnboarding;


# direct methods
.method public constructor <init>(Lo/requestChildFocus$onMessageChannelReady;Lo/doOnboarding;Lo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/writeSessionApp;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    iput-object p3, p0, Lo/writeSessionApp;->onPostMessage:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 8

    const-string v0, "unity"

    const-string v1, "native"

    :try_start_0
    iget-object v2, p0, Lo/writeSessionApp;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    iget-object v2, v2, Lo/requestChildFocus$onMessageChannelReady;->extraCallback:Lo/isSet;

    .line 1000
    iget-object v2, v2, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v2, Lo/addDependent;

    iget-object v3, p0, Lo/writeSessionApp;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    .line 2000
    iget-object v3, v3, Lo/requestChildFocus$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 3000
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "review"

    invoke-static {v5}, Lo/getInterfaceDescriptor;->extraCallback(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "playcore_version_code"

    const-string v7, "java"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "playcore_native_version"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "playcore_unity_version"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Lo/MissingNativeComponent$MissingNativeSessionFileProvider;

    iget-object v1, p0, Lo/writeSessionApp;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    iget-object v5, p0, Lo/writeSessionApp;->onPostMessage:Lo/doOnboarding;

    invoke-direct {v0, v1, v5}, Lo/MissingNativeComponent$MissingNativeSessionFileProvider;-><init>(Lo/requestChildFocus$onMessageChannelReady;Lo/doOnboarding;)V

    invoke-interface {v2, v3, v4, v0}, Lo/addDependent;->onMessageChannelReady(Ljava/lang/String;Landroid/os/Bundle;Lo/getComponent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4000
    sget-object v1, Lo/requestChildFocus$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/writeSessionApp;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    .line 5000
    iget-object v4, v4, Lo/requestChildFocus$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 6000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "error requesting in-app review for %s"

    invoke-static {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v1, p0, Lo/writeSessionApp;->onPostMessage:Lo/doOnboarding;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7000
    iget-object v0, v1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v0, v2}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void
.end method
