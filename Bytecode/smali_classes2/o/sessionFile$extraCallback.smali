.class final Lo/sessionFile$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sessionFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sessionFile$onNavigationEvent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private synthetic extraCallback:Lo/sessionFile;

.field final onNavigationEvent:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lo/sessionFile$onNavigationEvent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Lo/sessionFile;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lo/sessionFile$extraCallback;->extraCallback:Lo/sessionFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/sessionFile$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 271
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 330
    iget-boolean v0, p0, Lo/sessionFile$extraCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lo/sessionFile$extraCallback;->onPostMessage:Z

    .line 333
    iget-object v1, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 334
    iget-object v0, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sessionFile$onNavigationEvent;

    iget-object v0, v0, Lo/sessionFile$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p1

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sessionFile$onNavigationEvent;

    const-string v3, "\nfor "

    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lo/sessionFile$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    .line 341
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v3, v2, Lo/sessionFile$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    .line 344
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lo/sessionFile$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 349
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method final extraCallback(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)Lo/JniNativeApi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lo/sessionFile$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 282
    iget-object v2, p0, Lo/sessionFile$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sessionFile$onNavigationEvent;

    .line 283
    iget-object v3, v2, Lo/sessionFile$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    iget-object p1, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object p1, v2, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    if-eqz p1, :cond_0

    iget-object p1, v2, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Lo/sessionFile$onNavigationEvent;

    invoke-direct {v0, p1, p2, p3}, Lo/sessionFile$onNavigationEvent;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    iget-object p1, p0, Lo/sessionFile$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method final onNavigationEvent(Z)V
    .locals 6

    .line 309
    iget-object v0, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lo/sessionFile$extraCallback;->onNavigationEvent:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lo/sessionFile$extraCallback;->extraCallback:Lo/sessionFile;

    invoke-static {v0}, Lo/sessionFile;->extraCallback(Lo/sessionFile;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    if-eqz p1, :cond_3

    .line 315
    iget-object p1, p0, Lo/sessionFile$extraCallback;->extraCallback:Lo/sessionFile;

    invoke-static {p1}, Lo/sessionFile;->onMessageChannelReady(Lo/sessionFile;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x0

    .line 316
    :try_start_0
    iget-object v1, p0, Lo/sessionFile$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 317
    iget-object v2, p0, Lo/sessionFile$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sessionFile$onNavigationEvent;

    .line 318
    iget-object v3, p0, Lo/sessionFile$extraCallback;->extraCallback:Lo/sessionFile;

    invoke-static {v3}, Lo/sessionFile;->onMessageChannelReady(Lo/sessionFile;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Lo/sessionFile$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v5, v2, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/JniNativeApi;

    if-eqz v3, :cond_1

    .line 320
    iput-object v3, v2, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    .line 321
    iget-object v4, p0, Lo/sessionFile$extraCallback;->extraCallback:Lo/sessionFile;

    invoke-static {v4}, Lo/sessionFile;->onMessageChannelReady(Lo/sessionFile;)Ljava/util/Map;

    move-result-object v4

    iget-object v2, v2, Lo/sessionFile$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_3
    return-void
.end method
