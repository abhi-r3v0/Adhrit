.class final Lo/deleteFinalizedReport;
.super Lo/finalizeReports;
.source ""


# instance fields
.field private zzai:Lo/b$b;

.field private zzeh:Lo/getColumnCount;


# direct methods
.method constructor <init>(Lo/getColumnCount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/finalizeReports;-><init>()V

    .line 2
    iput-object p1, p0, Lo/deleteFinalizedReport;->zzeh:Lo/getColumnCount;

    .line 3
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    return-void
.end method

.method private final zza(Lo/getColumnCount;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 28
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lo/getColumnCount;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 36
    iget-object v4, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string v5, "counterId is empty"

    invoke-virtual {v4, v5}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_5

    .line 39
    iget-object v4, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string v5, "counterId exceeded max length 100"

    invoke-virtual {v4, v5}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_7

    .line 43
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string p2, "invalid CounterId:"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_2
    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    .line 45
    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_2

    .line 48
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid CounterValue:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    .line 51
    :cond_9
    invoke-virtual {p1}, Lo/getColumnCount;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getColumnCount;

    add-int/lit8 v3, p2, 0x1

    .line 52
    invoke-direct {p0, v2, v3}, Lo/deleteFinalizedReport;->zza(Lo/getColumnCount;I)Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_b
    return v1
.end method

.method private final zzb(Lo/getColumnCount;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string p2, "TraceMetric is null"

    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 60
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string p2, "Exceed MAX_SUBTRACE_DEEP:1"

    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 67
    iget-object p2, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string v1, "invalid TraceId:"

    invoke-virtual {p1}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    :cond_4
    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Lo/getColumnCount;->onNavigationEvent()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_6

    .line 72
    iget-object p2, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    invoke-virtual {p1}, Lo/getColumnCount;->onNavigationEvent()J

    move-result-wide v1

    const/16 p1, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "invalid TraceDuration:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    .line 74
    :cond_6
    invoke-virtual {p1}, Lo/getColumnCount;->extraCallback()Z

    move-result v2

    if-nez v2, :cond_7

    .line 75
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string p2, "clientStartTimeUs is null."

    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v0

    .line 77
    :cond_7
    invoke-virtual {p1}, Lo/getColumnCount;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getColumnCount;

    add-int/lit8 v4, p2, 0x1

    .line 78
    invoke-direct {p0, v3, v4}, Lo/deleteFinalizedReport;->zzb(Lo/getColumnCount;I)Z

    move-result v3

    if-nez v3, :cond_8

    return v0

    .line 81
    :cond_9
    invoke-virtual {p1}, Lo/getColumnCount;->onTransact()Ljava/util/Map;

    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 83
    invoke-static {p2}, Lo/finalizeReports;->zza(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 85
    iget-object p1, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    invoke-virtual {p1, p2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_3

    :cond_b
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_c

    return v0

    :cond_c
    return v1
.end method


# virtual methods
.method public final zzbt()Z
    .locals 5

    .line 5
    iget-object v0, p0, Lo/deleteFinalizedReport;->zzeh:Lo/getColumnCount;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/deleteFinalizedReport;->zzb(Lo/getColumnCount;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string v2, "Invalid Trace:"

    iget-object v3, p0, Lo/deleteFinalizedReport;->zzeh:Lo/getColumnCount;

    invoke-virtual {v3}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    iget-object v0, p0, Lo/deleteFinalizedReport;->zzeh:Lo/getColumnCount;

    .line 9
    invoke-virtual {v0}, Lo/getColumnCount;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    .line 12
    :cond_3
    invoke-virtual {v0}, Lo/getColumnCount;->ICustomTabsCallback$Stub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getColumnCount;

    .line 13
    invoke-virtual {v2}, Lo/getColumnCount;->ICustomTabsCallback()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    .line 19
    iget-object v0, p0, Lo/deleteFinalizedReport;->zzeh:Lo/getColumnCount;

    .line 20
    invoke-direct {p0, v0, v1}, Lo/deleteFinalizedReport;->zza(Lo/getColumnCount;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    iget-object v0, p0, Lo/deleteFinalizedReport;->zzai:Lo/b$b;

    const-string v2, "Invalid Counters for Trace:"

    iget-object v3, p0, Lo/deleteFinalizedReport;->zzeh:Lo/getColumnCount;

    invoke-virtual {v3}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return v1

    :cond_8
    return v3
.end method
