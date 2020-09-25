.class final Lo/shouldIncludeCompoundHash$onPostMessage$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldIncludeCompoundHash$onPostMessage;->onPostMessage(Lo/emptyMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/emptyMap;

.field private synthetic onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash$onPostMessage;Lo/emptyMap;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onMessageChannelReady:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 541
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 2058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 541
    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-ne v0, v1, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 2065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 544
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v1, v1, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 545
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 3065
    iput-object v2, v0, Lo/shouldIncludeCompoundHash;->getInterfaceDescriptor:Lo/resume;

    .line 546
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 4065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 4699
    iput v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 4700
    iput v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 547
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    sget-object v1, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    .line 5317
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v2}, Lo/unionWith;->onPostMessage()V

    .line 5319
    invoke-static {v1}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/openDatabase;)V

    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 6065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 548
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v1, v1, Lo/shouldIncludeCompoundHash$onPostMessage;->extraCallback:Lo/resume;

    if-ne v0, v1, :cond_c

    .line 549
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 7065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 8058
    iget-object v0, v0, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 549
    sget-object v1, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v1, v1, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 8065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->requestPostMessageChannel:Lo/openDatabase;

    .line 9058
    iget-object v1, v1, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eqz v0, :cond_b

    .line 551
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 10065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 10690
    iget-object v1, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iget v5, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/splitNodeRunLength;

    .line 10691
    iget v5, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    add-int/2addr v5, v4

    iput v5, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 10692
    iget v5, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 11090
    iget-object v1, v1, Lo/splitNodeRunLength;->onMessageChannelReady:Ljava/util/List;

    .line 10692
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_3

    .line 10693
    iget v1, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    add-int/2addr v1, v4

    iput v1, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 10694
    iput v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 553
    :cond_3
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 12065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 12682
    iget v1, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_a

    .line 554
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 13065
    iput-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub$Proxy:Lo/resume;

    .line 555
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    .line 14065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->asInterface:Lo/shouldIncludeCompoundHash$onNavigationEvent;

    .line 14699
    iput v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 14700
    iput v3, v0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    .line 558
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onMessageChannelReady:Lo/emptyMap;

    .line 15267
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v2}, Lo/unionWith;->onPostMessage()V

    .line 16516
    sget-object v2, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v5, v1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v2, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    xor-int/2addr v2, v4

    if-eqz v2, :cond_9

    .line 16051
    new-instance v2, Lo/openDatabase;

    sget-object v5, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    invoke-direct {v2, v5, v1}, Lo/openDatabase;-><init>(Lo/setTransactionSuccessful;Lo/emptyMap;)V

    .line 15279
    invoke-virtual {v0, v2}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/openDatabase;)V

    .line 15280
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->onTransact:Lo/shortCircuitingInOrderTraversal;

    if-nez v2, :cond_6

    .line 15281
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->onMessageChannelReady:Lo/shortCircuitingInOrderTraversal$onPostMessage;

    invoke-interface {v2}, Lo/shortCircuitingInOrderTraversal$onPostMessage;->onMessageChannelReady()Lo/shortCircuitingInOrderTraversal;

    move-result-object v2

    iput-object v2, v0, Lo/shouldIncludeCompoundHash;->onTransact:Lo/shortCircuitingInOrderTraversal;

    .line 15283
    :cond_6
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->onTransact:Lo/shortCircuitingInOrderTraversal;

    .line 15284
    invoke-interface {v2}, Lo/shortCircuitingInOrderTraversal;->onPostMessage()J

    move-result-wide v5

    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->asBinder:Lo/Onboarding$3;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sub-long v11, v5, v7

    .line 15285
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    sget-object v5, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 15288
    invoke-static {v1}, Lo/shouldIncludeCompoundHash;->onNavigationEvent(Lo/emptyMap;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    const-string v1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    .line 15285
    invoke-virtual {v2, v5, v1, v6}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15289
    iget-object v1, v0, Lo/shouldIncludeCompoundHash;->warmup:Lo/unionWith$extraCallback;

    if-nez v1, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_8

    .line 15290
    iget-object v9, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v10, Lo/shouldIncludeCompoundHash$extraCallback;

    invoke-direct {v10, v0}, Lo/shouldIncludeCompoundHash$extraCallback;-><init>(Lo/shouldIncludeCompoundHash;)V

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v14, v0, Lo/shouldIncludeCompoundHash;->onPostMessage:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v9 .. v14}, Lo/unionWith;->extraCallback(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/unionWith$extraCallback;

    move-result-object v1

    iput-object v1, v0, Lo/shouldIncludeCompoundHash;->warmup:Lo/unionWith$extraCallback;

    return-void

    .line 17511
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "previous reconnectTask is not done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17142
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The error status must not be OK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_a
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$onPostMessage$4;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onPostMessage;

    iget-object v0, v0, Lo/shouldIncludeCompoundHash$onPostMessage;->ICustomTabsCallback:Lo/shouldIncludeCompoundHash;

    invoke-static {v0}, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback(Lo/shouldIncludeCompoundHash;)V

    goto :goto_3

    .line 9592
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    return-void
.end method
