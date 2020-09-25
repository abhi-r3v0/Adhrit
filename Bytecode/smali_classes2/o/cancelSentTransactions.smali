.class abstract Lo/cancelSentTransactions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/colorFlip;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cancelSentTransactions$requestPostMessageChannel;,
        Lo/cancelSentTransactions$mayLaunchUrl;,
        Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;,
        Lo/cancelSentTransactions$postMessage;,
        Lo/cancelSentTransactions$updateVisuals;,
        Lo/cancelSentTransactions$validateRelationship;,
        Lo/cancelSentTransactions$ICustomTabsService$Stub;,
        Lo/cancelSentTransactions$IPostMessageService$Stub;,
        Lo/cancelSentTransactions$newSession;,
        Lo/cancelSentTransactions$extraCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/colorFlip;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cancelAll:Ljava/util/Random;

.field private static final extraCallback:Lo/emptyMap;

.field private static onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/getSslCacheDirectory$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

.field private final ICustomTabsService:Ljava/lang/Object;

.field private ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

.field private ICustomTabsService$Stub$Proxy:Lo/cancelSentTransactions$requestPostMessageChannel;

.field private IPostMessageService:J

.field private IPostMessageService$Stub:J

.field private final asBinder:Ljava/util/concurrent/ScheduledExecutorService;

.field private final asInterface:Lo/getPredecessorKey;

.field private final extraCommand:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

.field private getInterfaceDescriptor:Lo/sendUnlisten;

.field private final mayLaunchUrl:J

.field private newSession:Z

.field final onMessageChannelReady:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field volatile onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

.field private final onRelationshipValidationResult:Ljava/util/concurrent/Executor;

.field private final onTransact:Lo/sendUnlisten$onMessageChannelReady;

.field private final postMessage:Lo/assertValidTrackedQuery$onPostMessage;

.field private final requestPostMessageChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final updateVisuals:J

.field private validateRelationship:Lo/rotateRight;

.field private final warmup:Lo/cancelSentTransactions$postMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "grpc-previous-rpc-attempts"

    .line 54
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/cancelSentTransactions;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 57
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "grpc-retry-pushback-ms"

    .line 58
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/cancelSentTransactions;->ICustomTabsCallback:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 60
    sget-object v0, Lo/emptyMap;->extraCallback:Lo/emptyMap;

    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 61
    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    sput-object v0, Lo/cancelSentTransactions;->extraCallback:Lo/emptyMap;

    .line 690
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo/cancelSentTransactions;->cancelAll:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lo/reverseIterator;Lo/getPredecessorKey;Lo/cancelSentTransactions$postMessage;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lo/sendUnlisten$onMessageChannelReady;Lo/getSslCacheDirectory$ICustomTabsCallback;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/reverseIterator<",
            "TReqT;*>;",
            "Lo/getPredecessorKey;",
            "Lo/cancelSentTransactions$postMessage;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lo/sendUnlisten$onMessageChannelReady;",
            "Lo/getSslCacheDirectory$ICustomTabsCallback;",
            "Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    .line 82
    new-instance v1, Lo/assertValidTrackedQuery$onPostMessage;

    invoke-direct {v1}, Lo/assertValidTrackedQuery$onPostMessage;-><init>()V

    iput-object v1, v0, Lo/cancelSentTransactions;->postMessage:Lo/assertValidTrackedQuery$onPostMessage;

    .line 85
    new-instance v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    iput-object v1, v0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lo/cancelSentTransactions;->requestPostMessageChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p1

    .line 112
    iput-object v1, v0, Lo/cancelSentTransactions;->onMessageChannelReady:Lo/reverseIterator;

    move-object v1, p3

    .line 113
    iput-object v1, v0, Lo/cancelSentTransactions;->warmup:Lo/cancelSentTransactions$postMessage;

    move-wide v1, p4

    .line 114
    iput-wide v1, v0, Lo/cancelSentTransactions;->updateVisuals:J

    move-wide/from16 v1, p6

    .line 115
    iput-wide v1, v0, Lo/cancelSentTransactions;->mayLaunchUrl:J

    move-object/from16 v1, p8

    .line 116
    iput-object v1, v0, Lo/cancelSentTransactions;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p9

    .line 117
    iput-object v1, v0, Lo/cancelSentTransactions;->asBinder:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p2

    .line 118
    iput-object v1, v0, Lo/cancelSentTransactions;->asInterface:Lo/getPredecessorKey;

    if-eqz p10, :cond_1

    .line 119
    move-object/from16 v1, p10

    check-cast v1, Lo/sendUnlisten$onMessageChannelReady;

    iput-object v1, v0, Lo/cancelSentTransactions;->onTransact:Lo/sendUnlisten$onMessageChannelReady;

    if-eqz p11, :cond_0

    .line 120
    move-object/from16 v1, p11

    check-cast v1, Lo/getSslCacheDirectory$ICustomTabsCallback;

    iput-object v1, v0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub:Lo/getSslCacheDirectory$ICustomTabsCallback;

    move-object/from16 v1, p12

    .line 121
    iput-object v1, v0, Lo/cancelSentTransactions;->extraCommand:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    return-void

    .line 2910
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "hedgingPolicyProvider"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1910
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "retryPolicyProvider"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic ICustomTabsCallback(Lo/cancelSentTransactions;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lo/cancelSentTransactions;->IPostMessageService$Stub:J

    return-wide p1
.end method

.method private ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;
    .locals 18

    move-object/from16 v7, p0

    .line 129
    iget-object v8, v7, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v8

    .line 130
    :try_start_0
    iget-object v0, v7, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    monitor-exit v8

    return-object v1

    .line 133
    :cond_0
    iget-object v0, v7, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v3, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    .line 135
    iget-object v0, v7, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 3081
    iget-object v2, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v6, "Already committed"

    if-eqz v2, :cond_5

    .line 3084
    iget-object v2, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    .line 3087
    iget-object v6, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    move-object/from16 v15, p1

    invoke-interface {v6, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3090
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object v10, v1

    move-object v11, v2

    const/4 v4, 0x1

    goto :goto_1

    .line 3092
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v10, v2

    move-object v11, v6

    .line 3095
    :goto_1
    new-instance v2, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v12, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    iget-boolean v14, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v6, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    iget v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    move-object v9, v2

    move-object/from16 v13, p1

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    .line 135
    iput-object v2, v7, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 138
    iget-object v0, v7, Lo/cancelSentTransactions;->warmup:Lo/cancelSentTransactions$postMessage;

    iget-wide v9, v7, Lo/cancelSentTransactions;->IPostMessageService$Stub:J

    neg-long v9, v9

    .line 4254
    iget-object v0, v0, Lo/cancelSentTransactions$postMessage;->extraCallback:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 141
    iget-object v0, v7, Lo/cancelSentTransactions;->ICustomTabsService$Stub$Proxy:Lo/cancelSentTransactions$requestPostMessageChannel;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, v7, Lo/cancelSentTransactions;->ICustomTabsService$Stub$Proxy:Lo/cancelSentTransactions$requestPostMessageChannel;

    .line 4391
    iput-boolean v5, v0, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    .line 4392
    iget-object v0, v0, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 145
    iput-object v1, v7, Lo/cancelSentTransactions;->ICustomTabsService$Stub$Proxy:Lo/cancelSentTransactions$requestPostMessageChannel;

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 151
    :goto_2
    iget-object v2, v7, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    if-eqz v2, :cond_4

    .line 154
    iget-object v2, v7, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    .line 5391
    iput-boolean v5, v2, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    .line 5392
    iget-object v2, v2, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 155
    iput-object v1, v7, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    move-object v6, v2

    goto :goto_3

    :cond_4
    move-object v6, v1

    .line 180
    :goto_3
    new-instance v9, Lo/cancelSentTransactions$onNavigationEvent;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lo/cancelSentTransactions$onNavigationEvent;-><init>(Lo/cancelSentTransactions;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v8

    return-object v9

    .line 3511
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 181
    monitor-exit v8

    throw v0
.end method

.method static synthetic ICustomTabsCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/cancelSentTransactions;I)Lo/cancelSentTransactions$validateRelationship;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/cancelSentTransactions;->onPostMessage(I)Lo/cancelSentTransactions$validateRelationship;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ICustomTabsCallback()Lo/emptyMap;
    .locals 1

    .line 51
    sget-object v0, Lo/cancelSentTransactions;->extraCallback:Lo/emptyMap;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions$validateRelationship;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub()Ljava/util/Random;
    .locals 1

    .line 51
    sget-object v0, Lo/cancelSentTransactions;->cancelAll:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/cancelSentTransactions;)Lo/rotateRight;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->validateRelationship:Lo/rotateRight;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/cancelSentTransactions;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/cancelSentTransactions;->onTransact()V

    return-void
.end method

.method static synthetic ICustomTabsService(Lo/cancelSentTransactions;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lo/cancelSentTransactions;->IPostMessageService:J

    return-wide v0
.end method

.method static synthetic asBinder(Lo/cancelSentTransactions;)Lo/reverseIterator;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->onMessageChannelReady:Lo/reverseIterator;

    return-object p0
.end method

.method static synthetic asInterface(Lo/cancelSentTransactions;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->requestPostMessageChannel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/cancelSentTransactions;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lo/cancelSentTransactions;->IPostMessageService:J

    return-wide p1
.end method

.method static synthetic extraCallback(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->extraCommand:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)Lo/cancelSentTransactions$requestPostMessageChannel;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V
    .locals 0

    .line 13190
    invoke-direct {p0, p1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 13193
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic getInterfaceDescriptor(Lo/cancelSentTransactions;)Lo/sendUnlisten;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->getInterfaceDescriptor:Lo/sendUnlisten;

    return-object p0
.end method

.method static synthetic mayLaunchUrl(Lo/cancelSentTransactions;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lo/cancelSentTransactions;->updateVisuals:J

    return-wide v0
.end method

.method static synthetic newSession(Lo/cancelSentTransactions;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lo/cancelSentTransactions;->newSession:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/cancelSentTransactions;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->asBinder:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/cancelSentTransactions;Lo/sendUnlisten;)Lo/sendUnlisten;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/cancelSentTransactions;->getInterfaceDescriptor:Lo/sendUnlisten;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lo/cancelSentTransactions;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    return-object p1
.end method

.method private onNavigationEvent(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    .line 242
    :goto_0
    iget-object v6, v1, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v6

    .line 243
    :try_start_0
    iget-object v7, v1, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 244
    iget-object v8, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v8, :cond_0

    iget-object v8, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eq v8, v0, :cond_0

    .line 246
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object v0, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    sget-object v2, Lo/cancelSentTransactions;->extraCallback:Lo/emptyMap;

    invoke-interface {v0, v2}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    return-void

    .line 248
    :cond_0
    :try_start_1
    iget-object v8, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v4, v8, :cond_9

    .line 7032
    iget-boolean v4, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Already passThrough"

    if-eqz v4, :cond_8

    .line 7036
    iget-boolean v4, v0, Lo/cancelSentTransactions$validateRelationship;->ICustomTabsCallback:Z

    if-eqz v4, :cond_2

    .line 7037
    iget-object v4, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    :goto_2
    move-object v12, v4

    goto :goto_3

    .line 7038
    :cond_2
    iget-object v4, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7040
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 7042
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7043
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7044
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    goto :goto_2

    .line 7047
    :goto_3
    iget-object v4, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v4, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 7049
    :goto_4
    iget-object v4, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    if-eqz v16, :cond_7

    .line 7051
    iget-object v4, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-ne v4, v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    const-string v0, "Another RPC attempt has already committed"

    if-eqz v3, :cond_6

    move-object v11, v2

    goto :goto_5

    .line 8511
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object v11, v4

    .line 7056
    :goto_5
    new-instance v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v13, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    iget-object v14, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v15, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v2, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    iget v3, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    move-object v10, v0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    .line 249
    iput-object v0, v1, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 250
    monitor-exit v6

    return-void

    .line 7511
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_9
    iget-boolean v8, v0, Lo/cancelSentTransactions$validateRelationship;->ICustomTabsCallback:Z

    if-eqz v8, :cond_a

    .line 254
    monitor-exit v6

    return-void

    :cond_a
    add-int/lit16 v8, v4, 0x80

    .line 257
    iget-object v10, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v5, :cond_b

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v7, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    .line 261
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 262
    iget-object v7, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v7, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    :goto_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/cancelSentTransactions$newSession;

    .line 268
    iget-object v7, v1, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 269
    iget-object v10, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v10, :cond_c

    iget-object v10, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-ne v10, v0, :cond_10

    .line 273
    :cond_c
    iget-boolean v10, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    if-eqz v10, :cond_f

    .line 274
    iget-object v2, v7, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-ne v2, v0, :cond_d

    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_e

    return-void

    .line 9511
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "substream should be CANCELLED_BECAUSE_COMMITTED already"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_f
    invoke-interface {v6, v0}, Lo/cancelSentTransactions$newSession;->onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V

    goto :goto_7

    :cond_10
    move v4, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 265
    monitor-exit v6

    throw v0
.end method

.method static synthetic onPostMessage(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)Lo/cancelSentTransactions$requestPostMessageChannel;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub$Proxy:Lo/cancelSentTransactions$requestPostMessageChannel;

    return-object p1
.end method

.method private onPostMessage(I)Lo/cancelSentTransactions$validateRelationship;
    .locals 4

    .line 198
    new-instance v0, Lo/cancelSentTransactions$validateRelationship;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$validateRelationship;-><init>(I)V

    .line 200
    new-instance v1, Lo/cancelSentTransactions$updateVisuals;

    invoke-direct {v1, p0, v0}, Lo/cancelSentTransactions$updateVisuals;-><init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    .line 201
    new-instance v2, Lo/cancelSentTransactions$5;

    invoke-direct {v2, v1}, Lo/cancelSentTransactions$5;-><init>(Lo/beginTransaction;)V

    .line 209
    iget-object v1, p0, Lo/cancelSentTransactions;->asInterface:Lo/getPredecessorKey;

    .line 6226
    new-instance v3, Lo/getPredecessorKey;

    invoke-direct {v3}, Lo/getPredecessorKey;-><init>()V

    .line 6227
    invoke-virtual {v3, v1}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey;)V

    if-lez p1, :cond_0

    .line 6229
    sget-object v1, Lo/cancelSentTransactions;->onNavigationEvent:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 211
    :cond_0
    invoke-virtual {p0, v2, v3}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/beginTransaction$onNavigationEvent;Lo/getPredecessorKey;)Lo/colorFlip;

    move-result-object p1

    iput-object p1, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/cancelSentTransactions;)Lo/getSslCacheDirectory;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/cancelSentTransactions;Ljava/lang/Integer;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 13351
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 13352
    invoke-direct {p0}, Lo/cancelSentTransactions;->onTransact()V

    return-void

    .line 13360
    :cond_0
    iget-object v0, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    .line 13361
    :try_start_0
    iget-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    if-nez v1, :cond_1

    .line 13362
    monitor-exit v0

    return-void

    .line 13367
    :cond_1
    iget-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    const/4 v2, 0x1

    .line 13391
    iput-boolean v2, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    .line 13392
    iget-object v1, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 13368
    new-instance v2, Lo/cancelSentTransactions$requestPostMessageChannel;

    iget-object v3, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lo/cancelSentTransactions$requestPostMessageChannel;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    .line 13369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 13372
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 13374
    :cond_2
    iget-object v0, p0, Lo/cancelSentTransactions;->asBinder:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo/cancelSentTransactions$extraCommand;

    invoke-direct {v1, p0, v2}, Lo/cancelSentTransactions$extraCommand;-><init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)V

    .line 13375
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long p0, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13374
    invoke-interface {v0, v1, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    .line 14381
    iget-object p1, v2, Lo/cancelSentTransactions$requestPostMessageChannel;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter p1

    .line 14382
    :try_start_1
    iget-boolean v0, v2, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    if-nez v0, :cond_3

    .line 14383
    iput-object p0, v2, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 14385
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :catchall_1
    move-exception p0

    .line 13369
    monitor-exit v0

    throw p0

    :cond_4
    return-void
.end method

.method static synthetic onPostMessage(Lo/cancelSentTransactions;Lo/cancelSentTransactions$ICustomTabsService$Stub;)Z
    .locals 1

    .line 12705
    iget-object v0, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-nez v0, :cond_0

    iget v0, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    iget-object p0, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    iget p0, p0, Lo/getSslCacheDirectory;->onPostMessage:I

    if-ge v0, p0, :cond_0

    iget-boolean p0, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/cancelSentTransactions;)Lo/assertValidTrackedQuery$onPostMessage;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->postMessage:Lo/assertValidTrackedQuery$onPostMessage;

    return-object p0
.end method

.method static synthetic onTransact(Lo/cancelSentTransactions;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->onRelationshipValidationResult:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private onTransact()V
    .locals 4

    .line 713
    iget-object v0, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    const/4 v3, 0x1

    .line 12391
    iput-boolean v3, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    .line 12392
    iget-object v1, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 718
    iput-object v2, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    move-object v2, v1

    .line 720
    :cond_0
    iget-object v1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    invoke-virtual {v1}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback()Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v1

    iput-object v1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 721
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 724
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 721
    monitor-exit v0

    throw v1
.end method

.method static synthetic postMessage(Lo/cancelSentTransactions;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lo/cancelSentTransactions;->IPostMessageService$Stub:J

    return-wide v0
.end method

.method static synthetic requestPostMessageChannel(Lo/cancelSentTransactions;)Lo/cancelSentTransactions$postMessage;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->warmup:Lo/cancelSentTransactions$postMessage;

    return-object p0
.end method

.method static synthetic updateVisuals(Lo/cancelSentTransactions;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lo/cancelSentTransactions;->mayLaunchUrl:J

    return-wide v0
.end method

.method static synthetic warmup(Lo/cancelSentTransactions;)Lo/sendUnlisten$onMessageChannelReady;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/cancelSentTransactions;->onTransact:Lo/sendUnlisten$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 499
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 500
    iget-boolean v1, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 501
    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v0, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->ICustomTabsCallback(I)V

    return-void

    .line 512
    :cond_0
    new-instance v0, Lo/cancelSentTransactions$getInterfaceDescriptor;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$getInterfaceDescriptor;-><init>(I)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V
    .locals 4

    .line 662
    iget-object v0, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    .line 663
    iget-object v2, p0, Lo/cancelSentTransactions;->postMessage:Lo/assertValidTrackedQuery$onPostMessage;

    invoke-virtual {p1, v1, v2}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    .line 664
    iget-object v1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 665
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    iget-object v0, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Lo/assertValidTrackedQuery$onPostMessage;

    invoke-direct {v0}, Lo/assertValidTrackedQuery$onPostMessage;-><init>()V

    .line 672
    iget-object v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v1, v1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v1, v0}, Lo/colorFlip;->ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V

    const-string v1, "committed"

    .line 673
    invoke-virtual {p1, v1, v0}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    return-void

    .line 675
    :cond_0
    new-instance v0, Lo/assertValidTrackedQuery$onPostMessage;

    invoke-direct {v0}, Lo/assertValidTrackedQuery$onPostMessage;-><init>()V

    .line 681
    iget-object v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cancelSentTransactions$validateRelationship;

    .line 682
    new-instance v3, Lo/assertValidTrackedQuery$onPostMessage;

    invoke-direct {v3}, Lo/assertValidTrackedQuery$onPostMessage;-><init>()V

    .line 683
    iget-object v2, v2, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v2, v3}, Lo/colorFlip;->ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V

    .line 12035
    iget-object v2, v0, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "open"

    .line 686
    invoke-virtual {p1, v1, v0}, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/assertValidTrackedQuery$onPostMessage;

    return-void

    :catchall_0
    move-exception p1

    .line 665
    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    .line 576
    new-instance v0, Lo/cancelSentTransactions$ICustomTabsService;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$ICustomTabsService;-><init>(Z)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final V_()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 653
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v0, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v0}, Lo/colorFlip;->V_()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    return-object v0

    .line 656
    :cond_0
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public final asBinder()V
    .locals 2

    .line 517
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 518
    iget-boolean v1, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 519
    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v0, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v0}, Lo/colorFlip;->asBinder()V

    return-void

    .line 530
    :cond_0
    new-instance v0, Lo/cancelSentTransactions$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/cancelSentTransactions$ICustomTabsCallback$Stub;-><init>()V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 636
    new-instance v0, Lo/cancelSentTransactions$onTransact;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$onTransact;-><init>(I)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final extraCallback(Ljava/io/InputStream;)V
    .locals 1

    .line 477
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 600
    new-instance v0, Lo/cancelSentTransactions$onPostMessage;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$onPostMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 2

    .line 535
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cancelSentTransactions$validateRelationship;

    .line 536
    iget-object v1, v1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v1}, Lo/colorFlip;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method abstract onMessageChannelReady()Lo/emptyMap;
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 624
    new-instance v0, Lo/cancelSentTransactions$onRelationshipValidationResult;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$onRelationshipValidationResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method final onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V
    .locals 2

    .line 459
    iget-object v0, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-boolean v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    if-nez v1, :cond_0

    .line 461
    iget-object v1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    iget-object v1, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v1, v1, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    .line 464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cancelSentTransactions$validateRelationship;

    .line 467
    invoke-interface {p1, v1}, Lo/cancelSentTransactions$newSession;->onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 464
    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 3

    .line 440
    new-instance v0, Lo/cancelSentTransactions$validateRelationship;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/cancelSentTransactions$validateRelationship;-><init>(I)V

    .line 441
    new-instance v1, Lo/isInterrupted;

    invoke-direct {v1}, Lo/isInterrupted;-><init>()V

    iput-object v1, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    .line 442
    invoke-direct {p0, v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lo/cancelSentTransactions;->validateRelationship:Lo/rotateRight;

    new-instance v2, Lo/getPredecessorKey;

    invoke-direct {v2}, Lo/getPredecessorKey;-><init>()V

    invoke-interface {v1, p1, v2}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    .line 446
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-object v0, v0, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    invoke-interface {v0, p1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    .line 451
    iget-object p1, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter p1

    .line 453
    :try_start_0
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    invoke-virtual {v0}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage()Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v0

    iput-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 454
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method abstract onNavigationEvent(Lo/beginTransaction$onNavigationEvent;Lo/getPredecessorKey;)Lo/colorFlip;
.end method

.method abstract onNavigationEvent()V
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 564
    new-instance v0, Lo/cancelSentTransactions$asBinder;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$asBinder;-><init>(Z)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 588
    new-instance v0, Lo/cancelSentTransactions$asInterface;

    invoke-direct {v0}, Lo/cancelSentTransactions$asInterface;-><init>()V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final onPostMessage(Lo/loadNestedQuery;)V
    .locals 1

    .line 612
    new-instance v0, Lo/cancelSentTransactions$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$ICustomTabsCallback;-><init>(Lo/loadNestedQuery;)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final onPostMessage(Lo/pruneTreeRecursive;)V
    .locals 1

    .line 552
    new-instance v0, Lo/cancelSentTransactions$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$onMessageChannelReady;-><init>(Lo/pruneTreeRecursive;)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method

.method public final onPostMessage(Lo/rotateRight;)V
    .locals 7

    .line 296
    iput-object p1, p0, Lo/cancelSentTransactions;->validateRelationship:Lo/rotateRight;

    .line 298
    invoke-virtual {p0}, Lo/cancelSentTransactions;->onMessageChannelReady()Lo/emptyMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/emptyMap;)V

    return-void

    .line 312
    :cond_0
    iget-object p1, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter p1

    .line 313
    :try_start_0
    iget-object v0, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    new-instance v1, Lo/cancelSentTransactions$warmup;

    invoke-direct {v1, p0}, Lo/cancelSentTransactions$warmup;-><init>(Lo/cancelSentTransactions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x0

    .line 316
    invoke-direct {p0, p1}, Lo/cancelSentTransactions;->onPostMessage(I)Lo/cancelSentTransactions$validateRelationship;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    .line 319
    iget-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub:Lo/getSslCacheDirectory$ICustomTabsCallback;

    invoke-interface {v1}, Lo/getSslCacheDirectory$ICustomTabsCallback;->extraCallback()Lo/getSslCacheDirectory;

    move-result-object v1

    iput-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    .line 320
    sget-object v1, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    iget-object v3, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 321
    iput-boolean v2, p0, Lo/cancelSentTransactions;->newSession:Z

    .line 322
    sget-object v1, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    iput-object v1, p0, Lo/cancelSentTransactions;->getInterfaceDescriptor:Lo/sendUnlisten;

    const/4 v1, 0x0

    .line 326
    iget-object v3, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    :try_start_1
    iget-object v4, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    invoke-virtual {v4, v0}, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;

    move-result-object v4

    iput-object v4, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 328
    iget-object v4, p0, Lo/cancelSentTransactions;->onPostMessage:Lo/cancelSentTransactions$ICustomTabsService$Stub;

    .line 10705
    iget-object v5, v4, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-nez v5, :cond_2

    iget v5, v4, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    iget-object v6, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    iget v6, v6, Lo/getSslCacheDirectory;->onPostMessage:I

    if-ge v5, v6, :cond_2

    iget-boolean v4, v4, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 328
    iget-object v4, p0, Lo/cancelSentTransactions;->extraCommand:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lo/cancelSentTransactions;->extraCommand:Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    .line 11294
    iget-object v5, v4, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v4, v4, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:I

    if-le v5, v4, :cond_3

    const/4 p1, 0x1

    :cond_3
    if-eqz p1, :cond_5

    .line 330
    :cond_4
    new-instance v1, Lo/cancelSentTransactions$requestPostMessageChannel;

    iget-object p1, p0, Lo/cancelSentTransactions;->ICustomTabsService:Ljava/lang/Object;

    invoke-direct {v1, p1}, Lo/cancelSentTransactions$requestPostMessageChannel;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lo/cancelSentTransactions;->ICustomTabsService$Stub:Lo/cancelSentTransactions$requestPostMessageChannel;

    .line 332
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_7

    .line 335
    iget-object p1, p0, Lo/cancelSentTransactions;->asBinder:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lo/cancelSentTransactions$extraCommand;

    invoke-direct {v2, p0, v1}, Lo/cancelSentTransactions$extraCommand;-><init>(Lo/cancelSentTransactions;Lo/cancelSentTransactions$requestPostMessageChannel;)V

    iget-object v3, p0, Lo/cancelSentTransactions;->ICustomTabsCallback$Stub$Proxy:Lo/getSslCacheDirectory;

    iget-wide v3, v3, Lo/getSslCacheDirectory;->onNavigationEvent:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 336
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 11381
    iget-object v2, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v2

    .line 11382
    :try_start_2
    iget-boolean v3, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->extraCallback:Z

    if-nez v3, :cond_6

    .line 11383
    iput-object p1, v1, Lo/cancelSentTransactions$requestPostMessageChannel;->onMessageChannelReady:Ljava/util/concurrent/Future;

    .line 11385
    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :catchall_1
    move-exception p1

    .line 332
    monitor-exit v3

    throw p1

    .line 343
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lo/cancelSentTransactions;->onNavigationEvent(Lo/cancelSentTransactions$validateRelationship;)V

    return-void

    .line 10511
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hedgingPolicy has been initialized unexpectedly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception v0

    .line 314
    monitor-exit p1

    throw v0
.end method

.method public final onPostMessage(Lo/saveNode;)V
    .locals 1

    .line 648
    new-instance v0, Lo/cancelSentTransactions$extraCallback;

    invoke-direct {v0, p1}, Lo/cancelSentTransactions$extraCallback;-><init>(Lo/saveNode;)V

    invoke-virtual {p0, v0}, Lo/cancelSentTransactions;->onMessageChannelReady(Lo/cancelSentTransactions$newSession;)V

    return-void
.end method
