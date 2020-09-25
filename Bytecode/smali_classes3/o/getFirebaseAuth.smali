.class final Lo/getFirebaseAuth;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Lo/doOnboarding;

.field private synthetic onMessageChannelReady:Lo/setTimeout;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;ILo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/getFirebaseAuth;->onMessageChannelReady:Lo/setTimeout;

    iput p3, p0, Lo/getFirebaseAuth;->onPostMessage:I

    iput-object p4, p0, Lo/getFirebaseAuth;->ICustomTabsCallback:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/getFirebaseAuth;->onMessageChannelReady:Lo/setTimeout;

    .line 1000
    iget-object v1, v1, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    iget-object v1, v1, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v1, Lo/recordException;

    iget-object v2, p0, Lo/getFirebaseAuth;->onMessageChannelReady:Lo/setTimeout;

    .line 3000
    iget-object v2, v2, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    iget v3, p0, Lo/getFirebaseAuth;->onPostMessage:I

    .line 5000
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "session_id"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v3

    new-instance v5, Lo/zzh;

    iget-object v6, p0, Lo/getFirebaseAuth;->onMessageChannelReady:Lo/setTimeout;

    iget-object v7, p0, Lo/getFirebaseAuth;->ICustomTabsCallback:Lo/doOnboarding;

    invoke-direct {v5, v6, v7, v0}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;S)V

    invoke-interface {v1, v2, v4, v3, v5}, Lo/recordException;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 7000
    sget-object v2, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 8000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "notifySessionFailed"

    invoke-static {v2, v3, v0}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
