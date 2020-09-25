.class final Lo/propertyName$1;
.super Lo/childChangedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/propertyName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lo/childChangedChange;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;)Ljava/net/Socket;
    .locals 4

    .line 3138
    sget-boolean v0, Lo/deserialize;->asInterface:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3139
    :cond_1
    :goto_0
    iget-object p1, p1, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/raiseEvents;

    .line 3140
    invoke-virtual {v0, p2, v1}, Lo/raiseEvents;->onPostMessage(Lo/deserializeToType;Lo/changeWithPrevName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3607
    iget-object v1, v0, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 3142
    invoke-virtual {p3}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 4505
    sget-boolean p1, Lo/getIndexEndValue;->extraCallback:Z

    if-nez p1, :cond_5

    iget-object p1, p3, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4506
    :cond_5
    :goto_2
    iget-object p1, p3, Lo/getIndexEndValue;->ICustomTabsCallback:Lo/getIndexStartName;

    if-nez p1, :cond_6

    iget-object p1, p3, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    iget-object p1, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 4509
    iget-object p1, p3, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    iget-object p1, p1, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    .line 4510
    invoke-virtual {p3, v2, v3, v3}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object p2

    .line 4513
    iput-object v0, p3, Lo/getIndexEndValue;->onNavigationEvent:Lo/raiseEvents;

    .line 4514
    iget-object p3, v0, Lo/raiseEvents;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 4506
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_7
    return-object v1
.end method

.method public final ICustomTabsCallback(Lo/deserialize;)Lo/generateEvent;
    .locals 0

    .line 171
    iget-object p1, p1, Lo/deserialize;->ICustomTabsCallback:Lo/generateEvent;

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/convertString;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 5

    .line 6167
    iget-object v0, p1, Lo/convertString;->asInterface:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6168
    sget-object v0, Lo/convertLong;->ICustomTabsCallback:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lo/convertString;->asInterface:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/generateEventsForType;->onPostMessage(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6169
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 6170
    :goto_0
    iget-object v1, p1, Lo/convertString;->onTransact:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6171
    sget-object v1, Lo/generateEventsForType;->asInterface:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lo/convertString;->onTransact:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lo/generateEventsForType;->onPostMessage(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 6172
    :cond_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 6176
    :goto_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 6177
    sget-object v3, Lo/convertLong;->ICustomTabsCallback:Ljava/util/Comparator;

    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lo/generateEventsForType;->onPostMessage(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    if-eq v3, p3, :cond_2

    .line 6180
    aget-object p3, v2, v3

    invoke-static {v0, p3}, Lo/generateEventsForType;->onNavigationEvent([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6184
    :cond_2
    new-instance p3, Lo/convertString$onNavigationEvent;

    invoke-direct {p3, p1}, Lo/convertString$onNavigationEvent;-><init>(Lo/convertString;)V

    .line 6185
    invoke-virtual {p3, v0}, Lo/convertString$onNavigationEvent;->ICustomTabsCallback([Ljava/lang/String;)Lo/convertString$onNavigationEvent;

    move-result-object p1

    .line 6186
    invoke-virtual {p1, v1}, Lo/convertString$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/convertString$onNavigationEvent;

    move-result-object p1

    .line 6338
    new-instance p3, Lo/convertString;

    invoke-direct {p3, p1}, Lo/convertString;-><init>(Lo/convertString$onNavigationEvent;)V

    .line 6154
    iget-object p1, p3, Lo/convertString;->onTransact:[Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 6155
    iget-object p1, p3, Lo/convertString;->onTransact:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 6157
    :cond_3
    iget-object p1, p3, Lo/convertString;->asInterface:[Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 6158
    iget-object p1, p3, Lo/convertString;->asInterface:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final extraCallback(Lo/convertInteger;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 192
    check-cast p1, Lo/getIndexedNode;

    invoke-virtual {p1, p2}, Lo/getIndexedNode;->onMessageChannelReady(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/deserialize;Lo/raiseEvents;)V
    .locals 2

    .line 5150
    sget-boolean v0, Lo/deserialize;->asInterface:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5151
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lo/deserialize;->asBinder:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5152
    iput-boolean v0, p1, Lo/deserialize;->asBinder:Z

    .line 5153
    sget-object v0, Lo/deserialize;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Lo/deserialize;->onMessageChannelReady:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5155
    :cond_2
    iget-object p1, p1, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/childAddedChange$ICustomTabsCallback;)I
    .locals 0

    .line 175
    iget p1, p1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    return p1
.end method

.method public final onNavigationEvent(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;Lo/changeWithPrevName;)Lo/raiseEvents;
    .locals 2

    .line 3123
    sget-boolean v0, Lo/deserialize;->asInterface:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3124
    :cond_1
    :goto_0
    iget-object p1, p1, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/raiseEvents;

    .line 3125
    invoke-virtual {v0, p2, p4}, Lo/raiseEvents;->onPostMessage(Lo/deserializeToType;Lo/changeWithPrevName;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 3126
    invoke-virtual {p3, v0, p1}, Lo/getIndexEndValue;->onMessageChannelReady(Lo/raiseEvents;Z)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-virtual {p1, p2}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1362
    iget-object v0, p1, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object p1, p1, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/deserialize;Lo/raiseEvents;)Z
    .locals 1

    .line 2163
    sget-boolean v0, Lo/deserialize;->asInterface:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2164
    :cond_1
    :goto_0
    iget-boolean v0, p2, Lo/raiseEvents;->onTransact:Z

    if-eqz v0, :cond_2

    .line 2165
    iget-object p1, p1, Lo/deserialize;->onPostMessage:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 2168
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Lo/deserializeToType;Lo/deserializeToType;)Z
    .locals 0

    .line 158
    invoke-virtual {p1, p2}, Lo/deserializeToType;->onNavigationEvent(Lo/deserializeToType;)Z

    move-result p1

    return p1
.end method
