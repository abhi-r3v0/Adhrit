.class public final Lo/appendKey;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Z

.field private static volatile extraCallback:I

.field private static final onMessageChannelReady:[Ljava/lang/String;

.field private static onNavigationEvent:Lo/minPost;

.field private static onPostMessage:Lo/Empty;

.field private static onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lo/Empty;

    invoke-direct {v0}, Lo/Empty;-><init>()V

    sput-object v0, Lo/appendKey;->onPostMessage:Lo/Empty;

    .line 87
    new-instance v0, Lo/minPost;

    invoke-direct {v0}, Lo/minPost;-><init>()V

    sput-object v0, Lo/appendKey;->onNavigationEvent:Lo/minPost;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 93
    invoke-static {v0}, Lo/indexedValueChanged;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lo/appendKey;->ICustomTabsCallback:Z

    const-string v0, "1.6"

    const-string v1, "1.7"

    .line 102
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/appendKey;->onMessageChannelReady:[Ljava/lang/String;

    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 290
    sput-object v0, Lo/appendKey;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback()V
    .locals 5

    .line 184
    sget-object v0, Lo/appendKey;->onPostMessage:Lo/Empty;

    monitor-enter v0

    .line 185
    :try_start_0
    sget-object v1, Lo/appendKey;->onPostMessage:Lo/Empty;

    const/4 v2, 0x1

    .line 1073
    iput-boolean v2, v1, Lo/Empty;->ICustomTabsCallback:Z

    .line 186
    sget-object v1, Lo/appendKey;->onPostMessage:Lo/Empty;

    .line 2065
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lo/Empty;->extraCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isDefinedOn;

    .line 187
    invoke-virtual {v2}, Lo/isDefinedOn;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    .line 2357
    invoke-static {}, Lo/appendKey;->onPostMessage()Lo/processLeaf;

    move-result-object v4

    .line 2358
    invoke-interface {v4, v3}, Lo/processLeaf;->onPostMessage(Ljava/lang/String;)Lo/currentHashLength;

    move-result-object v3

    .line 3355
    iput-object v3, v2, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    goto :goto_0

    .line 190
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final extraCallback()V
    .locals 6

    .line 263
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 266
    sget-object v1, Lo/appendKey;->onMessageChannelReady:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 267
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by your slf4j binding is not compatible with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lo/appendKey;->onMessageChannelReady:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 274
    invoke-static {v0}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "Unexpected problem occured during version sanity check"

    .line 283
    invoke-static {v1, v0}, Lo/indexedValueChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/currentHashLength;
    .locals 1

    .line 357
    invoke-static {}, Lo/appendKey;->onPostMessage()Lo/processLeaf;

    move-result-object v0

    .line 358
    invoke-interface {v0, p0}, Lo/processLeaf;->onPostMessage(Ljava/lang/String;)Lo/currentHashLength;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady()V
    .locals 11

    .line 200
    sget-object v0, Lo/appendKey;->onPostMessage:Lo/Empty;

    .line 4069
    iget-object v0, v0, Lo/Empty;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 201
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 206
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v6

    if-eqz v6, :cond_7

    .line 209
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/startChild;

    if-eqz v7, :cond_3

    .line 5043
    iget-object v8, v7, Lo/startChild;->ICustomTabsCallback:Lo/isDefinedOn;

    .line 4233
    invoke-virtual {v8}, Lo/isDefinedOn;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v9

    .line 5384
    iget-object v10, v8, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_2

    .line 5388
    iget-object v10, v8, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    instance-of v10, v10, Lo/finishHashing;

    if-nez v10, :cond_3

    .line 4240
    invoke-virtual {v8}, Lo/isDefinedOn;->extraCallback()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4241
    invoke-virtual {v8, v7}, Lo/isDefinedOn;->onPostMessage(Lo/endChild;)V

    goto :goto_3

    .line 4243
    :cond_1
    invoke-static {v9}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 4235
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegate logger cannot be null at this state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    add-int/lit8 v8, v5, 0x1

    if-nez v5, :cond_5

    .line 7043
    iget-object v5, v7, Lo/startChild;->ICustomTabsCallback:Lo/isDefinedOn;

    .line 6219
    invoke-virtual {v5}, Lo/isDefinedOn;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7256
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "A number ("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 7257
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "See also http://www.slf4j.org/codes.html#replay"

    .line 7258
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 8043
    :cond_4
    iget-object v5, v7, Lo/startChild;->ICustomTabsCallback:Lo/isDefinedOn;

    .line 8388
    iget-object v5, v5, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    instance-of v5, v5, Lo/finishHashing;

    if-nez v5, :cond_5

    const-string v5, "The following set of substitute loggers may have been accessed"

    .line 9248
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "during the initialization phase. Logging calls during this"

    .line 9249
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "phase were not honored. However, subsequent logging calls to these"

    .line 9250
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "loggers will work as normally expected."

    .line 9251
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "See also http://www.slf4j.org/codes.html#substituteLogger"

    .line 9252
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    :cond_5
    :goto_4
    move v5, v8

    goto/16 :goto_1

    .line 214
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static onNavigationEvent()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 298
    :try_start_0
    const-class v1, Lo/appendKey;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 301
    sget-object v1, Lo/appendKey;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_0
    sget-object v2, Lo/appendKey;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 305
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 307
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error getting resources from path"

    .line 310
    invoke-static {v2, v1}, Lo/indexedValueChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static onPostMessage(Ljava/lang/Class;)Lo/currentHashLength;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/currentHashLength;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 9357
    invoke-static {}, Lo/appendKey;->onPostMessage()Lo/processLeaf;

    move-result-object v1

    .line 9358
    invoke-interface {v1, v0}, Lo/processLeaf;->onPostMessage(Ljava/lang/String;)Lo/currentHashLength;

    move-result-object v0

    .line 384
    sget-boolean v1, Lo/appendKey;->ICustomTabsCallback:Z

    if-eqz v1, :cond_0

    .line 385
    invoke-static {}, Lo/indexedValueChanged;->ICustomTabsCallback()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9396
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v2, 0x1

    xor-int/2addr p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 387
    invoke-interface {v0}, Lo/currentHashLength;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 389
    invoke-static {p0}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static onPostMessage()Lo/processLeaf;
    .locals 11

    .line 408
    sget v0, Lo/appendKey;->extraCallback:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_b

    .line 409
    const-class v0, Lo/appendKey;

    monitor-enter v0

    .line 410
    :try_start_0
    sget v5, Lo/appendKey;->extraCallback:I

    if-nez v5, :cond_a

    .line 411
    sput v4, Lo/appendKey;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    const-string v7, "java.vendor.url"

    .line 10335
    invoke-static {v7}, Lo/indexedValueChanged;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 10338
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    :goto_0
    if-nez v7, :cond_3

    .line 10146
    invoke-static {}, Lo/appendKey;->onNavigationEvent()Ljava/util/Set;

    move-result-object v5

    .line 12316
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    if-le v7, v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    const-string v7, "Class path contains multiple SLF4J bindings."

    .line 11326
    invoke-static {v7}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    .line 11327
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URL;

    .line 11328
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found binding in ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v7, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 11330
    invoke-static {v7}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    .line 10150
    :cond_3
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 10151
    sput v2, Lo/appendKey;->extraCallback:I

    if-eqz v5, :cond_5

    .line 13316
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    .line 12344
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Actual binding is of type ["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    .line 10153
    :cond_5
    invoke-static {}, Lo/appendKey;->ICustomTabsCallback()V

    .line 10154
    invoke-static {}, Lo/appendKey;->onMessageChannelReady()V

    .line 10156
    sget-object v5, Lo/appendKey;->onPostMessage:Lo/Empty;

    .line 14077
    iget-object v7, v5, Lo/Empty;->extraCallback:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 14078
    iget-object v5, v5, Lo/Empty;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->clear()V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 15195
    :try_start_2
    sput v3, Lo/appendKey;->extraCallback:I

    const-string v2, "Failed to instantiate SLF4J LoggerFactory"

    .line 15196
    invoke-static {v2, v1}, Lo/indexedValueChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10179
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected initialization failure"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 10169
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    .line 10170
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10171
    sput v3, Lo/appendKey;->extraCallback:I

    const-string v2, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    .line 10172
    invoke-static {v2}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v2, "Your binding is version 1.5.5 or earlier."

    .line 10173
    invoke-static {v2}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v2, "Upgrade your binding to version 1.6.x."

    .line 10174
    invoke-static {v2}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    .line 10176
    :cond_6
    throw v1

    :catch_2
    move-exception v5

    .line 10158
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v8, "org/slf4j/impl/StaticLoggerBinder"

    .line 14133
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const-string v8, "org.slf4j.impl.StaticLoggerBinder"

    .line 14135
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 10160
    sput v1, Lo/appendKey;->extraCallback:I

    const-string v5, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    .line 10161
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "Defaulting to no-operation (NOP) logger implementation"

    .line 10162
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    const-string v5, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    .line 10163
    invoke-static {v5}, Lo/indexedValueChanged;->onPostMessage(Ljava/lang/String;)V

    .line 10125
    :goto_6
    sget v5, Lo/appendKey;->extraCallback:I

    if-ne v5, v2, :cond_a

    .line 10126
    invoke-static {}, Lo/appendKey;->extraCallback()V

    goto :goto_7

    .line 14195
    :cond_9
    sput v3, Lo/appendKey;->extraCallback:I

    const-string v1, "Failed to instantiate SLF4J LoggerFactory"

    .line 14196
    invoke-static {v1, v5}, Lo/indexedValueChanged;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10166
    throw v5

    .line 414
    :cond_a
    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 416
    :cond_b
    :goto_8
    sget v0, Lo/appendKey;->extraCallback:I

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_c

    .line 420
    sget-object v0, Lo/appendKey;->onNavigationEvent:Lo/minPost;

    return-object v0

    .line 428
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_d
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    return-object v0

    .line 422
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_f
    sget-object v0, Lo/appendKey;->onPostMessage:Lo/Empty;

    return-object v0
.end method
