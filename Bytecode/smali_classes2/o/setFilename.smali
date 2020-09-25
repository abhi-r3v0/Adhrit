.class public abstract Lo/setFilename;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setFilename$extraCallback;
    }
.end annotation


# instance fields
.field private connectityMonitor:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

.field private eventManager:Lo/getGenerator;

.field private gargabeCollectionScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

.field private localStore:Lo/setCores;

.field private persistence:Lo/setThreads;

.field private remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

.field private syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createConnectivityMonitor(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;
.end method

.method protected abstract createEventManager(Lo/setFilename$extraCallback;)Lo/getGenerator;
.end method

.method protected abstract createGarbageCollectionScheduler(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;
.end method

.method protected abstract createLocalStore(Lo/setFilename$extraCallback;)Lo/setCores;
.end method

.method protected abstract createPersistence(Lo/setFilename$extraCallback;)Lo/setThreads;
.end method

.method protected abstract createRemoteStore(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;
.end method

.method protected abstract createSyncEngine(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Application$1;
.end method

.method protected getConnectivityMonitor()Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/setFilename;->connectityMonitor:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    return-object v0
.end method

.method public getEventManager()Lo/getGenerator;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/setFilename;->eventManager:Lo/getGenerator;

    return-object v0
.end method

.method public getGargabeCollectionScheduler()Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/setFilename;->gargabeCollectionScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    return-object v0
.end method

.method public getLocalStore()Lo/setCores;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/setFilename;->localStore:Lo/setCores;

    return-object v0
.end method

.method public getPersistence()Lo/setThreads;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/setFilename;->persistence:Lo/setThreads;

    return-object v0
.end method

.method public getRemoteStore()Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/setFilename;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    return-object v0
.end method

.method public getSyncEngine()Lo/AutoValue_CrashlyticsReport_Session_Application$1;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/setFilename;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    return-object v0
.end method

.method public initialize(Lo/setFilename$extraCallback;)V
    .locals 1

    .line 131
    invoke-virtual {p0, p1}, Lo/setFilename;->createPersistence(Lo/setFilename$extraCallback;)Lo/setThreads;

    move-result-object v0

    iput-object v0, p0, Lo/setFilename;->persistence:Lo/setThreads;

    .line 132
    invoke-virtual {v0}, Lo/setThreads;->start()V

    .line 133
    invoke-virtual {p0, p1}, Lo/setFilename;->createLocalStore(Lo/setFilename$extraCallback;)Lo/setCores;

    move-result-object v0

    iput-object v0, p0, Lo/setFilename;->localStore:Lo/setCores;

    .line 134
    invoke-virtual {p0, p1}, Lo/setFilename;->createConnectivityMonitor(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    move-result-object v0

    iput-object v0, p0, Lo/setFilename;->connectityMonitor:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    .line 135
    invoke-virtual {p0, p1}, Lo/setFilename;->createRemoteStore(Lo/setFilename$extraCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    move-result-object v0

    iput-object v0, p0, Lo/setFilename;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    .line 136
    invoke-virtual {p0, p1}, Lo/setFilename;->createSyncEngine(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    move-result-object v0

    iput-object v0, p0, Lo/setFilename;->syncEngine:Lo/AutoValue_CrashlyticsReport_Session_Application$1;

    .line 137
    invoke-virtual {p0, p1}, Lo/setFilename;->createEventManager(Lo/setFilename$extraCallback;)Lo/getGenerator;

    move-result-object v0

    iput-object v0, p0, Lo/setFilename;->eventManager:Lo/getGenerator;

    .line 138
    iget-object v0, p0, Lo/setFilename;->localStore:Lo/setCores;

    invoke-virtual {v0}, Lo/setCores;->start()V

    .line 139
    iget-object v0, p0, Lo/setFilename;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->start()V

    .line 140
    invoke-virtual {p0, p1}, Lo/setFilename;->createGarbageCollectionScheduler(Lo/setFilename$extraCallback;)Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    move-result-object p1

    iput-object p1, p0, Lo/setFilename;->gargabeCollectionScheduler:Lo/AutoValue_CrashlyticsReport_Session_Device$Builder;

    return-void
.end method
