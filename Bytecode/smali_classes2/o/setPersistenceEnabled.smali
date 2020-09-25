.class public final Lo/setPersistenceEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPersistenceEnabled$onMessageChannelReady;,
        Lo/setPersistenceEnabled$onPostMessage;,
        Lo/setPersistenceEnabled$extraCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/util/concurrent/ExecutorService;

.field private static synthetic IPostMessageService$Stub:Z


# instance fields
.field public final ICustomTabsCallback:Lo/toException;

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

.field private ICustomTabsService:Z

.field private final ICustomTabsService$Stub:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final asBinder:Lo/isZombied$onPostMessage;

.field public final asInterface:Lo/getReference;

.field final extraCallback:Z

.field private extraCommand:Lo/validateEqualToCall;

.field private final getInterfaceDescriptor:Ljava/lang/String;

.field private mayLaunchUrl:Z

.field private newSession:I

.field onMessageChannelReady:J

.field public onNavigationEvent:Lo/isZombied$onPostMessage;

.field onPostMessage:J

.field private final onRelationshipValidationResult:Lo/setPersistenceEnabled$onMessageChannelReady;

.field private final onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/purgeOutstandingWrites;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:Lo/setPersistenceEnabled$onPostMessage;

.field private requestPostMessageChannel:Ljava/net/Socket;

.field private final updateVisuals:Lo/getNode;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 55
    const-class v0, Lo/setPersistenceEnabled;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/setPersistenceEnabled;->IPostMessageService$Stub:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp FramedConnection"

    .line 71
    invoke-static {v1}, Lo/createForTests;->onPostMessage(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lo/setPersistenceEnabled$extraCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lo/setPersistenceEnabled;->onPostMessage:J

    .line 115
    new-instance v0, Lo/isZombied$onPostMessage;

    invoke-direct {v0}, Lo/isZombied$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    .line 121
    new-instance v0, Lo/isZombied$onPostMessage;

    invoke-direct {v0}, Lo/isZombied$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lo/setPersistenceEnabled;->mayLaunchUrl:Z

    .line 833
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsService$Stub:Ljava/util/Set;

    .line 1535
    iget-object v1, p1, Lo/setPersistenceEnabled$extraCallback;->onTransact:Lo/toException;

    .line 132
    iput-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    .line 2535
    iget-object v1, p1, Lo/setPersistenceEnabled$extraCallback;->asBinder:Lo/getNode;

    .line 133
    iput-object v1, p0, Lo/setPersistenceEnabled;->updateVisuals:Lo/getNode;

    .line 3535
    iget-boolean v1, p1, Lo/setPersistenceEnabled$extraCallback;->asInterface:Z

    .line 134
    iput-boolean v1, p0, Lo/setPersistenceEnabled;->extraCallback:Z

    .line 4535
    iget-object v1, p1, Lo/setPersistenceEnabled$extraCallback;->onNavigationEvent:Lo/setPersistenceEnabled$onMessageChannelReady;

    .line 135
    iput-object v1, p0, Lo/setPersistenceEnabled;->onRelationshipValidationResult:Lo/setPersistenceEnabled$onMessageChannelReady;

    .line 5535
    iget-boolean v1, p1, Lo/setPersistenceEnabled$extraCallback;->asInterface:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 137
    :goto_0
    iput v1, p0, Lo/setPersistenceEnabled;->warmup:I

    .line 6535
    iget-boolean v1, p1, Lo/setPersistenceEnabled$extraCallback;->asInterface:Z

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    sget-object v4, Lo/toException;->onPostMessage:Lo/toException;

    if-ne v1, v4, :cond_1

    .line 139
    iget v1, p0, Lo/setPersistenceEnabled;->warmup:I

    add-int/2addr v1, v3

    iput v1, p0, Lo/setPersistenceEnabled;->warmup:I

    .line 8535
    :cond_1
    iget-boolean v1, p1, Lo/setPersistenceEnabled$extraCallback;->asInterface:Z

    const/4 v3, 0x7

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v3, v0, v4}, Lo/isZombied$onPostMessage;->onPostMessage(III)Lo/isZombied$onPostMessage;

    .line 9535
    :cond_2
    iget-object v1, p1, Lo/setPersistenceEnabled$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    sget-object v4, Lo/toException;->onPostMessage:Lo/toException;

    if-ne v1, v4, :cond_3

    .line 155
    new-instance v1, Lo/value;

    invoke-direct {v1}, Lo/value;-><init>()V

    iput-object v1, p0, Lo/setPersistenceEnabled;->extraCommand:Lo/validateEqualToCall;

    .line 157
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    aput-object v4, v2, v0

    const-string v4, "OkHttp %s Push Observer"

    .line 159
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/createForTests;->onPostMessage(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

    .line 161
    iget-object v1, p0, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    const v2, 0xffff

    invoke-virtual {v1, v3, v0, v2}, Lo/isZombied$onPostMessage;->onPostMessage(III)Lo/isZombied$onPostMessage;

    .line 162
    iget-object v1, p0, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    const/4 v2, 0x5

    const/16 v4, 0x4000

    invoke-virtual {v1, v2, v0, v4}, Lo/isZombied$onPostMessage;->onPostMessage(III)Lo/isZombied$onPostMessage;

    goto :goto_1

    .line 163
    :cond_3
    iget-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    sget-object v2, Lo/toException;->ICustomTabsCallback:Lo/toException;

    if-ne v1, v2, :cond_5

    .line 164
    new-instance v1, Lo/ensureRepo;

    invoke-direct {v1}, Lo/ensureRepo;-><init>()V

    iput-object v1, p0, Lo/setPersistenceEnabled;->extraCommand:Lo/validateEqualToCall;

    const/4 v1, 0x0

    .line 165
    iput-object v1, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

    .line 169
    :goto_1
    iget-object v1, p0, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    .line 10198
    iget v2, v1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    iget-object v1, v1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v1, v1, v3

    goto :goto_2

    :cond_4
    const/high16 v1, 0x10000

    :goto_2
    int-to-long v1, v1

    .line 169
    iput-wide v1, p0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    .line 10535
    iget-object v1, p1, Lo/setPersistenceEnabled$extraCallback;->ICustomTabsCallback:Ljava/net/Socket;

    .line 170
    iput-object v1, p0, Lo/setPersistenceEnabled;->requestPostMessageChannel:Ljava/net/Socket;

    .line 171
    iget-object v1, p0, Lo/setPersistenceEnabled;->extraCommand:Lo/validateEqualToCall;

    .line 11535
    iget-object v2, p1, Lo/setPersistenceEnabled$extraCallback;->onPostMessage:Lo/filtersNodes;

    .line 171
    iget-boolean v3, p0, Lo/setPersistenceEnabled;->extraCallback:Z

    invoke-interface {v1, v2, v3}, Lo/validateEqualToCall;->onPostMessage(Lo/filtersNodes;Z)Lo/getReference;

    move-result-object v1

    iput-object v1, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    .line 173
    new-instance v1, Lo/setPersistenceEnabled$onPostMessage;

    iget-object v2, p0, Lo/setPersistenceEnabled;->extraCommand:Lo/validateEqualToCall;

    .line 12535
    iget-object p1, p1, Lo/setPersistenceEnabled$extraCallback;->extraCallback:Lo/fullLimitUpdateChild;

    .line 173
    iget-boolean v3, p0, Lo/setPersistenceEnabled;->extraCallback:Z

    invoke-interface {v2, p1, v3}, Lo/validateEqualToCall;->onPostMessage(Lo/fullLimitUpdateChild;Z)Lo/getDefaultConfig;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lo/setPersistenceEnabled$onPostMessage;-><init>(Lo/setPersistenceEnabled;Lo/getDefaultConfig;B)V

    iput-object v1, p0, Lo/setPersistenceEnabled;->postMessage:Lo/setPersistenceEnabled$onPostMessage;

    .line 174
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lo/setPersistenceEnabled;->postMessage:Lo/setPersistenceEnabled$onPostMessage;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 167
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lo/setPersistenceEnabled$extraCallback;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lo/setPersistenceEnabled;-><init>(Lo/setPersistenceEnabled$extraCallback;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setPersistenceEnabled;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    return-object p0
.end method

.method private ICustomTabsCallback(Lo/getReferenceFromUrl;Lo/getReferenceFromUrl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    sget-boolean v0, Lo/setPersistenceEnabled;->IPostMessageService$Stub:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 457
    :try_start_0
    invoke-direct {p0, p1}, Lo/setPersistenceEnabled;->onPostMessage(Lo/getReferenceFromUrl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 464
    :goto_1
    monitor-enter p0

    .line 465
    :try_start_1
    iget-object v1, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    iget-object v0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lo/purgeOutstandingWrites;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/purgeOutstandingWrites;

    .line 467
    iget-object v1, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 474
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 477
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 13219
    :try_start_2
    invoke-virtual {v3, p2}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13222
    iget-object v4, v3, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v3, v3, Lo/purgeOutstandingWrites;->extraCallback:I

    .line 13360
    iget-object v4, v4, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v4, v3, p2}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    if-eqz p1, :cond_3

    move-object p1, v3

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 494
    :cond_4
    :try_start_3
    iget-object p2, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {p2}, Lo/getReference;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    .line 501
    :cond_5
    :goto_4
    :try_start_4
    iget-object p2, p0, Lo/setPersistenceEnabled;->requestPostMessageChannel:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_5
    if-nez p1, :cond_6

    return-void

    .line 506
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 474
    monitor-exit p0

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/setPersistenceEnabled;ILjava/util/List;Z)V
    .locals 9

    .line 16861
    iget-object v0, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lo/setPersistenceEnabled$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lo/setPersistenceEnabled$1;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/setPersistenceEnabled;)Lo/setPersistenceEnabled$onMessageChannelReady;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/setPersistenceEnabled;->onRelationshipValidationResult:Lo/setPersistenceEnabled$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic asBinder(Lo/setPersistenceEnabled;)Lo/getNode;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/setPersistenceEnabled;->updateVisuals:Lo/getNode;

    return-object p0
.end method

.method static synthetic asInterface(Lo/setPersistenceEnabled;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lo/setPersistenceEnabled;->ICustomTabsService:Z

    return v0
.end method

.method static synthetic extraCallback(Lo/setPersistenceEnabled;I)I
    .locals 0

    .line 55
    iput p1, p0, Lo/setPersistenceEnabled;->newSession:I

    return p1
.end method

.method static synthetic extraCallback()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 55
    sget-object v0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/setPersistenceEnabled;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lo/setPersistenceEnabled;->ICustomTabsService:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/setPersistenceEnabled;)I
    .locals 0

    .line 55
    iget p0, p0, Lo/setPersistenceEnabled;->newSession:I

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/setPersistenceEnabled;I)Lo/zombify$onPostMessage;
    .locals 0

    .line 55
    invoke-direct {p0}, Lo/setPersistenceEnabled;->onPostMessage()Lo/zombify$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/setPersistenceEnabled;II)V
    .locals 10

    .line 17396
    sget-object v0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lo/setPersistenceEnabled$5;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 17397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lo/setPersistenceEnabled$5;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ZIILo/zombify$onPostMessage;)V

    .line 17396
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setPersistenceEnabled;Lo/getReferenceFromUrl;Lo/getReferenceFromUrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/getReferenceFromUrl;Lo/getReferenceFromUrl;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setPersistenceEnabled;ZIILo/zombify$onPostMessage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13408
    iget-object v0, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    monitor-enter v0

    if-eqz p4, :cond_1

    .line 14033
    :try_start_0
    iget-wide v1, p4, Lo/zombify$onPostMessage;->onPostMessage:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 14034
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p4, Lo/zombify$onPostMessage;->onPostMessage:J

    goto :goto_0

    .line 14033
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 13411
    :cond_1
    :goto_0
    iget-object p0, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {p0, p1, p2, p3}, Lo/getReference;->onPostMessage(ZII)V

    .line 13412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic onNavigationEvent(Lo/setPersistenceEnabled;)I
    .locals 0

    .line 55
    iget p0, p0, Lo/setPersistenceEnabled;->warmup:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/setPersistenceEnabled;ILjava/util/List;)V
    .locals 8

    .line 17836
    monitor-enter p0

    .line 17837
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled;->ICustomTabsService$Stub:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17838
    sget-object p2, Lo/getReferenceFromUrl;->onNavigationEvent:Lo/getReferenceFromUrl;

    invoke-virtual {p0, p1, p2}, Lo/setPersistenceEnabled;->onMessageChannelReady(ILo/getReferenceFromUrl;)V

    .line 17839
    monitor-exit p0

    return-void

    .line 17841
    :cond_0
    iget-object v0, p0, Lo/setPersistenceEnabled;->ICustomTabsService$Stub:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17842
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17843
    iget-object v0, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lo/setPersistenceEnabled$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Request[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/setPersistenceEnabled$2;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 17842
    monitor-exit p0

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/setPersistenceEnabled;ILo/fullLimitUpdateChild;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14883
    new-instance v5, Lo/updatePriority;

    invoke-direct {v5}, Lo/updatePriority;-><init>()V

    int-to-long v0, p3

    .line 14884
    invoke-interface {p2, v0, v1}, Lo/fullLimitUpdateChild;->onPostMessage(J)V

    .line 14885
    invoke-interface {p2, v5, v0, v1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    .line 15067
    iget-wide v2, v5, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 14887
    iget-object p2, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lo/setPersistenceEnabled$7;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lo/setPersistenceEnabled$7;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILo/updatePriority;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 14886
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16067
    iget-wide v0, v5, Lo/updatePriority;->ICustomTabsCallback:J

    .line 14886
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onPostMessage(Lo/setPersistenceEnabled;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized onPostMessage()Lo/zombify$onPostMessage;
    .locals 1

    monitor-enter p0

    .line 416
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method private onPostMessage(Lo/getReferenceFromUrl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    monitor-enter v0

    .line 432
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    :try_start_1
    iget-boolean v1, p0, Lo/setPersistenceEnabled;->ICustomTabsService:Z

    if-eqz v1, :cond_0

    .line 434
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 436
    :try_start_3
    iput-boolean v1, p0, Lo/setPersistenceEnabled;->ICustomTabsService:Z

    .line 437
    iget v1, p0, Lo/setPersistenceEnabled;->newSession:I

    .line 438
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    :try_start_4
    iget-object v2, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    sget-object v3, Lo/createForTests;->onPostMessage:[B

    invoke-interface {v2, v1, p1, v3}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;[B)V

    .line 441
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 438
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 441
    monitor-exit v0

    throw p1
.end method

.method static synthetic onPostMessage(Lo/setPersistenceEnabled;ILo/getReferenceFromUrl;)V
    .locals 8

    .line 16904
    iget-object v0, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lo/setPersistenceEnabled$9;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/setPersistenceEnabled$9;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILo/getReferenceFromUrl;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/setPersistenceEnabled;I)Z
    .locals 1

    .line 14829
    iget-object p0, p0, Lo/setPersistenceEnabled;->ICustomTabsCallback:Lo/toException;

    sget-object v0, Lo/toException;->onPostMessage:Lo/toException;

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/setPersistenceEnabled;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lo/setPersistenceEnabled;->mayLaunchUrl:Z

    return v0
.end method

.method static synthetic onTransact(Lo/setPersistenceEnabled;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lo/setPersistenceEnabled;->mayLaunchUrl:Z

    return p0
.end method

.method static synthetic warmup(Lo/setPersistenceEnabled;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lo/setPersistenceEnabled;->ICustomTabsService$Stub:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()I
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    .line 13169
    iget v1, v0, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    const/4 v1, 0x4

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const v0, 0x7fffffff

    .line 213
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    sget-object v0, Lo/getReferenceFromUrl;->extraCallback:Lo/getReferenceFromUrl;

    sget-object v1, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;

    invoke-direct {p0, v0, v1}, Lo/setPersistenceEnabled;->ICustomTabsCallback(Lo/getReferenceFromUrl;Lo/getReferenceFromUrl;)V

    return-void
.end method

.method final declared-synchronized extraCallback(I)Lo/purgeOutstandingWrites;
    .locals 1

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/purgeOutstandingWrites;

    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onMessageChannelReady(I)Lo/purgeOutstandingWrites;
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/purgeOutstandingWrites;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/util/List;ZZ)Lo/purgeOutstandingWrites;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;ZZ)",
            "Lo/purgeOutstandingWrites;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 p3, p2, 0x1

    .line 259
    iget-object v6, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    monitor-enter v6

    .line 260
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    iget-boolean v0, p0, Lo/setPersistenceEnabled;->ICustomTabsService:Z

    if-nez v0, :cond_2

    .line 264
    iget v7, p0, Lo/setPersistenceEnabled;->warmup:I

    .line 265
    iget v0, p0, Lo/setPersistenceEnabled;->warmup:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/setPersistenceEnabled;->warmup:I

    .line 266
    new-instance v8, Lo/purgeOutstandingWrites;

    const/4 v4, 0x0

    move-object v0, v8

    move v1, v7

    move-object v2, p0

    move v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/purgeOutstandingWrites;-><init>(ILo/setPersistenceEnabled;ZZLjava/util/List;)V

    .line 267
    invoke-virtual {v8}, Lo/purgeOutstandingWrites;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    iget-object v0, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p3

    move v3, v7

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lo/getReference;->ICustomTabsCallback(ZZIILjava/util/List;)V

    .line 280
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_1

    .line 283
    iget-object p1, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {p1}, Lo/getReference;->ICustomTabsCallback()V

    :cond_1
    return-object v8

    .line 262
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 271
    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 280
    monitor-exit v6

    throw p1
.end method

.method final onMessageChannelReady(ILo/getReferenceFromUrl;)V
    .locals 8

    .line 349
    sget-object v0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lo/setPersistenceEnabled$3;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/setPersistenceEnabled$3;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;ILo/getReferenceFromUrl;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final onNavigationEvent(IZLo/updatePriority;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 309
    iget-object p4, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {p4, p2, p1, p3, v0}, Lo/getReference;->extraCallback(ZILo/updatePriority;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 315
    monitor-enter p0

    .line 317
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 320
    iget-object v3, p0, Lo/setPersistenceEnabled;->onTransact:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 321
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 330
    iget-object v3, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v3}, Lo/getReference;->onMessageChannelReady()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 331
    iget-wide v4, p0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lo/setPersistenceEnabled;->onMessageChannelReady:J

    .line 332
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 335
    iget-object v4, p0, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4, v5, p1, p3, v3}, Lo/getReference;->extraCallback(ZILo/updatePriority;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 326
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method final onPostMessage(IJ)V
    .locals 9

    .line 364
    sget-object v0, Lo/setPersistenceEnabled;->ICustomTabsCallback$Stub:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lo/setPersistenceEnabled$4;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lo/setPersistenceEnabled;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lo/setPersistenceEnabled$4;-><init>(Lo/setPersistenceEnabled;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
