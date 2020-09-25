.class final Lo/buildBalancedTree$onNavigationEvent;
.super Lo/onDataMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildBalancedTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getMinKey$extraCallback;

.field private synthetic onMessageChannelReady:Lo/buildBalancedTree;

.field private final onPostMessage:Lo/verifyInsideTransaction;


# direct methods
.method private constructor <init>(Lo/buildBalancedTree;Lo/getMinKey$extraCallback;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-direct {p0}, Lo/onDataMessage;-><init>()V

    .line 343
    invoke-static {}, Lo/verifyInsideTransaction;->extraCallback()Lo/verifyInsideTransaction;

    move-result-object p1

    iput-object p1, p0, Lo/buildBalancedTree$onNavigationEvent;->onPostMessage:Lo/verifyInsideTransaction;

    .line 346
    iput-object p2, p0, Lo/buildBalancedTree$onNavigationEvent;->ICustomTabsCallback:Lo/getMinKey$extraCallback;

    return-void
.end method

.method synthetic constructor <init>(Lo/buildBalancedTree;Lo/getMinKey$extraCallback;B)V
    .locals 0

    .line 341
    invoke-direct {p0, p1, p2}, Lo/buildBalancedTree$onNavigationEvent;-><init>(Lo/buildBalancedTree;Lo/getMinKey$extraCallback;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/buildBalancedTree$onNavigationEvent;Lo/moveRedRight;)V
    .locals 4

    .line 1351
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onPostMessage:Lo/verifyInsideTransaction;

    invoke-virtual {v0}, Lo/verifyInsideTransaction;->onNavigationEvent()Lo/verifyInsideTransaction;

    move-result-object v0

    .line 1353
    :try_start_0
    iget-object v1, p0, Lo/buildBalancedTree$onNavigationEvent;->ICustomTabsCallback:Lo/getMinKey$extraCallback;

    .line 1354
    invoke-virtual {v1}, Lo/getMinKey$extraCallback;->onMessageChannelReady()Lo/reverseIterator;

    move-result-object v1

    iget-object v2, p0, Lo/buildBalancedTree$onNavigationEvent;->ICustomTabsCallback:Lo/getMinKey$extraCallback;

    invoke-virtual {v2}, Lo/getMinKey$extraCallback;->extraCallback()Lo/getPredecessorKey;

    move-result-object v2

    iget-object v3, p0, Lo/buildBalancedTree$onNavigationEvent;->ICustomTabsCallback:Lo/getMinKey$extraCallback;

    invoke-virtual {v3}, Lo/getMinKey$extraCallback;->ICustomTabsCallback()Lo/deleteTrackedQuery;

    move-result-object v3

    .line 1353
    invoke-interface {p1, v1, v2, v3}, Lo/moveRedRight;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    iget-object v1, p0, Lo/buildBalancedTree$onNavigationEvent;->onPostMessage:Lo/verifyInsideTransaction;

    invoke-virtual {v1, v0}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    .line 1358
    invoke-virtual {p0, p1}, Lo/buildBalancedTree$onNavigationEvent;->onNavigationEvent(Lo/colorFlip;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1356
    iget-object p0, p0, Lo/buildBalancedTree$onNavigationEvent;->onPostMessage:Lo/verifyInsideTransaction;

    invoke-virtual {p0, v0}, Lo/verifyInsideTransaction;->ICustomTabsCallback(Lo/verifyInsideTransaction;)V

    throw p1
.end method

.method static synthetic onPostMessage(Lo/buildBalancedTree$onNavigationEvent;)Lo/getMinKey$extraCallback;
    .locals 0

    .line 341
    iget-object p0, p0, Lo/buildBalancedTree$onNavigationEvent;->ICustomTabsCallback:Lo/getMinKey$extraCallback;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 2

    .line 363
    invoke-super {p0, p1}, Lo/onDataMessage;->onMessageChannelReady(Lo/emptyMap;)V

    .line 364
    iget-object p1, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {p1}, Lo/buildBalancedTree;->ICustomTabsCallback(Lo/buildBalancedTree;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 365
    :try_start_0
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/buildBalancedTree;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->extraCallback(Lo/buildBalancedTree;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 367
    iget-object v1, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-virtual {v1}, Lo/buildBalancedTree;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->ICustomTabsCallback$Stub(Lo/buildBalancedTree;)Lo/unionWith;

    move-result-object v0

    iget-object v1, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v1}, Lo/buildBalancedTree;->onNavigationEvent(Lo/buildBalancedTree;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->onRelationshipValidationResult(Lo/buildBalancedTree;)Lo/emptyMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->ICustomTabsCallback$Stub(Lo/buildBalancedTree;)Lo/unionWith;

    move-result-object v0

    iget-object v1, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v1}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/buildBalancedTree;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 371
    iget-object v0, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->asBinder(Lo/buildBalancedTree;)Ljava/lang/Runnable;

    .line 375
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object p1, p0, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady:Lo/buildBalancedTree;

    invoke-static {p1}, Lo/buildBalancedTree;->ICustomTabsCallback$Stub(Lo/buildBalancedTree;)Lo/unionWith;

    move-result-object p1

    invoke-virtual {p1}, Lo/unionWith;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception v0

    .line 375
    monitor-exit p1

    throw v0
.end method
