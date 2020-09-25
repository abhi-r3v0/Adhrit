.class final Lo/shouldIncludeCompoundHash$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resume$extraCallback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

.field final extraCallback:Lo/resume;

.field private onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;Lo/resume;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->onNavigationEvent:Z

    .line 503
    iput-object p2, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 509
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    .line 509
    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "READY"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 2065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    .line 510
    invoke-virtual {v0, p0}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 569
    iget-boolean v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 7065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    .line 572
    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    invoke-interface {v3}, Lo/resume;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "{0} Terminated"

    invoke-virtual {v0, v1, v3, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 8065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback:Lo/serializeObject;

    .line 573
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    .line 8129
    iget-object v0, v0, Lo/serializeObject;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Lo/serializeObject;->onNavigationEvent(Ljava/util/Map;Lo/splitBytes;)V

    .line 574
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    .line 9425
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v3, Lo/shouldIncludeCompoundHash$7;

    invoke-direct {v3, v0, v1, v4}, Lo/shouldIncludeCompoundHash$7;-><init>(Lo/shouldIncludeCompoundHash;Lo/resume;Z)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    .line 575
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 10065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    .line 575
    new-instance v1, Lo/shouldIncludeCompoundHash$onPostMessage$1;

    invoke-direct {v1, p0}, Lo/shouldIncludeCompoundHash$onPostMessage$1;-><init>(Lo/shouldIncludeCompoundHash$onPostMessage;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "transportShutdown() must be called before transportTerminated()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(Z)V
    .locals 4

    .line 530
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    .line 3425
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v3, Lo/shouldIncludeCompoundHash$7;

    invoke-direct {v3, v0, v1, p1}, Lo/shouldIncludeCompoundHash$7;-><init>(Lo/shouldIncludeCompoundHash;Lo/resume;Z)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 5

    .line 535
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 4065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    .line 535
    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    .line 536
    invoke-interface {v3}, Lo/resume;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5065
    invoke-static {p1}, Lo/shouldIncludeCompoundHash;->onNavigationEvent(Lo/emptyMap;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "{0} SHUTDOWN with {1}"

    .line 535
    invoke-virtual {v0, v1, v3, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iput-boolean v4, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->onNavigationEvent:Z

    .line 538
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 6065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    .line 538
    new-instance v1, Lo/shouldIncludeCompoundHash$onPostMessage$4;

    invoke-direct {v1, p0, p1}, Lo/shouldIncludeCompoundHash$onPostMessage$4;-><init>(Lo/shouldIncludeCompoundHash$onPostMessage;Lo/emptyMap;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 3

    .line 10513
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    const/4 v1, 0x0

    .line 11065
    iput-object v1, v0, Lo/shouldIncludeCompoundHash;->onTransact:Lo/shortCircuitingInOrderTraversal;

    .line 10514
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 12065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->updateVisuals:Lo/emptyMap;

    if-eqz v0, :cond_2

    .line 10516
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 13065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10518
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 14065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->updateVisuals:Lo/emptyMap;

    .line 10518
    invoke-interface {v0, v1}, Lo/resume;->ICustomTabsCallback(Lo/emptyMap;)V

    return-void

    .line 13511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected non-null activeTransport"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10519
    :cond_2
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 15065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 10519
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    if-ne v0, v2, :cond_3

    .line 10520
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 16065
    iput-object v2, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 10521
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 17065
    iput-object v1, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 10522
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    sget-object v1, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    .line 18317
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v2}, Lo/unionWith;->onPostMessage()V

    .line 18319
    invoke-static {v1}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/openDatabase;)V

    :cond_3
    return-void
.end method
