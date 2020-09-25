.class public Lo/buildHttpRequest;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final MAX_TRACE_NAME_LENGTH:I = 0x64

.field private static volatile zzae:Lo/buildHttpRequest;


# instance fields
.field private final zzaf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzag:Lo/setPhone;

.field private final zzah:Lo/aQ;

.field private zzai:Lo/b$b;

.field private zzaj:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 6

    .line 10
    invoke-static {}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzck()Lcom/google/firebase/perf/internal/RemoteConfigManager;

    move-result-object v3

    .line 11
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzca()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lo/buildHttpRequest;-><init>(Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/firebase/perf/internal/RemoteConfigManager;Lo/setPhone;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/firebase/perf/internal/RemoteConfigManager;Lo/setPhone;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/buildHttpRequest;->zzaf:Ljava/util/Map;

    .line 17
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v0

    iput-object v0, p0, Lo/buildHttpRequest;->zzai:Lo/b$b;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    .line 21
    iput-object p4, p0, Lo/buildHttpRequest;->zzag:Lo/setPhone;

    .line 22
    new-instance p1, Lo/aQ;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lo/aQ;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lo/buildHttpRequest;->zzah:Lo/aQ;

    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lo/buildHttpRequest;->zza(Landroid/content/Context;)Lo/aQ;

    move-result-object v0

    iput-object v0, p0, Lo/buildHttpRequest;->zzah:Lo/aQ;

    .line 26
    invoke-virtual {p3, p2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zza(Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    .line 27
    iput-object p4, p0, Lo/buildHttpRequest;->zzag:Lo/setPhone;

    .line 28
    iget-object p2, p0, Lo/buildHttpRequest;->zzah:Lo/aQ;

    invoke-virtual {p4, p2}, Lo/setPhone;->onMessageChannelReady(Lo/aQ;)V

    .line 29
    iget-object p2, p0, Lo/buildHttpRequest;->zzag:Lo/setPhone;

    invoke-virtual {p2, p1}, Lo/setPhone;->onMessageChannelReady(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p5, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->zzc(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p4}, Lo/setPhone;->extraCallback()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    return-void
.end method

.method public static getInstance()Lo/buildHttpRequest;
    .locals 2

    .line 1
    const-class v0, Lo/buildHttpRequest;

    sget-object v1, Lo/buildHttpRequest;->zzae:Lo/buildHttpRequest;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo/buildHttpRequest;->zzae:Lo/buildHttpRequest;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/buildHttpRequest;

    .line 6
    sput-object v1, Lo/buildHttpRequest;->zzae:Lo/buildHttpRequest;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lo/buildHttpRequest;->zzae:Lo/buildHttpRequest;

    return-object v0
.end method

.method public static startTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/google/firebase/perf/metrics/Trace;->zzq(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    return-object p0
.end method

.method private static zza(Landroid/content/Context;)Lo/aQ;
    .locals 2

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 66
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, "No perf enable meta data found "

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v0, "isEnabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_1

    .line 70
    new-instance v0, Lo/aQ;

    invoke-direct {v0, p0}, Lo/aQ;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_1
    new-instance p0, Lo/aQ;

    invoke-direct {p0}, Lo/aQ;-><init>()V

    return-object p0
.end method

.method private final declared-synchronized zza(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v0, p0, Lo/buildHttpRequest;->zzag:Lo/setPhone;

    invoke-virtual {v0}, Lo/setPhone;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p1, p0, Lo/buildHttpRequest;->zzai:Lo/b$b;

    const-string v0, "Firebase Performance is permanently disabled"

    invoke-virtual {p1, v0}, Lo/b$b;->extraCallback(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_2
    iget-object v0, p0, Lo/buildHttpRequest;->zzag:Lo/setPhone;

    invoke-virtual {v0, p1}, Lo/setPhone;->onNavigationEvent(Ljava/lang/Boolean;)V

    if-eqz p1, :cond_1

    .line 47
    iput-object p1, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lo/buildHttpRequest;->zzag:Lo/setPhone;

    invoke-virtual {p1}, Lo/setPhone;->extraCallback()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    .line 49
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lo/buildHttpRequest;->zzai:Lo/b$b;

    const-string v0, "Firebase Performance is Enabled"

    invoke-virtual {p1, v0}, Lo/b$b;->extraCallback(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 51
    :cond_2
    :try_start_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    iget-object p1, p0, Lo/buildHttpRequest;->zzai:Lo/b$b;

    const-string v0, "Firebase Performance is Disabled"

    invoke-virtual {p1, v0}, Lo/b$b;->extraCallback(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 41
    :catch_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/buildHttpRequest;->zzaf:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public isPerformanceCollectionEnabled()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lo/buildHttpRequest;->zzaj:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0

    return v0
.end method

.method public newHttpMetric(Ljava/lang/String;Ljava/lang/String;)Lo/sortAndCombineReportFiles;
    .locals 3

    .line 60
    new-instance v0, Lo/sortAndCombineReportFiles;

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v1

    new-instance v2, Lo/aY;

    invoke-direct {v2}, Lo/aY;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Lo/sortAndCombineReportFiles;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/deleteAllReports;Lo/aY;)V

    return-object v0
.end method

.method public newHttpMetric(Ljava/net/URL;Ljava/lang/String;)Lo/sortAndCombineReportFiles;
    .locals 3

    .line 61
    new-instance v0, Lo/sortAndCombineReportFiles;

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v1

    new-instance v2, Lo/aY;

    invoke-direct {v2}, Lo/aY;-><init>()V

    invoke-direct {v0, p1, p2, v1, v2}, Lo/sortAndCombineReportFiles;-><init>(Ljava/net/URL;Ljava/lang/String;Lo/deleteAllReports;Lo/aY;)V

    return-object v0
.end method

.method public newTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/Trace;->zzq(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object p1

    return-object p1
.end method

.method public setPerformanceCollectionEnabled(Z)V
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/buildHttpRequest;->zza(Ljava/lang/Boolean;)V

    return-void
.end method
