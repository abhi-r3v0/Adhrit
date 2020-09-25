.class final Lo/cancelSentTransactions$IPostMessageService$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rotateRight;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Stub"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/cancelSentTransactions;

.field final extraCallback:Lo/cancelSentTransactions$validateRelationship;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    return-void
.end method

.method private onNavigationEvent(Lo/emptyMap;Lo/getPredecessorKey;)Lo/cancelSentTransactions$mayLaunchUrl;
    .locals 11

    .line 891
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object v0

    iget-object v0, v0, Lo/sendUnlisten;->onNavigationEvent:Ljava/util/Set;

    .line 3492
    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 891
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 892
    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;)Lo/getSslCacheDirectory;

    move-result-object v1

    iget-object v1, v1, Lo/getSslCacheDirectory;->ICustomTabsCallback:Ljava/util/Set;

    .line 4492
    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 892
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 893
    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->newSession(Lo/cancelSentTransactions;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 895
    new-instance p1, Lo/cancelSentTransactions$mayLaunchUrl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/cancelSentTransactions$mayLaunchUrl;-><init>(ZZJLjava/lang/Integer;)V

    return-object p1

    .line 898
    :cond_0
    sget-object v1, Lo/cancelSentTransactions;->ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-virtual {p2, v1}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 902
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, -0x1

    .line 904
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 909
    :goto_0
    iget-object v2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_6

    .line 911
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p1, :cond_6

    .line 912
    :cond_2
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    move-result-object p1

    .line 5305
    :cond_3
    iget-object v2, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    add-int/lit16 v5, v2, -0x3e8

    .line 5310
    iget-object v6, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5312
    iget p1, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:I

    if-le v5, p1, :cond_4

    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v3

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 916
    :goto_2
    iget-object v2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object v2

    iget v2, v2, Lo/sendUnlisten;->extraCallback:I

    iget-object v5, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    iget v5, v5, Lo/cancelSentTransactions$validateRelationship;->onMessageChannelReady:I

    add-int/2addr v5, v3

    if-le v2, v5, :cond_8

    if-nez p1, :cond_8

    if-nez p2, :cond_7

    if-eqz v0, :cond_8

    .line 920
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->ICustomTabsService(Lo/cancelSentTransactions;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double v4, v4, v6

    double-to-long v4, v4

    .line 921
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    .line 922
    invoke-static {p1}, Lo/cancelSentTransactions;->ICustomTabsService(Lo/cancelSentTransactions;)J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object v0

    iget-wide v8, v0, Lo/sendUnlisten;->onPostMessage:D

    mul-double v6, v6, v8

    double-to-long v6, v6

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    .line 923
    invoke-static {v0}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object v0

    iget-wide v8, v0, Lo/sendUnlisten;->onMessageChannelReady:J

    .line 921
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;J)J

    goto :goto_3

    .line 926
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_8

    .line 928
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 929
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object v0

    iget-wide v6, v0, Lo/sendUnlisten;->ICustomTabsCallback:J

    invoke-static {p1, v6, v7}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;J)J

    :goto_3
    move-wide v8, v4

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v2, 0x0

    move-wide v8, v2

    const/4 v6, 0x0

    .line 933
    :goto_4
    new-instance p1, Lo/cancelSentTransactions$mayLaunchUrl;

    const/4 v7, 0x0

    .line 934
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->newSession(Lo/cancelSentTransactions;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v10, p2

    goto :goto_5

    :cond_9
    move-object v10, v1

    :goto_5
    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lo/cancelSentTransactions$mayLaunchUrl;-><init>(ZZJLjava/lang/Integer;)V

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getPredecessorKey;)V
    .locals 4

    .line 742
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-static {v0, v1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    .line 743
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    if-ne v0, v1, :cond_1

    .line 744
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub(Lo/cancelSentTransactions;)Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/rotateRight;->ICustomTabsCallback(Lo/getPredecessorKey;)V

    .line 745
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 746
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    move-result-object p1

    .line 2320
    :cond_0
    iget-object v0, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2321
    iget v1, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:I

    if-eq v0, v1, :cond_1

    .line 2324
    iget v1, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->extraCallback:I

    add-int/2addr v1, v0

    .line 2325
    iget-object v2, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 951
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub(Lo/cancelSentTransactions;)Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0}, Lo/rotateRight;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 1

    .line 753
    sget-object v0, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    invoke-virtual {p0, p1, v0, p2}, Lo/cancelSentTransactions$IPostMessageService$Stub;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V
    .locals 2

    .line 939
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    .line 940
    iget-object v1, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 942
    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    if-eq v0, v1, :cond_1

    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub(Lo/cancelSentTransactions;)Lo/rotateRight;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/rotateRight;->onMessageChannelReady(Lo/sendAuthHelper$onMessageChannelReady;)V

    return-void

    .line 5511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Headers should be received prior to messages."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 4

    .line 758
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v2

    iget-object v3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-virtual {v2, v3}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v2

    invoke-static {v1, v2}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 760
    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->onRelationshipValidationResult(Lo/cancelSentTransactions;)Lo/assertValidTrackedQuery$onPostMessage;

    move-result-object v1

    .line 2492
    iget-object v2, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 3035
    iget-object v1, v1, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 761
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 765
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v0, v0, Lo/cancelSentTransactions$validateRelationship;->extraCallback:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-static {p2, v0}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    .line 767
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object p2

    iget-object p2, p2, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    if-ne p2, v0, :cond_0

    .line 768
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub(Lo/cancelSentTransactions;)Lo/rotateRight;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    :cond_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-nez v0, :cond_e

    .line 775
    sget-object v0, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    .line 776
    invoke-static {v0}, Lo/cancelSentTransactions;->asInterface(Lo/cancelSentTransactions;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 778
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    iget p2, p2, Lo/cancelSentTransactions$validateRelationship;->onMessageChannelReady:I

    invoke-static {p1, p2}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;I)Lo/cancelSentTransactions$validateRelationship;

    move-result-object p1

    .line 780
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->newSession(Lo/cancelSentTransactions;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 782
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 787
    :try_start_1
    iget-object p3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iget-object v3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-virtual {v0, v3, p1}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    invoke-static {p3, v0}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 790
    iget-object p3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    invoke-static {p3, v0}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    .line 791
    invoke-static {p3}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object p3

    iget-object p3, p3, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    if-ne p3, v2, :cond_2

    const/4 v1, 0x1

    .line 794
    :cond_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 796
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2, p1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 794
    monitor-exit p2

    throw p1

    .line 799
    :cond_3
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object p2

    if-nez p2, :cond_4

    .line 800
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->warmup(Lo/cancelSentTransactions;)Lo/sendUnlisten$onMessageChannelReady;

    move-result-object p3

    invoke-interface {p3}, Lo/sendUnlisten$onMessageChannelReady;->ICustomTabsCallback()Lo/sendUnlisten;

    move-result-object p3

    invoke-static {p2, p3}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions;Lo/sendUnlisten;)Lo/sendUnlisten;

    .line 802
    :cond_4
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object p2

    iget p2, p2, Lo/sendUnlisten;->extraCallback:I

    if-ne p2, v2, :cond_5

    .line 804
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2, p1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    .line 807
    :cond_5
    :goto_0
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->onTransact(Lo/cancelSentTransactions;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lo/cancelSentTransactions$IPostMessageService$Stub$5;

    invoke-direct {p3, p0, p1}, Lo/cancelSentTransactions$IPostMessageService$Stub$5;-><init>(Lo/cancelSentTransactions$IPostMessageService$Stub;Lo/cancelSentTransactions$validateRelationship;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 814
    :cond_6
    sget-object v0, Lo/rotateRight$extraCallback;->extraCallback:Lo/rotateRight$extraCallback;

    if-ne p2, v0, :cond_7

    .line 817
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->newSession(Lo/cancelSentTransactions;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 818
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy(Lo/cancelSentTransactions;)V

    goto :goto_1

    .line 821
    :cond_7
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->asInterface(Lo/cancelSentTransactions;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 823
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object p2

    if-nez p2, :cond_8

    .line 824
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->warmup(Lo/cancelSentTransactions;)Lo/sendUnlisten$onMessageChannelReady;

    move-result-object v0

    invoke-interface {v0}, Lo/sendUnlisten$onMessageChannelReady;->ICustomTabsCallback()Lo/sendUnlisten;

    move-result-object v0

    invoke-static {p2, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions;Lo/sendUnlisten;)Lo/sendUnlisten;

    .line 825
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;

    move-result-object v0

    iget-wide v0, v0, Lo/sendUnlisten;->ICustomTabsCallback:J

    invoke-static {p2, v0, v1}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;J)J

    .line 828
    :cond_8
    invoke-direct {p0, p1, p3}, Lo/cancelSentTransactions$IPostMessageService$Stub;->onNavigationEvent(Lo/emptyMap;Lo/getPredecessorKey;)Lo/cancelSentTransactions$mayLaunchUrl;

    move-result-object p2

    .line 829
    iget-boolean v0, p2, Lo/cancelSentTransactions$mayLaunchUrl;->onMessageChannelReady:Z

    if-eqz v0, :cond_a

    .line 833
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 834
    :try_start_2
    iget-object p3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    new-instance v0, Lo/cancelSentTransactions$requestPostMessageChannel;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/cancelSentTransactions$requestPostMessageChannel;-><init>(Ljava/lang/Object;)V

    invoke-static {p3, v0}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)Lo/cancelSentTransactions$requestPostMessageChannel;

    .line 835
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 836
    iget-object p1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p1}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iget-wide p2, p2, Lo/cancelSentTransactions$mayLaunchUrl;->extraCallback:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 3381
    iget-object p2, v0, Lo/cancelSentTransactions$requestPostMessageChannel;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter p2

    .line 3382
    :try_start_3
    iget-boolean p3, v0, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    if-nez p3, :cond_9

    .line 3383
    iput-object p1, v0, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 3385
    :cond_9
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2

    throw p1

    :catchall_2
    move-exception p2

    .line 835
    monitor-exit p1

    throw p2

    .line 855
    :cond_a
    iget-boolean v1, p2, Lo/cancelSentTransactions$mayLaunchUrl;->onNavigationEvent:Z

    .line 856
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object p2, p2, Lo/cancelSentTransactions$mayLaunchUrl;->onPostMessage:Ljava/lang/Integer;

    invoke-static {v0, p2}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;Ljava/lang/Integer;)V

    .line 859
    :cond_b
    :goto_1
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->newSession(Lo/cancelSentTransactions;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 860
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 861
    :try_start_4
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v2}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v2

    iget-object v3, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-virtual {v2, v3}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v2

    invoke-static {v0, v2}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    if-nez v1, :cond_d

    .line 868
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v1, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v1

    invoke-static {v0, v1}, Lo/cancelSentTransactions;->onPostMessage(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 869
    :cond_c
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    .line 873
    :cond_d
    monitor-exit p2

    goto :goto_2

    :catchall_3
    move-exception p1

    monitor-exit p2

    throw p1

    .line 877
    :cond_e
    :goto_2
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    invoke-static {p2, v0}, Lo/cancelSentTransactions;->extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    .line 878
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object p2

    iget-object p2, p2, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    if-ne p2, v0, :cond_f

    .line 879
    iget-object p2, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {p2}, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub(Lo/cancelSentTransactions;)Lo/rotateRight;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    :cond_f
    return-void

    :catchall_4
    move-exception p1

    .line 761
    monitor-exit v0

    throw p1
.end method

.method public final run()V
    .locals 2

    .line 5840
    iget-object v0, p0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->onTransact(Lo/cancelSentTransactions;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lo/sendOnDisconnect;

    invoke-direct {v1, p0}, Lo/sendOnDisconnect;-><init>(Lo/cancelSentTransactions$IPostMessageService$Stub;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
