.class public final Lo/sha1HexDigest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/MainDispatcherLoader;",
        "",
        "()V",
        "FAST_SERVICE_LOADER_ENABLED",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "loadMainDispatcher",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Z

.field public static final onMessageChannelReady:Lo/getKnownCompleteChildren;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    .line 4001
    invoke-static {v0}, Lo/compareLongs;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3021
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 19
    :goto_0
    sput-boolean v0, Lo/sha1HexDigest;->extraCallback:Z

    .line 22
    invoke-static {}, Lo/sha1HexDigest;->onMessageChannelReady()Lo/getKnownCompleteChildren;

    move-result-object v0

    sput-object v0, Lo/sha1HexDigest;->onMessageChannelReady:Lo/getKnownCompleteChildren;

    return-void
.end method

.method private static onMessageChannelReady()Lo/getKnownCompleteChildren;
    .locals 7

    const/4 v0, 0x0

    .line 26
    :try_start_0
    sget-boolean v1, Lo/sha1HexDigest;->extraCallback:Z

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lo/subTree;->onMessageChannelReady:Lo/subTree;

    invoke-virtual {v1}, Lo/subTree;->onMessageChannelReady()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_0
    const-class v1, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 34
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lo/removeTags;->onPostMessage(Ljava/util/Iterator;)Lo/applyTaggedRangeMerges;

    move-result-object v1

    invoke-static {v1}, Lo/removeTags;->onMessageChannelReady(Lo/applyTaggedRangeMerges;)Ljava/util/List;

    move-result-object v1

    .line 38
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 133
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 38
    invoke-interface {v4}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v4

    .line 139
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 140
    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 38
    invoke-interface {v6}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4

    move-object v3, v5

    move v4, v6

    .line 145
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 146
    :goto_1
    check-cast v3, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v3, :cond_5

    .line 38
    invoke-static {v3, v1}, Lo/createToggleButton$onPostMessage;->onPostMessage(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lo/getKnownCompleteChildren;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1072
    :cond_5
    new-instance v1, Lo/extractPathString;

    invoke-direct {v1, v0, v0}, Lo/extractPathString;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 39
    check-cast v1, Lo/getKnownCompleteChildren;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 2072
    new-instance v2, Lo/extractPathString;

    invoke-direct {v2, v1, v0}, Lo/extractPathString;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 42
    move-object v1, v2

    check-cast v1, Lo/getKnownCompleteChildren;

    :cond_6
    :goto_2
    return-object v1
.end method
