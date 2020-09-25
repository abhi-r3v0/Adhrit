.class public Lcom/google/firebase/perf/internal/GaugeManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;
    }
.end annotation


# static fields
.field private static zzdy:Lcom/google/firebase/perf/internal/GaugeManager;


# instance fields
.field private final zzag:Lo/setPhone;

.field private zzai:Lo/b$b;

.field private zzcr:Lo/deleteAllReports;

.field private final zzdz:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzea:Lo/R$styleable;

.field private final zzeb:Lo/R$string;

.field private zzec:Lo/capAndGetOpenSessions;

.field private zzed:Lo/onCreateLoader;

.field private zzee:Ljava/lang/String;

.field private zzef:Ljava/util/concurrent/ScheduledFuture;

.field private final zzeg:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/GaugeManager;->zzdy:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 3
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v3

    .line 4
    invoke-static {}, Lo/R$styleable;->extraCallback()Lo/R$styleable;

    move-result-object v5

    .line 5
    invoke-static {}, Lo/R$string;->onPostMessage()Lo/R$string;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/internal/GaugeManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/deleteAllReports;Lo/setPhone;Lo/capAndGetOpenSessions;Lo/R$styleable;Lo/R$string;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/deleteAllReports;Lo/setPhone;Lo/capAndGetOpenSessions;Lo/R$styleable;Lo/R$string;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object p2, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzed:Lo/onCreateLoader;

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzee:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzef:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    new-instance p4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p4, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzdz:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzcr:Lo/deleteAllReports;

    .line 15
    iput-object p3, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzag:Lo/setPhone;

    .line 16
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    .line 17
    iput-object p5, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzea:Lo/R$styleable;

    .line 18
    iput-object p6, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeb:Lo/R$string;

    .line 19
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzai:Lo/b$b;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lo/onCreateLoader;)V
    .locals 2

    .line 98
    invoke-static {}, Lo/onPageFinished;->onTransact()Lo/onPageFinished$onPostMessage;

    move-result-object v0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzea:Lo/R$styleable;

    iget-object v1, v1, Lo/R$styleable;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzea:Lo/R$styleable;

    iget-object v1, v1, Lo/R$styleable;->onPostMessage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/l;

    invoke-virtual {v0, v1}, Lo/onPageFinished$onPostMessage;->ICustomTabsCallback(Lo/l;)Lo/onPageFinished$onPostMessage;

    goto :goto_0

    .line 101
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeb:Lo/R$string;

    iget-object v1, v1, Lo/R$string;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeb:Lo/R$string;

    iget-object v1, v1, Lo/R$string;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/bc;

    invoke-virtual {v0, v1}, Lo/onPageFinished$onPostMessage;->ICustomTabsCallback(Lo/bc;)Lo/onPageFinished$onPostMessage;

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v0, p1}, Lo/onPageFinished$onPostMessage;->onPostMessage(Ljava/lang/String;)Lo/onPageFinished$onPostMessage;

    .line 104
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/onPageFinished;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->zzc(Lo/onPageFinished;Lo/onCreateLoader;)V

    return-void
.end method

.method private final zzc(Lo/onPageFinished;Lo/onCreateLoader;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzcr:Lo/deleteAllReports;

    if-nez v0, :cond_0

    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzcr:Lo/deleteAllReports;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, p1, p2}, Lo/deleteAllReports;->zza(Lo/onPageFinished;Lo/onCreateLoader;)V

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;

    .line 128
    iget-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzcr:Lo/deleteAllReports;

    invoke-static {p1}, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;->zza(Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;)Lo/onPageFinished;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;->zzb(Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;)Lo/onCreateLoader;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lo/deleteAllReports;->zza(Lo/onPageFinished;Lo/onCreateLoader;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager$extraCallback;-><init>(Lcom/google/firebase/perf/internal/GaugeManager;Lo/onPageFinished;Lo/onCreateLoader;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static declared-synchronized zzca()Lcom/google/firebase/perf/internal/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/internal/GaugeManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzdy:Lcom/google/firebase/perf/internal/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final zza(Lo/synthesizeReport;Lo/onCreateLoader;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 24
    iget-object v2, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzee:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/perf/internal/GaugeManager;->zzcb()V

    .line 26
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/synthesizeReport;->zzch()Lo/aY;

    move-result-object v2

    .line 29
    sget-object v3, Lo/getRating;->zzel:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    move-wide v8, v6

    goto :goto_0

    .line 32
    :cond_1
    iget-object v3, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzag:Lo/setPhone;

    invoke-virtual {v3}, Lo/setPhone;->asBinder()J

    move-result-wide v8

    goto :goto_0

    .line 30
    :cond_2
    iget-object v3, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzag:Lo/setPhone;

    invoke-virtual {v3}, Lo/setPhone;->asInterface()J

    move-result-wide v8

    .line 35
    :goto_0
    invoke-static {v8, v9}, Lo/R$styleable;->onNavigationEvent(J)Z

    move-result v3

    if-eqz v3, :cond_3

    move-wide v8, v6

    :cond_3
    const/4 v3, 0x0

    cmp-long v10, v8, v6

    if-nez v10, :cond_4

    .line 41
    iget-object v10, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzai:Lo/b$b;

    const-string v11, "Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics."

    invoke-virtual {v10, v11}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_1

    .line 43
    :cond_4
    iget-object v10, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzea:Lo/R$styleable;

    invoke-virtual {v10, v8, v9, v2}, Lo/R$styleable;->ICustomTabsCallback(JLo/aY;)V

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move-wide v8, v6

    .line 48
    :goto_2
    sget-object v10, Lo/getRating;->zzel:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v5, :cond_7

    if-eq v10, v4, :cond_6

    move-wide v10, v6

    goto :goto_3

    .line 52
    :cond_6
    iget-object v4, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzag:Lo/setPhone;

    .line 53
    invoke-virtual {v4}, Lo/setPhone;->warmup()J

    move-result-wide v10

    goto :goto_3

    .line 49
    :cond_7
    iget-object v4, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzag:Lo/setPhone;

    .line 50
    invoke-virtual {v4}, Lo/setPhone;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v10

    .line 56
    :goto_3
    invoke-static {v10, v11}, Lo/R$string;->ICustomTabsCallback(J)Z

    move-result v4

    if-eqz v4, :cond_8

    move-wide v10, v6

    :cond_8
    cmp-long v4, v10, v6

    if-nez v4, :cond_9

    .line 62
    iget-object v2, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzai:Lo/b$b;

    const-string v4, "Invalid Memory Metrics collection frequency. Did not collect Memory Metrics."

    invoke-virtual {v2, v4}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_4

    .line 64
    :cond_9
    iget-object v3, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzeb:Lo/R$string;

    invoke-virtual {v3, v10, v11, v2}, Lo/R$string;->extraCallback(JLo/aY;)V

    :goto_4
    if-eqz v5, :cond_b

    cmp-long v2, v8, v6

    if-nez v2, :cond_a

    move-wide v8, v10

    goto :goto_5

    .line 69
    :cond_a
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v8, v2

    :cond_b
    :goto_5
    cmp-long v2, v8, v6

    if-nez v2, :cond_c

    .line 73
    iget-object v0, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzai:Lo/b$b;

    const-string v2, "Invalid gauge collection frequency. Unable to start collecting Gauges."

    invoke-virtual {v0, v2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lo/synthesizeReport;->zzcg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzee:Ljava/lang/String;

    .line 76
    iput-object v0, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzed:Lo/onCreateLoader;

    .line 79
    :try_start_0
    iget-object v10, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzdz:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v11, Lo/writeRawLittleEndian64;

    invoke-direct {v11, v1, v2, v0}, Lo/writeRawLittleEndian64;-><init>(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lo/onCreateLoader;)V

    const-wide/16 v2, 0x14

    mul-long v14, v8, v2

    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v12, v14

    .line 80
    invoke-interface/range {v10 .. v16}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzef:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 83
    iget-object v2, v1, Lcom/google/firebase/perf/internal/GaugeManager;->zzai:Lo/b$b;

    const-string v3, "Unable to start collecting Gauges: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2, v0}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method final zzb(Ljava/lang/String;Lo/onCreateLoader;)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lo/onPageFinished;->onTransact()Lo/onPageFinished$onPostMessage;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Lo/onPageFinished$onPostMessage;->onPostMessage(Ljava/lang/String;)Lo/onPageFinished$onPostMessage;

    move-result-object p1

    .line 110
    invoke-static {}, Lo/shouldOverrideUrlLoading;->onPostMessage()Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    .line 111
    invoke-virtual {v1}, Lo/capAndGetOpenSessions;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onPostMessage(Ljava/lang/String;)Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    .line 112
    invoke-virtual {v1}, Lo/capAndGetOpenSessions;->zzce()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onNavigationEvent(I)Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    .line 113
    invoke-virtual {v1}, Lo/capAndGetOpenSessions;->zzcc()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->ICustomTabsCallback(I)Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    .line 114
    invoke-virtual {v1}, Lo/capAndGetOpenSessions;->zzcd()I

    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Lo/shouldOverrideUrlLoading$onMessageChannelReady;->onPostMessage(I)Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/shouldOverrideUrlLoading;

    .line 117
    invoke-virtual {p1, v0}, Lo/onPageFinished$onPostMessage;->ICustomTabsCallback(Lo/shouldOverrideUrlLoading;)Lo/onPageFinished$onPostMessage;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/onPageFinished;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->zzc(Lo/onPageFinished;Lo/onCreateLoader;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Landroid/content/Context;)V
    .locals 1

    .line 21
    new-instance v0, Lo/capAndGetOpenSessions;

    invoke-direct {v0, p1}, Lo/capAndGetOpenSessions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzec:Lo/capAndGetOpenSessions;

    return-void
.end method

.method public final synthetic zzc(Ljava/lang/String;Lo/onCreateLoader;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->zza(Ljava/lang/String;Lo/onCreateLoader;)V

    return-void
.end method

.method public final zzcb()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzee:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzed:Lo/onCreateLoader;

    .line 89
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzea:Lo/R$styleable;

    invoke-virtual {v2}, Lo/R$styleable;->ICustomTabsCallback()V

    .line 90
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeb:Lo/R$string;

    invoke-virtual {v2}, Lo/R$string;->ICustomTabsCallback()V

    .line 91
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzef:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 92
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzdz:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lo/getCodedOutput;

    invoke-direct {v3, p0, v0, v1}, Lo/getCodedOutput;-><init>(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lo/onCreateLoader;)V

    const-wide/16 v0, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 94
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzee:Ljava/lang/String;

    .line 96
    sget-object v0, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzed:Lo/onCreateLoader;

    return-void
.end method

.method public final synthetic zzd(Ljava/lang/String;Lo/onCreateLoader;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->zza(Ljava/lang/String;Lo/onCreateLoader;)V

    return-void
.end method

.method public final zzj(Lo/aY;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzea:Lo/R$styleable;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->zzeb:Lo/R$string;

    .line 133
    invoke-virtual {v0, p1}, Lo/R$styleable;->onPostMessage(Lo/aY;)V

    .line 134
    invoke-virtual {v1, p1}, Lo/R$string;->onMessageChannelReady(Lo/aY;)V

    return-void
.end method
