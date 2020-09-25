.class public final Lcom/google/firebase/perf/metrics/AppStartTrace$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/metrics/AppStartTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private final zzfs:Lcom/google/firebase/perf/metrics/AppStartTrace;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$onPostMessage;->zzfs:Lcom/google/firebase/perf/metrics/AppStartTrace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$onPostMessage;->zzfs:Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-static {v0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->zza(Lcom/google/firebase/perf/metrics/AppStartTrace;)Lo/aY;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$onPostMessage;->zzfs:Lcom/google/firebase/perf/metrics/AppStartTrace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->zza(Lcom/google/firebase/perf/metrics/AppStartTrace;Z)Z

    :cond_0
    return-void
.end method
