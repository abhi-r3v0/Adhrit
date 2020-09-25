.class public Lcom/google/firebase/perf/internal/SessionManager;
.super Lo/persistReport;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zzfn:Lcom/google/firebase/perf/internal/SessionManager;


# instance fields
.field private final zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final zzdo:Lo/HttpResponse;

.field private final zzfo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/isHighPriorityEventFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzfp:Lo/synthesizeReport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/google/firebase/perf/internal/SessionManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/SessionManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/SessionManager;->zzfn:Lcom/google/firebase/perf/internal/SessionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzca()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v0

    invoke-static {}, Lo/synthesizeReport;->zzcf()Lo/synthesizeReport;

    move-result-object v1

    invoke-static {}, Lo/HttpResponse;->zzbh()Lo/HttpResponse;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/perf/internal/SessionManager;-><init>(Lcom/google/firebase/perf/internal/GaugeManager;Lo/synthesizeReport;Lo/HttpResponse;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/perf/internal/GaugeManager;Lo/synthesizeReport;Lo/HttpResponse;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lo/persistReport;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 8
    iput-object p2, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    .line 9
    iput-object p3, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzdo:Lo/HttpResponse;

    .line 10
    invoke-virtual {p0}, Lo/persistReport;->zzbr()V

    return-void
.end method

.method public static zzco()Lcom/google/firebase/perf/internal/SessionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/internal/SessionManager;->zzfn:Lcom/google/firebase/perf/internal/SessionManager;

    return-object v0
.end method

.method private final zzd(Lo/onCreateLoader;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    invoke-virtual {v0}, Lo/synthesizeReport;->zzci()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->zza(Lo/synthesizeReport;Lo/onCreateLoader;)V

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/GaugeManager;->zzcb()V

    return-void
.end method


# virtual methods
.method public final zzb(Lo/onCreateLoader;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Lo/persistReport;->zzb(Lo/onCreateLoader;)V

    .line 13
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzdo:Lo/HttpResponse;

    invoke-virtual {v0}, Lo/HttpResponse;->zzbi()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    sget-object v0, Lo/onCreateLoader;->extraCallback:Lo/onCreateLoader;

    if-ne p1, v0, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzc(Lo/onCreateLoader;)V

    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/SessionManager;->zzcq()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzd(Lo/onCreateLoader;)V

    :cond_2
    return-void
.end method

.method public final zzc(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lo/isHighPriorityEventFile;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final zzc(Lo/onCreateLoader;)V
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lo/synthesizeReport;->zzcf()Lo/synthesizeReport;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    .line 26
    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isHighPriorityEventFile;

    if-eqz v2, :cond_0

    .line 29
    iget-object v3, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    invoke-interface {v2, v3}, Lo/isHighPriorityEventFile;->zza(Lo/synthesizeReport;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 32
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    invoke-virtual {v0}, Lo/synthesizeReport;->zzci()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzcq:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    invoke-virtual {v1}, Lo/synthesizeReport;->zzcg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->zzb(Ljava/lang/String;Lo/onCreateLoader;)Z

    .line 36
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzd(Lo/onCreateLoader;)V

    return-void

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0

    throw p1
.end method

.method public final zzcp()Lo/synthesizeReport;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    return-object v0
.end method

.method public final zzcq()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfp:Lo/synthesizeReport;

    invoke-virtual {v0}, Lo/synthesizeReport;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzdo:Lo/HttpResponse;

    invoke-virtual {v0}, Lo/HttpResponse;->zzbj()Lo/onCreateLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/internal/SessionManager;->zzc(Lo/onCreateLoader;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lo/isHighPriorityEventFile;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->zzfo:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
