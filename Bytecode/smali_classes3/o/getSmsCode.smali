.class final Lo/getSmsCode;
.super Lo/removeDependent;


# instance fields
.field private synthetic onMessageChannelReady:Lo/doOnboarding;

.field private synthetic onPostMessage:Lo/setTimeout;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;Lo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/getSmsCode;->onPostMessage:Lo/setTimeout;

    iput-object p3, p0, Lo/getSmsCode;->onMessageChannelReady:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lo/getSmsCode;->onPostMessage:Lo/setTimeout;

    .line 1000
    iget-object v0, v0, Lo/setTimeout;->extraCallback:Lo/isSet;

    .line 2000
    iget-object v0, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v0, Lo/recordException;

    iget-object v1, p0, Lo/getSmsCode;->onPostMessage:Lo/setTimeout;

    .line 3000
    iget-object v1, v1, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    .line 4000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lo/zzi;

    iget-object v4, p0, Lo/getSmsCode;->onPostMessage:Lo/setTimeout;

    iget-object v5, p0, Lo/getSmsCode;->onMessageChannelReady:Lo/doOnboarding;

    invoke-direct {v3, v4, v5}, Lo/zzi;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    invoke-interface {v0, v1, v2, v3}, Lo/recordException;->onNavigationEvent(Ljava/lang/String;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5000
    sget-object v1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 6000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "keepAlive"

    invoke-static {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
