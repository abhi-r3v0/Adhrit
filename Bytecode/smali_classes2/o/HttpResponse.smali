.class public Lo/HttpResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HttpResponse$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static volatile zzca:Lo/HttpResponse;


# instance fields
.field private mRegistered:Z

.field private zzai:Lo/b$b;

.field private zzcb:Lo/deleteAllReports;

.field private zzcc:Lo/setPhone;

.field private final zzcd:Lo/b$a;

.field private zzce:Z

.field private final zzcf:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private zzcg:Lo/aY;

.field private zzch:Lo/aY;

.field private final zzci:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzcj:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzck:Lo/onCreateLoader;

.field private zzcl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/HttpResponse$ICustomTabsCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzcm:Z

.field private zzcn:Lo/fromMediaDescription;

.field private final zzco:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/deleteAllReports;Lo/b$a;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lo/HttpResponse;->mRegistered:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/HttpResponse;->zzce:Z

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/HttpResponse;->zzcj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    sget-object v0, Lo/onCreateLoader;->onNavigationEvent:Lo/onCreateLoader;

    iput-object v0, p0, Lo/HttpResponse;->zzck:Lo/onCreateLoader;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    .line 19
    iput-boolean p1, p0, Lo/HttpResponse;->zzcm:Z

    .line 20
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lo/HttpResponse;->zzco:Ljava/util/WeakHashMap;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lo/HttpResponse;->zzcb:Lo/deleteAllReports;

    .line 22
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/HttpResponse;->zzai:Lo/b$b;

    .line 23
    iput-object p2, p0, Lo/HttpResponse;->zzcd:Lo/b$a;

    .line 24
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object p1

    iput-object p1, p0, Lo/HttpResponse;->zzcc:Lo/setPhone;

    .line 25
    invoke-static {}, Lo/HttpResponse;->zzbl()Z

    move-result p1

    iput-boolean p1, p0, Lo/HttpResponse;->zzcm:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Lo/fromMediaDescription;

    invoke-direct {p1}, Lo/fromMediaDescription;-><init>()V

    iput-object p1, p0, Lo/HttpResponse;->zzcn:Lo/fromMediaDescription;

    :cond_0
    return-void
.end method

.method private static zza(Lo/deleteAllReports;)Lo/HttpResponse;
    .locals 3

    .line 5
    sget-object p0, Lo/HttpResponse;->zzca:Lo/HttpResponse;

    if-nez p0, :cond_1

    .line 6
    const-class p0, Lo/HttpResponse;

    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lo/HttpResponse;->zzca:Lo/HttpResponse;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lo/HttpResponse;

    const/4 v1, 0x0

    new-instance v2, Lo/b$a;

    invoke-direct {v2}, Lo/b$a;-><init>()V

    invoke-direct {v0, v1, v2}, Lo/HttpResponse;-><init>(Lo/deleteAllReports;Lo/b$a;)V

    sput-object v0, Lo/HttpResponse;->zzca:Lo/HttpResponse;

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lo/HttpResponse;->zzca:Lo/HttpResponse;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;Lo/aY;Lo/aY;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lo/HttpResponse;->zzcc:Lo/setPhone;

    invoke-virtual {v0}, Lo/setPhone;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lo/HttpResponse;->zzbk()V

    .line 134
    invoke-static {}, Lo/getColumnCount;->onRelationshipValidationResult()Lo/getColumnCount$extraCallback;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Lo/getColumnCount$extraCallback;->extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;

    move-result-object p1

    .line 137
    invoke-virtual {p2, p3}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lo/getColumnCount$extraCallback;->onMessageChannelReady(J)Lo/getColumnCount$extraCallback;

    move-result-object p1

    .line 138
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object p2

    invoke-virtual {p2}, Lo/synthesizeReport;->zzcj()Lo/ArticleListActivity$3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/getColumnCount$extraCallback;->onPostMessage(Lo/ArticleListActivity$3;)Lo/getColumnCount$extraCallback;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lo/HttpResponse;->zzcj:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    .line 140
    iget-object p3, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    monitor-enter p3

    .line 141
    :try_start_0
    iget-object v0, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lo/getColumnCount$extraCallback;->onNavigationEvent(Ljava/util/Map;)Lo/getColumnCount$extraCallback;

    if-eqz p2, :cond_1

    .line 143
    sget-object v0, Lo/aS;->onPostMessage:Lo/aS;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(Ljava/lang/String;J)Lo/getColumnCount$extraCallback;

    .line 144
    :cond_1
    iget-object p2, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 145
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object p2, p0, Lo/HttpResponse;->zzcb:Lo/deleteAllReports;

    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/getColumnCount;

    sget-object p3, Lo/onCreateLoader;->onPostMessage:Lo/onCreateLoader;

    invoke-virtual {p2, p1, p3}, Lo/deleteAllReports;->zza(Lo/getColumnCount;Lo/onCreateLoader;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 145
    monitor-exit p3

    throw p1
.end method

.method private final zza(Lo/onCreateLoader;)V
    .locals 3

    .line 120
    iput-object p1, p0, Lo/HttpResponse;->zzck:Lo/onCreateLoader;

    .line 121
    iget-object p1, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    monitor-enter p1

    .line 122
    :try_start_0
    iget-object v0, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/HttpResponse$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 125
    iget-object v2, p0, Lo/HttpResponse;->zzck:Lo/onCreateLoader;

    invoke-interface {v1, v2}, Lo/HttpResponse$ICustomTabsCallback;->zzb(Lo/onCreateLoader;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 128
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private final zza(Z)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lo/HttpResponse;->zzbk()V

    .line 150
    iget-object v0, p0, Lo/HttpResponse;->zzcb:Lo/deleteAllReports;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lo/deleteAllReports;->zzb(Z)V

    :cond_0
    return-void
.end method

.method private final zza(Landroid/app/Activity;)Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lo/HttpResponse;->zzcm:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzb(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_st_"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static zzbh()Lo/HttpResponse;
    .locals 1

    .line 1
    sget-object v0, Lo/HttpResponse;->zzca:Lo/HttpResponse;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lo/HttpResponse;->zzca:Lo/HttpResponse;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lo/HttpResponse;->zza(Lo/deleteAllReports;)Lo/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private final zzbk()V
    .locals 1

    .line 153
    iget-object v0, p0, Lo/HttpResponse;->zzcb:Lo/deleteAllReports;

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v0

    iput-object v0, p0, Lo/HttpResponse;->zzcb:Lo/deleteAllReports;

    :cond_0
    return-void
.end method

.method private static zzbl()Z
    .locals 1

    :try_start_0
    const-string v0, "o.fromMediaDescription"

    .line 160
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
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
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    .line 101
    iput-object v0, p0, Lo/HttpResponse;->zzch:Lo/aY;

    .line 102
    iget-object v0, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object p1, Lo/onCreateLoader;->extraCallback:Lo/onCreateLoader;

    invoke-direct {p0, p1}, Lo/HttpResponse;->zza(Lo/onCreateLoader;)V

    const/4 p1, 0x1

    .line 104
    invoke-direct {p0, p1}, Lo/HttpResponse;->zza(Z)V

    .line 105
    iget-boolean p1, p0, Lo/HttpResponse;->zzce:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lo/HttpResponse;->zzce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 107
    :cond_0
    :try_start_1
    sget-object p1, Lo/getRootView;->ICustomTabsCallback$Stub:Lo/getRootView;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/HttpResponse;->zzcg:Lo/aY;

    iget-object v1, p0, Lo/HttpResponse;->zzch:Lo/aY;

    .line 109
    invoke-direct {p0, p1, v0, v1}, Lo/HttpResponse;->zza(Ljava/lang/String;Lo/aY;Lo/aY;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 110
    :cond_1
    :try_start_2
    iget-object v0, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
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
    .locals 4

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0, p1}, Lo/HttpResponse;->zza(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/HttpResponse;->zzcc:Lo/setPhone;

    invoke-virtual {v0}, Lo/setPhone;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lo/HttpResponse;->zzcn:Lo/fromMediaDescription;

    .line 1226
    iget-object v0, v0, Lo/fromMediaDescription;->onNavigationEvent:Lo/fromMediaDescription$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/fromMediaDescription$onNavigationEvent;->ICustomTabsCallback(Landroid/app/Activity;)V

    .line 48
    invoke-direct {p0}, Lo/HttpResponse;->zzbk()V

    .line 49
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Lo/HttpResponse;->zzb(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/HttpResponse;->zzcb:Lo/deleteAllReports;

    iget-object v3, p0, Lo/HttpResponse;->zzcd:Lo/b$a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lo/deleteAllReports;Lo/b$a;Lo/HttpResponse;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 51
    iget-object v1, p0, Lo/HttpResponse;->zzco:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 10

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lo/HttpResponse;->zza(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 55
    iget-object v0, p0, Lo/HttpResponse;->zzco:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    iget-object v0, p0, Lo/HttpResponse;->zzco:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz v0, :cond_8

    .line 58
    iget-object v2, p0, Lo/HttpResponse;->zzco:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lo/HttpResponse;->zzcn:Lo/fromMediaDescription;

    .line 1243
    iget-object v2, v2, Lo/fromMediaDescription;->onNavigationEvent:Lo/fromMediaDescription$onNavigationEvent;

    invoke-virtual {v2, p1}, Lo/fromMediaDescription$onNavigationEvent;->onMessageChannelReady(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 66
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 67
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 68
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    add-int/2addr v4, v8

    const/16 v9, 0x2bc

    if-le v7, v9, :cond_0

    add-int/2addr v6, v8

    :cond_0
    const/16 v9, 0x10

    if-le v7, v9, :cond_1

    add-int/2addr v5, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_3
    if-lez v4, :cond_4

    .line 76
    sget-object v2, Lo/aS;->ICustomTabsCallback:Lo/aS;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v7, v4

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_4
    if-lez v5, :cond_5

    .line 78
    sget-object v2, Lo/aS;->onMessageChannelReady:Lo/aS;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v7, v5

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_5
    if-lez v6, :cond_6

    .line 80
    sget-object v2, Lo/aS;->onTransact:Lo/aS;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v7, v6

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    .line 81
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/ba;->onPostMessage(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 82
    iget-object v2, p0, Lo/HttpResponse;->zzai:Lo/b$b;

    .line 83
    invoke-static {p1}, Lo/HttpResponse;->zzb(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x51

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "sendScreenTrace name:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " _fr_tot:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _fr_slo:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _fr_fzn:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 85
    :cond_7
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 86
    :cond_8
    iget-object v0, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lo/HttpResponse;->zzcf:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 90
    new-instance p1, Lo/aY;

    invoke-direct {p1}, Lo/aY;-><init>()V

    .line 91
    iput-object p1, p0, Lo/HttpResponse;->zzcg:Lo/aY;

    .line 92
    sget-object p1, Lo/onCreateLoader;->onNavigationEvent:Lo/onCreateLoader;

    invoke-direct {p0, p1}, Lo/HttpResponse;->zza(Lo/onCreateLoader;)V

    .line 93
    invoke-direct {p0, v1}, Lo/HttpResponse;->zza(Z)V

    .line 94
    sget-object p1, Lo/getRootView;->onMessageChannelReady:Lo/getRootView;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/HttpResponse;->zzch:Lo/aY;

    iget-object v1, p0, Lo/HttpResponse;->zzcg:Lo/aY;

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lo/HttpResponse;->zza(Ljava/lang/String;Lo/aY;Lo/aY;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lo/HttpResponse$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;J)V
    .locals 5

    .line 36
    iget-object p2, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    monitor-enter p2

    .line 37
    :try_start_0
    iget-object p3, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    const-wide/16 v0, 0x1

    if-nez p3, :cond_0

    .line 39
    iget-object p3, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    iget-object v2, p0, Lo/HttpResponse;->zzci:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final zzb(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lo/HttpResponse$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lo/HttpResponse;->zzcl:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final zzbi()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lo/HttpResponse;->zzce:Z

    return v0
.end method

.method public final zzbj()Lo/onCreateLoader;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/HttpResponse;->zzck:Lo/onCreateLoader;

    return-object v0
.end method

.method public final zzc(I)V
    .locals 1

    .line 42
    iget-object p1, p0, Lo/HttpResponse;->zzcj:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public final declared-synchronized zze(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-boolean v0, p0, Lo/HttpResponse;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 30
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 32
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lo/HttpResponse;->mRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
