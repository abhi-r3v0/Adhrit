.class final Lo/getCompoundHash$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rotateLeft$onMessageChannelReady;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "asInterface"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getCompoundHash;


# direct methods
.method private constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCompoundHash;B)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lo/getCompoundHash$asInterface;-><init>(Lo/getCompoundHash;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/getPredecessorKey;Lo/verifyInsideTransaction;)Lo/colorFlip;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TReqT;*>;",
            "Lo/deleteTrackedQuery;",
            "Lo/getPredecessorKey;",
            "Lo/verifyInsideTransaction;",
            ")",
            "Lo/colorFlip;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->warmup(Lo/getCompoundHash;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->newSession(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v0

    iget-object v0, v0, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    .line 2151
    iget-object v6, v0, Lo/onDisconnectCancel;->onMessageChannelReady:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    .line 546
    new-instance v0, Lo/getCompoundHash$asInterface$onPostMessage;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lo/getCompoundHash$asInterface$onPostMessage;-><init>(Lo/getCompoundHash$asInterface;Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;Lo/verifyInsideTransaction;)V

    return-object v0

    .line 1511
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "retry should be enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/getMinKey$extraCallback;)Lo/moveRedRight;
    .locals 2

    .line 463
    iget-object v0, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->asBinder(Lo/getCompoundHash;)Lo/getMinKey$ICustomTabsCallback$Stub;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->ICustomTabsCallback$Stub(Lo/getCompoundHash;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object p1, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {p1}, Lo/getCompoundHash;->onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 477
    iget-object p1, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    iget-object p1, p1, Lo/getCompoundHash;->extraCallback:Lo/unionWith;

    invoke-virtual {p1, p0}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    .line 478
    iget-object p1, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {p1}, Lo/getCompoundHash;->onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;

    move-result-object p1

    return-object p1

    .line 490
    :cond_1
    invoke-virtual {v0}, Lo/getMinKey$ICustomTabsCallback$Stub;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object v0

    .line 492
    invoke-virtual {p1}, Lo/getMinKey$extraCallback;->ICustomTabsCallback()Lo/deleteTrackedQuery;

    move-result-object p1

    .line 1373
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 491
    invoke-static {v0, p1}, Lo/getAuthTokenProvider;->extraCallback(Lo/getMinKey$ICustomTabsCallback;Z)Lo/moveRedRight;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 496
    :cond_2
    iget-object p1, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {p1}, Lo/getCompoundHash;->onRelationshipValidationResult(Lo/getCompoundHash;)Lo/buildBalancedTree;

    move-result-object p1

    return-object p1
.end method

.method public final run()V
    .locals 1

    .line 2473
    iget-object v0, p0, Lo/getCompoundHash$asInterface;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-virtual {v0}, Lo/getCompoundHash;->asInterface()V

    return-void
.end method
