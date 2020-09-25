.class final Lo/setPersistenceEnabled$onPostMessage;
.super Lo/getParent;
.source ""

# interfaces
.implements Lo/getDefaultConfig$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/setPersistenceEnabled;

.field private onPostMessage:Lo/getDefaultConfig;


# direct methods
.method private constructor <init>(Lo/setPersistenceEnabled;Lo/getDefaultConfig;)V
    .locals 2

    .line 594
    iput-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 595
    invoke-static {p1}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lo/getParent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iput-object p2, p0, Lo/setPersistenceEnabled$onPostMessage;->onPostMessage:Lo/getDefaultConfig;

    return-void
.end method

.method synthetic constructor <init>(Lo/setPersistenceEnabled;Lo/getDefaultConfig;B)V
    .locals 0

    .line 591
    invoke-direct {p0, p1, p2}, Lo/setPersistenceEnabled$onPostMessage;-><init>(Lo/setPersistenceEnabled;Lo/getDefaultConfig;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/matches;)V
    .locals 7

    .line 776
    invoke-virtual {p2}, Lo/matches;->onTransact()I

    .line 781
    iget-object p2, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    monitor-enter p2

    .line 782
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v1}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/purgeOutstandingWrites;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/purgeOutstandingWrites;

    .line 783
    iget-object v1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v1}, Lo/setPersistenceEnabled;->asInterface(Lo/setPersistenceEnabled;)Z

    .line 784
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    array-length p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, v0, v2

    .line 10093
    iget v4, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    if-le v4, p1, :cond_2

    .line 10120
    iget v4, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 10121
    :goto_1
    iget-object v6, v3, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-boolean v6, v6, Lo/setPersistenceEnabled;->extraCallback:Z

    if-ne v6, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    .line 789
    sget-object v4, Lo/getReferenceFromUrl;->onTransact:Lo/getReferenceFromUrl;

    invoke-virtual {v3, v4}, Lo/purgeOutstandingWrites;->onMessageChannelReady(Lo/getReferenceFromUrl;)V

    .line 790
    iget-object v4, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    .line 11093
    iget v3, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    .line 790
    invoke-virtual {v4, v3}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 784
    monitor-exit p2

    throw p1
.end method

.method public final extraCallback()V
    .locals 4

    .line 600
    sget-object v0, Lo/getReferenceFromUrl;->ICustomTabsCallback:Lo/getReferenceFromUrl;

    .line 601
    sget-object v1, Lo/getReferenceFromUrl;->ICustomTabsCallback:Lo/getReferenceFromUrl;

    .line 603
    :try_start_0
    iget-object v2, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-boolean v2, v2, Lo/setPersistenceEnabled;->extraCallback:Z

    if-nez v2, :cond_0

    .line 604
    iget-object v2, p0, Lo/setPersistenceEnabled$onPostMessage;->onPostMessage:Lo/getDefaultConfig;

    invoke-interface {v2}, Lo/getDefaultConfig;->onPostMessage()V

    .line 606
    :cond_0
    iget-object v2, p0, Lo/setPersistenceEnabled$onPostMessage;->onPostMessage:Lo/getDefaultConfig;

    invoke-interface {v2, p0}, Lo/getDefaultConfig;->onNavigationEvent(Lo/getDefaultConfig$onPostMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    sget-object v0, Lo/getReferenceFromUrl;->extraCallback:Lo/getReferenceFromUrl;

    .line 609
    sget-object v1, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :try_start_1
    iget-object v2, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    :goto_0
    invoke-static {v2, v0, v1}, Lo/setPersistenceEnabled;->onMessageChannelReady(Lo/setPersistenceEnabled;Lo/getReferenceFromUrl;Lo/getReferenceFromUrl;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 618
    :catch_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onPostMessage:Lo/getDefaultConfig;

    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 611
    :catch_1
    :try_start_2
    sget-object v0, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    .line 612
    sget-object v1, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 615
    :try_start_3
    iget-object v2, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    :try_start_4
    iget-object v3, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v3, v0, v1}, Lo/setPersistenceEnabled;->onMessageChannelReady(Lo/setPersistenceEnabled;Lo/getReferenceFromUrl;Lo/getReferenceFromUrl;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 618
    :catch_2
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onPostMessage:Lo/getDefaultConfig;

    invoke-static {v0}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final extraCallback(ILo/getReferenceFromUrl;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0, p1}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0, p1, p2}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;ILo/getReferenceFromUrl;)V

    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-virtual {v0, p1}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 708
    invoke-virtual {p1, p2}, Lo/purgeOutstandingWrites;->onMessageChannelReady(Lo/getReferenceFromUrl;)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;",
            "Lo/useEmulator;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v8, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    .line 642
    iget-object v3, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v3, v8}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    iget-object v2, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v2, v8, v7, v0}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;ILjava/util/List;Z)V

    return-void

    .line 647
    :cond_0
    iget-object v9, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    monitor-enter v9

    .line 649
    :try_start_0
    iget-object v3, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v3}, Lo/setPersistenceEnabled;->extraCallback(Lo/setPersistenceEnabled;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v9

    return-void

    .line 651
    :cond_1
    iget-object v3, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-virtual {v3, v8}, Lo/setPersistenceEnabled;->onMessageChannelReady(I)Lo/purgeOutstandingWrites;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v3, :cond_7

    .line 2026
    sget-object v3, Lo/useEmulator;->onNavigationEvent:Lo/useEmulator;

    if-eq v2, v3, :cond_3

    sget-object v3, Lo/useEmulator;->onMessageChannelReady:Lo/useEmulator;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 656
    iget-object v0, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    sget-object v2, Lo/getReferenceFromUrl;->onMessageChannelReady:Lo/getReferenceFromUrl;

    invoke-virtual {v0, v8, v2}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    .line 657
    monitor-exit v9

    return-void

    .line 661
    :cond_4
    iget-object v2, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v2}, Lo/setPersistenceEnabled;->onMessageChannelReady(Lo/setPersistenceEnabled;)I

    move-result v2

    if-gt v8, v2, :cond_5

    monitor-exit v9

    return-void

    .line 664
    :cond_5
    rem-int/lit8 v2, v8, 0x2

    iget-object v3, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v3}, Lo/setPersistenceEnabled;->onNavigationEvent(Lo/setPersistenceEnabled;)I

    move-result v3

    const/4 v12, 0x2

    rem-int/2addr v3, v12

    if-ne v2, v3, :cond_6

    monitor-exit v9

    return-void

    .line 668
    :cond_6
    new-instance v13, Lo/purgeOutstandingWrites;

    iget-object v4, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    move-object v2, v13

    move/from16 v3, p3

    move v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lo/purgeOutstandingWrites;-><init>(ILo/setPersistenceEnabled;ZZLjava/util/List;)V

    .line 670
    iget-object v0, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0, v8}, Lo/setPersistenceEnabled;->extraCallback(Lo/setPersistenceEnabled;I)I

    .line 671
    iget-object v0, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {}, Lo/setPersistenceEnabled;->extraCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lo/setPersistenceEnabled$onPostMessage$1;

    const-string v3, "OkHttp %s stream %d"

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v5}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-direct {v2, p0, v3, v4, v13}, Lo/setPersistenceEnabled$onPostMessage$1;-><init>(Lo/setPersistenceEnabled$onPostMessage;Ljava/lang/String;[Ljava/lang/Object;Lo/purgeOutstandingWrites;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 685
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 687
    :cond_7
    monitor-exit v9

    .line 2031
    sget-object v4, Lo/useEmulator;->onPostMessage:Lo/useEmulator;

    if-ne v2, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    .line 691
    sget-object v0, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    .line 2230
    invoke-virtual {v3, v0}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2233
    iget-object v2, v3, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v3, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {v2, v3, v0}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    .line 692
    :cond_9
    iget-object v0, v1, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-virtual {v0, v8}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    return-void

    .line 2254
    :cond_a
    sget-boolean v4, Lo/purgeOutstandingWrites;->asBinder:Z

    if-nez v4, :cond_c

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_3
    const/4 v4, 0x0

    .line 2257
    monitor-enter v3

    .line 2258
    :try_start_1
    iget-object v5, v3, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    if-nez v5, :cond_f

    .line 3039
    sget-object v5, Lo/useEmulator;->onMessageChannelReady:Lo/useEmulator;

    if-ne v2, v5, :cond_d

    const/4 v10, 0x1

    :cond_d
    if-eqz v10, :cond_e

    .line 2260
    sget-object v4, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    goto :goto_4

    .line 2262
    :cond_e
    iput-object v7, v3, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    .line 2263
    invoke-virtual {v3}, Lo/purgeOutstandingWrites;->onPostMessage()Z

    move-result v11

    .line 2264
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 3047
    :cond_f
    sget-object v5, Lo/useEmulator;->onNavigationEvent:Lo/useEmulator;

    if-ne v2, v5, :cond_10

    const/4 v10, 0x1

    :cond_10
    if-eqz v10, :cond_11

    .line 2268
    sget-object v4, Lo/getReferenceFromUrl;->onPostMessage:Lo/getReferenceFromUrl;

    goto :goto_4

    .line 2270
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    iget-object v5, v3, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2272
    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2273
    iput-object v2, v3, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    .line 2276
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_12

    .line 3230
    invoke-virtual {v3, v4}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3233
    iget-object v2, v3, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v5, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {v2, v5, v4}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    goto :goto_5

    :cond_12
    if-nez v11, :cond_13

    .line 2280
    iget-object v2, v3, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v4, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {v2, v4}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    :cond_13
    :goto_5
    if-eqz v0, :cond_14

    .line 698
    invoke-virtual {v3}, Lo/purgeOutstandingWrites;->onMessageChannelReady()V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    .line 2276
    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    .line 687
    monitor-exit v9

    throw v0
.end method

.method public final onNavigationEvent(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 797
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    monitor-enter p1

    .line 798
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-wide v1, v0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    .line 799
    iget-object p2, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 800
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 802
    :cond_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-virtual {v0, p1}, Lo/setPersistenceEnabled;->onMessageChannelReady(I)Lo/purgeOutstandingWrites;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 804
    monitor-enter p1

    .line 11568
    :try_start_1
    iget-wide v0, p1, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 11569
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 806
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;)V"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0, p1, p2}, Lo/setPersistenceEnabled;->onNavigationEvent(Lo/setPersistenceEnabled;ILjava/util/List;)V

    return-void
.end method

.method public final onNavigationEvent(ZII)V
    .locals 3

    if-eqz p1, :cond_2

    .line 765
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p1, p2}, Lo/setPersistenceEnabled;->onMessageChannelReady(Lo/setPersistenceEnabled;I)Lo/zombify$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10038
    iget-wide p2, p1, Lo/zombify$onPostMessage;->extraCallback:J

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-wide p2, p1, Lo/zombify$onPostMessage;->onPostMessage:J

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 10039
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lo/zombify$onPostMessage;->extraCallback:J

    .line 10040
    iget-object p1, p1, Lo/zombify$onPostMessage;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 10038
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 771
    :cond_2
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p1, p2, p3}, Lo/setPersistenceEnabled;->onMessageChannelReady(Lo/setPersistenceEnabled;II)V

    return-void
.end method

.method public final onNavigationEvent(ZLo/isZombied$onPostMessage;)V
    .locals 10

    .line 715
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-object v1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-object v1, v1, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    .line 4198
    iget v2, v1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 v2, v2, 0x80

    const/4 v3, 0x7

    const/high16 v4, 0x10000

    if-eqz v2, :cond_0

    iget-object v1, v1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v1, v1, v3

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 717
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-object p1, p1, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    .line 5085
    iput v2, p1, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    iput v2, p1, Lo/isZombied$onPostMessage;->onPostMessage:I

    iput v2, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    .line 5086
    iget-object p1, p1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 718
    :cond_1
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-object p1, p1, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xa

    const/4 v7, 0x1

    if-ge v5, v6, :cond_8

    shl-int v6, v7, v5

    .line 6114
    iget v8, p2, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_7

    .line 6226
    iget v8, p2, Lo/isZombied$onPostMessage;->onMessageChannelReady:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    const/4 v8, 0x2

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 7220
    :goto_4
    iget v9, p2, Lo/isZombied$onPostMessage;->onPostMessage:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_6

    or-int/lit8 v8, v8, 0x1

    .line 8119
    :cond_6
    iget-object v6, p2, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v6, v6, v5

    .line 5236
    invoke-virtual {p1, v5, v8, v6}, Lo/isZombied$onPostMessage;->onPostMessage(III)Lo/isZombied$onPostMessage;

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 719
    :cond_8
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    .line 8179
    iget-object p1, p1, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    .line 719
    sget-object v5, Lo/toException;->onPostMessage:Lo/toException;

    if-ne p1, v5, :cond_9

    .line 8749
    invoke-static {}, Lo/setPersistenceEnabled;->extraCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v5, Lo/setPersistenceEnabled$onPostMessage$3;

    const-string v6, "OkHttp %s ACK Settings"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v9}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-direct {v5, p0, v6, v8, p2}, Lo/setPersistenceEnabled$onPostMessage$3;-><init>(Lo/setPersistenceEnabled$onPostMessage;Ljava/lang/String;[Ljava/lang/Object;Lo/isZombied$onPostMessage;)V

    invoke-interface {p1, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 722
    :cond_9
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-object p1, p1, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    .line 9198
    iget p2, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_a

    iget-object p1, p1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v4, p1, v3

    :cond_a
    const/4 p1, -0x1

    const-wide/16 v5, 0x0

    const/4 p2, 0x0

    if-eq v4, p1, :cond_d

    if-eq v4, v1, :cond_d

    sub-int/2addr v4, v1

    int-to-long v3, v4

    .line 725
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p1}, Lo/setPersistenceEnabled;->onTransact(Lo/setPersistenceEnabled;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 726
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    .line 9344
    iget-wide v8, p1, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    add-long/2addr v8, v3

    iput-wide v8, p1, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_b

    .line 9345
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 727
    :cond_b
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p1}, Lo/setPersistenceEnabled;->onRelationshipValidationResult(Lo/setPersistenceEnabled;)Z

    .line 729
    :cond_c
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p1}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 730
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p1}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {p2}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Lo/purgeOutstandingWrites;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lo/purgeOutstandingWrites;

    goto :goto_6

    :cond_d
    move-wide v3, v5

    .line 733
    :cond_e
    :goto_6
    invoke-static {}, Lo/setPersistenceEnabled;->extraCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lo/setPersistenceEnabled$onPostMessage$5;

    const-string v8, "OkHttp %s settings"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v9}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-direct {v1, p0, v8, v7}, Lo/setPersistenceEnabled$onPostMessage$5;-><init>(Lo/setPersistenceEnabled$onPostMessage;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 738
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_10

    cmp-long p1, v3, v5

    if-eqz p1, :cond_10

    .line 740
    array-length v0, p2

    :goto_7
    if-ge v2, v0, :cond_10

    aget-object v1, p2, v2

    .line 741
    monitor-enter v1

    .line 9568
    :try_start_1
    iget-wide v5, v1, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    add-long/2addr v5, v3

    iput-wide v5, v1, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    if-lez p1, :cond_f

    .line 9569
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 743
    :cond_f
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_10
    return-void

    :catchall_1
    move-exception p1

    .line 738
    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(ZILo/fullLimitUpdateChild;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0, p2}, Lo/setPersistenceEnabled;->onPostMessage(Lo/setPersistenceEnabled;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-static {v0, p2, p3, p4, p1}, Lo/setPersistenceEnabled;->onNavigationEvent(Lo/setPersistenceEnabled;ILo/fullLimitUpdateChild;IZ)V

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    invoke-virtual {v0, p2}, Lo/setPersistenceEnabled;->onMessageChannelReady(I)Lo/purgeOutstandingWrites;

    move-result-object v0

    if-nez v0, :cond_1

    .line 630
    iget-object p1, p0, Lo/setPersistenceEnabled$onPostMessage;->onNavigationEvent:Lo/setPersistenceEnabled;

    sget-object v0, Lo/getReferenceFromUrl;->onMessageChannelReady:Lo/getReferenceFromUrl;

    invoke-virtual {p1, p2, v0}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    int-to-long p1, p4

    .line 631
    invoke-interface {p3, p1, p2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    return-void

    .line 1285
    :cond_1
    sget-boolean p2, Lo/purgeOutstandingWrites;->asBinder:Z

    if-nez p2, :cond_3

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1286
    :cond_3
    :goto_0
    iget-object p2, v0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    int-to-long v1, p4

    invoke-virtual {p2, p3, v1, v2}, Lo/purgeOutstandingWrites$onNavigationEvent;->ICustomTabsCallback(Lo/fullLimitUpdateChild;J)V

    if-eqz p1, :cond_4

    .line 636
    invoke-virtual {v0}, Lo/purgeOutstandingWrites;->onMessageChannelReady()V

    :cond_4
    return-void
.end method
