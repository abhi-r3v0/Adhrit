.class public final Lo/trimEvents;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzgs:Lcom/google/firebase/perf/metrics/Trace;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/metrics/Trace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    return-void
.end method


# virtual methods
.method public final zzcz()Lo/getColumnCount;
    .locals 6

    .line 4
    invoke-static {}, Lo/getColumnCount;->onRelationshipValidationResult()Lo/getColumnCount$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getColumnCount$extraCallback;->extraCallback(Ljava/lang/String;)Lo/getColumnCount$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->zzcv()Lo/aY;

    move-result-object v1

    invoke-virtual {v1}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(J)Lo/getColumnCount$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->zzcv()Lo/aY;

    move-result-object v1

    iget-object v2, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v2}, Lcom/google/firebase/perf/metrics/Trace;->zzcw()Lo/aY;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/getColumnCount$extraCallback;->onMessageChannelReady(J)Lo/getColumnCount$extraCallback;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->zzcu()Ljava/util/Map;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/synthesizeReportFile;

    .line 10
    invoke-virtual {v2}, Lo/synthesizeReportFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lo/synthesizeReportFile;->getCount()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lo/getColumnCount$extraCallback;->ICustomTabsCallback(Ljava/lang/String;J)Lo/getColumnCount$extraCallback;

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->zzcx()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    .line 15
    new-instance v3, Lo/trimEvents;

    invoke-direct {v3, v2}, Lo/trimEvents;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v3}, Lo/trimEvents;->zzcz()Lo/getColumnCount;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/getColumnCount$extraCallback;->onPostMessage(Lo/getColumnCount;)Lo/getColumnCount$extraCallback;

    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getColumnCount$extraCallback;->onPostMessage(Ljava/util/Map;)Lo/getColumnCount$extraCallback;

    .line 18
    iget-object v1, p0, Lo/trimEvents;->zzgs:Lcom/google/firebase/perf/metrics/Trace;

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->zzcy()Lo/br;

    move-result-object v1

    invoke-static {v1}, Lo/synthesizeReport;->zza(Ljava/util/List;)[Lo/ArticleListActivity$3;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getColumnCount$extraCallback;->onPostMessage(Ljava/lang/Iterable;)Lo/getColumnCount$extraCallback;

    .line 22
    :cond_2
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/getColumnCount;

    return-object v0
.end method
