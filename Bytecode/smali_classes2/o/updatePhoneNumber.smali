.class final Lo/updatePhoneNumber;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getAuthTimestamp;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/doOnboarding;


# direct methods
.method constructor <init>(Lo/getAuthTimestamp;Lo/doOnboarding;Lo/doOnboarding;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/updatePhoneNumber;->ICustomTabsCallback:Lo/getAuthTimestamp;

    iput-object p3, p0, Lo/updatePhoneNumber;->onPostMessage:Lo/doOnboarding;

    iput-object p4, p0, Lo/updatePhoneNumber;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lo/updatePhoneNumber;->ICustomTabsCallback:Lo/getAuthTimestamp;

    iget-object v0, v0, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    .line 1000
    iget-object v0, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    check-cast v0, Lo/buildCrashlytics;

    iget-object v1, p0, Lo/updatePhoneNumber;->ICustomTabsCallback:Lo/getAuthTimestamp;

    .line 2000
    iget-object v1, v1, Lo/getAuthTimestamp;->onPostMessage:Ljava/lang/String;

    .line 4000
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "playcore.version.code"

    const/16 v4, 0x2a30

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lo/getIssuedAtTimestamp;

    iget-object v4, p0, Lo/updatePhoneNumber;->ICustomTabsCallback:Lo/getAuthTimestamp;

    iget-object v5, p0, Lo/updatePhoneNumber;->onPostMessage:Lo/doOnboarding;

    invoke-direct {v3, v4, v5}, Lo/getIssuedAtTimestamp;-><init>(Lo/getAuthTimestamp;Lo/doOnboarding;)V

    invoke-interface {v0, v1, v2, v3}, Lo/buildCrashlytics;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;Lo/CrashlyticsRegistrar$$Lambda$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5000
    sget-object v1, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/updatePhoneNumber;->onMessageChannelReady:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PlayCore"

    .line 6000
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v3, "completeUpdate(%s)"

    invoke-static {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lo/updatePhoneNumber;->onPostMessage:Lo/doOnboarding;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7000
    iget-object v0, v1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v0, v2}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void
.end method
