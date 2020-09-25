.class public Lcom/google/firebase/perf/internal/RemoteConfigManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zzfg:Lcom/google/firebase/perf/internal/RemoteConfigManager;

.field private static final zzfh:J


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private zzai:Lo/b$b;

.field private zzfi:J

.field private zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

.field private final zzfk:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lo/FileStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    new-instance v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfg:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfh:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-static {}, Lo/aV;->extraCallback()Lo/getImportance;

    move-result-object v0

    sget v1, Lo/ArticleDetailActivity$3;->onMessageChannelReady:I

    invoke-interface {v0, v1}, Lo/getImportance;->onPostMessage(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;-><init>(Ljava/util/concurrent/Executor;Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfi:J

    .line 7
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    return-void
.end method

.method private final zzb(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/FileStore;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 111
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zzck()Lcom/google/firebase/perf/internal/RemoteConfigManager;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfg:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    return-object v0
.end method

.method private final zzcm()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzl(Ljava/lang/String;)Lo/FileStore;
    .locals 7

    .line 83
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzcm()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzb(Ljava/util/Map;)V

    .line 87
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 88
    iget-wide v5, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfi:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfh:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 93
    iput-wide v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfi:J

    .line 94
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    .line 95
    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lo/WireFormat$JavaType;

    invoke-direct {v4, p0}, Lo/WireFormat$JavaType;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;)V

    .line 96
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Ljava/util/concurrent/Executor;Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lo/writeCachedSettings$onPostMessage;

    invoke-direct {v4, p0}, Lo/writeCachedSettings$onPostMessage;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;)V

    .line 97
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzcm()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfk:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FileStore;

    .line 100
    invoke-interface {v0}, Lo/FileStore;->getSource()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 101
    iget-object v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    new-array v4, v4, [Ljava/lang/Object;

    .line 102
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const-string p1, "Fetched value: \'%s\' for key: \'%s\' from Firebase Remote Config."

    .line 103
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {v3, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzl(Ljava/lang/String;)Lo/FileStore;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    :try_start_0
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v0}, Lo/FileStore;->asBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_2

    .line 65
    :cond_0
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v0}, Lo/FileStore;->asDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_2

    .line 67
    :cond_1
    instance-of v3, p2, Ljava/lang/Long;

    if-nez v3, :cond_4

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 70
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 71
    :cond_3
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :try_start_1
    iget-object v4, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const-string v5, "No matching type found for the defaultValue: \'%s\', using String."

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v2

    .line 73
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {v4, p2}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v3

    goto :goto_2

    :catch_0
    move-object p2, v3

    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    :try_start_2
    invoke-interface {v0}, Lo/FileStore;->asLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 77
    :goto_1
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 78
    iget-object v3, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 79
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    const-string p1, "Could not parse value: \'%s\' for key: \'%s\'."

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {v3, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object p2
.end method

.method public final synthetic zza(Ljava/lang/Exception;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfi:J

    return-void
.end method

.method public final zza(Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    return-void
.end method

.method public final zzb(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const-string v0, "The key to get Remote Config boolean value is null."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzl(Ljava/lang/String;)Lo/FileStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    :try_start_0
    invoke-interface {v0}, Lo/FileStore;->asBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 48
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Could not parse value: \'%s\' for key: \'%s\'."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 52
    :cond_1
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const-string v0, "The key to get Remote Config String value is null."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzl(Ljava/lang/String;)Lo/FileStore;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Ljava/lang/Boolean;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public final zzcl()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzfj:Lo/CrashlyticsReportPersistence$$Lambda$4;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getInfo()Lo/getFilesDirPath;

    move-result-object v0

    invoke-interface {v0}, Lo/getFilesDirPath;->getLastFetchStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final zzd(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const-string v0, "The key to get Remote Config float value is null."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzl(Ljava/lang/String;)Lo/FileStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    :try_start_0
    invoke-interface {v0}, Lo/FileStore;->asDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 24
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 26
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Could not parse value: \'%s\' for key: \'%s\'."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const-string v0, "The key to get Remote Config long value is null."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzl(Ljava/lang/String;)Lo/FileStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    :try_start_0
    invoke-interface {v0}, Lo/FileStore;->asLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 36
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzai:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 38
    invoke-interface {v0}, Lo/FileStore;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Could not parse value: \'%s\' for key: \'%s\'."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method
