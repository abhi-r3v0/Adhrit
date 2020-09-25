.class public Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;
.super Lo/setInstallationUuid;
.source ""


# direct methods
.method constructor <init>(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V
    .locals 2

    .line 38
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->atPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    .line 39
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid collection reference. Collection references must have an odd number of segments, but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic lambda$add$0(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lcom/google/android/gms/tasks/Task;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;",
            ">;"
        }
    .end annotation

    const-string v0, "Provided data must not be null."

    .line 119
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->document()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v1, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lo/onSmoothScrollerStopped$extraCallback;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Lo/isDefaultApp;

    move-result-object v0

    .line 122
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public document()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 1

    .line 91
    invoke-static {}, Lo/eventFromJson;->autoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v0

    return-object v0
.end method

.method public document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 1

    const-string v0, "Provided document path must not be null."

    .line 103
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 105
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-static {p1}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    iget-object v0, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 104
    invoke-static {p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->forPath(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 3

    .line 64
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object v0

    check-cast v0, Lo/setJailbroken;

    .line 65
    invoke-virtual {v0}, Lo/setRamUsed;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    new-instance v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    iget-object v2, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v1, v0, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
