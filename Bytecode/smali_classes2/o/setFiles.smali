.class public final Lo/setFiles;
.super Lo/getOrgId;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirebaseAuthCredentialsProvider"


# instance fields
.field private final authProvider:Lo/getNativeSessionFilesDir;

.field private changeListener:Lo/retainAll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/retainAll<",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            ">;"
        }
    .end annotation
.end field

.field private currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

.field private forceRefresh:Z

.field private final idTokenListener:Lo/getUserMetadata;

.field private tokenCounter:I


# direct methods
.method public constructor <init>(Lo/getNativeSessionFilesDir;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lo/getOrgId;-><init>()V

    .line 64
    iput-object p1, p0, Lo/setFiles;->authProvider:Lo/getNativeSessionFilesDir;

    .line 65
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_FilesPayload$Builder;->lambdaFactory$(Lo/setFiles;)Lo/getUserMetadata;

    move-result-object v0

    iput-object v0, p0, Lo/setFiles;->idTokenListener:Lo/getUserMetadata;

    .line 76
    invoke-direct {p0}, Lo/setFiles;->getUser()Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    move-result-object v0

    iput-object v0, p0, Lo/setFiles;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lo/setFiles;->tokenCounter:I

    .line 79
    iget-object v0, p0, Lo/setFiles;->idTokenListener:Lo/getUserMetadata;

    invoke-interface {p1, v0}, Lo/getNativeSessionFilesDir;->addIdTokenListener(Lo/getUserMetadata;)V

    return-void
.end method

.method private getUser()Lo/AutoValue_CrashlyticsReport_FilesPayload$1;
    .locals 2

    .line 132
    iget-object v0, p0, Lo/setFiles;->authProvider:Lo/getNativeSessionFilesDir;

    invoke-interface {v0}, Lo/getNativeSessionFilesDir;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-direct {v1, v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->UNAUTHENTICATED:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    return-object v0
.end method

.method public static synthetic lambda$getToken$1(Lo/setFiles;ILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    monitor-enter p0

    .line 97
    :try_start_0
    iget v0, p0, Lo/setFiles;->tokenCounter:I

    if-eq p1, v0, :cond_0

    const-string p1, "FirebaseAuthCredentialsProvider"

    const-string p2, "getToken aborted due to token change"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    invoke-static {p1, p2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lo/getOrgId;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isClsTrace;

    invoke-virtual {p1}, Lo/isClsTrace;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 1001
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 1002
    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 103
    monitor-exit p0

    return-object p2

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 1004
    new-instance p2, Lo/getProjectId;

    invoke-direct {p2}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {p2, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$new$0(Lo/setFiles;Lo/joinMapsEntries;)V
    .locals 1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lo/setFiles;->getUser()Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    move-result-object p1

    iput-object p1, p0, Lo/setFiles;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    .line 69
    iget v0, p0, Lo/setFiles;->tokenCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/setFiles;->tokenCounter:I

    .line 71
    iget-object v0, p0, Lo/setFiles;->changeListener:Lo/retainAll;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lo/setFiles;->changeListener:Lo/retainAll;

    invoke-interface {v0, p1}, Lo/retainAll;->onValue(Ljava/lang/Object;)V

    .line 74
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lo/setFiles;->forceRefresh:Z

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lo/setFiles;->forceRefresh:Z

    .line 86
    iget-object v1, p0, Lo/setFiles;->authProvider:Lo/getNativeSessionFilesDir;

    invoke-interface {v1, v0}, Lo/getNativeSessionFilesDir;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 90
    iget v1, p0, Lo/setFiles;->tokenCounter:I

    .line 91
    sget-object v2, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v1}, Lcom/dreamplug/river/sms/DeviceBroadcastReceiver$extraCallback;->lambdaFactory$(Lo/setFiles;I)Lo/isDefaultApp;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized invalidateToken()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 113
    :try_start_0
    iput-boolean v0, p0, Lo/setFiles;->forceRefresh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeChangeListener()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 126
    :try_start_0
    iput-object v0, p0, Lo/setFiles;->changeListener:Lo/retainAll;

    .line 127
    iget-object v0, p0, Lo/setFiles;->authProvider:Lo/getNativeSessionFilesDir;

    iget-object v1, p0, Lo/setFiles;->idTokenListener:Lo/getUserMetadata;

    invoke-interface {v0, v1}, Lo/getNativeSessionFilesDir;->removeIdTokenListener(Lo/getUserMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setChangeListener(Lo/retainAll;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/retainAll<",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload$1;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    iput-object p1, p0, Lo/setFiles;->changeListener:Lo/retainAll;

    .line 121
    iget-object v0, p0, Lo/setFiles;->currentUser:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-interface {p1, v0}, Lo/retainAll;->onValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
