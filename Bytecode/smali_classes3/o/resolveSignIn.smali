.class final Lo/resolveSignIn;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic ICustomTabsCallback$Stub:Lo/setTimeout;

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/doOnboarding;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;Lo/doOnboarding;I)V
    .locals 0

    iput-object p1, p0, Lo/resolveSignIn;->ICustomTabsCallback$Stub:Lo/setTimeout;

    iput p3, p0, Lo/resolveSignIn;->ICustomTabsCallback:I

    iput-object p4, p0, Lo/resolveSignIn;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lo/resolveSignIn;->onPostMessage:Lo/doOnboarding;

    iput p6, p0, Lo/resolveSignIn;->onMessageChannelReady:I

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lo/resolveSignIn;->ICustomTabsCallback$Stub:Lo/setTimeout;

    .line 1000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    iget-object v0, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v0, Lo/recordException;

    iget-object v1, p0, Lo/resolveSignIn;->ICustomTabsCallback$Stub:Lo/setTimeout;

    .line 3000
    iget-object v1, v1, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p0, Lo/resolveSignIn;->ICustomTabsCallback:I

    iget-object v3, p0, Lo/resolveSignIn;->onNavigationEvent:Ljava/lang/String;

    .line 6000
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "session_id"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "module_name"

    .line 5000
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lo/setMultiFactorHint;

    iget-object v6, p0, Lo/resolveSignIn;->ICustomTabsCallback$Stub:Lo/setTimeout;

    iget-object v7, p0, Lo/resolveSignIn;->onPostMessage:Lo/doOnboarding;

    iget v8, p0, Lo/resolveSignIn;->ICustomTabsCallback:I

    iget-object v9, p0, Lo/resolveSignIn;->onNavigationEvent:Ljava/lang/String;

    iget v10, p0, Lo/resolveSignIn;->onMessageChannelReady:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lo/setMultiFactorHint;-><init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;I)V

    invoke-interface {v0, v1, v4, v2, v3}, Lo/recordException;->ICustomTabsCallback(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8000
    sget-object v1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 9000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "notifyModuleCompleted"

    invoke-static {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
