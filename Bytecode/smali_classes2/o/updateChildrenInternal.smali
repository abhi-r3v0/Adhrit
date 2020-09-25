.class public final Lo/updateChildrenInternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateChildrenInternal$ICustomTabsCallback;,
        Lo/updateChildrenInternal$onPostMessage;,
        Lo/updateChildrenInternal$onNavigationEvent;
    }
.end annotation


# static fields
.field private static synthetic IPostMessageService$Stub:Z

.field private static onNavigationEvent:Ljava/util/regex/Pattern;

.field private static final requestPostMessageChannel:Lo/exceptionStacktrace;


# instance fields
.field private final ICustomTabsCallback:Ljava/io/File;

.field private ICustomTabsCallback$Stub:J

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lo/updateChildrenInternal$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService:Z

.field private final asBinder:I

.field private final asInterface:Ljava/io/File;

.field private final extraCallback:Ljava/io/File;

.field private extraCommand:J

.field private getInterfaceDescriptor:Lo/filtersNodes;

.field private final mayLaunchUrl:Ljava/util/concurrent/Executor;

.field private newSession:I

.field private final onMessageChannelReady:Ljava/io/File;

.field private final onPostMessage:Lo/startAt;

.field private onRelationshipValidationResult:J

.field private final onTransact:I

.field private postMessage:Z

.field private final updateVisuals:Ljava/lang/Runnable;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lo/updateChildrenInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/updateChildrenInternal;->IPostMessageService$Stub:Z

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/updateChildrenInternal;->onNavigationEvent:Ljava/util/regex/Pattern;

    .line 809
    new-instance v0, Lo/updateChildrenInternal$5;

    invoke-direct {v0}, Lo/updateChildrenInternal$5;-><init>()V

    sput-object v0, Lo/updateChildrenInternal;->requestPostMessageChannel:Lo/exceptionStacktrace;

    return-void
.end method

.method private constructor <init>(Lo/startAt;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 4

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    .line 149
    iput-wide p3, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 164
    iput-wide p3, p0, Lo/updateChildrenInternal;->extraCommand:J

    .line 168
    new-instance p3, Lo/updateChildrenInternal$1;

    invoke-direct {p3, p0}, Lo/updateChildrenInternal$1;-><init>(Lo/updateChildrenInternal;)V

    iput-object p3, p0, Lo/updateChildrenInternal;->updateVisuals:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    .line 190
    iput-object p2, p0, Lo/updateChildrenInternal;->onMessageChannelReady:Ljava/io/File;

    const p1, 0x31191

    .line 191
    iput p1, p0, Lo/updateChildrenInternal;->asBinder:I

    .line 192
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    .line 193
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/updateChildrenInternal;->extraCallback:Ljava/io/File;

    .line 194
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/updateChildrenInternal;->asInterface:Ljava/io/File;

    const/4 p1, 0x2

    .line 195
    iput p1, p0, Lo/updateChildrenInternal;->onTransact:I

    .line 196
    iput-wide p5, p0, Lo/updateChildrenInternal;->onRelationshipValidationResult:J

    .line 197
    iput-object p7, p0, Lo/updateChildrenInternal;->mayLaunchUrl:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/exceptionStacktrace;
    .locals 1

    .line 88
    sget-object v0, Lo/updateChildrenInternal;->requestPostMessageChannel:Lo/exceptionStacktrace;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/updateChildrenInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lo/updateChildrenInternal;->onNavigationEvent(Lo/updateChildrenInternal$ICustomTabsCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/updateChildrenInternal;)Ljava/io/File;
    .locals 0

    .line 88
    iget-object p0, p0, Lo/updateChildrenInternal;->onMessageChannelReady:Ljava/io/File;

    return-object p0
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    :goto_0
    iget-wide v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    iget-wide v2, p0, Lo/updateChildrenInternal;->onRelationshipValidationResult:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 663
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 664
    invoke-direct {p0, v0}, Lo/updateChildrenInternal;->onNavigationEvent(Lo/updateChildrenInternal$ICustomTabsCallback;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic asBinder(Lo/updateChildrenInternal;)I
    .locals 0

    .line 88
    iget p0, p0, Lo/updateChildrenInternal;->onTransact:I

    return p0
.end method

.method static synthetic asInterface(Lo/updateChildrenInternal;)I
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lo/updateChildrenInternal;->newSession:I

    return v0
.end method

.method private declared-synchronized asInterface()V
    .locals 2

    monitor-enter p0

    .line 629
    :try_start_0
    invoke-direct {p0}, Lo/updateChildrenInternal;->onTransact()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 632
    monitor-exit p0

    return-void

    .line 630
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

.method private extraCallback()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->extraCallback:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    .line 356
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 6927
    iget-object v2, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 359
    :goto_1
    iget v2, p0, Lo/updateChildrenInternal;->onTransact:I

    if-ge v3, v2, :cond_0

    .line 360
    iget-wide v4, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    .line 7927
    iget-object v2, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    .line 360
    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8927
    iput-object v2, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    .line 364
    :goto_2
    iget v2, p0, Lo/updateChildrenInternal;->onTransact:I

    if-ge v3, v2, :cond_2

    .line 365
    iget-object v2, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    .line 9927
    iget-object v4, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/io/File;

    .line 365
    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    .line 366
    iget-object v2, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    .line 10927
    iget-object v4, v1, Lo/updateChildrenInternal$ICustomTabsCallback;->onNavigationEvent:[Ljava/io/File;

    .line 366
    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 368
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic extraCallback(Lo/updateChildrenInternal;)Z
    .locals 2

    .line 44580
    iget v0, p0, Lo/updateChildrenInternal;->newSession:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 44581
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic onMessageChannelReady(Lo/updateChildrenInternal;Ljava/lang/String;J)Lo/updateChildrenInternal$onPostMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lo/updateChildrenInternal;->extraCallback(Ljava/lang/String;J)Lo/updateChildrenInternal$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/startAt;Ljava/io/File;J)Lo/updateChildrenInternal;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 255
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "OkHttp DiskLruCache"

    .line 256
    invoke-static {v1}, Lo/createForTests;->onPostMessage(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 258
    new-instance v1, Lo/updateChildrenInternal;

    const v6, 0x31191

    const/4 v7, 0x2

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-wide v8, p2

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lo/updateChildrenInternal;-><init>(Lo/startAt;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v1

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onMessageChannelReady()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 262
    iget-object v1, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v1, v2}, Lo/startAt;->onPostMessage(Ljava/io/File;)Lo/toLog;

    move-result-object v1

    invoke-static {v1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v1

    .line 264
    :try_start_0
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 269
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "1"

    .line 270
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lo/updateChildrenInternal;->asBinder:I

    .line 271
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lo/updateChildrenInternal;->onTransact:I

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, ""

    .line 273
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_8

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 281
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    .line 2312
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "unexpected journal line: "

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    add-int/lit8 v8, v5, 0x1

    .line 2318
    :try_start_2
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 2321
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    if-ne v5, v9, :cond_1

    const-string v9, "REMOVE"

    .line 2322
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2323
    iget-object v3, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2327
    :cond_0
    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2330
    :cond_1
    iget-object v9, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/updateChildrenInternal$ICustomTabsCallback;

    if-nez v9, :cond_2

    .line 2332
    new-instance v9, Lo/updateChildrenInternal$ICustomTabsCallback;

    invoke-direct {v9, p0, v8, v0}, Lo/updateChildrenInternal$ICustomTabsCallback;-><init>(Lo/updateChildrenInternal;Ljava/lang/String;B)V

    .line 2333
    iget-object v10, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v8, 0x5

    if-eq v4, v7, :cond_3

    if-ne v5, v8, :cond_3

    const-string v10, "CLEAN"

    .line 2336
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 2337
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2927
    iput-boolean v4, v9, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    const/4 v4, 0x0

    .line 3927
    iput-object v4, v9, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    .line 4927
    invoke-virtual {v9, v3}, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v4, v7, :cond_4

    if-ne v5, v8, :cond_4

    const-string v8, "DIRTY"

    .line 2341
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2342
    new-instance v3, Lo/updateChildrenInternal$onPostMessage;

    invoke-direct {v3, p0, v9, v0}, Lo/updateChildrenInternal$onPostMessage;-><init>(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;B)V

    .line 5927
    iput-object v3, v9, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    goto :goto_1

    :cond_4
    if-ne v4, v7, :cond_5

    const/4 v4, 0x4

    if-ne v5, v4, :cond_5

    const-string v4, "READ"

    .line 2343
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2346
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2314
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    :catch_0
    :try_start_3
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lo/updateChildrenInternal;->newSession:I

    .line 290
    invoke-interface {v1}, Lo/fullLimitUpdateChild;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 291
    invoke-direct {p0}, Lo/updateChildrenInternal;->onPostMessage()V

    goto :goto_2

    .line 6301
    :cond_7
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v2}, Lo/startAt;->ICustomTabsCallback(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object v0

    .line 6302
    new-instance v2, Lo/updateChildrenInternal$4;

    invoke-direct {v2, p0, v0}, Lo/updateChildrenInternal$4;-><init>(Lo/updateChildrenInternal;Lo/exceptionStacktrace;)V

    .line 6308
    invoke-static {v2}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0

    .line 293
    iput-object v0, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    :goto_2
    invoke-static {v1}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    return-void

    .line 274
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

    .line 296
    invoke-static {v1}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    throw v0
.end method

.method private declared-synchronized onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 18826
    :try_start_0
    iget-object v0, p1, Lo/updateChildrenInternal$onPostMessage;->onPostMessage:Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 18927
    iget-object v1, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    if-ne v1, p1, :cond_b

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 19927
    iget-boolean v2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 522
    :goto_0
    iget v3, p0, Lo/updateChildrenInternal;->onTransact:I

    if-ge v2, v3, :cond_2

    .line 20826
    iget-object v3, p1, Lo/updateChildrenInternal$onPostMessage;->ICustomTabsCallback:[Z

    .line 523
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    .line 21927
    iget-object v4, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onNavigationEvent:[Ljava/io/File;

    .line 527
    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lo/startAt;->extraCallback(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22910
    iget-object p2, p1, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22911
    :try_start_1
    iget-object v0, p1, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    .line 23088
    invoke-direct {v0, p1, v1}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;Z)V

    .line 22912
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p2

    throw p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20910
    :cond_1
    iget-object p2, p1, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20911
    :try_start_3
    iget-object v0, p1, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    .line 21088
    invoke-direct {v0, p1, v1}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;Z)V

    .line 20912
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 525
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 20912
    monitor-exit p2

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 534
    :goto_1
    iget v2, p0, Lo/updateChildrenInternal;->onTransact:I

    if-ge p1, v2, :cond_5

    .line 23927
    iget-object v2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onNavigationEvent:[Ljava/io/File;

    .line 535
    aget-object v2, v2, p1

    if-eqz p2, :cond_3

    .line 537
    iget-object v3, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    invoke-interface {v3, v2}, Lo/startAt;->extraCallback(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24927
    iget-object v3, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/io/File;

    .line 538
    aget-object v3, v3, p1

    .line 539
    iget-object v4, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    invoke-interface {v4, v2, v3}, Lo/startAt;->onPostMessage(Ljava/io/File;Ljava/io/File;)V

    .line 25927
    iget-object v2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    .line 540
    aget-wide v4, v2, p1

    .line 541
    iget-object v2, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    invoke-interface {v2, v3}, Lo/startAt;->onTransact(Ljava/io/File;)J

    move-result-wide v2

    .line 26927
    iget-object v6, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    .line 542
    aput-wide v2, v6, p1

    .line 543
    iget-wide v6, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    sub-long/2addr v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    goto :goto_2

    .line 546
    :cond_3
    iget-object v3, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    invoke-interface {v3, v2}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 550
    :cond_5
    iget p1, p0, Lo/updateChildrenInternal;->newSession:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lo/updateChildrenInternal;->newSession:I

    const/4 p1, 0x0

    .line 27927
    iput-object p1, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    .line 28927
    iget-boolean p1, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    or-int/2addr p1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz p1, :cond_6

    .line 29927
    iput-boolean v2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 554
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    const-string v5, "CLEAN"

    invoke-interface {p1, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p1

    invoke-interface {p1, v4}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 555
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    .line 30927
    iget-object v4, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 555
    invoke-interface {p1, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 556
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-virtual {v0, p1}, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback(Lo/filtersNodes;)V

    .line 557
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-interface {p1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    if-eqz p2, :cond_7

    .line 559
    iget-wide p1, p0, Lo/updateChildrenInternal;->extraCommand:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, p0, Lo/updateChildrenInternal;->extraCommand:J

    .line 31927
    iput-wide p1, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->asInterface:J

    goto :goto_3

    .line 562
    :cond_6
    iget-object p1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 32927
    iget-object p2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 562
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p1

    invoke-interface {p1, v4}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 564
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    .line 33927
    iget-object p2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 564
    invoke-interface {p1, p2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 565
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-interface {p1, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 567
    :cond_7
    :goto_3
    iget-object p1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-interface {p1}, Lo/filtersNodes;->flush()V

    .line 569
    iget-wide p1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    iget-wide v3, p0, Lo/updateChildrenInternal;->onRelationshipValidationResult:J

    cmp-long v0, p1, v3

    if-gtz v0, :cond_9

    .line 34580
    iget p1, p0, Lo/updateChildrenInternal;->newSession:I

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_8

    iget p1, p0, Lo/updateChildrenInternal;->newSession:I

    iget-object p2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 34581
    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lt p1, p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 570
    :cond_9
    iget-object p1, p0, Lo/updateChildrenInternal;->mayLaunchUrl:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lo/updateChildrenInternal;->updateVisuals:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 572
    :cond_a
    monitor-exit p0

    return-void

    .line 517
    :cond_b
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic onMessageChannelReady(Lo/updateChildrenInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lo/updateChildrenInternal;->onPostMessage()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/updateChildrenInternal;Lo/updateChildrenInternal$onPostMessage;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;Z)V

    return-void
.end method

.method private declared-synchronized onNavigationEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    sget-boolean v0, Lo/updateChildrenInternal;->IPostMessageService$Stub:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/updateChildrenInternal;->ICustomTabsService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 204
    monitor-exit p0

    return-void

    .line 208
    :cond_2
    :try_start_1
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->asInterface:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->extraCallback(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->extraCallback(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->asInterface:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->asInterface:Ljava/io/File;

    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lo/startAt;->onPostMessage(Ljava/io/File;Ljava/io/File;)V

    .line 218
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->extraCallback(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 220
    :try_start_2
    invoke-direct {p0}, Lo/updateChildrenInternal;->onMessageChannelReady()V

    .line 221
    invoke-direct {p0}, Lo/updateChildrenInternal;->extraCallback()V

    .line 222
    iput-boolean v1, p0, Lo/updateChildrenInternal;->ICustomTabsService:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 225
    :try_start_3
    invoke-static {}, Lo/DatabaseRegistrar;->ICustomTabsCallback()Lo/DatabaseRegistrar;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/updateChildrenInternal;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lo/DatabaseRegistrar;->onNavigationEvent(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p0}, Lo/updateChildrenInternal;->close()V

    .line 1675
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v2, p0, Lo/updateChildrenInternal;->onMessageChannelReady:Ljava/io/File;

    invoke-interface {v0, v2}, Lo/startAt;->asInterface(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lo/updateChildrenInternal;->postMessage:Z

    .line 232
    :cond_5
    invoke-direct {p0}, Lo/updateChildrenInternal;->onPostMessage()V

    .line 234
    iput-boolean v1, p0, Lo/updateChildrenInternal;->ICustomTabsService:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNavigationEvent(Lo/updateChildrenInternal$ICustomTabsCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34927
    iget-object v0, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 35927
    iget-object v0, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    .line 36826
    iput-boolean v1, v0, Lo/updateChildrenInternal$onPostMessage;->onMessageChannelReady:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 606
    :goto_0
    iget v3, p0, Lo/updateChildrenInternal;->onTransact:I

    if-ge v2, v3, :cond_1

    .line 607
    iget-object v3, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    .line 36927
    iget-object v4, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->ICustomTabsCallback:[Ljava/io/File;

    .line 607
    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    .line 608
    iget-wide v3, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    .line 37927
    iget-object v5, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    .line 608
    aget-wide v6, v5, v2

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub:J

    .line 38927
    iget-object v3, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback:[J

    const-wide/16 v4, 0x0

    .line 609
    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_1
    iget v2, p0, Lo/updateChildrenInternal;->newSession:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/updateChildrenInternal;->newSession:I

    .line 613
    iget-object v2, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    const-string v3, "REMOVE"

    invoke-interface {v2, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    move-result-object v2

    .line 39927
    iget-object v3, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 613
    invoke-interface {v2, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 614
    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 40927
    iget-object p1, p1, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 614
    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41580
    iget p1, p0, Lo/updateChildrenInternal;->newSession:I

    const/16 v2, 0x7d0

    if-lt p1, v2, :cond_2

    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 41581
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 617
    iget-object p1, p0, Lo/updateChildrenInternal;->mayLaunchUrl:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lo/updateChildrenInternal;->updateVisuals:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return v1
.end method

.method static synthetic onNavigationEvent(Lo/updateChildrenInternal;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lo/updateChildrenInternal;->postMessage:Z

    return p0
.end method

.method private declared-synchronized onPostMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V

    .line 382
    :cond_0
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->extraCallback:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->onNavigationEvent(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object v0

    invoke-static {v0}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 384
    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    const-string v1, "1"

    .line 385
    invoke-interface {v0, v1}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 386
    iget v1, p0, Lo/updateChildrenInternal;->asBinder:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 387
    iget v1, p0, Lo/updateChildrenInternal;->onTransact:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v1

    invoke-interface {v1, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 388
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 390
    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

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

    check-cast v3, Lo/updateChildrenInternal$ICustomTabsCallback;

    .line 11927
    iget-object v4, v3, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 392
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v4

    invoke-interface {v4, v5}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 12927
    iget-object v3, v3, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 393
    invoke-interface {v0, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 394
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    .line 396
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v4

    invoke-interface {v4, v5}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 13927
    iget-object v4, v3, Lo/updateChildrenInternal$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 397
    invoke-interface {v0, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 398
    invoke-virtual {v3, v0}, Lo/updateChildrenInternal$ICustomTabsCallback;->extraCallback(Lo/filtersNodes;)V

    .line 399
    invoke-interface {v0, v2}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lo/filtersNodes;->close()V

    .line 406
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->extraCallback(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    iget-object v2, p0, Lo/updateChildrenInternal;->asInterface:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lo/startAt;->onPostMessage(Ljava/io/File;Ljava/io/File;)V

    .line 409
    :cond_3
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->extraCallback:Ljava/io/File;

    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lo/startAt;->onPostMessage(Ljava/io/File;Ljava/io/File;)V

    .line 410
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->asInterface:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->onMessageChannelReady(Ljava/io/File;)V

    .line 14301
    iget-object v0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {v0, v1}, Lo/startAt;->ICustomTabsCallback(Ljava/io/File;)Lo/exceptionStacktrace;

    move-result-object v0

    .line 14302
    new-instance v1, Lo/updateChildrenInternal$4;

    invoke-direct {v1, p0, v0}, Lo/updateChildrenInternal$4;-><init>(Lo/updateChildrenInternal;Lo/exceptionStacktrace;)V

    .line 14308
    invoke-static {v1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v0

    .line 412
    iput-object v0, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lo/updateChildrenInternal;->warmup:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 403
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

.method private static onPostMessage(Ljava/lang/String;)V
    .locals 3

    .line 691
    sget-object v0, Lo/updateChildrenInternal;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 693
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

.method static synthetic onPostMessage(Lo/updateChildrenInternal;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lo/updateChildrenInternal;->ICustomTabsService:Z

    return p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/updateChildrenInternal;)Lo/startAt;
    .locals 0

    .line 88
    iget-object p0, p0, Lo/updateChildrenInternal;->onPostMessage:Lo/startAt;

    return-object p0
.end method

.method private declared-synchronized onTransact()Z
    .locals 1

    monitor-enter p0

    .line 625
    :try_start_0
    iget-boolean v0, p0, Lo/updateChildrenInternal;->postMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic onTransact(Lo/updateChildrenInternal;)Z
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/updateChildrenInternal;->warmup:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-direct {p0}, Lo/updateChildrenInternal;->onNavigationEvent()V

    .line 594
    invoke-direct {p0}, Lo/updateChildrenInternal;->asInterface()V

    .line 595
    invoke-static {p1}, Lo/updateChildrenInternal;->onPostMessage(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateChildrenInternal$ICustomTabsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 597
    monitor-exit p0

    return p1

    .line 598
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lo/updateChildrenInternal;->onNavigationEvent(Lo/updateChildrenInternal$ICustomTabsCallback;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 645
    :try_start_0
    iget-boolean v0, p0, Lo/updateChildrenInternal;->ICustomTabsService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/updateChildrenInternal;->postMessage:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 650
    :cond_0
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    new-array v2, v2, [Lo/updateChildrenInternal$ICustomTabsCallback;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/updateChildrenInternal$ICustomTabsCallback;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 41927
    iget-object v6, v5, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    if-eqz v6, :cond_1

    .line 42927
    iget-object v5, v5, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;

    .line 43910
    iget-object v6, v5, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43911
    :try_start_1
    iget-object v7, v5, Lo/updateChildrenInternal$onPostMessage;->extraCallback:Lo/updateChildrenInternal;

    .line 44088
    invoke-direct {v7, v5, v3}, Lo/updateChildrenInternal;->onMessageChannelReady(Lo/updateChildrenInternal$onPostMessage;Z)V

    .line 43912
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 655
    :cond_2
    invoke-direct {p0}, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub()V

    .line 656
    iget-object v0, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->close()V

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    .line 658
    iput-boolean v1, p0, Lo/updateChildrenInternal;->postMessage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 659
    monitor-exit p0

    return-void

    .line 646
    :cond_3
    :goto_2
    :try_start_3
    iput-boolean v1, p0, Lo/updateChildrenInternal;->postMessage:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 647
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(Ljava/lang/String;J)Lo/updateChildrenInternal$onPostMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-direct {p0}, Lo/updateChildrenInternal;->onNavigationEvent()V

    .line 452
    invoke-direct {p0}, Lo/updateChildrenInternal;->asInterface()V

    .line 453
    invoke-static {p1}, Lo/updateChildrenInternal;->onPostMessage(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateChildrenInternal$ICustomTabsCallback;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 15927
    iget-wide v1, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->asInterface:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 457
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 16927
    :try_start_1
    iget-object p2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 460
    monitor-exit p0

    return-object v3

    .line 464
    :cond_2
    :try_start_2
    iget-object p2, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

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

    .line 465
    iget-object p2, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

    invoke-interface {p2}, Lo/filtersNodes;->flush()V

    .line 467
    iget-boolean p2, p0, Lo/updateChildrenInternal;->warmup:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_3

    .line 468
    monitor-exit p0

    return-object v3

    :cond_3
    const/4 p2, 0x0

    if-nez v0, :cond_4

    .line 472
    :try_start_3
    new-instance v0, Lo/updateChildrenInternal$ICustomTabsCallback;

    invoke-direct {v0, p0, p1, p2}, Lo/updateChildrenInternal$ICustomTabsCallback;-><init>(Lo/updateChildrenInternal;Ljava/lang/String;B)V

    .line 473
    iget-object p3, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_4
    new-instance p1, Lo/updateChildrenInternal$onPostMessage;

    invoke-direct {p1, p0, v0, p2}, Lo/updateChildrenInternal$onPostMessage;-><init>(Lo/updateChildrenInternal;Lo/updateChildrenInternal$ICustomTabsCallback;B)V

    .line 17927
    iput-object p1, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onTransact:Lo/updateChildrenInternal$onPostMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/String;)Lo/updateChildrenInternal$onNavigationEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lo/updateChildrenInternal;->onNavigationEvent()V

    .line 424
    invoke-direct {p0}, Lo/updateChildrenInternal;->asInterface()V

    .line 425
    invoke-static {p1}, Lo/updateChildrenInternal;->onPostMessage(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateChildrenInternal$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 14927
    iget-boolean v2, v0, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 429
    :cond_0
    invoke-virtual {v0}, Lo/updateChildrenInternal$ICustomTabsCallback;->onMessageChannelReady()Lo/updateChildrenInternal$onNavigationEvent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 430
    monitor-exit p0

    return-object v1

    .line 432
    :cond_1
    :try_start_1
    iget v1, p0, Lo/updateChildrenInternal;->newSession:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/updateChildrenInternal;->newSession:I

    .line 433
    iget-object v1, p0, Lo/updateChildrenInternal;->getInterfaceDescriptor:Lo/filtersNodes;

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

    .line 15580
    iget p1, p0, Lo/updateChildrenInternal;->newSession:I

    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_2

    iget p1, p0, Lo/updateChildrenInternal;->newSession:I

    iget-object v1, p0, Lo/updateChildrenInternal;->ICustomTabsCallback$Stub$Proxy:Ljava/util/LinkedHashMap;

    .line 15581
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 435
    iget-object p1, p0, Lo/updateChildrenInternal;->mayLaunchUrl:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/updateChildrenInternal;->updateVisuals:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_3
    monitor-exit p0

    return-object v0

    .line 427
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
