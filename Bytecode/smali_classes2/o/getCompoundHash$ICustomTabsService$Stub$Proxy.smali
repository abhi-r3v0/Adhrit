.class final Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;
.super Lo/getMin;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Proxy"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getMinKey$onPostMessage;

.field private asBinder:Z

.field private asInterface:Lo/shouldContinue;

.field extraCallback:Lo/unionWith$extraCallback;

.field onMessageChannelReady:Lo/shouldIncludeCompoundHash;

.field onNavigationEvent:Z

.field final synthetic onPostMessage:Lo/getCompoundHash;

.field private onRelationshipValidationResult:Lo/buildAncestorWhereClause;

.field private onTransact:Lo/oppositeColor;


# direct methods
.method constructor <init>(Lo/getCompoundHash;Lo/getMinKey$onPostMessage;Lo/getCompoundHash$mayLaunchUrl;)V
    .locals 6

    .line 1508
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-direct {p0}, Lo/getMin;-><init>()V

    if-eqz p2, :cond_0

    .line 1509
    move-object p3, p2

    check-cast p3, Lo/getMinKey$onPostMessage;

    iput-object p3, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMinKey$onPostMessage;

    .line 3866
    iget-object p3, p1, Lo/getCompoundHash;->onMessageChannelReady:Lo/pruneCache;

    invoke-virtual {p3}, Lo/pruneCache;->extraCallback()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Subchannel"

    .line 1511
    invoke-static {v0, p3}, Lo/buildAncestorWhereClause;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/buildAncestorWhereClause;

    move-result-object p3

    iput-object p3, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onRelationshipValidationResult:Lo/buildAncestorWhereClause;

    .line 1512
    new-instance p3, Lo/oppositeColor;

    iget-object v1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onRelationshipValidationResult:Lo/buildAncestorWhereClause;

    .line 1513
    invoke-static {p1}, Lo/getCompoundHash;->getDefaultImpl(Lo/getCompoundHash;)I

    move-result v2

    invoke-static {p1}, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy(Lo/getCompoundHash;)Lo/sendUnauth;

    move-result-object v0

    invoke-interface {v0}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Subchannel for "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4715
    iget-object p2, p2, Lo/getMinKey$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 1514
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lo/oppositeColor;-><init>(Lo/buildAncestorWhereClause;IJLjava/lang/String;)V

    iput-object p3, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onTransact:Lo/oppositeColor;

    .line 1515
    new-instance p2, Lo/shouldContinue;

    invoke-static {p1}, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy(Lo/getCompoundHash;)Lo/sendUnauth;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lo/shouldContinue;-><init>(Lo/oppositeColor;Lo/sendUnauth;)V

    iput-object p2, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asInterface:Lo/shouldContinue;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "args"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 1686
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMinKey$onPostMessage;

    .line 12722
    iget-object v0, v0, Lo/getMinKey$onPostMessage;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public final extraCallback()V
    .locals 2

    .line 1614
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    const-string v1, "Subchannel.shutdown()"

    invoke-static {v0, v1}, Lo/getCompoundHash;->onPostMessage(Lo/getCompoundHash;Ljava/lang/String;)V

    .line 1615
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v1, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$3;

    invoke-direct {v1, p0}, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$3;-><init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;)V"
        }
    .end annotation

    .line 1716
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v0, v0, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v0}, Lo/unionWith;->onPostMessage()V

    .line 1717
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    if-eqz p1, :cond_1

    const-string v1, "newAddressGroups contains null entry"

    .line 14336
    invoke-static {p1, v1}, Lo/shouldIncludeCompoundHash;->onNavigationEvent(Ljava/util/List;Ljava/lang/String;)V

    .line 14337
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14339
    iget-object v1, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v2, Lo/shouldIncludeCompoundHash$2;

    invoke-direct {v2, v0, p1}, Lo/shouldIncludeCompoundHash$2;-><init>(Lo/shouldIncludeCompoundHash;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 15142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newAddressGroups is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "newAddressGroups"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Lo/getMinKey$asInterface;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1600
    iget-object v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v2, v2, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {v2}, Lo/unionWith;->onPostMessage()V

    .line 5521
    iget-boolean v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asBinder:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 5522
    iget-boolean v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 5523
    iput-boolean v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asBinder:Z

    .line 5527
    iget-object v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v2}, Lo/getCompoundHash;->MediaBrowserCompat(Lo/getCompoundHash;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5528
    iget-object v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v2, v2, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v3, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$4;

    invoke-direct {v3, v1}, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$4;-><init>(Lo/getMinKey$asInterface;)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5563
    :cond_0
    new-instance v2, Lo/shouldIncludeCompoundHash;

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:Lo/getMinKey$onPostMessage;

    .line 7715
    iget-object v5, v3, Lo/getMinKey$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 5564
    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 7866
    iget-object v3, v3, Lo/getCompoundHash;->onMessageChannelReady:Lo/pruneCache;

    invoke-virtual {v3}, Lo/pruneCache;->extraCallback()Ljava/lang/String;

    move-result-object v6

    .line 5565
    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5566
    invoke-static {v3}, Lo/getCompoundHash;->write(Lo/getCompoundHash;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5567
    invoke-static {v3}, Lo/getCompoundHash;->read(Lo/getCompoundHash;)Lo/shortCircuitingInOrderTraversal$onPostMessage;

    move-result-object v8

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5568
    invoke-static {v3}, Lo/getCompoundHash;->postMessage(Lo/getCompoundHash;)Lo/fixUp;

    move-result-object v9

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5569
    invoke-static {v3}, Lo/getCompoundHash;->postMessage(Lo/getCompoundHash;)Lo/fixUp;

    move-result-object v3

    invoke-interface {v3}, Lo/fixUp;->onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5570
    invoke-static {v3}, Lo/getCompoundHash;->RemoteActionCompatParcelizer(Lo/getCompoundHash;)Lo/getIdManager;

    move-result-object v11

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v12, v3, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v13, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;

    invoke-direct {v13, v0, v1}, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onPostMessage;-><init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;Lo/getMinKey$asInterface;)V

    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5573
    invoke-static {v1}, Lo/getCompoundHash;->AudioAttributesCompatParcelizer(Lo/getCompoundHash;)Lo/serializeObject;

    move-result-object v14

    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5574
    invoke-static {v1}, Lo/getCompoundHash;->INotificationSideChannel$Default(Lo/getCompoundHash;)Lo/moveRedLeft$onNavigationEvent;

    move-result-object v1

    invoke-interface {v1}, Lo/moveRedLeft$onNavigationEvent;->extraCallback()Lo/moveRedLeft;

    move-result-object v15

    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onTransact:Lo/oppositeColor;

    iget-object v3, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onRelationshipValidationResult:Lo/buildAncestorWhereClause;

    iget-object v4, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asInterface:Lo/shouldContinue;

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lo/shouldIncludeCompoundHash;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lo/shortCircuitingInOrderTraversal$onPostMessage;Lo/fixUp;Ljava/util/concurrent/ScheduledExecutorService;Lo/getIdManager;Lo/unionWith;Lo/shouldIncludeCompoundHash$onMessageChannelReady;Lo/serializeObject;Lo/moveRedLeft;Lo/oppositeColor;Lo/buildAncestorWhereClause;Lo/saveTrackedQueryKeys;)V

    .line 5579
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->onPostMessage(Lo/getCompoundHash;)Lo/oppositeColor;

    move-result-object v1

    new-instance v3, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;

    invoke-direct {v3}, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;-><init>()V

    const-string v4, "Child Subchannel started"

    .line 8581
    iput-object v4, v3, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 5580
    sget-object v4, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onPostMessage:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 8591
    iput-object v4, v3, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 5581
    iget-object v4, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    .line 5582
    invoke-static {v4}, Lo/getCompoundHash;->INotificationSideChannel$Stub$Proxy(Lo/getCompoundHash;)Lo/sendUnauth;

    move-result-object v4

    invoke-interface {v4}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide v4

    .line 9586
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Long;

    .line 9601
    iput-object v2, v3, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Lo/buildFrom;

    .line 5584
    invoke-virtual {v3}, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage()Lo/serializeObject$onMessageChannelReady$onPostMessage;

    move-result-object v3

    .line 5579
    invoke-virtual {v1, v3}, Lo/oppositeColor;->onNavigationEvent(Lo/serializeObject$onMessageChannelReady$onPostMessage;)V

    .line 5586
    iput-object v2, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 5589
    iget-object v1, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    iget-object v1, v1, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    new-instance v3, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;

    invoke-direct {v3, v0, v2}, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$2;-><init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v1, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 7511
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already shutdown"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6511
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1705
    iget-boolean v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asBinder:Z

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    return-object v0

    .line 13511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Subchannel is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 1672
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    const-string v1, "Subchannel.requestConnection()"

    invoke-static {v0, v1}, Lo/getCompoundHash;->onPostMessage(Lo/getCompoundHash;Ljava/lang/String;)V

    .line 1673
    iget-boolean v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asBinder:Z

    if-eqz v0, :cond_1

    .line 1674
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 11186
    iget-object v1, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    if-nez v1, :cond_0

    .line 11190
    iget-object v1, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v2, Lo/shouldIncludeCompoundHash$3;

    invoke-direct {v2, v0}, Lo/shouldIncludeCompoundHash$3;-><init>(Lo/shouldIncludeCompoundHash;)V

    invoke-virtual {v1, v2}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 10511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation

    .line 1679
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onPostMessage:Lo/getCompoundHash;

    const-string v1, "Subchannel.getAllAddresses()"

    invoke-static {v0, v1}, Lo/getCompoundHash;->onPostMessage(Lo/getCompoundHash;Ljava/lang/String;)V

    .line 1680
    iget-boolean v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->asBinder:Z

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    .line 12449
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0

    .line 11511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1691
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onRelationshipValidationResult:Lo/buildAncestorWhereClause;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
