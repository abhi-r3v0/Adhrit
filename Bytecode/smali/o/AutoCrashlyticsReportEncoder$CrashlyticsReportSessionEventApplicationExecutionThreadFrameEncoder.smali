.class public Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseFirestore"


# instance fields
.field private final asyncQueue:Lo/CrashlyticsReport$Type;

.field private volatile client:Lo/getEndedAt;

.field private final context:Landroid/content/Context;

.field private final credentialsProvider:Lo/getOrgId;

.field private final databaseId:Lo/setProximityOn;

.field private emulatorSettings:Lo/nonNull;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final instanceRegistry:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;

.field private final metadataProvider:Lo/setUuidFromUtf8Bytes;

.field private final persistenceKey:Ljava/lang/String;

.field private settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

.field private final userDataReader:Lo/AutoValue_CrashlyticsReport_FilesPayload;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/setProximityOn;Ljava/lang/String;Lo/getOrgId;Lo/CrashlyticsReport$Type;Lcom/google/firebase/FirebaseApp;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;Lo/setUuidFromUtf8Bytes;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->context:Landroid/content/Context;

    .line 164
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setProximityOn;

    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setProximityOn;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->databaseId:Lo/setProximityOn;

    .line 165
    new-instance p1, Lo/AutoValue_CrashlyticsReport_FilesPayload;

    invoke-direct {p1, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload;-><init>(Lo/setProximityOn;)V

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->userDataReader:Lo/AutoValue_CrashlyticsReport_FilesPayload;

    .line 166
    invoke-static {p3}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->persistenceKey:Ljava/lang/String;

    .line 167
    invoke-static {p4}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getOrgId;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->credentialsProvider:Lo/getOrgId;

    .line 168
    invoke-static {p5}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CrashlyticsReport$Type;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 170
    iput-object p6, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 171
    iput-object p7, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->instanceRegistry:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;

    .line 172
    iput-object p8, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    .line 174
    new-instance p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    invoke-direct {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;-><init>()V

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->build()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object p1

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    return-void
.end method

.method private addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Landroid/app/Activity;Ljava/lang/Runnable;)Lo/getNdkPayload;
    .locals 1

    .line 598
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 599
    invoke-static {p3}, Lo/AutoValue_CrashlyticsReport;->lambdaFactory$(Ljava/lang/Runnable;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    move-result-object p3

    .line 604
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    invoke-direct {v0, p1, p3}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;-><init>(Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    .line 606
    iget-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {p1, v0}, Lo/getEndedAt;->addSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    .line 607
    invoke-static {p0, v0}, Lo/getInstallationUuid;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)Lo/getNdkPayload;

    move-result-object p1

    invoke-static {p2, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->bind(Landroid/app/Activity;Lo/getNdkPayload;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method private ensureClientConfigured()V
    .locals 9

    .line 225
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->databaseId:Lo/setProximityOn;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    if-eqz v1, :cond_1

    .line 231
    monitor-exit v0

    return-void

    .line 233
    :cond_1
    new-instance v4, Lo/AutoValue_CrashlyticsReport_Session;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->databaseId:Lo/setProximityOn;

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->persistenceKey:Ljava/lang/String;

    iget-object v3, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    .line 234
    invoke-virtual {v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    invoke-virtual {v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->isSslEnabled()Z

    move-result v5

    invoke-direct {v4, v1, v2, v3, v5}, Lo/AutoValue_CrashlyticsReport_Session;-><init>(Lo/setProximityOn;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    new-instance v1, Lo/getEndedAt;

    iget-object v3, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->context:Landroid/content/Context;

    iget-object v5, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    iget-object v6, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->credentialsProvider:Lo/getOrgId;

    iget-object v7, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->asyncQueue:Lo/CrashlyticsReport$Type;

    iget-object v8, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lo/getEndedAt;-><init>(Landroid/content/Context;Lo/AutoValue_CrashlyticsReport_Session;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;Lo/getOrgId;Lo/CrashlyticsReport$Type;Lo/setUuidFromUtf8Bytes;)V

    iput-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 2

    .line 89
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "(default)"

    .line 93
    invoke-static {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call FirebaseApp.initializeApp first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 1

    const-string v0, "(default)"

    .line 98
    invoke-static {p0, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 1

    const-string v0, "Provided FirebaseApp must not be null."

    .line 104
    invoke-static {p0, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-class v0, Lo/getPlatform;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getPlatform;

    const-string v0, "Firestore component is not present."

    .line 106
    invoke-static {p0, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, p1}, Lo/getPlatform;->get(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addSnapshotsInSyncListener$3(Ljava/lang/Runnable;Ljava/lang/Void;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "snapshots-in-sync listeners should never get errors."

    .line 601
    invoke-static {p2, v0, p1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 602
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$addSnapshotsInSyncListener$4(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V
    .locals 0

    .line 610
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->mute()V

    .line 611
    iget-object p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {p0, p1}, Lo/getEndedAt;->removeSnapshotsInSyncListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-void
.end method

.method public static synthetic lambda$clearPersistence$2(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/removeBackgroundStateChangeListener;)V
    .locals 2

    .line 510
    :try_start_0
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {v0}, Lo/getEndedAt;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v0, "Persistence cannot be cleared while the firestore instance is running."

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    throw p0

    .line 515
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->context:Landroid/content/Context;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->databaseId:Lo/setProximityOn;

    iget-object p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->persistenceKey:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->clearPersistence(Landroid/content/Context;Lo/setProximityOn;Ljava/lang/String;)V

    .line 2008
    iget-object p0, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/firebase/firestore/FirebaseFirestoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$runTransaction$0(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    new-instance v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    invoke-direct {v0, p2, p0}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;-><init>(Lo/getClsId;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    invoke-interface {p1, v0}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;->apply(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$runTransaction$1(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Ljava/util/concurrent/Executor;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 341
    invoke-static {p0, p2, p3}, Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p1, p0}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private mergeEmulatorSettings(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;Lo/nonNull;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;
    .locals 4

    if-nez p2, :cond_0

    return-object p1

    .line 249
    :cond_0
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "firestore.googleapis.com"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "FirebaseFirestore"

    const-string v3, "Host has been set in FirebaseFirestoreSettings and useEmulator, emulator host will be used."

    .line 250
    invoke-static {v2, v3, v0}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_1
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    invoke-direct {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    invoke-virtual {p2}, Lo/nonNull;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/nonNull;->getPort()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->setHost(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    move-result-object p1

    .line 257
    invoke-virtual {p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->setSslEnabled(Z)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->build()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object p1

    return-object p1
.end method

.method static newInstance(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/getNativeSessionFilesDir;Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;Lo/setUuidFromUtf8Bytes;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 10

    .line 118
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getProjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-static {v0, p3}, Lo/setProximityOn;->forDatabase(Ljava/lang/String;Ljava/lang/String;)Lo/setProximityOn;

    move-result-object v3

    .line 124
    new-instance v6, Lo/CrashlyticsReport$Type;

    invoke-direct {v6}, Lo/CrashlyticsReport$Type;-><init>()V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "FirebaseFirestore"

    const-string v0, "Firebase Auth not available, falling back to unauthenticated usage."

    .line 128
    invoke-static {p3, v0, p2}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance p2, Lo/setOrgId;

    invoke-direct {p2}, Lo/setOrgId;-><init>()V

    move-object v5, p2

    goto :goto_0

    .line 131
    :cond_0
    new-instance p3, Lo/setFiles;

    invoke-direct {p3, p2}, Lo/setFiles;-><init>(Lo/getNativeSessionFilesDir;)V

    move-object v5, p3

    .line 138
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 140
    new-instance p2, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;-><init>(Landroid/content/Context;Lo/setProximityOn;Ljava/lang/String;Lo/getOrgId;Lo/CrashlyticsReport$Type;Lcom/google/firebase/FirebaseApp;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;Lo/setUuidFromUtf8Bytes;)V

    return-object p2

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FirebaseOptions.getProjectId() cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private runTransaction(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady<",
            "TResultT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 339
    invoke-static {p0, p2, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Ljava/util/concurrent/Executor;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;)Lo/listIterator;

    move-result-object p1

    .line 347
    iget-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {p2, p1}, Lo/getEndedAt;->transaction(Lo/listIterator;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 480
    sget-object p0, Lo/lastIndexOf$onMessageChannelReady;->DEBUG:Lo/lastIndexOf$onMessageChannelReady;

    invoke-static {p0}, Lo/lastIndexOf;->setLogLevel(Lo/lastIndexOf$onMessageChannelReady;)V

    return-void

    .line 482
    :cond_0
    sget-object p0, Lo/lastIndexOf$onMessageChannelReady;->WARN:Lo/lastIndexOf$onMessageChannelReady;

    invoke-static {p0}, Lo/lastIndexOf;->setLogLevel(Lo/lastIndexOf$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public addSnapshotsInSyncListener(Landroid/app/Activity;Ljava/lang/Runnable;)Lo/getNdkPayload;
    .locals 1

    .line 561
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Landroid/app/Activity;Ljava/lang/Runnable;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotsInSyncListener(Ljava/lang/Runnable;)Lo/getNdkPayload;
    .locals 1

    .line 540
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lo/getNdkPayload;
    .locals 1

    const/4 v0, 0x0

    .line 582
    invoke-direct {p0, p1, v0, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->addSnapshotsInSyncListener(Ljava/util/concurrent/Executor;Landroid/app/Activity;Ljava/lang/Runnable;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public batch()Lo/getFiles;
    .locals 1

    .line 378
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 380
    new-instance v0, Lo/getFiles;

    invoke-direct {v0, p0}, Lo/getFiles;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public clearPersistence()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 507
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->asyncQueue:Lo/CrashlyticsReport$Type;

    invoke-static {p0, v0}, Lo/RecyclerView$LayoutParams$onPostMessage;->lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/removeBackgroundStateChangeListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/CrashlyticsReport$Type;->enqueueAndForgetEvenAfterShutdown(Ljava/lang/Runnable;)V

    .line 1014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method public collection(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;
    .locals 1

    const-string v0, "Provided collection path must not be null."

    .line 276
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 278
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    invoke-static {p1}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;-><init>(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public collectionGroup(Ljava/lang/String;)Lo/setInstallationUuid;
    .locals 3

    const-string v0, "Provided collection ID must not be null."

    .line 305
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 313
    new-instance v0, Lo/setInstallationUuid;

    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    sget-object v2, Lo/setJailbroken;->EMPTY:Lo/setJailbroken;

    invoke-direct {v1, v2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid collectionId \'%s\'. Collection IDs must not contain \'/\'."

    .line 308
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 474
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {v0}, Lo/getEndedAt;->disableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 1

    const-string v0, "Provided document path must not be null."

    .line 290
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 292
    invoke-static {p1}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->forPath(Lo/setJailbroken;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object p1

    return-object p1
.end method

.method public enableNetwork()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 461
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {v0}, Lo/getEndedAt;->enableNetwork()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getApp()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 264
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method getAsyncQueue()Lo/CrashlyticsReport$Type;
    .locals 1

    .line 450
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->asyncQueue:Lo/CrashlyticsReport$Type;

    return-object v0
.end method

.method getClient()Lo/getEndedAt;
    .locals 1

    .line 616
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    return-object v0
.end method

.method getDatabaseId()Lo/setProximityOn;
    .locals 1

    .line 620
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->databaseId:Lo/setProximityOn;

    return-object v0
.end method

.method public getFirestoreSettings()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;
    .locals 1

    .line 180
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    return-object v0
.end method

.method getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;
    .locals 1

    .line 624
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->userDataReader:Lo/AutoValue_CrashlyticsReport_FilesPayload;

    return-object v0
.end method

.method public runBatch(Lo/getFiles$onNavigationEvent;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getFiles$onNavigationEvent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->batch()Lo/getFiles;

    move-result-object v0

    .line 393
    invoke-interface {p1, v0}, Lo/getFiles$onNavigationEvent;->apply(Lo/getFiles;)V

    .line 394
    invoke-virtual {v0}, Lo/getFiles;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public runTransaction(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Provided transaction update function must not be null."

    .line 361
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Lo/getClsId;->getDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 362
    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->runTransaction(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setFirestoreSettings(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->emulatorSettings:Lo/nonNull;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->mergeEmulatorSettings(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;Lo/nonNull;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->databaseId:Lo/setProximityOn;

    monitor-enter v0

    :try_start_0
    const-string v1, "Provided settings must not be null."

    .line 191
    invoke-static {p1, v1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "FirebaseFirestore has already been started and its settings can no longer be changed. You can only call setFirestoreSettings() before calling any other methods on a FirebaseFirestore object."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public terminate()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->instanceRegistry:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;

    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v1

    invoke-virtual {v1}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;->remove(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->terminateInternal()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method terminateInternal()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->ensureClientConfigured()V

    .line 400
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {v0}, Lo/getEndedAt;->terminate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public useEmulator(Ljava/lang/String;I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lo/nonNull;

    invoke-direct {v0, p1, p2}, Lo/nonNull;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->emulatorSettings:Lo/nonNull;

    .line 221
    iget-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->mergeEmulatorSettings(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;Lo/nonNull;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object p1

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->settings:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call useEmulator() after instance has already been initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method validateReference(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V
    .locals 1

    const-string v0, "Provided DocumentReference must not be null."

    .line 632
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object p1

    if-ne p1, p0, :cond_0

    return-void

    .line 634
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provided document reference is from a different Cloud Firestore instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitForPendingWrites()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->client:Lo/getEndedAt;

    invoke-virtual {v0}, Lo/getEndedAt;->waitForPendingWrites()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
