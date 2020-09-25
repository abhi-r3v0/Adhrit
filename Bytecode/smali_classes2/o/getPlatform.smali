.class public Lo/getPlatform;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getReportsEndpointFilename;
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final authProvider:Lo/getNativeSessionFilesDir;

.field private final context:Landroid/content/Context;

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Lo/setUuidFromUtf8Bytes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/getNativeSessionFilesDir;Lo/setUuidFromUtf8Bytes;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getPlatform;->instances:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lo/getPlatform;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lo/getPlatform;->app:Lcom/google/firebase/FirebaseApp;

    .line 50
    iput-object p3, p0, Lo/getPlatform;->authProvider:Lo/getNativeSessionFilesDir;

    .line 51
    iput-object p4, p0, Lo/getPlatform;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    .line 52
    invoke-virtual {p2, p0}, Lcom/google/firebase/FirebaseApp;->addLifecycleEventListener(Lo/getReportsEndpointFilename;)V

    return-void
.end method


# virtual methods
.method declared-synchronized get(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 7

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/getPlatform;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    if-nez v0, :cond_0

    .line 60
    iget-object v1, p0, Lo/getPlatform;->context:Landroid/content/Context;

    iget-object v2, p0, Lo/getPlatform;->app:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lo/getPlatform;->authProvider:Lo/getNativeSessionFilesDir;

    iget-object v6, p0, Lo/getPlatform;->metadataProvider:Lo/setUuidFromUtf8Bytes;

    move-object v4, p1

    move-object v5, p0

    .line 61
    invoke-static/range {v1 .. v6}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->newInstance(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/getNativeSessionFilesDir;Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder$ICustomTabsCallback;Lo/setUuidFromUtf8Bytes;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lo/getPlatform;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDeleted(Ljava/lang/String;Lo/asGzippedBytes;)V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object p1, p0, Lo/getPlatform;->instances:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->terminateInternal()Lcom/google/android/gms/tasks/Task;

    .line 85
    iget-object v0, p0, Lo/getPlatform;->instances:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lo/getPlatform;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
