.class public Lo/setApp;
.super Lo/setFilename;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setApp$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/setFilename;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createConnectivityMonitor(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lo/setApp;->createConnectivityMonitor(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution;

    move-result-object p1

    return-object p1
.end method

.method protected createConnectivityMonitor(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution;
    .locals 1

    .line 57
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution;

    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createEventManager(Lo/setFilename$extraCallback;)Lo/getGenerator;
    .locals 1

    .line 46
    new-instance p1, Lo/getGenerator;

    invoke-virtual {p0}, Lo/setFilename;->getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/getGenerator;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application$1;)V

    return-object p1
.end method

.method protected createGarbageCollectionScheduler(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createLocalStore(Lo/setFilename$extraCallback;)Lo/setCores;
    .locals 3

    .line 51
    new-instance v0, Lo/setCores;

    .line 52
    invoke-virtual {p0}, Lo/setFilename;->getPersistence()Lo/setThreads;

    move-result-object v1

    new-instance v2, Lo/isSimulator;

    invoke-direct {v2}, Lo/isSimulator;-><init>()V

    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getInitialUser()Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lo/setCores;-><init>(Lo/setThreads;Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V

    return-object v0
.end method

.method protected createPersistence(Lo/setFilename$extraCallback;)Lo/setThreads;
    .locals 0

    .line 62
    invoke-static {}, Lo/getSignal;->createEagerGcMemoryPersistence()Lo/getSignal;

    move-result-object p1

    return-object p1
.end method

.method protected createRemoteStore(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;
    .locals 7

    .line 67
    new-instance v6, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    new-instance v1, Lo/setApp$onPostMessage;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lo/setApp$onPostMessage;-><init>(Lo/setApp;Lo/setApp$2;)V

    .line 69
    invoke-virtual {p0}, Lo/setFilename;->getLocalStore()Lo/setCores;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getDatastore()Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    move-result-object v3

    .line 71
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getAsyncQueue()Lo/CrashlyticsReport$Type;

    move-result-object v4

    .line 72
    invoke-virtual {p0}, Lo/setApp;->getConnectivityMonitor()Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;)V

    return-object v6
.end method

.method protected createSyncEngine(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Application$1;
    .locals 4

    .line 77
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    .line 78
    invoke-virtual {p0}, Lo/setFilename;->getLocalStore()Lo/setCores;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lo/setFilename;->getRemoteStore()Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getInitialUser()Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    move-result-object v3

    .line 81
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getMaxConcurrentLimboResolutions()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application$1;-><init>(Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;I)V

    return-object v0
.end method
