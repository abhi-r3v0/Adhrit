.class final Lo/CrashlyticsOriginAnalyticsEventLogger$warmup;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "warmup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/performCreateApp;Lo/performCreateApp;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;",
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 2930
    invoke-direct/range {v0 .. v5}, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/performCreateApp;ILjava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2940
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3894
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 3895
    new-instance v1, Lo/serializeEvent;

    invoke-direct {v1}, Lo/serializeEvent;-><init>()V

    .line 4144
    iget v2, v1, Lo/serializeEvent;->onNavigationEvent:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v6, v1, Lo/serializeEvent;->onNavigationEvent:I

    if-eqz v2, :cond_f

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_e

    .line 4149
    iput v0, v1, Lo/serializeEvent;->onNavigationEvent:I

    .line 3896
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 3897
    invoke-virtual {v1, v0}, Lo/serializeEvent;->onNavigationEvent(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;)Lo/serializeEvent;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 5255
    iget-object v2, v0, Lo/serializeEvent;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v6, v0, Lo/serializeEvent;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5256
    move-object v6, v1

    check-cast v6, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    iput-object v6, v0, Lo/serializeEvent;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 5257
    sget-object v6, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    if-eq v1, v6, :cond_3

    .line 5259
    iput-boolean v5, v0, Lo/serializeEvent;->onMessageChannelReady:Z

    .line 3898
    :cond_3
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->extraCallback:Lo/performCreateApp;

    .line 6122
    iget-object v6, v0, Lo/serializeEvent;->ICustomTabsCallback:Lo/performCreateApp;

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    iget-object v7, v0, Lo/serializeEvent;->ICustomTabsCallback:Lo/performCreateApp;

    if-eqz v6, :cond_b

    if-eqz v1, :cond_a

    .line 6123
    check-cast v1, Lo/performCreateApp;

    iput-object v1, v0, Lo/serializeEvent;->ICustomTabsCallback:Lo/performCreateApp;

    .line 6124
    iput-boolean v5, v0, Lo/serializeEvent;->onMessageChannelReady:Z

    .line 3899
    iget v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->onNavigationEvent:I

    .line 7178
    iget v2, v0, Lo/serializeEvent;->extraCallback:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget v3, v0, Lo/serializeEvent;->extraCallback:I

    if-eqz v2, :cond_9

    if-lez v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-eqz v4, :cond_8

    .line 7183
    iput v1, v0, Lo/serializeEvent;->extraCallback:I

    .line 2942
    invoke-virtual {v0}, Lo/serializeEvent;->onPostMessage()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 8906
    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8910
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 8911
    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    return-void

    .line 8128
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7563
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "concurrency level was already set to %s"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6890
    :cond_a
    throw v2

    .line 6592
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v7, v0, v4

    const-string v1, "key equivalence was already set to %s"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5890
    :cond_c
    throw v2

    .line 5592
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v6, v0, v4

    const-string v1, "Value strength was already set to %s"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5128
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4563
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "initial capacity was already set to %s"

    invoke-static {v1, v0}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2947
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2935
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3884
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3885
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3886
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3887
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3889
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
