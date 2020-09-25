.class public Lcom/google/firebase/perf/metrics/AppStartTrace;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/metrics/AppStartTrace$onPostMessage;
    }
.end annotation


# static fields
.field private static final zzft:J

.field private static volatile zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;


# instance fields
.field private mRegistered:Z

.field private zzcb:Lo/deleteAllReports;

.field private final zzcd:Lo/b$a;

.field private zzfv:Landroid/content/Context;

.field private zzfw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private zzfx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private zzfy:Z

.field private zzfz:Lo/aY;

.field private zzga:Lo/aY;

.field private zzgb:Lo/aY;

.field private zzgc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzft:J

    return-void
.end method

.method private constructor <init>(Lo/deleteAllReports;Lo/b$a;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z

    .line 16
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfy:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    .line 18
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzga:Lo/aY;

    .line 19
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgb:Lo/aY;

    .line 20
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgc:Z

    .line 21
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzcb:Lo/deleteAllReports;

    .line 22
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzcd:Lo/b$a;

    return-void
.end method

.method public static setLauncherActivityOnCreateTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnResumeTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static setLauncherActivityOnStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method private static zza(Lo/deleteAllReports;Lo/b$a;)Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    .line 8
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez p0, :cond_1

    .line 9
    const-class p0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    monitor-enter p0

    .line 10
    :try_start_0
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Lo/deleteAllReports;Lo/b$a;)V

    sput-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 12
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 13
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lo/aY;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgc:Z

    return p1
.end method

.method public static zzcs()Lcom/google/firebase/perf/metrics/AppStartTrace;
    .locals 2

    .line 4
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfu:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    new-instance v1, Lo/b$a;

    invoke-direct {v1}, Lo/b$a;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->zza(Lo/deleteAllReports;Lo/b$a;)Lcom/google/firebase/perf/metrics/AppStartTrace;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized zzct()V
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfv:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgc:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfw:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance p1, Lo/aY;

    invoke-direct {p1}, Lo/aY;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    .line 43
    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->zzdb()Lo/aY;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    invoke-virtual {p1, p2}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide p1

    sget-wide v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzft:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    monitor-exit p0

    return-void

    .line 38
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgc:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgb:Lo/aY;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfy:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfx:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgb:Lo/aY;

    .line 58
    invoke-static {}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->zzdb()Lo/aY;

    move-result-object v0

    .line 59
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgb:Lo/aY;

    .line 61
    invoke-virtual {v0, v2}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onResume(): "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " microseconds"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lo/getColumnCount;->onRelationshipValidationResult()Lo/getColumnCount$extraCallback;

    move-result-object p1

    sget-object v1, Lo/getRootView;->onNavigationEvent:Lo/getRootView;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/getColumnCount$extraCallback;->extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgb:Lo/aY;

    .line 66
    invoke-virtual {v0, v1}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lo/getColumnCount$extraCallback;->onMessageChannelReady(J)Lo/getColumnCount$extraCallback;

    move-result-object p1

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-static {}, Lo/getColumnCount;->onRelationshipValidationResult()Lo/getColumnCount$extraCallback;

    move-result-object v2

    sget-object v3, Lo/getRootView;->onPostMessage:Lo/getRootView;

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/getColumnCount$extraCallback;->extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    .line 71
    invoke-virtual {v0, v3}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getColumnCount$extraCallback;->onMessageChannelReady(J)Lo/getColumnCount$extraCallback;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {}, Lo/getColumnCount;->onRelationshipValidationResult()Lo/getColumnCount$extraCallback;

    move-result-object v0

    .line 74
    sget-object v2, Lo/getRootView;->ICustomTabsCallback:Lo/getRootView;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/getColumnCount$extraCallback;->extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    .line 75
    invoke-virtual {v3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfz:Lo/aY;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzga:Lo/aY;

    .line 76
    invoke-virtual {v3, v4}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getColumnCount$extraCallback;->onMessageChannelReady(J)Lo/getColumnCount$extraCallback;

    .line 77
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {}, Lo/getColumnCount;->onRelationshipValidationResult()Lo/getColumnCount$extraCallback;

    move-result-object v0

    .line 79
    sget-object v2, Lo/getRootView;->extraCallback:Lo/getRootView;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/getColumnCount$extraCallback;->extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzga:Lo/aY;

    .line 80
    invoke-virtual {v3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzga:Lo/aY;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgb:Lo/aY;

    .line 81
    invoke-virtual {v3, v4}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getColumnCount$extraCallback;->onMessageChannelReady(J)Lo/getColumnCount$extraCallback;

    .line 82
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/getColumnCount;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1, v1}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/getColumnCount$extraCallback;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object v1

    invoke-virtual {v1}, Lo/synthesizeReport;->zzcj()Lo/ArticleListActivity$3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getColumnCount$extraCallback;->onPostMessage(Lo/ArticleListActivity$3;)Lo/getColumnCount$extraCallback;

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzcb:Lo/deleteAllReports;

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzcb:Lo/deleteAllReports;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzcb:Lo/deleteAllReports;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzcb:Lo/deleteAllReports;

    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/getColumnCount;

    sget-object v1, Lo/onCreateLoader;->onPostMessage:Lo/onCreateLoader;

    invoke-virtual {v0, p1, v1}, Lo/deleteAllReports;->zza(Lo/getColumnCount;Lo/onCreateLoader;)V

    .line 90
    :cond_2
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z

    if-eqz p1, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzct()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_3
    monitor-exit p0

    return-void

    .line 53
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzgc:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzga:Lo/aY;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfy:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Lo/aY;

    invoke-direct {p1}, Lo/aY;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzga:Lo/aY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 47
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    monitor-enter p0

    .line 94
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zze(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->mRegistered:Z

    .line 30
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace;->zzfv:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
