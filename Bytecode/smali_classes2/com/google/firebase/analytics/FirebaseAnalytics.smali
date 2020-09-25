.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzb:Lo/getCsatResponse;

.field private zzc:Ljava/lang/String;

.field private zzd:J

.field private final zze:Ljava/lang/Object;

.field private zzf:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lo/getCsatResponse;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/Object;

    return-void

    .line 2002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Lo/getCsatResponse;->ICustomTabsCallback(Landroid/content/Context;)Lo/getCsatResponse;

    move-result-object p0

    .line 5
    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lo/getCsatResponse;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lo/setIconStartPadding;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, v0, v0, v0, p1}, Lo/getCsatResponse;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lo/getCsatResponse;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance p1, Lo/getChangedHolderKey$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/getChangedHolderKey$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-object p1
.end method

.method public static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza()Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 24
    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lo/getTotalRamInBytes;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v9, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lo/getTotalRamInBytes;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:Ljava/util/concurrent/ExecutorService;

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzf:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0

    throw v1
.end method

.method public static synthetic zza(Lcom/google/firebase/analytics/FirebaseAnalytics;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/lang/String;

    .line 3001
    sget-object p1, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 57
    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:J

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final zzb()Ljava/lang/String;
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zze:Ljava/lang/Object;

    monitor-enter v0

    .line 4001
    :try_start_0
    sget-object v1, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 60
    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    .line 61
    iget-wide v3, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzd:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzc:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 63
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0

    throw v1
.end method

.method public static synthetic zzb(Lcom/google/firebase/analytics/FirebaseAnalytics;)Lo/getCsatResponse;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    return-object p0
.end method


# virtual methods
.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    new-instance v1, Lo/getProjectId;

    invoke-direct {v1}, Lo/getProjectId;-><init>()V

    .line 1002
    invoke-virtual {v1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v1

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lo/convertMemInfoToBytes;

    invoke-direct {v1, p0}, Lo/convertMemInfoToBytes;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    .line 34
    invoke-static {v0, v1}, Lo/clearInstancesForTest;->onNavigationEvent(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    const/4 v2, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Failed to schedule task for getAppInstanceId"

    invoke-virtual/range {v1 .. v6}, Lo/getCsatResponse;->onNavigationEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1004
    new-instance v1, Lo/getProjectId;

    invoke-direct {v1}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 47
    :try_start_0
    invoke-static {}, Lo/access$lambda$6;->getInstance()Lo/access$lambda$6;

    move-result-object v0

    invoke-virtual {v0}, Lo/access$lambda$6;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 48
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lo/clearInstancesForTest;->ICustomTabsCallback(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :catch_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Firebase Installations getId Task has timed out."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final resetAnalyticsData()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0}, Lo/getCsatResponse;->ICustomTabsCallback()V

    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->extraCallback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2}, Lo/getCsatResponse;->onPostMessage(J)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2}, Lo/getCsatResponse;->ICustomTabsCallback(J)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2}, Lo/getCsatResponse;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
