.class public final Lo/setLogger$extraCallback$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLogger$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/coroutines/CombinedContext$Serialized$Companion;",
        "",
        "()V",
        "serialVersionUID",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private asBinder:Lo/addChildEventListener;

.field private final extraCallback:Lo/exists;

.field private onMessageChannelReady:Lo/serializeSessionApp;

.field public onNavigationEvent:Lo/equalTo;

.field public onPostMessage:Lo/orderByChild;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/exists;Lo/serializeSessionApp;)V
    .locals 0

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    .line 1088
    iput-object p2, p0, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady:Lo/serializeSessionApp;

    return-void
.end method

.method private onMessageChannelReady(IIIZZ)Lo/orderByChild;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 2126
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent(IIIZ)Lo/orderByChild;

    move-result-object v0

    .line 2130
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter v1

    .line 2131
    :try_start_0
    iget v2, v0, Lo/orderByChild;->ICustomTabsCallback:I

    if-nez v2, :cond_0

    .line 2132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2134
    :cond_0
    monitor-exit v1

    .line 2137
    invoke-virtual {v0, p5}, Lo/orderByChild;->onPostMessage(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2293
    invoke-virtual {p0, v1, v0, v1}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2134
    monitor-exit v1

    throw p1
.end method

.method private onMessageChannelReady(Lo/orderByChild;)V
    .locals 3

    .line 11306
    iget-object v0, p1, Lo/orderByChild;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11307
    iget-object v2, p1, Lo/orderByChild;->asBinder:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 11308
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 11309
    iget-object p1, p1, Lo/orderByChild;->asBinder:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11313
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private onNavigationEvent(IIIZ)Lo/orderByChild;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 3151
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter v0

    .line 3152
    :try_start_0
    iget-boolean v1, p0, Lo/setLogger$extraCallback$extraCallback;->ICustomTabsCallback:Z

    if-nez v1, :cond_4

    .line 3153
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->asBinder:Lo/addChildEventListener;

    if-nez v1, :cond_3

    .line 3156
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    if-eqz v1, :cond_0

    .line 3157
    iget-boolean v2, v1, Lo/orderByChild;->ICustomTabsCallback$Stub:Z

    if-nez v2, :cond_0

    .line 3158
    monitor-exit v0

    return-object v1

    .line 3162
    :cond_0
    sget-object v1, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object v2, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    iget-object v3, p0, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady:Lo/serializeSessionApp;

    invoke-virtual {v1, v2, v3, p0}, Lo/goOnline;->ICustomTabsCallback(Lo/exists;Lo/serializeSessionApp;Lo/setLogger$extraCallback$extraCallback;)Lo/orderByChild;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3164
    iput-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    .line 3165
    monitor-exit v0

    return-object v1

    .line 3169
    :cond_1
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    if-nez v1, :cond_2

    .line 3170
    new-instance v1, Lo/equalTo;

    iget-object v2, p0, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 3207
    sget-object v3, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object v4, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    invoke-virtual {v3, v4}, Lo/goOnline;->extraCallback(Lo/exists;)Lo/setEventTarget;

    move-result-object v3

    .line 3170
    invoke-direct {v1, v2, v3}, Lo/equalTo;-><init>(Lo/serializeSessionApp;Lo/setEventTarget;)V

    iput-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    .line 3172
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3174
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    invoke-virtual {v0}, Lo/equalTo;->onPostMessage()Lo/onDisconnect;

    move-result-object v0

    .line 3175
    new-instance v7, Lo/orderByChild;

    invoke-direct {v7, v0}, Lo/orderByChild;-><init>(Lo/onDisconnect;)V

    .line 3301
    iget-object v0, v7, Lo/orderByChild;->asBinder:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3178
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter v0

    .line 3179
    :try_start_1
    sget-object v1, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object v2, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    invoke-virtual {v1, v2, v7}, Lo/goOnline;->extraCallback(Lo/exists;Lo/orderByChild;)V

    .line 3180
    iput-object v7, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    .line 3182
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3184
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 4138
    iget-object v5, v0, Lo/serializeSessionApp;->onTransact:Ljava/util/List;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 3184
    invoke-virtual/range {v1 .. v6}, Lo/orderByChild;->onMessageChannelReady(IIILjava/util/List;Z)V

    .line 4207
    sget-object p1, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object p2, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    invoke-virtual {p1, p2}, Lo/goOnline;->extraCallback(Lo/exists;)Lo/setEventTarget;

    move-result-object p1

    .line 4327
    iget-object p2, v7, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 3186
    invoke-virtual {p1, p2}, Lo/setEventTarget;->onMessageChannelReady(Lo/onDisconnect;)V

    return-object v7

    :catchall_0
    move-exception p1

    .line 3182
    monitor-exit v0

    throw p1

    .line 3153
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3152
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 3172
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/addChildEventListener;)V
    .locals 4

    .line 5192
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 5193
    :try_start_0
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->asBinder:Lo/addChildEventListener;

    if-ne p1, v1, :cond_0

    .line 5196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 5197
    invoke-virtual {p0, v0, v0, p1}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    return-void

    .line 5194
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/setLogger$extraCallback$extraCallback;->asBinder:Lo/addChildEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 5196
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized extraCallback()Lo/orderByChild;
    .locals 1

    monitor-enter p0

    .line 5211
    :try_start_0
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public extraCallback(ZZZ)V
    .locals 2

    .line 5229
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 5231
    :try_start_0
    iput-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->asBinder:Lo/addChildEventListener;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 5234
    iput-boolean p3, p0, Lo/setLogger$extraCallback$extraCallback;->ICustomTabsCallback:Z

    .line 5236
    :cond_1
    iget-object p2, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_2

    .line 5238
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    iput-boolean p3, p1, Lo/orderByChild;->ICustomTabsCallback$Stub:Z

    .line 5240
    :cond_2
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->asBinder:Lo/addChildEventListener;

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lo/setLogger$extraCallback$extraCallback;->ICustomTabsCallback:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    iget-boolean p1, p1, Lo/orderByChild;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_6

    .line 5241
    :cond_3
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    invoke-direct {p0, p1}, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady(Lo/orderByChild;)V

    .line 5242
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    iget p1, p1, Lo/orderByChild;->ICustomTabsCallback:I

    if-lez p1, :cond_4

    .line 5243
    iput-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    .line 5245
    :cond_4
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    iget-object p1, p1, Lo/orderByChild;->asBinder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5246
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lo/orderByChild;->onTransact:J

    .line 5247
    sget-object p1, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object p2, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    iget-object p3, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    invoke-virtual {p1, p2, p3}, Lo/goOnline;->onNavigationEvent(Lo/exists;Lo/orderByChild;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5248
    iget-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    goto :goto_1

    :cond_5
    move-object p1, v1

    .line 5251
    :goto_1
    iput-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    move-object v1, p1

    .line 5254
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    .line 5336
    iget-object p1, v1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    .line 5256
    invoke-static {p1}, Lo/createForTests;->extraCallback(Ljava/net/Socket;)V

    :cond_7
    return-void

    .line 5254
    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public onMessageChannelReady(Ljava/io/IOException;)V
    .locals 6

    .line 6276
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter v0

    .line 6277
    :try_start_0
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    if-eqz v1, :cond_2

    .line 6278
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    iget v1, v1, Lo/orderByChild;->ICustomTabsCallback:I

    if-nez v1, :cond_1

    .line 6280
    iget-object v1, p0, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    .line 6327
    iget-object v1, v1, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 6281
    iget-object v2, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    .line 8066
    iget-object v3, v1, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 7102
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 8146
    iget-object v3, v3, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    if-eqz v3, :cond_0

    .line 7104
    iget-object v3, v2, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 9146
    iget-object v3, v3, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    .line 7104
    iget-object v4, v2, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 10090
    iget-object v4, v4, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 7105
    invoke-virtual {v4}, Lo/fromCode;->extraCallback()Ljava/net/URI;

    move-result-object v4

    .line 11066
    iget-object v5, v1, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 7105
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v5

    .line 7104
    invoke-virtual {v3, v4, v5, p1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 7108
    :cond_0
    iget-object p1, v2, Lo/equalTo;->extraCallback:Lo/setEventTarget;

    invoke-virtual {p1, v1}, Lo/setEventTarget;->onPostMessage(Lo/onDisconnect;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6284
    iput-object p1, p0, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    .line 6287
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 11293
    invoke-virtual {p0, v0, p1, v0}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 6287
    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(IIIZZ)Lo/addChildEventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady(IIIZZ)Lo/orderByChild;

    move-result-object p1

    .line 1099
    iget-object p4, p1, Lo/orderByChild;->onPostMessage:Lo/setPersistenceEnabled;

    if-eqz p4, :cond_0

    .line 1100
    new-instance p2, Lo/addEventRegistration;

    iget-object p3, p1, Lo/orderByChild;->onPostMessage:Lo/setPersistenceEnabled;

    invoke-direct {p2, p0, p3}, Lo/addEventRegistration;-><init>(Lo/setLogger$extraCallback$extraCallback;Lo/setPersistenceEnabled;)V

    goto :goto_0

    .line 1336
    :cond_0
    iget-object p4, p1, Lo/orderByChild;->extraCallback:Ljava/net/Socket;

    .line 1102
    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1103
    iget-object p4, p1, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    invoke-interface {p4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p4

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v1, p2}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 1104
    iget-object p2, p1, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    invoke-interface {p2}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object p2

    int-to-long p3, p3

    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3, p4, p5}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    .line 1105
    new-instance p2, Lo/validateNoOrderByCall;

    iget-object p3, p1, Lo/orderByChild;->asInterface:Lo/fullLimitUpdateChild;

    iget-object p4, p1, Lo/orderByChild;->onRelationshipValidationResult:Lo/filtersNodes;

    invoke-direct {p2, p0, p3, p4}, Lo/validateNoOrderByCall;-><init>(Lo/setLogger$extraCallback$extraCallback;Lo/fullLimitUpdateChild;Lo/filtersNodes;)V

    .line 1108
    :goto_0
    iget-object p3, p0, Lo/setLogger$extraCallback$extraCallback;->extraCallback:Lo/exists;

    monitor-enter p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :try_start_1
    iget p4, p1, Lo/orderByChild;->ICustomTabsCallback:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p1, Lo/orderByChild;->ICustomTabsCallback:I

    .line 1110
    iput-object p2, p0, Lo/setLogger$extraCallback$extraCallback;->asBinder:Lo/addChildEventListener;

    .line 1111
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    :catchall_0
    move-exception p1

    .line 1112
    :try_start_2
    monitor-exit p3

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1114
    new-instance p2, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {p2, p1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 11404
    iget-object v0, p0, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady:Lo/serializeSessionApp;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
