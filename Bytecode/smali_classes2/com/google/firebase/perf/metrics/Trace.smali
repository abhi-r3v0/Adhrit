.class public Lcom/google/firebase/perf/metrics/Trace;
.super Lo/persistReport;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lo/isHighPriorityEventFile;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzge:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgm:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private zzai:Lo/b$b;

.field private final zzcp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/synthesizeReport;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final zzcv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/isHighPriorityEventFile;",
            ">;"
        }
    .end annotation
.end field

.field private final zzde:Lo/deleteAllReports;

.field private final zzgf:Lcom/google/firebase/perf/metrics/Trace;

.field private final zzgg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/synthesizeReportFile;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgi:Lo/b$a;

.field private final zzgj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzgk:Lo/aY;

.field private zzgl:Lo/aY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->zzge:Ljava/util/Map;

    .line 243
    new-instance v0, Lo/getEventNameWithoutPriority;

    invoke-direct {v0}, Lo/getEventNameWithoutPriority;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 244
    new-instance v0, Lo/combineReportFiles;

    invoke-direct {v0}, Lo/combineReportFiles;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->zzgm:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3

    .line 29
    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/HttpResponse;->zzbh()Lo/HttpResponse;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lo/persistReport;-><init>(Lo/HttpResponse;)V

    .line 30
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcv:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgf:Lcom/google/firebase/perf/metrics/Trace;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    .line 37
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    const-class v2, Lo/synthesizeReportFile;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 38
    const-class v0, Lo/aY;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/aY;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgk:Lo/aY;

    .line 39
    const-class v0, Lo/aY;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/aY;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcp:Ljava/util/List;

    .line 41
    const-class v2, Lo/synthesizeReport;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_1

    .line 43
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzde:Lo/deleteAllReports;

    .line 44
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgi:Lo/b$a;

    .line 45
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void

    .line 46
    :cond_1
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzde:Lo/deleteAllReports;

    .line 47
    new-instance p1, Lo/b$a;

    invoke-direct {p1}, Lo/b$a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgi:Lo/b$a;

    .line 48
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzca()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;ZLo/getEventNameWithoutPriority;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 9
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v2

    new-instance v3, Lo/b$a;

    invoke-direct {v3}, Lo/b$a;-><init>()V

    .line 10
    invoke-static {}, Lo/HttpResponse;->zzbh()Lo/HttpResponse;

    move-result-object v4

    .line 11
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzca()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lo/deleteAllReports;Lo/b$a;Lo/HttpResponse;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/deleteAllReports;Lo/b$a;Lo/HttpResponse;)V
    .locals 6

    .line 14
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzca()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lo/deleteAllReports;Lo/b$a;Lo/HttpResponse;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lo/deleteAllReports;Lo/b$a;Lo/HttpResponse;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 0

    .line 16
    invoke-direct {p0, p4}, Lo/persistReport;-><init>(Lo/HttpResponse;)V

    .line 17
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcv:Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    .line 18
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgf:Lcom/google/firebase/perf/metrics/Trace;

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    .line 22
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    .line 23
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgi:Lo/b$a;

    .line 24
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzde:Lo/deleteAllReports;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcp:Ljava/util/List;

    .line 26
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 27
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    return-void
.end method

.method private final hasStarted()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgk:Lo/aY;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isStopped()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static zzq(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzr(Ljava/lang/String;)Lo/synthesizeReportFile;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/synthesizeReportFile;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lo/synthesizeReportFile;

    invoke-direct {v0, p1}, Lo/synthesizeReportFile;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Trace \'%s\' is started but not stopped when it is destructed!"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 182
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v2}, Lo/persistReport;->zzc(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 187
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 188
    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getLongMetric(Ljava/lang/String;)J
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/synthesizeReportFile;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 154
    :cond_1
    invoke-virtual {p1}, Lo/synthesizeReportFile;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    return-object v0
.end method

.method public incrementMetric(Ljava/lang/String;J)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 126
    invoke-static {p1}, Lo/finalizeReports;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 128
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    const-string p1, "Cannot increment metric \'%s\'. Metric name is invalid.(%s)"

    .line 129
    invoke-static {p3, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p2, p1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s not started"

    .line 134
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s been stopped"

    .line 139
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->zzr(Ljava/lang/String;)Lo/synthesizeReportFile;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p2, p3}, Lo/synthesizeReportFile;->zzr(J)V

    .line 144
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 145
    invoke-virtual {v0}, Lo/synthesizeReportFile;->getCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v4, v3

    const-string p1, "Incrementing metric \'%s\' to %d on trace \'%s\'"

    .line 146
    invoke-static {p3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 205
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v4

    if-nez v4, :cond_3

    .line 211
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    .line 212
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Exceeds max limit of number of attributes - %d"

    new-array v8, v3, [Ljava/lang/Object;

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    .line 215
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v4, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lo/finalizeReports;->zza(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Setting attribute \'%s\' to \'%s\' on trace \'%s\'"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p2, v7, v3

    iget-object v8, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v8, v7, v0

    .line 220
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-virtual {v4, v5}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 218
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 209
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Trace \'%s\' has been stopped"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 210
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    .line 224
    iget-object v5, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 225
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Can not set attribute \'%s\' with value \'%s\' (%s)"

    .line 226
    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v5, v0}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_4

    .line 230
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public putMetric(Ljava/lang/String;J)V
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 155
    invoke-static {p1}, Lo/finalizeReports;->zzk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 157
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    const-string p1, "Cannot set value for metric \'%s\'. Metric name is invalid.(%s)"

    .line 158
    invoke-static {p3, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s not started"

    .line 163
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s been stopped"

    .line 168
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->zzr(Ljava/lang/String;)Lo/synthesizeReportFile;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2, p3}, Lo/synthesizeReportFile;->zzs(J)V

    .line 173
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 174
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v1

    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, v5, v3

    const-string p1, "Setting metric \'%s\' to \'%s\' on trace \'%s\'"

    .line 175
    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 232
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    const-string v0, "Can\'t remove a attribute from a Trace that\'s stopped."

    invoke-virtual {p1, v0}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 50
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v0

    invoke-virtual {v0}, Lo/setPhone;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    const-string v1, "Trace feature is disabled."

    invoke-virtual {v0, v1}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "Trace name must not be null"

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_2

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Trace name must not exceed %d characters"

    .line 59
    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "_"

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    invoke-static {}, Lo/getRootView;->values()[Lo/getRootView;

    move-result-object v3

    .line 62
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "_st_"

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Trace name must not start with \'_\'"

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 70
    iget-object v3, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    const-string v0, "Cannot start trace \'%s\'. Trace name is invalid.(%s)"

    .line 71
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgk:Lo/aY;

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "Trace \'%s\' has already started, should not start again!"

    .line 76
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_6
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgk:Lo/aY;

    .line 82
    invoke-virtual {p0}, Lo/persistReport;->zzbr()V

    .line 83
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/SessionManager;->zzc(Ljava/lang/ref/WeakReference;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/metrics/Trace;->zza(Lo/synthesizeReport;)V

    .line 87
    invoke-virtual {v0}, Lo/synthesizeReport;->zzci()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 88
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {v0}, Lo/synthesizeReport;->zzch()Lo/aY;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/internal/GaugeManager;->zzj(Lo/aY;)V

    :cond_7
    return-void
.end method

.method public stop()V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "Trace \'%s\' has not been started so unable to stop!"

    .line 92
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    const-string v1, "Trace \'%s\' has already stopped, should not stop again!"

    .line 97
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzd(Ljava/lang/ref/WeakReference;)V

    .line 101
    invoke-virtual {p0}, Lo/persistReport;->zzbs()V

    .line 103
    new-instance v0, Lo/aY;

    invoke-direct {v0}, Lo/aY;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    .line 105
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgf:Lcom/google/firebase/perf/metrics/Trace;

    if-nez v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    .line 110
    iget-object v2, v1, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    if-nez v2, :cond_2

    .line 111
    iput-object v0, v1, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzde:Lo/deleteAllReports;

    if-eqz v0, :cond_4

    .line 114
    new-instance v1, Lo/trimEvents;

    invoke-direct {v1, p0}, Lo/trimEvents;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v1}, Lo/trimEvents;->zzcz()Lo/getColumnCount;

    move-result-object v1

    invoke-virtual {p0}, Lo/persistReport;->zzbj()Lo/onCreateLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/deleteAllReports;->zza(Lo/getColumnCount;Lo/onCreateLoader;)V

    .line 115
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object v0

    invoke-virtual {v0}, Lo/synthesizeReport;->zzci()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 117
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object v1

    invoke-virtual {v1}, Lo/synthesizeReport;->zzch()Lo/aY;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/GaugeManager;->zzj(Lo/aY;)V

    return-void

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    const-string v1, "Trace name is empty, no log is sent to server"

    invoke-virtual {v0, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 196
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgf:Lcom/google/firebase/perf/metrics/Trace;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 197
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 199
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 200
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgk:Lo/aY;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 202
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcp:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

.method public final zza(Lo/synthesizeReport;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzai:Lo/b$b;

    const-string v0, "Unable to add new SessionId to the Trace. Continuing without it."

    invoke-virtual {p1, v0}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final zzcu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/synthesizeReportFile;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgh:Ljava/util/Map;

    return-object v0
.end method

.method public final zzcv()Lo/aY;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgk:Lo/aY;

    return-object v0
.end method

.method public final zzcw()Lo/aY;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgl:Lo/aY;

    return-object v0
.end method

.method public final zzcx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzgg:Ljava/util/List;

    return-object v0
.end method

.method public final zzcy()Lo/br;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/br<",
            "Lo/synthesizeReport;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcp:Ljava/util/List;

    invoke-static {v0}, Lo/br;->extraCallback(Ljava/util/Collection;)Lo/br;

    move-result-object v0

    return-object v0
.end method
