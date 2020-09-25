.class public final Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$User$Builder$extraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteStore"

.field private static final MAX_PENDING_WRITES:I = 0xa


# instance fields
.field private final connectivityMonitor:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

.field private final datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

.field private final listenTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/setBatteryVelocity;",
            ">;"
        }
    .end annotation
.end field

.field private final localStore:Lo/setCores;

.field private networkEnabled:Z

.field private final onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

.field private final remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

.field private watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

.field private final watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

.field private final writePipeline:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final writeStream:Lo/CrashlyticsReport$Session$User;


# direct methods
.method public constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;Lo/setCores;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->networkEnabled:Z

    .line 154
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    .line 155
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->localStore:Lo/setCores;

    .line 156
    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    .line 157
    iput-object p5, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->connectivityMonitor:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    .line 159
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    .line 160
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    .line 162
    new-instance p2, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    .line 163
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Device;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;

    move-result-object p1

    invoke-direct {p2, p4, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder$ICustomTabsCallback;)V

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    .line 166
    new-instance p1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;

    invoke-direct {p1, p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$5;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V

    .line 167
    invoke-virtual {p3, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->createWatchStream(Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;)Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    .line 185
    new-instance p1, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;

    invoke-direct {p1, p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$2;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V

    .line 186
    invoke-virtual {p3, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->createWriteStream(Lo/CrashlyticsReport$Session$User$onPostMessage;)Lo/CrashlyticsReport$Session$User;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    .line 210
    invoke-static {p0, p4}, Lo/CrashlyticsReport$Session$Event$Log$Builder;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/CrashlyticsReport$Type;)Lo/from;

    move-result-object p1

    invoke-interface {p5, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;->addCallback(Lo/from;)V

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWatchStreamOpen()V

    return-void
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/withNdkPayload;Lo/CrashlyticsReport$Session$OperatingSystem;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWatchChange(Lo/withNdkPayload;Lo/CrashlyticsReport$Session$OperatingSystem;)V

    return-void
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/emptyMap;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWatchStreamClose(Lo/emptyMap;)V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)Lo/CrashlyticsReport$Session$User;
    .locals 0

    .line 53
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    return-object p0
.end method

.method static synthetic access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWriteStreamHandshakeComplete()V

    return-void
.end method

.method static synthetic access$500(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/withNdkPayload;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWriteStreamMutationResults(Lo/withNdkPayload;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/emptyMap;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWriteStreamClose(Lo/emptyMap;)V

    return-void
.end method

.method private addToWritePipeline(Lo/CrashlyticsReport$Builder;)V
    .locals 3

    .line 610
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canAddToWritePipeline()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addToWritePipeline called when pipeline is full"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$User;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$User;->writeMutations(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private canAddToWritePipeline()Z
    .locals 2

    .line 602
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cleanUpWatchStreamState()V
    .locals 1

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    return-void
.end method

.method private disableNetworkInternal()V
    .locals 3

    .line 268
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->stop()V

    .line 269
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->stop()V

    .line 271
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "RemoteStore"

    const-string v2, "Stopping write stream with %d pending writes"

    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 276
    :cond_0
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->cleanUpWatchStreamState()V

    return-void
.end method

.method private handleWatchChange(Lo/withNdkPayload;Lo/CrashlyticsReport$Session$OperatingSystem;)V
    .locals 5

    .line 433
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v1, Lo/setGeneratorType;->ONLINE:Lo/setGeneratorType;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    .line 435
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WatchStream and WatchStreamAggregator should both be non-null"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 440
    instance-of v0, p2, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;

    if-eqz v0, :cond_1

    move-object v2, p2

    check-cast v2, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 443
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getChangeType()Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    move-result-object v3

    sget-object v4, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getCause()Lo/emptyMap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 446
    invoke-direct {p0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->processTargetError(Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;)V

    return-void

    .line 448
    :cond_2
    instance-of v2, p2, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;

    if-eqz v2, :cond_3

    .line 449
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    check-cast p2, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;

    invoke-virtual {v0, p2}, Lo/CrashlyticsReport$Session$User$Builder;->handleDocumentChange(Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;)V

    goto :goto_2

    .line 450
    :cond_3
    instance-of v2, p2, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;

    if-eqz v2, :cond_4

    .line 451
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    check-cast p2, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;

    invoke-virtual {v0, p2}, Lo/CrashlyticsReport$Session$User$Builder;->handleExistenceFilter(Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;)V

    goto :goto_2

    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Expected watchChange to be an instance of WatchTargetChange"

    .line 453
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    check-cast p2, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;

    invoke-virtual {v0, p2}, Lo/CrashlyticsReport$Session$User$Builder;->handleTargetChange(Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;)V

    .line 459
    :goto_2
    sget-object p2, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 460
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->localStore:Lo/setCores;

    invoke-virtual {p2}, Lo/setCores;->getLastRemoteSnapshotVersion()Lo/withNdkPayload;

    move-result-object p2

    .line 461
    invoke-virtual {p1, p2}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result p2

    if-ltz p2, :cond_5

    .line 464
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->raiseWatchSnapshot(Lo/withNdkPayload;)V

    :cond_5
    return-void
.end method

.method private handleWatchStreamClose(Lo/emptyMap;)V
    .locals 3

    .line 471
    sget-object v0, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWatchStream()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Watch stream was stopped gracefully while still needed."

    .line 473
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :cond_0
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->cleanUpWatchStreamState()V

    .line 480
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->handleWatchStreamFailure(Lo/emptyMap;)V

    .line 483
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->startWatchStream()V

    return-void

    .line 487
    :cond_1
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v0, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    return-void
.end method

.method private handleWatchStreamOpen()V
    .locals 2

    .line 426
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setBatteryVelocity;

    .line 427
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->sendWatchRequest(Lo/setBatteryVelocity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleWriteError(Lo/emptyMap;)V
    .locals 4

    .line 3516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Handling write error with status OK."

    .line 703
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 705
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isPermanentWriteError(Lo/emptyMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Builder;

    .line 712
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Application;->inhibitBackoff()V

    .line 714
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    invoke-interface {v1, v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;->handleRejectedWrite(ILo/emptyMap;)V

    .line 717
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->fillWritePipeline()V

    :cond_1
    return-void
.end method

.method private handleWriteHandshakeError(Lo/emptyMap;)V
    .locals 5

    .line 2516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Handling write error with status OK."

    .line 686
    invoke-static {v0, v4, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 690
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isPermanentError(Lo/emptyMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$User;->getLastStreamToken()Lo/SessionProtobufHelper;

    move-result-object v0

    invoke-static {v0}, Lo/eventFromJson;->toDebugString(Lo/SessionProtobufHelper;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "RemoteStore"

    const-string v0, "RemoteStore error before completed handshake; resetting stream token %s: %s"

    .line 692
    invoke-static {p1, v0, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    sget-object v0, Lo/CrashlyticsReport$Session$User;->EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReport$Session$User;->setLastStreamToken(Lo/SessionProtobufHelper;)V

    .line 698
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->localStore:Lo/setCores;

    sget-object v0, Lo/CrashlyticsReport$Session$User;->EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;

    invoke-virtual {p1, v0}, Lo/setCores;->setLastStreamToken(Lo/SessionProtobufHelper;)V

    :cond_1
    return-void
.end method

.method private handleWriteStreamClose(Lo/emptyMap;)V
    .locals 5

    .line 658
    sget-object v0, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWriteStream()Z

    move-result v0

    xor-int/2addr v0, v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Write stream was stopped gracefully while still needed."

    .line 660
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1516
    :cond_0
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v3, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 666
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$User;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWriteError(Lo/emptyMap;)V

    goto :goto_1

    .line 674
    :cond_2
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->handleWriteHandshakeError(Lo/emptyMap;)V

    .line 680
    :cond_3
    :goto_1
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWriteStream()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 681
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->startWriteStream()V

    :cond_4
    return-void
.end method

.method private handleWriteStreamHandshakeComplete()V
    .locals 3

    .line 632
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->localStore:Lo/setCores;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$User;->getLastStreamToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setCores;->setLastStreamToken(Lo/SessionProtobufHelper;)V

    .line 635
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$Builder;

    .line 636
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Builder;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$User;->writeMutations(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleWriteStreamMutationResults(Lo/withNdkPayload;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/withNdkPayload;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload$Builder;",
            ">;)V"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Builder;

    .line 649
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    .line 650
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$User;->getLastStreamToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lo/CrashlyticsReport$Architecture;->create(Lo/CrashlyticsReport$Builder;Lo/withNdkPayload;Ljava/util/List;Lo/SessionProtobufHelper;)Lo/CrashlyticsReport$Architecture;

    move-result-object p1

    .line 651
    iget-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    invoke-interface {p2, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;->handleSuccessfulWrite(Lo/CrashlyticsReport$Architecture;)V

    .line 654
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->fillWritePipeline()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteStore"

    const-string v2, "Restarting streams for network reachability change."

    .line 222
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->restartNetwork()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;)V
    .locals 0

    .line 212
    invoke-static {p0}, Lo/setEndIconOnClickListener;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo/CrashlyticsReport$Type;->enqueueAndForget(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processTargetError(Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;)V
    .locals 4

    .line 556
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getCause()Lo/emptyMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Processing target error without a cause"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 559
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lo/CrashlyticsReport$Session$User$Builder;->removeTarget(I)V

    .line 562
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getCause()Lo/emptyMap;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;->handleRejectedListen(ILo/emptyMap;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private raiseWatchSnapshot(Lo/withNdkPayload;)V
    .locals 9

    .line 502
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Can\'t raise event for unknown SnapshotVersion"

    .line 502
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->createRemoteEvent(Lo/withNdkPayload;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getTargetChanges()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 510
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    .line 511
    invoke-virtual {v5}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v6

    .line 1235
    invoke-virtual {v6}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_0

    .line 512
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 513
    iget-object v6, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setBatteryVelocity;

    if-eqz v6, :cond_0

    .line 516
    iget-object v7, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    .line 517
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v5

    invoke-virtual {v6, v5, p1}, Lo/setBatteryVelocity;->withResumeToken(Lo/SessionProtobufHelper;Lo/withNdkPayload;)Lo/setBatteryVelocity;

    move-result-object v5

    .line 516
    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->getTargetMismatches()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 525
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setBatteryVelocity;

    if-eqz v1, :cond_3

    .line 529
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    .line 530
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 531
    invoke-virtual {v1}, Lo/setBatteryVelocity;->getSnapshotVersion()Lo/withNdkPayload;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lo/setBatteryVelocity;->withResumeToken(Lo/SessionProtobufHelper;Lo/withNdkPayload;)Lo/setBatteryVelocity;

    move-result-object v5

    .line 529
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-direct {p0, v4}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->sendUnwatchRequest(I)V

    .line 541
    new-instance v8, Lo/setBatteryVelocity;

    .line 543
    invoke-virtual {v1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v3

    .line 545
    invoke-virtual {v1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v5

    sget-object v7, Lo/getBinaries;->EXISTENCE_FILTER_MISMATCH:Lo/getBinaries;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lo/setBatteryVelocity;-><init>(Lo/setClsId;IJLo/getBinaries;)V

    .line 547
    invoke-direct {p0, v8}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->sendWatchRequest(Lo/setBatteryVelocity;)V

    goto :goto_2

    .line 552
    :cond_4
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    invoke-interface {p1, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;->handleRemoteEvent(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;)V

    return-void
.end method

.method private restartNetwork()V
    .locals 2

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->networkEnabled:Z

    .line 281
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->disableNetworkInternal()V

    .line 282
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v1, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    .line 283
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->inhibitBackoff()V

    .line 284
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->inhibitBackoff()V

    .line 285
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->enableNetwork()V

    return-void
.end method

.method private sendUnwatchRequest(I)V
    .locals 1

    .line 387
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->recordPendingTargetRequest(I)V

    .line 388
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->unwatchTarget(I)V

    return-void
.end method

.method private sendWatchRequest(Lo/setBatteryVelocity;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->recordPendingTargetRequest(I)V

    .line 353
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->watchQuery(Lo/setBatteryVelocity;)V

    return-void
.end method

.method private shouldStartWatchStream()Z
    .locals 1

    .line 404
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldStartWriteStream()Z
    .locals 1

    .line 396
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startWatchStream()V
    .locals 3

    .line 416
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWatchStream()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startWatchStream() called when shouldStartWatchStream() is false."

    .line 415
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    new-instance v0, Lo/CrashlyticsReport$Session$User$Builder;

    invoke-direct {v0, p0}, Lo/CrashlyticsReport$Session$User$Builder;-><init>(Lo/CrashlyticsReport$Session$User$Builder$extraCallback;)V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchChangeAggregator:Lo/CrashlyticsReport$Session$User$Builder;

    .line 419
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->start()V

    .line 421
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->handleWatchStreamStart()V

    return-void
.end method

.method private startWriteStream()V
    .locals 3

    .line 621
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWriteStream()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startWriteStream() called when shouldStartWriteStream() is false."

    .line 620
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->start()V

    return-void
.end method


# virtual methods
.method public final canUseNetwork()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->networkEnabled:Z

    return v0
.end method

.method public final createTransaction()Lo/getClsId;
    .locals 2

    .line 722
    new-instance v0, Lo/getClsId;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    invoke-direct {v0, v1}, Lo/getClsId;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;)V

    return-object v0
.end method

.method public final disableNetwork()V
    .locals 2

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->networkEnabled:Z

    .line 261
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->disableNetworkInternal()V

    .line 264
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v1, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    return-void
.end method

.method public final enableNetwork()V
    .locals 2

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->networkEnabled:Z

    .line 233
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->localStore:Lo/setCores;

    invoke-virtual {v1}, Lo/setCores;->getLastStreamToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$User;->setLastStreamToken(Lo/SessionProtobufHelper;)V

    .line 236
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->startWatchStream()V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v1, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    .line 243
    :goto_0
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->fillWritePipeline()V

    :cond_1
    return-void
.end method

.method public final fillWritePipeline()V
    .locals 2

    .line 579
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    .line 580
    :goto_0
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canAddToWritePipeline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->localStore:Lo/setCores;

    invoke-virtual {v1, v0}, Lo/setCores;->getNextMutationBatch(I)Lo/CrashlyticsReport$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 583
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writePipeline:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->writeStream:Lo/CrashlyticsReport$Session$User;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$User;->markIdle()V

    goto :goto_1

    .line 588
    :cond_1
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->addToWritePipeline(Lo/CrashlyticsReport$Builder;)V

    .line 589
    invoke-virtual {v0}, Lo/CrashlyticsReport$Builder;->getBatchId()I

    move-result v0

    goto :goto_0

    .line 592
    :cond_2
    :goto_1
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWriteStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->startWriteStream()V

    :cond_3
    return-void
.end method

.method final forceEnableNetwork()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->enableNetwork()V

    .line 255
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v1, Lo/setGeneratorType;->ONLINE:Lo/setGeneratorType;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    return-void
.end method

.method public final getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->remoteStoreCallback:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$ICustomTabsCallback;->getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    return-object p1
.end method

.method public final getTargetDataForTarget(I)Lo/setBatteryVelocity;
    .locals 1

    .line 733
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setBatteryVelocity;

    return-object p1
.end method

.method public final handleCredentialChange()V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteStore"

    const-string v2, "Restarting streams for new credential."

    .line 324
    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->restartNetwork()V

    :cond_0
    return-void
.end method

.method public final listen(Lo/setBatteryVelocity;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->shouldStartWatchStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->startWatchStream()V

    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->sendWatchRequest(Lo/setBatteryVelocity;)V

    :cond_2
    return-void
.end method

.method public final shutdown()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RemoteStore"

    const-string v3, "Shutting down"

    .line 302
    invoke-static {v2, v3, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->connectivityMonitor:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;

    invoke-interface {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;->shutdown()V

    .line 304
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->networkEnabled:Z

    .line 305
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->disableNetworkInternal()V

    .line 306
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->datastore:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->shutdown()V

    .line 309
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v1, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    return-void
.end method

.method public final start()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->enableNetwork()V

    return-void
.end method

.method public final stopListening(I)V
    .locals 4

    .line 365
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setBatteryVelocity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "stopListening called on target no currently watched: %d"

    .line 366
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->sendUnwatchRequest(I)V

    .line 374
    :cond_1
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->listenTargets:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 376
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->watchStream:Lo/CrashlyticsReport$Session$OperatingSystem$Builder;

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->markIdle()V

    return-void

    .line 377
    :cond_2
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->canUseNetwork()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 381
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->onlineStateTracker:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    sget-object v0, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    invoke-virtual {p1, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->updateState(Lo/setGeneratorType;)V

    :cond_3
    return-void
.end method
