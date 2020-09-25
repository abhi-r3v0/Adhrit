.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/OaidClient;->onPostMessage(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lo/OaidClient$Info;->onNavigationEvent()Lo/OaidClient$Info$onPostMessage;

    move-result-object v4

    .line 40
    invoke-virtual {v4, v0}, Lo/OaidClient$Info$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v0

    .line 41
    invoke-static {v2}, Lo/getItemDelegate$onMessageChannelReady;->extraCallback(I)Lo/setReferrer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/OaidClient$Info$onPostMessage;->onNavigationEvent(Lo/setReferrer;)Lo/OaidClient$Info$onPostMessage;

    move-result-object v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/OaidClient$Info$onPostMessage;->onMessageChannelReady([B)Lo/OaidClient$Info$onPostMessage;

    .line 1091
    :cond_0
    sget-object v1, Lo/OaidClient;->onPostMessage:Lo/ServerConfigHandler;

    if-eqz v1, :cond_1

    .line 1095
    invoke-virtual {v1}, Lo/ServerConfigHandler;->extraCallback()Lo/OaidClient;

    move-result-object v1

    .line 1146
    iget-object v1, v1, Lo/OaidClient;->onMessageChannelReady:Lo/ae;

    .line 49
    invoke-virtual {v0}, Lo/OaidClient$Info$onPostMessage;->onPostMessage()Lo/OaidClient$Info;

    move-result-object v0

    .line 2000
    new-instance v2, Lo/FullLifecycleObserverAdapter$onNavigationEvent;

    invoke-direct {v2, p0, p1}, Lo/FullLifecycleObserverAdapter$onNavigationEvent;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V

    .line 2077
    iget-object p1, v1, Lo/ae;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 3000
    new-instance v4, Lo/Lifecycling$1$onMessageChannelReady;

    invoke-direct {v4, v1, v0, v3, v2}, Lo/Lifecycling$1$onMessageChannelReady;-><init>(Lo/ae;Lo/OaidClient$Info;ILjava/lang/Runnable;)V

    .line 2077
    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 1093
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
