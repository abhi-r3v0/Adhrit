.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enqueue(Lo/convertInteger;Lo/convertDouble;)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 23
    new-instance v3, Lo/aY;

    invoke-direct {v3}, Lo/aY;-><init>()V

    .line 24
    invoke-virtual {v3}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v4

    .line 25
    new-instance v6, Lo/prepareDirectory;

    .line 26
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/prepareDirectory;-><init>(Lo/convertDouble;Lo/deleteAllReports;Lo/aY;J)V

    .line 27
    invoke-interface {p0, v6}, Lo/convertInteger;->onNavigationEvent(Lo/convertDouble;)V

    return-void
.end method

.method public static execute(Lo/convertInteger;)Lo/childAddedChange;
    .locals 11
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lo/deleteAllReports;->zzbu()Lo/deleteAllReports;

    move-result-object v0

    invoke-static {v0}, Lo/aN;->onNavigationEvent(Lo/deleteAllReports;)Lo/aN;

    move-result-object v0

    .line 3
    new-instance v7, Lo/aY;

    invoke-direct {v7}, Lo/aY;-><init>()V

    .line 4
    invoke-virtual {v7}, Lo/aY;->ICustomTabsCallback()J

    move-result-wide v8

    .line 5
    :try_start_0
    invoke-interface {p0}, Lo/convertInteger;->onPostMessage()Lo/childAddedChange;

    move-result-object v10

    .line 6
    invoke-virtual {v7}, Lo/aY;->onNavigationEvent()J

    move-result-wide v5

    move-object v1, v10

    move-object v2, v0

    move-wide v3, v8

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->zza(Lo/childAddedChange;Lo/aN;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v1

    .line 10
    invoke-interface {p0}, Lo/convertInteger;->ICustomTabsCallback()Lo/isCompleteForChild;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1049
    iget-object v2, p0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2}, Lo/isFullyInitialized;->onMessageChannelReady()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    .line 1053
    :cond_0
    iget-object v2, p0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2053
    iget-object p0, p0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p0}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 18
    :cond_1
    invoke-virtual {v0, v8, v9}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 19
    invoke-virtual {v7}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 20
    invoke-static {v0}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 21
    throw v1
.end method

.method public static zza(Lo/childAddedChange;Lo/aN;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2086
    iget-object v0, p0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    if-nez v0, :cond_0

    return-void

    .line 3049
    :cond_0
    iget-object v1, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 32
    invoke-virtual {v1}, Lo/isFullyInitialized;->onMessageChannelReady()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/aN;->onMessageChannelReady(Ljava/lang/String;)Lo/aN;

    .line 3053
    iget-object v1, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v1}, Lo/aN;->onNavigationEvent(Ljava/lang/String;)Lo/aN;

    .line 3069
    iget-object v1, v0, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 4069
    iget-object v0, v0, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 36
    invoke-virtual {v0}, Lo/isCompleteForPath;->extraCallback()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {p1, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 4177
    :cond_1
    iget-object v0, p0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p1, v4, v5}, Lo/aN;->asBinder(J)Lo/aN;

    .line 44
    :cond_2
    invoke-virtual {v0}, Lo/getChildKey;->onNavigationEvent()Lo/isFiltered;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/aN;->onPostMessage(Ljava/lang/String;)Lo/aN;

    .line 5098
    :cond_3
    iget p0, p0, Lo/childAddedChange;->onNavigationEvent:I

    .line 47
    invoke-virtual {p1, p0}, Lo/aN;->onPostMessage(I)Lo/aN;

    .line 48
    invoke-virtual {p1, p2, p3}, Lo/aN;->onNavigationEvent(J)Lo/aN;

    .line 49
    invoke-virtual {p1, p4, p5}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 50
    invoke-virtual {p1}, Lo/aN;->asInterface()Lo/ArticleDetailActivity$2$1$1;

    return-void
.end method
