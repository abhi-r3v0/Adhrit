.class final Lo/getSecret;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic asBinder:Lo/setTimeout;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:I

.field private synthetic onRelationshipValidationResult:Lo/doOnboarding;


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;ILjava/lang/String;Ljava/lang/String;ILo/doOnboarding;)V
    .locals 0

    iput-object p1, p0, Lo/getSecret;->asBinder:Lo/setTimeout;

    iput p3, p0, Lo/getSecret;->onPostMessage:I

    iput-object p4, p0, Lo/getSecret;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lo/getSecret;->ICustomTabsCallback:Ljava/lang/String;

    iput p6, p0, Lo/getSecret;->onNavigationEvent:I

    iput-object p7, p0, Lo/getSecret;->onRelationshipValidationResult:Lo/doOnboarding;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lo/getSecret;->asBinder:Lo/setTimeout;

    .line 1000
    iget-object v0, v0, Lo/setTimeout;->onPostMessage:Lo/isSet;

    .line 2000
    iget-object v0, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v0, Lo/recordException;

    iget-object v1, p0, Lo/getSecret;->asBinder:Lo/setTimeout;

    .line 3000
    iget-object v1, v1, Lo/setTimeout;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p0, Lo/getSecret;->onPostMessage:I

    iget-object v3, p0, Lo/getSecret;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/getSecret;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, p0, Lo/getSecret;->onNavigationEvent:I

    .line 6000
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "session_id"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "module_name"

    .line 5000
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slice_id"

    .line 4000
    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "chunk_number"

    invoke-virtual {v6, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7000
    invoke-static {}, Lo/setTimeout;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lo/setCallbacks;

    iget-object v4, p0, Lo/getSecret;->asBinder:Lo/setTimeout;

    iget-object v5, p0, Lo/getSecret;->onRelationshipValidationResult:Lo/doOnboarding;

    invoke-direct {v3, v4, v5}, Lo/setCallbacks;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    invoke-interface {v0, v1, v6, v2, v3}, Lo/recordException;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lo/subscribeToAnalyticsEvents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8000
    sget-object v1, Lo/setTimeout;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/getSecret;->onMessageChannelReady:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/getSecret;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lo/getSecret;->onNavigationEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lo/getSecret;->onPostMessage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    invoke-virtual {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lo/getSecret;->onRelationshipValidationResult:Lo/doOnboarding;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9000
    iget-object v0, v1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v0, v2}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void
.end method
