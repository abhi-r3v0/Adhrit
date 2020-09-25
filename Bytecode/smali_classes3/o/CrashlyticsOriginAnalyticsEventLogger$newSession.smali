.class abstract Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "newSession"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;S:",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$newSession<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:I

.field extraCallback:I

.field final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile onNavigationEvent:I

.field private onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:I


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .line 1208
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1209
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    .line 1210
    iput p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onRelationshipValidationResult:I

    .line 3240
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 3244
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback$Stub:I

    .line 3245
    iget p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onRelationshipValidationResult:I

    if-ne p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 3247
    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback$Stub:I

    .line 3249
    :cond_0
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method private ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1806
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    .line 1807
    invoke-interface {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 26236
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1808
    :goto_1
    invoke-interface {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    goto :goto_0

    .line 1816
    :cond_1
    iput v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    return-object v1
.end method

.method private onMessageChannelReady(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1823
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1826
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1827
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 1828
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    .line 1832
    iget p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p1, v2

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1833
    invoke-direct {p0, v1, v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    .line 1834
    iget v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    sub-int/2addr v1, v2

    .line 1835
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1836
    iput v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 1830
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1843
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1844
    throw p1
.end method

.method private onNavigationEvent(Ljava/lang/Object;I)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1393
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    if-eqz v0, :cond_2

    .line 5386
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5387
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    :goto_0
    if-eqz v0, :cond_2

    .line 1395
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1399
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6342
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6344
    :try_start_0
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6346
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6347
    throw p1

    .line 1405
    :cond_0
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    invoke-virtual {v2, p1, v1}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1394
    :cond_1
    :goto_1
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private onPostMessage(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
            "TK;TV;TE;>;)Z"
        }
    .end annotation

    .line 1850
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1853
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1854
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1855
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1858
    invoke-interface {v4}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v6

    .line 1859
    invoke-interface {v4}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 1861
    invoke-virtual {v7, p1, v6}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1862
    move-object p1, v4

    check-cast p1, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$Stub;

    invoke-interface {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$Stub;->ICustomTabsCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    move-result-object p1

    if-ne p1, p3, :cond_0

    .line 1864
    iget p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p1, v2

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1865
    invoke-direct {p0, v3, v4}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    .line 1866
    iget p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    sub-int/2addr p2, v2

    .line 1867
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1868
    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .line 1857
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1877
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1878
    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1478
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12988
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 12990
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V

    .line 12991
    iget-object v4, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12993
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 12994
    throw v0

    .line 1482
    :cond_0
    :goto_0
    iget v4, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    add-int/lit8 v4, v4, 0x1

    .line 1483
    iget v6, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback$Stub:I

    if-le v4, v6, :cond_8

    .line 13537
    iget-object v4, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13538
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_7

    .line 13553
    iget v7, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    shl-int/lit8 v8, v6, 0x1

    .line 14240
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 13555
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    iput v8, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback$Stub:I

    .line 13556
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_1
    if-ge v5, v6, :cond_6

    .line 13560
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    if-eqz v10, :cond_5

    .line 13563
    invoke-interface {v10}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v11

    .line 13564
    invoke-interface {v10}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v12

    and-int/2addr v12, v8

    if-nez v11, :cond_1

    .line 13568
    invoke-virtual {v9, v12, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_5

    :cond_1
    move-object v13, v10

    :goto_2
    if-eqz v11, :cond_3

    .line 13576
    invoke-interface {v11}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v14

    and-int/2addr v14, v8

    if-eq v14, v12, :cond_2

    move-object v13, v11

    move v12, v14

    .line 13575
    :cond_2
    invoke-interface {v11}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v11

    goto :goto_2

    .line 13583
    :cond_3
    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_3
    if-eq v10, v13, :cond_5

    .line 13587
    invoke-interface {v10}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v11

    and-int/2addr v11, v8

    .line 13588
    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    .line 15236
    iget-object v14, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v14, v14, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual/range {p0 .. p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v15

    invoke-interface {v14, v15, v10, v12}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 13591
    invoke-virtual {v9, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 13586
    :goto_4
    invoke-interface {v10}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v10

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13599
    :cond_6
    iput-object v9, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13600
    iput v7, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    .line 1485
    :cond_7
    iget v4, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    add-int/lit8 v4, v4, 0x1

    .line 1488
    :cond_8
    iget-object v5, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1489
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    .line 1490
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v8, v7

    :goto_6
    const/4 v9, 0x0

    if-eqz v8, :cond_c

    .line 1494
    invoke-interface {v8}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v10

    .line 1495
    invoke-interface {v8}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v11

    if-ne v11, v2, :cond_b

    if-eqz v10, :cond_b

    iget-object v11, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v11, v11, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 1497
    invoke-virtual {v11, v0, v10}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1500
    invoke-interface {v8}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1503
    iget v0, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 16231
    iget-object v0, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v0, v0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual/range {p0 .. p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v2

    invoke-interface {v0, v2, v8, v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V

    .line 1505
    iget v0, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    .line 1506
    iput v0, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1530
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v9

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1515
    :cond_a
    :try_start_3
    iget v2, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 17231
    iget-object v2, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual/range {p0 .. p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v4

    invoke-interface {v2, v4, v8, v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1530
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1493
    :cond_b
    :try_start_4
    invoke-interface {v8}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v8

    goto :goto_6

    .line 1523
    :cond_c
    iget v8, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1524
    iget-object v8, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v8, v8, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual/range {p0 .. p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v10

    invoke-interface {v8, v10, v0, v2, v7}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v0

    .line 18231
    iget-object v2, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual/range {p0 .. p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v7

    invoke-interface {v2, v7, v0, v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V

    .line 1526
    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1527
    iput v4, v1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1530
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v9

    :catchall_1
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    throw v0
.end method

.method ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/Object;I)Z
    .locals 2

    .line 1437
    :try_start_0
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9415
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent(Ljava/lang/Object;I)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1439
    invoke-interface {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 9969
    :cond_0
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    and-int/lit8 p1, p1, 0x3f

    if-nez p1, :cond_1

    .line 9984
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    :cond_1
    return v1

    .line 10969
    :cond_2
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    and-int/lit8 p1, p1, 0x3f

    if-nez p1, :cond_3

    .line 10984
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    .line 11969
    iget-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    and-int/lit8 p2, p2, 0x3f

    if-nez p2, :cond_4

    .line 11984
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    .line 1445
    :cond_4
    throw p1
.end method

.method final extraCallback(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1693
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 23988
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23990
    :try_start_1
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V

    .line 23991
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23993
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 23994
    throw p1

    .line 1698
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1699
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    .line 1700
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v5, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 1703
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v7

    .line 1704
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v8

    if-ne v8, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v8, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v8, v8, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 1706
    invoke-virtual {v8, p1, v7}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1707
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 24941
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    .line 1728
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    .line 1717
    :cond_2
    :try_start_3
    iget p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p2, v3

    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1718
    invoke-direct {p0, v4, v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p2

    .line 1719
    iget v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    sub-int/2addr v1, v3

    .line 1720
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1721
    iput v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1728
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1702
    :cond_3
    :try_start_4
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1728
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1729
    throw p1
.end method

.method extraCallback()V
    .locals 2

    .line 1988
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    :try_start_0
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V

    .line 1991
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1994
    throw v0

    :cond_0
    return-void
.end method

.method final extraCallback(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1604
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 18988
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18990
    :try_start_1
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V

    .line 18991
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18993
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18994
    throw p1

    .line 1608
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1609
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    .line 1610
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_6

    .line 1613
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v6

    .line 1614
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v7

    if-ne v7, p2, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 1616
    invoke-virtual {v7, p1, v6}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1619
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 19941
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    .line 1623
    iget p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1624
    invoke-direct {p0, v4, v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    .line 1625
    iget p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    sub-int/2addr p2, v3

    .line 1626
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1627
    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1646
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1632
    :cond_3
    :try_start_3
    iget-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    .line 20293
    iget-object p2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-interface {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onPostMessage()Lo/performCreateApp;

    move-result-object p2

    .line 1632
    invoke-virtual {p2, p3, p1}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1633
    iget p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 21231
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object p2

    invoke-interface {p1, p2, v5, p4}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1646
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1612
    :cond_5
    :try_start_4
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1646
    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1647
    throw p1
.end method

.method abstract onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method final onNavigationEvent(Ljava/lang/ref/ReferenceQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1355
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1357
    check-cast v1, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    .line 1358
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    .line 4091
    invoke-interface {v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v3

    .line 4112
    iget-object v4, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v5, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v5, v3, v5

    iget v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v5

    aget-object v2, v4, v2

    .line 4092
    invoke-direct {v2, v1, v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;I)Z

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method final onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8

    .line 1733
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 24988
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24990
    :try_start_1
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V

    .line 24991
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24993
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24994
    throw p1

    .line 1738
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1739
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    .line 1740
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_5

    .line 1743
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v6

    .line 1744
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v7

    if-ne v7, p2, :cond_4

    if-eqz v6, :cond_4

    iget-object v7, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v7, v7, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 1746
    invoke-virtual {v7, p1, v6}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1747
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    .line 1750
    iget-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    .line 25293
    iget-object p2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-interface {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->onPostMessage()Lo/performCreateApp;

    move-result-object p2

    .line 1750
    invoke-virtual {p2, p3, p1}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_3

    .line 25941
    :cond_1
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    .line 1769
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1758
    :cond_3
    :goto_3
    :try_start_3
    iget p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1759
    invoke-direct {p0, v4, v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    .line 1760
    iget p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    sub-int/2addr p2, v3

    .line 1761
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1762
    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1769
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1742
    :cond_4
    :try_start_4
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1769
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1770
    throw p1
.end method

.method final onPostMessage(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 6415
    :try_start_0
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent(Ljava/lang/Object;I)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 6969
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    and-int/lit8 p1, p1, 0x3f

    if-nez p1, :cond_0

    .line 6984
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 1425
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7342
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_2

    .line 7344
    :try_start_2
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7346
    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7347
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7969
    :cond_2
    :goto_0
    iget-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    and-int/lit8 p2, p2, 0x3f

    if-nez p2, :cond_3

    .line 7984
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    :cond_3
    return-object p1

    :catchall_1
    move-exception p1

    .line 8969
    iget-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    and-int/lit8 p2, p2, 0x3f

    if-nez p2, :cond_4

    .line 8984
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    .line 1432
    :cond_4
    throw p1
.end method

.method final onPostMessage(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1651
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 21988
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21990
    :try_start_1
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage()V

    .line 21991
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21993
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21994
    throw p1

    .line 1655
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1656
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    .line 1657
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-object v5, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 1660
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v7

    .line 1661
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v8

    if-ne v8, p2, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v8, v8, Lo/CrashlyticsOriginAnalyticsEventLogger;->onNavigationEvent:Lo/performCreateApp;

    .line 1663
    invoke-virtual {v8, p1, v7}, Lo/performCreateApp;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1666
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 22941
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 1670
    iget p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p1, v3

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 1671
    invoke-direct {p0, v4, v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object p1

    .line 1672
    iget p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    sub-int/2addr p2, v3

    .line 1673
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1674
    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1687
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    .line 1679
    :cond_3
    :try_start_3
    iget p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    add-int/2addr p2, v3

    iput p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback:I

    .line 23231
    iget-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object p2, p2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;

    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    move-result-object v0

    invoke-interface {p2, v0, v5, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1687
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1659
    :cond_4
    :try_start_4
    invoke-interface {v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1687
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1688
    throw p1
.end method

.method onPostMessage()V
    .locals 0

    return-void
.end method

.method final onPostMessage(Ljava/lang/ref/ReferenceQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1371
    check-cast v1, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    .line 1372
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger;

    .line 5085
    invoke-interface {v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;->extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v3

    .line 5086
    invoke-interface {v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->c_()I

    move-result v4

    .line 5112
    iget-object v5, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v6, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->extraCallback:I

    ushr-int v6, v4, v6

    iget v2, v2, Lo/CrashlyticsOriginAnalyticsEventLogger;->ICustomTabsCallback:I

    and-int/2addr v2, v6

    aget-object v2, v5, v2

    .line 5087
    invoke-interface {v3}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v4, v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onPostMessage(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;)Z

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method
