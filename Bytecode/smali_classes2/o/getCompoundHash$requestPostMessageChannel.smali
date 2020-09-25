.class final Lo/getCompoundHash$requestPostMessageChannel;
.super Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "requestPostMessageChannel"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/reverseIteratorFrom;

.field final onMessageChannelReady:Lo/getCompoundHash$mayLaunchUrl;

.field final synthetic onNavigationEvent:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;Lo/getCompoundHash$mayLaunchUrl;Lo/reverseIteratorFrom;)V
    .locals 0

    .line 1316
    iput-object p1, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-direct {p0}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;-><init>()V

    .line 1317
    check-cast p2, Lo/getCompoundHash$mayLaunchUrl;

    iput-object p2, p0, Lo/getCompoundHash$requestPostMessageChannel;->onMessageChannelReady:Lo/getCompoundHash$mayLaunchUrl;

    if-eqz p3, :cond_0

    .line 1318
    check-cast p3, Lo/reverseIteratorFrom;

    iput-object p3, p0, Lo/getCompoundHash$requestPostMessageChannel;->ICustomTabsCallback:Lo/reverseIteratorFrom;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resolver"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic extraCallback(Lo/getCompoundHash$requestPostMessageChannel;Lo/emptyMap;)V
    .locals 6

    .line 4458
    sget-object v0, Lo/getCompoundHash;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    .line 4459
    invoke-virtual {v3}, Lo/getCompoundHash;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "[{0}] Failed to resolve name. status={1}"

    .line 4458
    invoke-virtual {v0, v1, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4460
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->AudioAttributesImplBaseParcelizer(Lo/getCompoundHash;)Lo/getCompoundHash$updateVisuals;

    move-result-object v0

    sget-object v1, Lo/getCompoundHash$updateVisuals;->onMessageChannelReady:Lo/getCompoundHash$updateVisuals;

    if-eq v0, v1, :cond_0

    .line 4461
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v0

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->onPostMessage:Lo/saveTrackedQueryKeys$extraCallback;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "Failed to resolve name: {0}"

    invoke-virtual {v0, v1, v3, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4462
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    sget-object v1, Lo/getCompoundHash$updateVisuals;->onMessageChannelReady:Lo/getCompoundHash$updateVisuals;

    invoke-static {v0, v1}, Lo/getCompoundHash;->ICustomTabsCallback(Lo/getCompoundHash;Lo/getCompoundHash$updateVisuals;)Lo/getCompoundHash$updateVisuals;

    .line 4465
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onMessageChannelReady:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v1, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4469
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onMessageChannelReady:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v0, v0, Lo/getCompoundHash$mayLaunchUrl;->onPostMessage:Lo/getRight$ICustomTabsCallback;

    .line 5196
    iget-object v0, v0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 5177
    invoke-virtual {v0, p1}, Lo/getMinKey;->onPostMessage(Lo/emptyMap;)V

    .line 4471
    invoke-virtual {p0}, Lo/getCompoundHash$requestPostMessageChannel;->extraCallback()V

    :cond_1
    return-void
.end method


# virtual methods
.method final extraCallback()V
    .locals 9

    .line 1475
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->cancel(Lo/getCompoundHash;)Lo/unionWith$extraCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->cancel(Lo/getCompoundHash;)Lo/unionWith$extraCallback;

    move-result-object v0

    .line 4215
    iget-object v3, v0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    iget-boolean v3, v3, Lo/unionWith$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v3, :cond_0

    iget-object v0, v0, Lo/unionWith$extraCallback;->ICustomTabsCallback:Lo/unionWith$ICustomTabsCallback;

    iget-boolean v0, v0, Lo/unionWith$ICustomTabsCallback;->onNavigationEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 1482
    :cond_1
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->getServiceComponent(Lo/getCompoundHash;)Lo/shortCircuitingInOrderTraversal;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1483
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->read(Lo/getCompoundHash;)Lo/shortCircuitingInOrderTraversal$onPostMessage;

    move-result-object v3

    invoke-interface {v3}, Lo/shortCircuitingInOrderTraversal$onPostMessage;->onMessageChannelReady()Lo/shortCircuitingInOrderTraversal;

    move-result-object v3

    invoke-static {v0, v3}, Lo/getCompoundHash;->ICustomTabsCallback(Lo/getCompoundHash;Lo/shortCircuitingInOrderTraversal;)Lo/shortCircuitingInOrderTraversal;

    .line 1485
    :cond_2
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->getServiceComponent(Lo/getCompoundHash;)Lo/shortCircuitingInOrderTraversal;

    move-result-object v0

    invoke-interface {v0}, Lo/shortCircuitingInOrderTraversal;->onPostMessage()J

    move-result-wide v5

    .line 1486
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v0

    sget-object v3, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    new-array v2, v2, [Ljava/lang/Object;

    .line 1488
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Scheduling DNS resolution backoff for {0} ns"

    .line 1486
    invoke-virtual {v0, v3, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    iget-object v3, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v4, Lo/getCompoundHash$warmup;

    iget-object v1, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-direct {v4, v1}, Lo/getCompoundHash$warmup;-><init>(Lo/getCompoundHash;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    .line 1492
    invoke-static {v1}, Lo/getCompoundHash;->postMessage(Lo/getCompoundHash;)Lo/fixUp;

    move-result-object v1

    invoke-interface {v1}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 1490
    invoke-virtual/range {v3 .. v8}, Lo/unionWith;->extraCallback(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/unionWith$extraCallback;

    move-result-object v1

    .line 1489
    invoke-static {v0, v1}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;Lo/unionWith$extraCallback;)Lo/unionWith$extraCallback;

    return-void
.end method

.method public final extraCallback(Lo/reverseIteratorFrom$asInterface;)V
    .locals 2

    .line 1441
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;

    invoke-direct {v1, p0, p1}, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;-><init>(Lo/getCompoundHash$requestPostMessageChannel;Lo/reverseIteratorFrom$asInterface;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 3

    .line 3516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 1454
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/getCompoundHash$requestPostMessageChannel$ICustomTabsCallback;-><init>(Lo/getCompoundHash$requestPostMessageChannel;Lo/emptyMap;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the error status must not be OK"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
