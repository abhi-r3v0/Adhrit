.class public final Lo/getPrevName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPrevName$onPostMessage;,
        Lo/getPrevName$onMessageChannelReady;,
        Lo/getPrevName$extraCallback;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub$Proxy:Ljava/util/regex/Pattern;

.field private static synthetic IPostMessageService:Z


# instance fields
.field ICustomTabsCallback:Lo/filtersNodes;

.field ICustomTabsCallback$Stub:I

.field private final ICustomTabsService:Ljava/io/File;

.field private final IPostMessageService$Stub:Ljava/lang/Runnable;

.field asBinder:Z

.field asInterface:Z

.field final extraCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lo/getPrevName$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCommand:Ljava/util/concurrent/Executor;

.field private final getInterfaceDescriptor:Ljava/io/File;

.field private mayLaunchUrl:J

.field newSession:Z

.field public final onMessageChannelReady:Ljava/io/File;

.field final onNavigationEvent:I

.field public final onPostMessage:Lo/getEventCache;

.field onRelationshipValidationResult:Z

.field onTransact:Z

.field private postMessage:J

.field private requestPostMessageChannel:J

.field private final updateVisuals:I

.field private final warmup:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lo/getPrevName;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/getPrevName;->IPostMessageService:Z

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/getPrevName;->ICustomTabsCallback$Stub$Proxy:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lo/getEventCache;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lo/getPrevName;->postMessage:J

    .line 150
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v0, p0, Lo/getPrevName;->mayLaunchUrl:J

    .line 169
    new-instance v0, Lo/getPrevName$4;

    invoke-direct {v0, p0}, Lo/getPrevName$4;-><init>(Lo/getPrevName;)V

    iput-object v0, p0, Lo/getPrevName;->IPostMessageService$Stub:Ljava/lang/Runnable;

    .line 197
    iput-object p1, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    .line 198
    iput-object p2, p0, Lo/getPrevName;->onMessageChannelReady:Ljava/io/File;

    .line 199
    iput p3, p0, Lo/getPrevName;->updateVisuals:I

    .line 200
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    .line 201
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getPrevName;->ICustomTabsService:Ljava/io/File;

    .line 202
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/getPrevName;->getInterfaceDescriptor:Ljava/io/File;

    .line 203
    iput p4, p0, Lo/getPrevName;->onNavigationEvent:I

    .line 204
    iput-wide p5, p0, Lo/getPrevName;->requestPostMessageChannel:J

    .line 205
    iput-object p7, p0, Lo/getPrevName;->extraCommand:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->ICustomTabsService:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    .line 370
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getPrevName$onPostMessage;

    .line 372
    iget-object v2, v1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 373
    :goto_1
    iget v2, p0, Lo/getPrevName;->onNavigationEvent:I

    if-ge v3, v2, :cond_0

    .line 374
    iget-wide v4, p0, Lo/getPrevName;->postMessage:J

    iget-object v2, v1, Lo/getPrevName$onPostMessage;->extraCallback:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo/getPrevName;->postMessage:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 377
    iput-object v2, v1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    .line 378
    :goto_2
    iget v2, p0, Lo/getPrevName;->onNavigationEvent:I

    if-ge v3, v2, :cond_2

    .line 379
    iget-object v2, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v4, v1, Lo/getPrevName$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    .line 380
    iget-object v2, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v4, v1, Lo/getPrevName$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 382
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declared-synchronized asInterface()V
    .locals 2

    monitor-enter p0

    .line 650
    :try_start_0
    invoke-direct {p0}, Lo/getPrevName;->onRelationshipValidationResult()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 653
    monitor-exit p0

    return-void

    .line 651
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNavigationEvent()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 276
    iget-object v1, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v2, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v1, v2}, Lo/getEventCache;->onPostMessage(Ljava/io/File;)Lo/toLog;

    move-result-object v1

    invoke-static {v1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v1

    .line 278
    :try_start_0
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 283
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "1"

    .line 284
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lo/getPrevName;->updateVisuals:I

    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lo/getPrevName;->onNavigationEvent:I

    .line 286
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, ""

    .line 287
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_8

    const/4 v0, 0x0

    .line 295
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    .line 2326
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "unexpected journal line: "

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    add-int/lit8 v7, v4, 0x1

    .line 2332
    :try_start_2
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 2335
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    if-ne v4, v8, :cond_1

    const-string v8, "REMOVE"

    .line 2336
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2337
    iget-object v2, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v7}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2341
    :cond_0
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2344
    :cond_1
    iget-object v8, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/getPrevName$onPostMessage;

    if-nez v8, :cond_2

    .line 2346
    new-instance v8, Lo/getPrevName$onPostMessage;

    invoke-direct {v8, p0, v7}, Lo/getPrevName$onPostMessage;-><init>(Lo/getPrevName;Ljava/lang/String;)V

    .line 2347
    iget-object v9, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v7, 0x5

    if-eq v3, v6, :cond_3

    if-ne v4, v7, :cond_3

    const-string v9, "CLEAN"

    .line 2350
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 2351
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 2352
    iput-boolean v3, v8, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    const/4 v3, 0x0

    .line 2353
    iput-object v3, v8, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    .line 2354
    invoke-virtual {v8, v2}, Lo/getPrevName$onPostMessage;->onPostMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v3, v6, :cond_4

    if-ne v4, v7, :cond_4

    const-string v7, "DIRTY"

    .line 2355
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2356
    new-instance v2, Lo/getPrevName$onMessageChannelReady;

    invoke-direct {v2, p0, v8}, Lo/getPrevName$onMessageChannelReady;-><init>(Lo/getPrevName;Lo/getPrevName$onPostMessage;)V

    iput-object v2, v8, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    goto :goto_1

    :cond_4
    if-ne v3, v6, :cond_5

    const/4 v3, 0x4

    if-ne v4, v3, :cond_5

    const-string v3, "READ"

    .line 2357
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2360
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2328
    :cond_6
    new-instance v3, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    :catch_0
    :try_start_3
    iget-object v2, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    .line 304
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 305
    invoke-virtual {p0}, Lo/getPrevName;->onPostMessage()V

    goto :goto_2

    .line 3315
    :cond_7
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v2, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v2}, Lo/getEventCache;->onMessageChannelReady(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object v0

    .line 3316
    new-instance v2, Lo/getPrevName$1;

    invoke-direct {v2, p0, v0}, Lo/getPrevName$1;-><init>(Lo/getPrevName;Lo/exceptionStacktrace;)V

    .line 3322
    invoke-static {v2}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0

    .line 307
    iput-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    :goto_2
    invoke-static {v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    return-void

    .line 288
    :cond_8
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 310
    invoke-static {v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static onNavigationEvent(Ljava/lang/String;)V
    .locals 3

    .line 713
    sget-object v0, Lo/getPrevName;->ICustomTabsCallback$Stub$Proxy:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static onPostMessage(Lo/getEventCache;Ljava/io/File;IIJ)Lo/getPrevName;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    if-lez p3, :cond_0

    .line 269
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp DiskLruCache"

    .line 270
    invoke-static {v7, v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 272
    new-instance v0, Lo/getPrevName;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lo/getPrevName;-><init>(Lo/getEventCache;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized onRelationshipValidationResult()Z
    .locals 1

    monitor-enter p0

    .line 646
    :try_start_0
    iget-boolean v0, p0, Lo/getPrevName;->onRelationshipValidationResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lo/getPrevName;->onMessageChannelReady()V

    .line 706
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    new-array v1, v1, [Lo/getPrevName$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getPrevName$onPostMessage;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 707
    invoke-virtual {p0, v4}, Lo/getPrevName;->extraCallback(Lo/getPrevName$onPostMessage;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_0
    iput-boolean v2, p0, Lo/getPrevName;->asBinder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 666
    :try_start_0
    iget-boolean v0, p0, Lo/getPrevName;->onTransact:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/getPrevName;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 671
    :cond_0
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    new-array v2, v2, [Lo/getPrevName$onPostMessage;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getPrevName$onPostMessage;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 672
    iget-object v5, v4, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    if-eqz v5, :cond_1

    .line 673
    iget-object v4, v4, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    invoke-virtual {v4}, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {p0}, Lo/getPrevName;->extraCallback()V

    .line 677
    iget-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V

    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    .line 679
    iput-boolean v1, p0, Lo/getPrevName;->onRelationshipValidationResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    .line 667
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lo/getPrevName;->onRelationshipValidationResult:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final extraCallback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    :goto_0
    iget-wide v0, p0, Lo/getPrevName;->postMessage:J

    iget-wide v2, p0, Lo/getPrevName;->requestPostMessageChannel:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 684
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPrevName$onPostMessage;

    .line 685
    invoke-virtual {p0, v0}, Lo/getPrevName;->extraCallback(Lo/getPrevName$onPostMessage;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 687
    iput-boolean v0, p0, Lo/getPrevName;->asBinder:Z

    return-void
.end method

.method final declared-synchronized extraCallback(Lo/getPrevName$onMessageChannelReady;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p1, Lo/getPrevName$onMessageChannelReady;->extraCallback:Lo/getPrevName$onPostMessage;

    .line 536
    iget-object v1, v0, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    if-ne v1, p1, :cond_b

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 541
    iget-boolean v2, v0, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 542
    :goto_0
    iget v3, p0, Lo/getPrevName;->onNavigationEvent:I

    if-ge v2, v3, :cond_2

    .line 543
    iget-object v3, p1, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v4, v0, Lo/getPrevName$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    invoke-virtual {p1}, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback()V

    .line 545
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 554
    :goto_1
    iget v2, p0, Lo/getPrevName;->onNavigationEvent:I

    if-ge p1, v2, :cond_5

    .line 555
    iget-object v2, v0, Lo/getPrevName$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v2, v2, p1

    if-eqz p2, :cond_3

    .line 557
    iget-object v3, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    invoke-interface {v3, v2}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, v0, Lo/getPrevName$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v3, v3, p1

    .line 559
    iget-object v4, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    invoke-interface {v4, v2, v3}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;Ljava/io/File;)V

    .line 560
    iget-object v2, v0, Lo/getPrevName$onPostMessage;->extraCallback:[J

    aget-wide v4, v2, p1

    .line 561
    iget-object v2, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    invoke-interface {v2, v3}, Lo/getEventCache;->onRelationshipValidationResult(Ljava/io/File;)J

    move-result-wide v2

    .line 562
    iget-object v6, v0, Lo/getPrevName$onPostMessage;->extraCallback:[J

    aput-wide v2, v6, p1

    .line 563
    iget-wide v6, p0, Lo/getPrevName;->postMessage:J

    sub-long/2addr v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Lo/getPrevName;->postMessage:J

    goto :goto_2

    .line 566
    :cond_3
    iget-object v3, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    invoke-interface {v3, v2}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 570
    :cond_5
    iget p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/4 p1, 0x0

    .line 571
    iput-object p1, v0, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    .line 572
    iget-boolean p1, v0, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    or-int/2addr p1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz p1, :cond_6

    .line 573
    iput-boolean v2, v0, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    .line 574
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    const-string v5, "CLEAN"

    invoke-interface {p1, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p1

    invoke-interface {p1, v4}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 575
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    iget-object v4, v0, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {p1, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 576
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-virtual {v0, p1}, Lo/getPrevName$onPostMessage;->onPostMessage(Lo/filtersNodes;)V

    .line 577
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {p1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    if-eqz p2, :cond_7

    .line 579
    iget-wide p1, p0, Lo/getPrevName;->mayLaunchUrl:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, p0, Lo/getPrevName;->mayLaunchUrl:J

    iput-wide p1, v0, Lo/getPrevName$onPostMessage;->asBinder:J

    goto :goto_3

    .line 582
    :cond_6
    iget-object p1, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p1

    invoke-interface {p1, v4}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 584
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    iget-object p2, v0, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {p1, p2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 585
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {p1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 587
    :cond_7
    :goto_3
    iget-object p1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V

    .line 589
    iget-wide p1, p0, Lo/getPrevName;->postMessage:J

    iget-wide v3, p0, Lo/getPrevName;->requestPostMessageChannel:J

    cmp-long v0, p1, v3

    if-gtz v0, :cond_9

    .line 5600
    iget p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_8

    iget p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    iget-object p2, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    .line 5601
    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lt p1, p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 590
    :cond_9
    iget-object p1, p0, Lo/getPrevName;->extraCommand:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lo/getPrevName;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :cond_a
    monitor-exit p0

    return-void

    .line 537
    :cond_b
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lo/getPrevName;->onMessageChannelReady()V

    .line 613
    invoke-direct {p0}, Lo/getPrevName;->asInterface()V

    .line 614
    invoke-static {p1}, Lo/getPrevName;->onNavigationEvent(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getPrevName$onPostMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 616
    monitor-exit p0

    return v0

    .line 617
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lo/getPrevName;->extraCallback(Lo/getPrevName$onPostMessage;)Z

    .line 618
    iget-wide v1, p0, Lo/getPrevName;->postMessage:J

    iget-wide v3, p0, Lo/getPrevName;->requestPostMessageChannel:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    iput-boolean v0, p0, Lo/getPrevName;->asBinder:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x1

    .line 619
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final extraCallback(Lo/getPrevName$onPostMessage;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    iget-object v0, p1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p1, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getPrevName$onMessageChannelReady;->extraCallback()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 627
    :goto_0
    iget v2, p0, Lo/getPrevName;->onNavigationEvent:I

    if-ge v1, v2, :cond_1

    .line 628
    iget-object v2, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v3, p1, Lo/getPrevName$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    .line 629
    iget-wide v2, p0, Lo/getPrevName;->postMessage:J

    iget-object v4, p1, Lo/getPrevName$onPostMessage;->extraCallback:[J

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lo/getPrevName;->postMessage:J

    .line 630
    iget-object v2, p1, Lo/getPrevName$onPostMessage;->extraCallback:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_1
    iget v1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    .line 634
    iget-object v1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    const-string v3, "REMOVE"

    invoke-interface {v1, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    move-result-object v1

    iget-object v3, p1, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {v1, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 635
    iget-object v1, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6600
    iget p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    .line 6601
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 638
    iget-object p1, p0, Lo/getPrevName;->extraCommand:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/getPrevName;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return v2
.end method

.method public final declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 657
    :try_start_0
    iget-boolean v0, p0, Lo/getPrevName;->onTransact:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 659
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lo/getPrevName;->asInterface()V

    .line 660
    invoke-virtual {p0}, Lo/getPrevName;->extraCallback()V

    .line 661
    iget-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/String;)Lo/getPrevName$extraCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lo/getPrevName;->onMessageChannelReady()V

    .line 438
    invoke-direct {p0}, Lo/getPrevName;->asInterface()V

    .line 439
    invoke-static {p1}, Lo/getPrevName;->onNavigationEvent(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPrevName$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 441
    iget-boolean v2, v0, Lo/getPrevName$onPostMessage;->onNavigationEvent:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-virtual {v0}, Lo/getPrevName$onPostMessage;->ICustomTabsCallback()Lo/getPrevName$extraCallback;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 444
    monitor-exit p0

    return-object v1

    .line 446
    :cond_1
    :try_start_1
    iget v1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    .line 447
    iget-object v1, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    const-string v3, "READ"

    invoke-interface {v1, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 4600
    iget p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_2

    iget p1, p0, Lo/getPrevName;->ICustomTabsCallback$Stub:I

    iget-object v1, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    .line 4601
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 449
    iget-object p1, p0, Lo/getPrevName;->extraCommand:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/getPrevName;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :cond_3
    monitor-exit p0

    return-object v0

    .line 441
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    sget-boolean v0, Lo/getPrevName;->IPostMessageService:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/getPrevName;->onTransact:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 212
    monitor-exit p0

    return-void

    .line 216
    :cond_2
    :try_start_1
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->getInterfaceDescriptor:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->getInterfaceDescriptor:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    goto :goto_1

    .line 221
    :cond_3
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->getInterfaceDescriptor:Ljava/io/File;

    iget-object v2, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;Ljava/io/File;)V

    .line 226
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 228
    :try_start_2
    invoke-direct {p0}, Lo/getPrevName;->onNavigationEvent()V

    .line 229
    invoke-direct {p0}, Lo/getPrevName;->ICustomTabsCallback$Stub()V

    .line 230
    iput-boolean v1, p0, Lo/getPrevName;->onTransact:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 233
    :try_start_3
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DiskLruCache "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lo/getPrevName;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v2, v3, v4, v0}, Lo/getChildAfterChild;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 1695
    :try_start_4
    invoke-virtual {p0}, Lo/getPrevName;->close()V

    .line 1696
    iget-object v2, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v3, p0, Lo/getPrevName;->onMessageChannelReady:Ljava/io/File;

    invoke-interface {v2, v3}, Lo/getEventCache;->asBinder(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    :try_start_5
    iput-boolean v0, p0, Lo/getPrevName;->onRelationshipValidationResult:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lo/getPrevName;->onRelationshipValidationResult:Z

    throw v1

    .line 246
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lo/getPrevName;->onPostMessage()V

    .line 248
    iput-boolean v1, p0, Lo/getPrevName;->onTransact:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 249
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/String;J)Lo/getPrevName$onMessageChannelReady;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_0
    invoke-virtual {p0}, Lo/getPrevName;->onMessageChannelReady()V

    .line 465
    invoke-direct {p0}, Lo/getPrevName;->asInterface()V

    .line 466
    invoke-static {p1}, Lo/getPrevName;->onNavigationEvent(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPrevName$onPostMessage;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 468
    iget-wide v1, v0, Lo/getPrevName$onPostMessage;->asBinder:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 470
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 472
    :try_start_1
    iget-object p2, v0, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 473
    monitor-exit p0

    return-object v3

    .line 475
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lo/getPrevName;->asBinder:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lo/getPrevName;->newSession:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 486
    :cond_3
    iget-object p2, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 487
    iget-object p2, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {p2}, Lo/filtersNodes;->flush()V

    .line 489
    iget-boolean p2, p0, Lo/getPrevName;->asInterface:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 490
    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    .line 494
    :try_start_3
    new-instance v0, Lo/getPrevName$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/getPrevName$onPostMessage;-><init>(Lo/getPrevName;Ljava/lang/String;)V

    .line 495
    iget-object p2, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_5
    new-instance p1, Lo/getPrevName$onMessageChannelReady;

    invoke-direct {p1, p0, v0}, Lo/getPrevName$onMessageChannelReady;-><init>(Lo/getPrevName;Lo/getPrevName$onPostMessage;)V

    .line 498
    iput-object p1, v0, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    monitor-exit p0

    return-object p1

    .line 481
    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Lo/getPrevName;->extraCommand:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lo/getPrevName;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onPostMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V

    .line 396
    :cond_0
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->ICustomTabsService:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->onNavigationEvent(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object v0

    invoke-static {v0}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 398
    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    const-string v1, "1"

    .line 399
    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 400
    iget v1, p0, Lo/getPrevName;->updateVisuals:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 401
    iget v1, p0, Lo/getPrevName;->onNavigationEvent:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 402
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 404
    iget-object v1, p0, Lo/getPrevName;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getPrevName$onPostMessage;

    .line 405
    iget-object v4, v3, Lo/getPrevName$onPostMessage;->asInterface:Lo/getPrevName$onMessageChannelReady;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 406
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v4

    invoke-interface {v4, v5}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 407
    iget-object v3, v3, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 408
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    .line 410
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v4

    invoke-interface {v4, v5}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 411
    iget-object v4, v3, Lo/getPrevName$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 412
    invoke-virtual {v3, v0}, Lo/getPrevName$onPostMessage;->onPostMessage(Lo/filtersNodes;)V

    .line 413
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 417
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lo/filtersNodes;->close()V

    .line 420
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    iget-object v2, p0, Lo/getPrevName;->getInterfaceDescriptor:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;Ljava/io/File;)V

    .line 423
    :cond_3
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->ICustomTabsService:Ljava/io/File;

    iget-object v2, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lo/getEventCache;->ICustomTabsCallback(Ljava/io/File;Ljava/io/File;)V

    .line 424
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->getInterfaceDescriptor:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->extraCallback(Ljava/io/File;)V

    .line 4315
    iget-object v0, p0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v1, p0, Lo/getPrevName;->warmup:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/getEventCache;->onMessageChannelReady(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object v0

    .line 4316
    new-instance v1, Lo/getPrevName$1;

    invoke-direct {v1, p0, v0}, Lo/getPrevName$1;-><init>(Lo/getPrevName;Lo/exceptionStacktrace;)V

    .line 4322
    invoke-static {v1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0

    .line 426
    iput-object v0, p0, Lo/getPrevName;->ICustomTabsCallback:Lo/filtersNodes;

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lo/getPrevName;->asInterface:Z

    .line 428
    iput-boolean v0, p0, Lo/getPrevName;->newSession:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 417
    :try_start_3
    invoke-interface {v0}, Lo/filtersNodes;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
