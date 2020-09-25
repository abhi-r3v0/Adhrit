.class final Lo/setValueInternal$2;
.super Lo/goOnline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setValueInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/goOnline;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/exists;Lo/serializeSessionApp;Lo/setLogger$extraCallback$extraCallback;)Lo/orderByChild;
    .locals 3

    .line 3172
    sget-boolean v0, Lo/exists;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3173
    :cond_1
    :goto_0
    iget-object p1, p1, Lo/exists;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/orderByChild;

    .line 3176
    iget-object v1, v0, Lo/orderByChild;->asBinder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3340
    iget-object v2, v0, Lo/orderByChild;->onPostMessage:Lo/setPersistenceEnabled;

    if-eqz v2, :cond_3

    .line 3342
    invoke-virtual {v2}, Lo/setPersistenceEnabled;->ICustomTabsCallback()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-ge v1, v2, :cond_2

    .line 4327
    iget-object v1, v0, Lo/orderByChild;->onNavigationEvent:Lo/onDisconnect;

    .line 3177
    iget-object v1, v1, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lo/orderByChild;->ICustomTabsCallback$Stub:Z

    if-nez v1, :cond_2

    .line 5301
    iget-object p1, v0, Lo/orderByChild;->asBinder:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final extraCallback(Lo/exists;)Lo/setEventTarget;
    .locals 0

    .line 93
    iget-object p1, p1, Lo/exists;->onNavigationEvent:Lo/setEventTarget;

    return-object p1
.end method

.method public final extraCallback(Lo/exists;Lo/orderByChild;)V
    .locals 2

    .line 6187
    sget-boolean v0, Lo/exists;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6188
    :cond_1
    :goto_0
    iget-object v0, p1, Lo/exists;->onPostMessage:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6189
    iget-object v0, p1, Lo/exists;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Lo/exists;->extraCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6191
    :cond_2
    iget-object p1, p1, Lo/exists;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Lo/setValueInternal;)Lo/setHijackHash;
    .locals 0

    .line 1294
    iget-object p1, p1, Lo/setValueInternal;->ICustomTabsService:Lo/setHijackHash;

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/child;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 4

    .line 7144
    iget-object v0, p1, Lo/child;->extraCallback:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    iget-object v1, p1, Lo/child;->extraCallback:[Ljava/lang/String;

    .line 7145
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/createForTests;->ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 7146
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 7147
    :goto_0
    iget-object v1, p1, Lo/child;->asBinder:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-class v1, Ljava/lang/String;

    iget-object v2, p1, Lo/child;->asBinder:[Ljava/lang/String;

    .line 7148
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/createForTests;->ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    .line 7149
    :cond_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz p3, :cond_2

    .line 7153
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p3

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {p3, v2}, Lo/createForTests;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7154
    invoke-static {v0, v2}, Lo/createForTests;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7157
    :cond_2
    new-instance p3, Lo/child$extraCallback;

    invoke-direct {p3, p1}, Lo/child$extraCallback;-><init>(Lo/child;)V

    .line 7158
    invoke-virtual {p3, v0}, Lo/child$extraCallback;->onMessageChannelReady([Ljava/lang/String;)Lo/child$extraCallback;

    move-result-object p1

    .line 7159
    invoke-virtual {p1, v1}, Lo/child$extraCallback;->onNavigationEvent([Ljava/lang/String;)Lo/child$extraCallback;

    move-result-object p1

    .line 7328
    new-instance p3, Lo/child;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lo/child;-><init>(Lo/child$extraCallback;B)V

    .line 7131
    iget-object p1, p3, Lo/child;->asBinder:[Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 7132
    iget-object p1, p3, Lo/child;->asBinder:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 7134
    :cond_3
    iget-object p1, p3, Lo/child;->extraCallback:[Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 7135
    iget-object p1, p3, Lo/child;->extraCallback:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onNavigationEvent(Lo/getRef$ICustomTabsCallback;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-virtual {p1, p2}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    return-void
.end method

.method public final onNavigationEvent(Lo/exists;Lo/orderByChild;)Z
    .locals 1

    .line 2199
    sget-boolean v0, Lo/exists;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2200
    :cond_1
    :goto_0
    iget-boolean v0, p2, Lo/orderByChild;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_3

    iget v0, p1, Lo/exists;->ICustomTabsCallback:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 2204
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    .line 2201
    :cond_3
    :goto_1
    iget-object p1, p1, Lo/exists;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
