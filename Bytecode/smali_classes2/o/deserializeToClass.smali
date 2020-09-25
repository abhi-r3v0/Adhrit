.class public final Lo/deserializeToClass;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/deserializeToClass$extraCallback;,
        Lo/deserializeToClass$onMessageChannelReady;,
        Lo/deserializeToClass$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field extraCallback:I

.field final onMessageChannelReady:Lo/changeComparator;

.field onNavigationEvent:I

.field public final onPostMessage:Lo/getPrevName;

.field private onTransact:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 182
    sget-object v0, Lo/getEventCache;->onPostMessage:Lo/getEventCache;

    const-wide/32 v1, 0xa00000

    invoke-direct {p0, p1, v1, v2, v0}, Lo/deserializeToClass;-><init>(Ljava/io/File;JLo/getEventCache;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JLo/getEventCache;)V
    .locals 6

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p2, Lo/deserializeToClass$2;

    invoke-direct {p2, p0}, Lo/deserializeToClass$2;-><init>(Lo/deserializeToClass;)V

    iput-object p2, p0, Lo/deserializeToClass;->onMessageChannelReady:Lo/changeComparator;

    const v2, 0x31191

    const/4 v3, 0x2

    const-wide/32 v4, 0xa00000

    move-object v0, p4

    move-object v1, p1

    .line 186
    invoke-static/range {v0 .. v5}, Lo/getPrevName;->onPostMessage(Lo/getEventCache;Ljava/io/File;IIJ)Lo/getPrevName;

    move-result-object p1

    iput-object p1, p0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    return-void
.end method

.method static ICustomTabsCallback(Lo/fullLimitUpdateChild;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    :try_start_0
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->ICustomTabsService()J

    move-result-wide v0

    .line 727
    invoke-interface {p0}, Lo/fullLimitUpdateChild;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 729
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected an int but was \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 733
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    invoke-virtual {v0}, Lo/getPrevName;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    invoke-virtual {v0}, Lo/getPrevName;->flush()V

    return-void
.end method

.method final onMessageChannelReady(Lo/childAddedChange;)Lo/addValueEventListener;
    .locals 5

    .line 9086
    iget-object v0, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 10053
    iget-object v0, v0, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 10086
    iget-object v1, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 11053
    iget-object v1, v1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 227
    invoke-static {v1}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11086
    :try_start_0
    iget-object p1, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 11262
    iget-object v0, p0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    .line 12049
    iget-object p1, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 12190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    invoke-virtual {p1}, Lo/matches;->onNavigationEvent()Lo/matches;

    move-result-object p1

    invoke-virtual {p1}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p1

    .line 11262
    invoke-virtual {v0, p1}, Lo/getPrevName;->extraCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 242
    :cond_1
    invoke-static {p1}, Lo/hasAnchoredLimit;->ICustomTabsCallback(Lo/childAddedChange;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 246
    :cond_2
    new-instance v0, Lo/deserializeToClass$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/deserializeToClass$onMessageChannelReady;-><init>(Lo/childAddedChange;)V

    .line 249
    :try_start_1
    iget-object v1, p0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    .line 13086
    iget-object p1, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 14049
    iget-object p1, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 14190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    invoke-virtual {p1}, Lo/matches;->onNavigationEvent()Lo/matches;

    move-result-object p1

    invoke-virtual {p1}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, -0x1

    .line 14459
    invoke-virtual {v1, p1, v3, v4}, Lo/getPrevName;->onPostMessage(Ljava/lang/String;J)Lo/getPrevName$onMessageChannelReady;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    .line 253
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lo/deserializeToClass$onMessageChannelReady;->onMessageChannelReady(Lo/getPrevName$onMessageChannelReady;)V

    .line 254
    new-instance v0, Lo/deserializeToClass$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/deserializeToClass$ICustomTabsCallback;-><init>(Lo/deserializeToClass;Lo/getPrevName$onMessageChannelReady;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    :catch_2
    if-eqz p1, :cond_4

    .line 15284
    :try_start_3
    invoke-virtual {p1}, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    return-object v2
.end method

.method final declared-synchronized onMessageChannelReady()V
    .locals 1

    monitor-enter p0

    .line 419
    :try_start_0
    iget v0, p0, Lo/deserializeToClass;->ICustomTabsCallback$Stub:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/deserializeToClass;->ICustomTabsCallback$Stub:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onMessageChannelReady(Lo/getEventType;)V
    .locals 1

    monitor-enter p0

    .line 407
    :try_start_0
    iget v0, p0, Lo/deserializeToClass;->onTransact:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/deserializeToClass;->onTransact:I

    .line 409
    iget-object v0, p1, Lo/getEventType;->onPostMessage:Lo/isCompleteForChild;

    if-eqz v0, :cond_0

    .line 411
    iget p1, p0, Lo/deserializeToClass;->ICustomTabsCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/deserializeToClass;->ICustomTabsCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 412
    :cond_0
    :try_start_1
    iget-object p1, p1, Lo/getEventType;->ICustomTabsCallback:Lo/childAddedChange;

    if-eqz p1, :cond_1

    .line 414
    iget p1, p0, Lo/deserializeToClass;->ICustomTabsCallback$Stub:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/deserializeToClass;->ICustomTabsCallback$Stub:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final onNavigationEvent(Lo/isCompleteForChild;)Lo/childAddedChange;
    .locals 10

    .line 1049
    iget-object v0, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    invoke-virtual {v0}, Lo/matches;->onNavigationEvent()Lo/matches;

    move-result-object v0

    invoke-virtual {v0}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    :try_start_0
    iget-object v2, p0, Lo/deserializeToClass;->onPostMessage:Lo/getPrevName;

    invoke-virtual {v2, v0}, Lo/getPrevName;->onMessageChannelReady(Ljava/lang/String;)Lo/getPrevName$extraCallback;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    .line 208
    :cond_0
    :try_start_1
    new-instance v2, Lo/deserializeToClass$onMessageChannelReady;

    .line 1816
    iget-object v3, v0, Lo/getPrevName$extraCallback;->ICustomTabsCallback:[Lo/toLog;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 208
    invoke-direct {v2, v3}, Lo/deserializeToClass$onMessageChannelReady;-><init>(Lo/toLog;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2703
    iget-object v3, v2, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 3063
    iget-object v3, v3, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v5, "Content-Type"

    invoke-static {v3, v5}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2704
    iget-object v5, v2, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 4063
    iget-object v5, v5, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v6, "Content-Length"

    invoke-static {v5, v6}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2705
    new-instance v6, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v6}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>()V

    iget-object v7, v2, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 2706
    invoke-virtual {v6, v7}, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v6

    iget-object v7, v2, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 2707
    invoke-virtual {v6, v7, v1}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v6

    iget-object v7, v2, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 5131
    new-instance v8, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v8}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 5132
    iget-object v9, v8, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v7, v7, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v9, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4208
    iput-object v8, v6, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    .line 5292
    iget-object v7, v6, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v7, :cond_3

    .line 5293
    new-instance v7, Lo/isCompleteForChild;

    invoke-direct {v7, v6}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    .line 2710
    new-instance v6, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v6}, Lo/childAddedChange$ICustomTabsCallback;-><init>()V

    .line 5337
    iput-object v7, v6, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 2711
    iget-object v7, v2, Lo/deserializeToClass$onMessageChannelReady;->onPostMessage:Lo/valueChange;

    .line 5342
    iput-object v7, v6, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    .line 2712
    iget v7, v2, Lo/deserializeToClass$onMessageChannelReady;->onMessageChannelReady:I

    .line 5347
    iput v7, v6, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 2713
    iget-object v7, v2, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 5352
    iput-object v7, v6, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 2714
    iget-object v7, v2, Lo/deserializeToClass$onMessageChannelReady;->onTransact:Lo/shouldIncludeField;

    .line 6131
    new-instance v8, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v8}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 6132
    iget-object v9, v8, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v7, v7, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v9, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5386
    iput-object v8, v6, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    .line 2715
    new-instance v7, Lo/deserializeToClass$extraCallback;

    invoke-direct {v7, v0, v3, v5}, Lo/deserializeToClass$extraCallback;-><init>(Lo/getPrevName$extraCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 6391
    iput-object v7, v6, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 2716
    iget-object v0, v2, Lo/deserializeToClass$onMessageChannelReady;->asInterface:Lo/isSetterOverride;

    .line 7357
    iput-object v0, v6, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage:Lo/isSetterOverride;

    .line 2717
    iget-wide v7, v2, Lo/deserializeToClass$onMessageChannelReady;->asBinder:J

    .line 7432
    iput-wide v7, v6, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 2718
    iget-wide v7, v2, Lo/deserializeToClass$onMessageChannelReady;->onRelationshipValidationResult:J

    .line 7437
    iput-wide v7, v6, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    .line 2720
    invoke-virtual {v6}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    .line 7697
    iget-object v3, v2, Lo/deserializeToClass$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 8049
    iget-object v5, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 7697
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lo/deserializeToClass$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 8053
    iget-object v5, p1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 7698
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lo/deserializeToClass$onMessageChannelReady;->onNavigationEvent:Lo/shouldIncludeField;

    .line 7699
    invoke-static {v0, v2, p1}, Lo/hasAnchoredLimit;->onMessageChannelReady(Lo/childAddedChange;Lo/shouldIncludeField;Lo/isCompleteForChild;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    .line 8177
    iget-object p1, v0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 217
    invoke-static {p1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    return-object v1

    :cond_2
    return-object v0

    .line 5292
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :catch_0
    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method
