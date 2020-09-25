.class final Lcom/appsflyer/AppsFlyerLibCore$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLibCore;->startTracking(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/AppsFlyerTrackingRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ı:Ljava/lang/String;

.field private synthetic Ι:Lcom/appsflyer/AppsFlyerLibCore;

.field private synthetic ι:Lcom/appsflyer/AppsFlyerTrackingRequestListener;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Ljava/lang/String;Lcom/appsflyer/AppsFlyerTrackingRequestListener;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ı:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ι:Lcom/appsflyer/AppsFlyerTrackingRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBecameBackground(Landroid/content/Context;)V
    .locals 6

    const-string v0, "onBecameBackground"

    .line 937
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Lcom/appsflyer/AppsFlyerLibCore;J)J

    const-string v0, "callStatsBackground background call"

    .line 939
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Ljava/lang/ref/WeakReference;)V

    .line 3071
    sget-object v0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez v0, :cond_0

    .line 3072
    new-instance v0, Lcom/appsflyer/internal/ai;

    invoke-direct {v0}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 3074
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 942
    invoke-virtual {v0}, Lcom/appsflyer/internal/ai;->І()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 943
    invoke-virtual {v0}, Lcom/appsflyer/internal/ai;->ι()V

    if-eqz p1, :cond_3

    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4071
    :try_start_0
    sget-object v3, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez v3, :cond_1

    .line 4072
    new-instance v3, Lcom/appsflyer/internal/ai;

    invoke-direct {v3}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object v3, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 4074
    :cond_1
    sget-object v3, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 3102
    invoke-virtual {v3, v1, v2}, Lcom/appsflyer/internal/ai;->Ι(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 5071
    sget-object v2, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    if-nez v2, :cond_2

    .line 5072
    new-instance v2, Lcom/appsflyer/internal/ai;

    invoke-direct {v2}, Lcom/appsflyer/internal/ai;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 5074
    :cond_2
    sget-object v2, Lcom/appsflyer/internal/ai;->ɩ:Lcom/appsflyer/internal/ai;

    .line 3103
    invoke-virtual {v2}, Lcom/appsflyer/internal/ai;->Ι()Ljava/lang/String;

    move-result-object v2

    .line 3104
    new-instance v3, Lcom/appsflyer/internal/ad;

    new-instance v4, Lcom/appsflyer/internal/model/event/ProxyEvent;

    invoke-direct {v4}, Lcom/appsflyer/internal/model/event/ProxyEvent;-><init>()V

    .line 3105
    invoke-virtual {v4, v2}, Lcom/appsflyer/internal/model/event/ProxyEvent;->body(Ljava/lang/String;)Lcom/appsflyer/internal/model/event/BackgroundEvent;

    move-result-object v2

    .line 3106
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->isTrackingStopped()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->trackingStopped(Z)Lcom/appsflyer/internal/model/event/BackgroundEvent;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://%smonitorsdk.%s/remote-debug?app_id="

    .line 3107
    invoke-static {v5}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/appsflyer/AFEvent;->urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-direct {v3, v1}, Lcom/appsflyer/internal/ad;-><init>(Lcom/appsflyer/internal/model/event/BackgroundEvent;)V

    .line 6026
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6031
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    :catchall_0
    :cond_3
    invoke-virtual {v0}, Lcom/appsflyer/internal/ai;->ɩ()V

    goto :goto_0

    :cond_4
    const-string v0, "RD status is OFF"

    .line 951
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 953
    :goto_0
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    .line 6092
    :try_start_1
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->ɩ:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/AFExecutor;->ɩ(Ljava/util/concurrent/ExecutorService;)V

    .line 6094
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_5

    .line 6095
    iget-object v0, v0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/AFExecutor;->ɩ(Ljava/util/concurrent/ExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v1, "failed to stop Executors"

    .line 6098
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->ɩ(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object p1

    .line 6180
    iget-object v0, p1, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object p1, p1, Lcom/appsflyer/AFSensorManager;->І:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBecameForeground(Landroid/app/Activity;)V
    .locals 3

    .line 925
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 926
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->ɩ(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object v0

    .line 1147
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object v2, v0, Lcom/appsflyer/AFSensorManager;->І:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1149
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->ɹ:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v0, "onBecameForeground"

    .line 928
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;J)J

    .line 930
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Lcom/appsflyer/internal/model/event/Launch;

    invoke-direct {v1}, Lcom/appsflyer/internal/model/event/Launch;-><init>()V

    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/model/event/Launch;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ı:Ljava/lang/String;

    .line 931
    invoke-virtual {p1, v1}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ι:Lcom/appsflyer/AppsFlyerTrackingRequestListener;

    .line 2112
    iput-object v1, p1, Lcom/appsflyer/AFEvent;->ɩ:Lcom/appsflyer/AppsFlyerTrackingRequestListener;

    .line 930
    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AFEvent;)V

    .line 933
    invoke-static {}, Lcom/appsflyer/AFLogger;->resetDeltaTime()V

    return-void
.end method
