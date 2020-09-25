.class public Lo/sortAndCombineReportFiles;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzai:Lo/b$b;

.field private zzgn:Lo/aN;

.field private zzgo:Lo/aY;

.field private final zzgp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzgq:Z

.field private zzgr:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/deleteAllReports;Lo/aY;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/sortAndCombineReportFiles;->zzgq:Z

    .line 3
    iput-boolean v0, p0, Lo/sortAndCombineReportFiles;->zzgr:Z

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lo/sortAndCombineReportFiles;->zzgo:Lo/aY;

    .line 6
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p4

    iput-object p4, p0, Lo/sortAndCombineReportFiles;->zzai:Lo/b$b;

    .line 8
    invoke-static {p3}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object p3

    invoke-virtual {p3, p1}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    move-result-object p2

    iput-object p2, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    .line 9
    invoke-virtual {p2}, Lo/aN;->onPostMessage()V

    .line 10
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object p2

    invoke-virtual {p2}, Lo/setPhone;->onNavigationEvent()Z

    move-result p2

    if-nez p2, :cond_0

    .line 11
    iget-object p2, p0, Lo/sortAndCombineReportFiles;->zzai:Lo/b$b;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "HttpMetric feature is disabled. URL %s"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    .line 12
    iput-boolean p4, p0, Lo/sortAndCombineReportFiles;->zzgr:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lo/deleteAllReports;Lo/aY;)V
    .locals 0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lo/sortAndCombineReportFiles;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/deleteAllReports;Lo/aY;)V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 36
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 39
    iget-boolean v4, p0, Lo/sortAndCombineReportFiles;->zzgq:Z

    if-nez v4, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 43
    iget-object v4, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    .line 44
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Exceeds max limit of number of attributes - %d"

    new-array v8, v3, [Ljava/lang/Object;

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    .line 47
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v4, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-static {v4}, Lo/finalizeReports;->zza(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 52
    iget-object v4, p0, Lo/sortAndCombineReportFiles;->zzai:Lo/b$b;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Setting attribute \'%s\' to %s on network request \'%s\'"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p2, v7, v3

    iget-object v8, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    .line 53
    invoke-virtual {v8}, Lo/aN;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 54
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 51
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Attribute must not have null key or value."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 40
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HttpMetric has been logged already so unable to modify attributes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    .line 58
    iget-object v5, p0, Lo/sortAndCombineReportFiles;->zzai:Lo/b$b;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 59
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Cannot set attribute \'%s\' with value \'%s\' (%s)"

    .line 60
    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v5, v0}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_5

    .line 64
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lo/sortAndCombineReportFiles;->zzgq:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object p1, p0, Lo/sortAndCombineReportFiles;->zzai:Lo/b$b;

    const-string v0, "Can\'t remove a attribute from a HttpMetric that\'s stopped."

    invoke-virtual {p1, v0}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpResponseCode(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    invoke-virtual {v0, p1}, Lo/aN;->onPostMessage(I)Lo/aN;

    return-void
.end method

.method public setRequestPayloadSize(J)V
    .locals 1

    .line 18
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    invoke-virtual {v0, p1, p2}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    return-void
.end method

.method public setResponseContentType(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    invoke-virtual {v0, p1}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    return-void
.end method

.method public setResponsePayloadSize(J)V
    .locals 1

    .line 20
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    invoke-virtual {v0, p1, p2}, Lo/aN;->asBinder(J)Lo/aN;

    return-void
.end method

.method public start()V
    .locals 3

    .line 24
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgo:Lo/aY;

    invoke-virtual {v0}, Lo/aY;->onPostMessage()V

    .line 25
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    iget-object v1, p0, Lo/sortAndCombineReportFiles;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 27
    iget-boolean v0, p0, Lo/sortAndCombineReportFiles;->zzgr:Z

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lo/sortAndCombineReportFiles;->zzgn:Lo/aN;

    iget-object v1, p0, Lo/sortAndCombineReportFiles;->zzgo:Lo/aY;

    .line 30
    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    move-result-object v0

    iget-object v1, p0, Lo/sortAndCombineReportFiles;->zzgp:Ljava/util/Map;

    .line 31
    invoke-virtual {v0, v1}, Lo/aN;->extraCallback(Ljava/util/Map;)Lo/aN;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lo/sortAndCombineReportFiles;->zzgq:Z

    return-void
.end method
