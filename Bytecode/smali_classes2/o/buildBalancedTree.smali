.class final Lo/buildBalancedTree;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildBalancedTree$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/buildBalancedTree$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/resume$extraCallback;

.field private asInterface:Ljava/lang/Runnable;

.field private extraCallback:Ljava/lang/Runnable;

.field private getInterfaceDescriptor:Lo/getMinKey$ICustomTabsCallback$Stub;

.field private final onMessageChannelReady:Lo/unionWith;

.field private final onNavigationEvent:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Lo/buildAncestorWhereClause;

.field private onRelationshipValidationResult:Ljava/lang/Runnable;

.field private onTransact:Lo/emptyMap;

.field private warmup:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lo/unionWith;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Lo/buildBalancedTree;

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Lo/buildAncestorWhereClause;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Lo/buildAncestorWhereClause;

    move-result-object v0

    iput-object v0, p0, Lo/buildBalancedTree;->onPostMessage:Lo/buildAncestorWhereClause;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    .line 98
    iput-object p1, p0, Lo/buildBalancedTree;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 99
    iput-object p2, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/buildBalancedTree;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/buildBalancedTree;)Lo/unionWith;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    return-object p0
.end method

.method static synthetic asBinder(Lo/buildBalancedTree;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/buildBalancedTree;)Ljava/util/Collection;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/buildBalancedTree;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    return-object p0
.end method

.method private onMessageChannelReady(Lo/getMinKey$extraCallback;)Lo/buildBalancedTree$onNavigationEvent;
    .locals 2

    .line 176
    new-instance v0, Lo/buildBalancedTree$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo/buildBalancedTree$onNavigationEvent;-><init>(Lo/buildBalancedTree;Lo/getMinKey$extraCallback;B)V

    .line 177
    iget-object p1, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0}, Lo/buildBalancedTree;->onPostMessage()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 179
    iget-object p1, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    iget-object v1, p0, Lo/buildBalancedTree;->extraCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/buildBalancedTree;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->onRelationshipValidationResult:Ljava/lang/Runnable;

    return-object p0
.end method

.method private onPostMessage()I
    .locals 2

    .line 257
    iget-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 259
    monitor-exit v0

    throw v1
.end method

.method static synthetic onPostMessage(Lo/buildBalancedTree;)Lo/resume$extraCallback;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->asBinder:Lo/resume$extraCallback;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/buildBalancedTree;)Lo/emptyMap;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/buildBalancedTree;->onTransact:Lo/emptyMap;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/buildAncestorWhereClause;
    .locals 1

    .line 338
    iget-object v0, p0, Lo/buildBalancedTree;->onPostMessage:Lo/buildAncestorWhereClause;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/emptyMap;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lo/buildBalancedTree;->onTransact:Lo/emptyMap;

    if-eqz v1, :cond_0

    .line 205
    monitor-exit v0

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lo/buildBalancedTree;->onTransact:Lo/emptyMap;

    .line 208
    iget-object v1, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    new-instance v2, Lo/buildBalancedTree$5;

    invoke-direct {v2, p0, p1}, Lo/buildBalancedTree$5;-><init>(Lo/buildBalancedTree;Lo/emptyMap;)V

    invoke-virtual {v1, v2}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {p0}, Lo/buildBalancedTree;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    iget-object v1, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    .line 218
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object p1, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    invoke-virtual {p1}, Lo/unionWith;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p1

    .line 218
    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is not expected to be called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onMessageChannelReady(Lo/getMinKey$ICustomTabsCallback$Stub;)V
    .locals 7

    .line 274
    iget-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iput-object p1, p0, Lo/buildBalancedTree;->getInterfaceDescriptor:Lo/getMinKey$ICustomTabsCallback$Stub;

    .line 276
    iget-wide v1, p0, Lo/buildBalancedTree;->warmup:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/buildBalancedTree;->warmup:J

    if-eqz p1, :cond_7

    .line 277
    invoke-virtual {p0}, Lo/buildBalancedTree;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/buildBalancedTree$onNavigationEvent;

    .line 285
    invoke-static {v2}, Lo/buildBalancedTree$onNavigationEvent;->onPostMessage(Lo/buildBalancedTree$onNavigationEvent;)Lo/getMinKey$extraCallback;

    invoke-virtual {p1}, Lo/getMinKey$ICustomTabsCallback$Stub;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object v3

    .line 286
    invoke-static {v2}, Lo/buildBalancedTree$onNavigationEvent;->onPostMessage(Lo/buildBalancedTree$onNavigationEvent;)Lo/getMinKey$extraCallback;

    move-result-object v4

    invoke-virtual {v4}, Lo/getMinKey$extraCallback;->ICustomTabsCallback()Lo/deleteTrackedQuery;

    move-result-object v4

    .line 2373
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v4, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 287
    invoke-static {v3, v5}, Lo/getAuthTokenProvider;->extraCallback(Lo/getMinKey$ICustomTabsCallback;Z)Lo/moveRedRight;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 290
    iget-object v5, p0, Lo/buildBalancedTree;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 3361
    iget-object v6, v4, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    if-eqz v6, :cond_2

    .line 4361
    iget-object v5, v4, Lo/deleteTrackedQuery;->extraCallback:Ljava/util/concurrent/Executor;

    .line 297
    :cond_2
    new-instance v4, Lo/buildBalancedTree$4;

    invoke-direct {v4, v2, v3}, Lo/buildBalancedTree$4;-><init>(Lo/buildBalancedTree$onNavigationEvent;Lo/moveRedRight;)V

    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_3
    iget-object p1, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p1

    .line 311
    :try_start_1
    invoke-virtual {p0}, Lo/buildBalancedTree;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_4

    .line 312
    monitor-exit p1

    return-void

    .line 314
    :cond_4
    iget-object v1, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 317
    iget-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    .line 320
    :cond_5
    invoke-virtual {p0}, Lo/buildBalancedTree;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 326
    iget-object v0, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    iget-object v1, p0, Lo/buildBalancedTree;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lo/buildBalancedTree;->onTransact:Lo/emptyMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 328
    iget-object v0, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    iget-object v1, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/unionWith;->onPostMessage(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    .line 332
    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    iget-object p1, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    invoke-virtual {p1}, Lo/unionWith;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception v0

    .line 332
    monitor-exit p1

    throw v0

    .line 278
    :cond_7
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 281
    monitor-exit v0

    throw p1
.end method

.method public final onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "**>;",
            "Lo/getPredecessorKey;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/colorFlip;"
        }
    .end annotation

    .line 137
    :try_start_0
    new-instance v0, Lo/connected;

    invoke-direct {v0, p1, p2, p3}, Lo/connected;-><init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)V

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    .line 141
    :cond_0
    iget-object p2, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    iget-object v3, p0, Lo/buildBalancedTree;->onTransact:Lo/emptyMap;

    if-eqz v3, :cond_1

    .line 143
    new-instance p1, Lo/onControlMessage;

    iget-object p3, p0, Lo/buildBalancedTree;->onTransact:Lo/emptyMap;

    invoke-direct {p1, p3}, Lo/onControlMessage;-><init>(Lo/emptyMap;)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :goto_0
    iget-object p2, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    invoke-virtual {p2}, Lo/unionWith;->ICustomTabsCallback()V

    return-object p1

    .line 145
    :cond_1
    :try_start_2
    iget-object v3, p0, Lo/buildBalancedTree;->getInterfaceDescriptor:Lo/getMinKey$ICustomTabsCallback$Stub;

    if-nez v3, :cond_2

    .line 146
    invoke-direct {p0, v0}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/getMinKey$extraCallback;)Lo/buildBalancedTree$onNavigationEvent;

    move-result-object p1

    monitor-exit p2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 149
    iget-wide v3, p0, Lo/buildBalancedTree;->warmup:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 150
    invoke-direct {p0, v0}, Lo/buildBalancedTree;->onMessageChannelReady(Lo/getMinKey$extraCallback;)Lo/buildBalancedTree$onNavigationEvent;

    move-result-object p1

    monitor-exit p2

    goto :goto_0

    .line 152
    :cond_3
    iget-object p1, p0, Lo/buildBalancedTree;->getInterfaceDescriptor:Lo/getMinKey$ICustomTabsCallback$Stub;

    .line 153
    iget-wide v1, p0, Lo/buildBalancedTree;->warmup:J

    .line 154
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-virtual {p1}, Lo/getMinKey$ICustomTabsCallback$Stub;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object p2

    .line 1373
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p3, Lo/deleteTrackedQuery;->asBinder:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 156
    invoke-static {p2, v3}, Lo/getAuthTokenProvider;->extraCallback(Lo/getMinKey$ICustomTabsCallback;Z)Lo/moveRedRight;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {v0}, Lo/getMinKey$extraCallback;->onMessageChannelReady()Lo/reverseIterator;

    move-result-object p1

    invoke-virtual {v0}, Lo/getMinKey$extraCallback;->extraCallback()Lo/getPredecessorKey;

    move-result-object p3

    invoke-virtual {v0}, Lo/getMinKey$extraCallback;->ICustomTabsCallback()Lo/deleteTrackedQuery;

    move-result-object v0

    .line 159
    invoke-interface {p2, p1, p3, v0}, Lo/moveRedRight;->onNavigationEvent(Lo/reverseIterator;Lo/getPredecessorKey;Lo/deleteTrackedQuery;)Lo/colorFlip;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 166
    iget-object p2, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    invoke-virtual {p2}, Lo/unionWith;->ICustomTabsCallback()V

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 252
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;
    .locals 1

    .line 104
    iput-object p1, p0, Lo/buildBalancedTree;->asBinder:Lo/resume$extraCallback;

    .line 105
    new-instance v0, Lo/buildBalancedTree$2;

    invoke-direct {v0, p1}, Lo/buildBalancedTree$2;-><init>(Lo/resume$extraCallback;)V

    iput-object v0, p0, Lo/buildBalancedTree;->extraCallback:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lo/buildBalancedTree$1;

    invoke-direct {v0, p1}, Lo/buildBalancedTree$1;-><init>(Lo/resume$extraCallback;)V

    iput-object v0, p0, Lo/buildBalancedTree;->onRelationshipValidationResult:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lo/buildBalancedTree$3;

    invoke-direct {v0, p1}, Lo/buildBalancedTree$3;-><init>(Lo/resume$extraCallback;)V

    iput-object v0, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 4

    .line 228
    invoke-virtual {p0, p1}, Lo/buildBalancedTree;->ICustomTabsCallback(Lo/emptyMap;)V

    .line 231
    iget-object v0, p0, Lo/buildBalancedTree;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    .line 233
    iget-object v2, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 234
    iput-object v3, p0, Lo/buildBalancedTree;->asInterface:Ljava/lang/Runnable;

    .line 235
    iget-object v3, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lo/buildBalancedTree;->ICustomTabsCallback$Stub:Ljava/util/Collection;

    .line 238
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 240
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/buildBalancedTree$onNavigationEvent;

    .line 241
    invoke-virtual {v1, p1}, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady(Lo/emptyMap;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lo/buildBalancedTree;->onMessageChannelReady:Lo/unionWith;

    invoke-virtual {p1, v2}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 238
    monitor-exit v0

    throw p1
.end method
