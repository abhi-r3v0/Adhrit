.class final Lo/normalizeValue$ICustomTabsCallback;
.super Lo/childMovedChange;
.source ""

# interfaces
.implements Lo/fromPathAndQueryObject$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private onNavigationEvent:Lo/fromPathAndQueryObject;

.field final synthetic onPostMessage:Lo/normalizeValue;


# direct methods
.method constructor <init>(Lo/normalizeValue;Lo/fromPathAndQueryObject;)V
    .locals 2

    .line 599
    iput-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 600
    iget-object p1, p1, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iput-object p2, p0, Lo/normalizeValue$ICustomTabsCallback;->onNavigationEvent:Lo/fromPathAndQueryObject;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 9

    .line 605
    sget-object v0, Lo/getNodeFilter;->extraCallback:Lo/getNodeFilter;

    .line 606
    sget-object v1, Lo/getNodeFilter;->extraCallback:Lo/getNodeFilter;

    .line 608
    :try_start_0
    iget-object v2, p0, Lo/normalizeValue$ICustomTabsCallback;->onNavigationEvent:Lo/fromPathAndQueryObject;

    .line 1078
    iget-boolean v3, v2, Lo/fromPathAndQueryObject;->onNavigationEvent:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1080
    invoke-virtual {v2, v4, p0}, Lo/fromPathAndQueryObject;->extraCallback(ZLo/fromPathAndQueryObject$onPostMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Required SETTINGS preface not received"

    new-array v3, v5, [Ljava/lang/Object;

    .line 1081
    invoke-static {v2, v3}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1085
    :cond_1
    iget-object v2, v2, Lo/fromPathAndQueryObject;->onMessageChannelReady:Lo/fullLimitUpdateChild;

    sget-object v3, Lo/defaultQueryAtPath;->extraCallback:Lo/matches;

    invoke-virtual {v3}, Lo/matches;->onTransact()I

    move-result v3

    int-to-long v6, v3

    invoke-interface {v2, v6, v7}, Lo/fullLimitUpdateChild;->extraCallback(J)Lo/matches;

    move-result-object v2

    .line 1086
    sget-object v3, Lo/fromPathAndQueryObject;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lo/fromPathAndQueryObject;->ICustomTabsCallback:Ljava/util/logging/Logger;

    const-string v6, "<< CONNECTION %s"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1087
    :cond_2
    sget-object v3, Lo/defaultQueryAtPath;->extraCallback:Lo/matches;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 609
    :cond_3
    :goto_0
    iget-object v2, p0, Lo/normalizeValue$ICustomTabsCallback;->onNavigationEvent:Lo/fromPathAndQueryObject;

    invoke-virtual {v2, v5, p0}, Lo/fromPathAndQueryObject;->extraCallback(ZLo/fromPathAndQueryObject$onPostMessage;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 611
    sget-object v0, Lo/getNodeFilter;->onMessageChannelReady:Lo/getNodeFilter;

    .line 612
    sget-object v1, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :try_start_1
    iget-object v2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    :goto_1
    invoke-virtual {v2, v0, v1}, Lo/normalizeValue;->onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 621
    :catch_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onNavigationEvent:Lo/fromPathAndQueryObject;

    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    return-void

    :cond_4
    :try_start_2
    const-string v3, "Expected a connection header but was %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 1088
    invoke-virtual {v2}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lo/defaultQueryAtPath;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 614
    :catch_1
    :try_start_3
    sget-object v0, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    .line 615
    sget-object v1, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    :try_start_4
    iget-object v2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_2
    :try_start_5
    iget-object v3, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {v3, v0, v1}, Lo/normalizeValue;->onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 621
    :catch_2
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onNavigationEvent:Lo/fromPathAndQueryObject;

    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final extraCallback(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;)V"
        }
    .end annotation

    .line 814
    iget-object v6, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    .line 6832
    monitor-enter v6

    .line 6833
    :try_start_0
    iget-object v0, v6, Lo/normalizeValue;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6834
    sget-object p2, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    invoke-virtual {v6, p1, p2}, Lo/normalizeValue;->extraCallback(ILo/getNodeFilter;)V

    .line 6835
    monitor-exit v6

    return-void

    .line 6837
    :cond_0
    iget-object v0, v6, Lo/normalizeValue;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6838
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6840
    :try_start_1
    new-instance v7, Lo/normalizeValue$3;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, v6, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, v6

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/normalizeValue$3;-><init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Lo/normalizeValue;->extraCallback(Lo/childMovedChange;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    .line 6838
    monitor-exit v6

    throw p1
.end method

.method public final extraCallback(ILo/matches;)V
    .locals 7

    .line 772
    invoke-virtual {p2}, Lo/matches;->onTransact()I

    .line 777
    iget-object p2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    monitor-enter p2

    .line 778
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v0, v0, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v1, v1, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/getServerCache;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getServerCache;

    .line 779
    iget-object v1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lo/normalizeValue;->ICustomTabsCallback$Stub:Z

    .line 780
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    array-length p2, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_3

    aget-object v4, v0, v3

    .line 5105
    iget v5, v4, Lo/getServerCache;->onMessageChannelReady:I

    if-le v5, p1, :cond_2

    .line 5133
    iget v5, v4, Lo/getServerCache;->onMessageChannelReady:I

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 5134
    :goto_1
    iget-object v6, v4, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget-boolean v6, v6, Lo/normalizeValue;->extraCallback:Z

    if-ne v6, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    .line 785
    sget-object v5, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    invoke-virtual {v4, v5}, Lo/getServerCache;->extraCallback(Lo/getNodeFilter;)V

    .line 786
    iget-object v5, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    .line 6105
    iget v4, v4, Lo/getServerCache;->onMessageChannelReady:I

    .line 786
    invoke-virtual {v5, v4}, Lo/normalizeValue;->ICustomTabsCallback(I)Lo/getServerCache;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 780
    monitor-exit p2

    throw p1
.end method

.method public final extraCallback(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 757
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    monitor-enter p1

    .line 758
    :try_start_0
    iget-object p2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-static {p2}, Lo/normalizeValue;->extraCallback(Lo/normalizeValue;)Z

    .line 759
    iget-object p2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 760
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 764
    :cond_0
    :try_start_1
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-static {p1}, Lo/normalizeValue;->onPostMessage(Lo/normalizeValue;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lo/normalizeValue$onNavigationEvent;

    iget-object v1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lo/normalizeValue$onNavigationEvent;-><init>(Lo/normalizeValue;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public final extraCallback(ZILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-static {p2}, Lo/normalizeValue;->extraCallback(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    .line 3862
    :try_start_0
    new-instance v11, Lo/normalizeValue$5;

    const-string v6, "OkHttp %s Push Headers[%s]"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v3, v7, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    move-object v4, v11

    move-object v5, v0

    move v8, p2

    move-object v9, p3

    move v10, p1

    invoke-direct/range {v4 .. v10}, Lo/normalizeValue$5;-><init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {v0, v11}, Lo/normalizeValue;->extraCallback(Lo/childMovedChange;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    monitor-enter v0

    .line 652
    :try_start_1
    iget-object v4, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {v4, p2}, Lo/normalizeValue;->onNavigationEvent(I)Lo/getServerCache;

    move-result-object v4

    if-nez v4, :cond_4

    .line 656
    iget-object v4, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-boolean v4, v4, Lo/normalizeValue;->ICustomTabsCallback$Stub:Z

    if-eqz v4, :cond_1

    monitor-exit v0

    return-void

    .line 659
    :cond_1
    iget-object v4, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget v4, v4, Lo/normalizeValue;->ICustomTabsCallback:I

    if-gt p2, v4, :cond_2

    monitor-exit v0

    return-void

    .line 662
    :cond_2
    rem-int/lit8 v4, p2, 0x2

    iget-object v5, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget v5, v5, Lo/normalizeValue;->onTransact:I

    rem-int/2addr v5, v3

    if-ne v4, v5, :cond_3

    monitor-exit v0

    return-void

    .line 665
    :cond_3
    invoke-static {p3}, Lo/generateEventsForType;->extraCallback(Ljava/util/List;)Lo/shouldIncludeField;

    move-result-object v9

    .line 666
    new-instance p3, Lo/getServerCache;

    iget-object v6, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    const/4 v7, 0x0

    move-object v4, p3

    move v5, p2

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lo/getServerCache;-><init>(ILo/normalizeValue;ZZLo/shouldIncludeField;)V

    .line 668
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iput p2, p1, Lo/normalizeValue;->ICustomTabsCallback:I

    .line 669
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object p1, p1, Lo/normalizeValue;->onNavigationEvent:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {}, Lo/normalizeValue;->extraCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v4, Lo/normalizeValue$ICustomTabsCallback$5;

    const-string v5, "OkHttp %s stream %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v6, v6, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v6, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-direct {v4, p0, v5, v3, p3}, Lo/normalizeValue$ICustomTabsCallback$5;-><init>(Lo/normalizeValue$ICustomTabsCallback;Ljava/lang/String;[Ljava/lang/Object;Lo/getServerCache;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 683
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 685
    :cond_4
    monitor-exit v0

    .line 4279
    sget-boolean p2, Lo/getServerCache;->ICustomTabsService:Z

    if-nez p2, :cond_6

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4281
    :cond_6
    :goto_0
    monitor-enter v4

    .line 4282
    :try_start_2
    iput-boolean v2, v4, Lo/getServerCache;->onTransact:Z

    .line 4283
    iget-object p2, v4, Lo/getServerCache;->onNavigationEvent:Ljava/util/Deque;

    invoke-static {p3}, Lo/generateEventsForType;->extraCallback(Ljava/util/List;)Lo/shouldIncludeField;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 4284
    invoke-virtual {v4}, Lo/getServerCache;->extraCallback()Z

    move-result p2

    .line 4285
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 4286
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_7

    .line 4288
    iget-object p2, v4, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget p3, v4, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {p2, p3}, Lo/normalizeValue;->ICustomTabsCallback(I)Lo/getServerCache;

    :cond_7
    if-eqz p1, :cond_8

    .line 689
    invoke-virtual {v4}, Lo/getServerCache;->onNavigationEvent()V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 4286
    monitor-exit v4

    throw p1

    :catchall_1
    move-exception p1

    .line 685
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(ZILo/fullLimitUpdateChild;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-static {p2}, Lo/normalizeValue;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    .line 1887
    new-instance v6, Lo/updatePriority;

    invoke-direct {v6}, Lo/updatePriority;-><init>()V

    int-to-long v1, p4

    .line 1888
    invoke-interface {p3, v1, v2}, Lo/fullLimitUpdateChild;->onPostMessage(J)V

    .line 1889
    invoke-interface {p3, v6, v1, v2}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    .line 2067
    iget-wide v3, v6, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long p3, v3, v1

    if-nez p3, :cond_0

    .line 1891
    new-instance p3, Lo/normalizeValue$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Data[%s]"

    move-object v1, p3

    move-object v2, v0

    move v5, p2

    move v7, p4

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lo/normalizeValue$1;-><init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILo/updatePriority;IZ)V

    invoke-virtual {v0, p3}, Lo/normalizeValue;->extraCallback(Lo/childMovedChange;)V

    return-void

    .line 1890
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3067
    iget-wide v0, v6, Lo/updatePriority;->ICustomTabsCallback:J

    .line 1890
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " != "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 631
    :cond_1
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {v0, p2}, Lo/normalizeValue;->onNavigationEvent(I)Lo/getServerCache;

    move-result-object v0

    if-nez v0, :cond_2

    .line 633
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    sget-object v0, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    invoke-virtual {p1, p2, v0}, Lo/normalizeValue;->extraCallback(ILo/getNodeFilter;)V

    .line 634
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lo/normalizeValue;->onPostMessage(J)V

    .line 635
    invoke-interface {p3, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    return-void

    .line 3293
    :cond_2
    sget-boolean p2, Lo/getServerCache;->ICustomTabsService:Z

    if-nez p2, :cond_4

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3294
    :cond_4
    :goto_0
    iget-object p2, v0, Lo/getServerCache;->asBinder:Lo/getServerCache$onMessageChannelReady;

    int-to-long v1, p4

    invoke-virtual {p2, p3, v1, v2}, Lo/getServerCache$onMessageChannelReady;->onPostMessage(Lo/fullLimitUpdateChild;J)V

    if-eqz p1, :cond_5

    .line 640
    invoke-virtual {v0}, Lo/getServerCache;->onNavigationEvent()V

    :cond_5
    return-void
.end method

.method public final onNavigationEvent(ILo/getNodeFilter;)V
    .locals 8

    .line 693
    invoke-static {p1}, Lo/normalizeValue;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    .line 4908
    new-instance v7, Lo/normalizeValue$9;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v0, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, v0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/normalizeValue$9;-><init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILo/getNodeFilter;)V

    invoke-virtual {v0, v7}, Lo/normalizeValue;->extraCallback(Lo/childMovedChange;)V

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {v0, p1}, Lo/normalizeValue;->ICustomTabsCallback(I)Lo/getServerCache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 699
    invoke-virtual {p1, p2}, Lo/getServerCache;->extraCallback(Lo/getNodeFilter;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Lo/getInitialEvents;)V
    .locals 8

    .line 705
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-static {v0}, Lo/normalizeValue;->onPostMessage(Lo/normalizeValue;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lo/normalizeValue$ICustomTabsCallback$2;

    const-string v3, "OkHttp %s ACK Settings"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v2, v2, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lo/normalizeValue$ICustomTabsCallback$2;-><init>(Lo/normalizeValue$ICustomTabsCallback;Ljava/lang/String;[Ljava/lang/Object;ZLo/getInitialEvents;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onPostMessage(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 793
    iget-object p1, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    monitor-enter p1

    .line 794
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-wide v1, v0, Lo/normalizeValue;->onRelationshipValidationResult:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Lo/normalizeValue;->onRelationshipValidationResult:J

    .line 795
    iget-object p2, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 796
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 798
    :cond_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    invoke-virtual {v0, p1}, Lo/normalizeValue;->onNavigationEvent(I)Lo/getServerCache;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 800
    monitor-enter p1

    .line 6634
    :try_start_1
    iget-wide v0, p1, Lo/getServerCache;->onPostMessage:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lo/getServerCache;->onPostMessage:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 6635
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 802
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
