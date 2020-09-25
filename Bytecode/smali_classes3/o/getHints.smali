.class final Lo/getHints;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic asBinder:Lo/doOnboarding;

.field private synthetic asInterface:Lo/setTimeout;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;Ljava/lang/String;ILo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/getHints;->asInterface:Lo/setTimeout;

    iput p3, p0, Lo/getHints;->ICustomTabsCallback:I

    iput-object p4, p0, Lo/getHints;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lo/getHints;->onMessageChannelReady:Ljava/lang/String;

    iput p6, p0, Lo/getHints;->onPostMessage:I

    iput-object p7, p0, Lo/getHints;->asBinder:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/getHints;->asInterface:Lo/setTimeout;

    .line 1000
    iget-object v1, v1, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    iget-object v1, v1, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v1, Lo/recordException;

    iget-object v2, p0, Lo/getHints;->asInterface:Lo/setTimeout;

    .line 3000
    iget-object v2, v2, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    iget v3, p0, Lo/getHints;->ICustomTabsCallback:I

    iget-object v4, p0, Lo/getHints;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/getHints;->onMessageChannelReady:Ljava/lang/String;

    iget v6, p0, Lo/getHints;->onPostMessage:I

    .line 6000
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "session_id"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "module_name"

    .line 5000
    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "slice_id"

    .line 4000
    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "chunk_number"

    invoke-virtual {v7, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lo/zzh;

    iget-object v5, p0, Lo/getHints;->asInterface:Lo/setTimeout;

    iget-object v6, p0, Lo/getHints;->asBinder:Lo/doOnboarding;

    invoke-direct {v4, v5, v6, v0}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;C)V

    invoke-interface {v1, v2, v7, v3, v4}, Lo/recordException;->onNavigationEvent(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 8000
    sget-object v2, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 9000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "notifyChunkTransferred"

    invoke-static {v2, v3, v0}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
