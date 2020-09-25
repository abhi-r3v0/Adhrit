.class public final Lo/AutoValue_CrashlyticsReport_Session_Application$Builder;
.super Lo/setApp;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/setApp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final createGarbageCollectionScheduler(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lo/setFilename;->getPersistence()Lo/setThreads;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getReferenceDelegate()Lo/getBaseAddress;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lo/setLog;->getGarbageCollector()Lo/getExecution;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getAsyncQueue()Lo/CrashlyticsReport$Type;

    move-result-object p1

    invoke-virtual {p0}, Lo/setFilename;->getLocalStore()Lo/setCores;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/getExecution;->newScheduler(Lo/CrashlyticsReport$Type;Lo/setCores;)Lo/getExecution$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method protected final createPersistence(Lo/setFilename$extraCallback;)Lo/setThreads;
    .locals 7

    .line 38
    new-instance v4, Lo/setDiskSpace;

    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 39
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getDatabaseInfo()Lo/AutoValue_CrashlyticsReport_Session;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session;->getDatabaseId()Lo/setProximityOn;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;-><init>(Lo/setProximityOn;)V

    invoke-direct {v4, v0}, Lo/setDiskSpace;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;)V

    .line 42
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getSettings()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->getCacheSizeBytes()J

    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Lo/getExecution$onMessageChannelReady;->WithCacheSizeBytes(J)Lo/getExecution$onMessageChannelReady;

    move-result-object v5

    .line 43
    new-instance v6, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 44
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getDatabaseInfo()Lo/AutoValue_CrashlyticsReport_Session;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session;->getPersistenceKey()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lo/setFilename$extraCallback;->getDatabaseInfo()Lo/AutoValue_CrashlyticsReport_Session;

    move-result-object p1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session;->getDatabaseId()Lo/setProximityOn;

    move-result-object v3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/setProximityOn;Lo/setDiskSpace;Lo/getExecution$onMessageChannelReady;)V

    return-object v6
.end method
