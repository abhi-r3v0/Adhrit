.class public final Lo/NodeFromJSON;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NodeFromJSON$extraCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/isFullyInitialized;

.field private ICustomTabsCallback$Stub:Z

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ensureIndexed$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getQueryDefinition$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/convertInteger$ICustomTabsCallback;

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lo/leafCompare<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/convertInteger$ICustomTabsCallback;Lo/isFullyInitialized;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/convertInteger$ICustomTabsCallback;",
            "Lo/isFullyInitialized;",
            "Ljava/util/List<",
            "Lo/ensureIndexed$onPostMessage;",
            ">;",
            "Ljava/util/List<",
            "Lo/getQueryDefinition$ICustomTabsCallback;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance p5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p5, p0, Lo/NodeFromJSON;->onPostMessage:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lo/NodeFromJSON;->onNavigationEvent:Lo/convertInteger$ICustomTabsCallback;

    .line 74
    iput-object p2, p0, Lo/NodeFromJSON;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 75
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    .line 76
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/NodeFromJSON;->onMessageChannelReady:Ljava/util/List;

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lo/NodeFromJSON;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method private onPostMessage(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lo/getPredecessorChildName;->ICustomTabsCallback()Lo/getPredecessorChildName;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 157
    invoke-virtual {v0, v3}, Lo/getPredecessorChildName;->extraCallback(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {p0, v3}, Lo/NodeFromJSON;->extraCallback(Ljava/lang/reflect/Method;)Lo/leafCompare;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/Class;)V

    .line 130
    iget-boolean v0, p0, Lo/NodeFromJSON;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lo/NodeFromJSON;->onPostMessage(Ljava/lang/Class;)V

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lo/NodeFromJSON$3;

    invoke-direct {v2, p0, p1}, Lo/NodeFromJSON$3;-><init>(Lo/NodeFromJSON;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final extraCallback(Ljava/lang/reflect/Method;)Lo/leafCompare;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lo/leafCompare<",
            "**>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lo/NodeFromJSON;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/leafCompare;

    if-eqz v0, :cond_0

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lo/NodeFromJSON;->onPostMessage:Ljava/util/Map;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lo/NodeFromJSON;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/leafCompare;

    if-nez v1, :cond_21

    .line 170
    new-instance v1, Lo/leafCompare$ICustomTabsCallback;

    invoke-direct {v1, p0, p1}, Lo/leafCompare$ICustomTabsCallback;-><init>(Lo/NodeFromJSON;Ljava/lang/reflect/Method;)V

    .line 1162
    invoke-virtual {v1}, Lo/leafCompare$ICustomTabsCallback;->onMessageChannelReady()Lo/getQueryDefinition;

    move-result-object v2

    iput-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->extraCommand:Lo/getQueryDefinition;

    .line 1163
    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->extraCommand:Lo/getQueryDefinition;

    invoke-interface {v2}, Lo/getQueryDefinition;->extraCallback()Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Type;

    .line 1164
    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Type;

    const-class v3, Lo/getMinNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_20

    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Type;

    const-class v3, Lo/childAddedChange;

    if-eq v2, v3, :cond_20

    .line 1169
    invoke-virtual {v1}, Lo/leafCompare$ICustomTabsCallback;->onNavigationEvent()Lo/ensureIndexed;

    move-result-object v2

    iput-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->updateVisuals:Lo/ensureIndexed;

    .line 1171
    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->onMessageChannelReady:[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v3, :cond_10

    aget-object v8, v2, v6

    .line 2242
    instance-of v9, v8, Lo/getEventHandler;

    if-eqz v9, :cond_1

    const-string v7, "DELETE"

    .line 2243
    check-cast v8, Lo/getEventHandler;

    invoke-interface {v8}, Lo/getEventHandler;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2244
    :cond_1
    instance-of v9, v8, Lo/pong;

    if-eqz v9, :cond_2

    const-string v7, "GET"

    .line 2245
    check-cast v8, Lo/pong;

    invoke-interface {v8}, Lo/pong;->onNavigationEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2246
    :cond_2
    instance-of v9, v8, Lo/handleReceiverError;

    if-eqz v9, :cond_4

    const-string v7, "HEAD"

    .line 2247
    check-cast v8, Lo/handleReceiverError;

    invoke-interface {v8}, Lo/handleReceiverError;->onNavigationEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2248
    const-class v7, Ljava/lang/Void;

    iget-object v8, v1, Lo/leafCompare$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string p1, "HEAD method must use Void as response type."

    new-array v2, v5, [Ljava/lang/Object;

    .line 2743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 2249
    throw p1

    .line 2251
    :cond_4
    instance-of v9, v8, Lo/WebSocketException;

    if-eqz v9, :cond_5

    const-string v9, "PATCH"

    .line 2252
    check-cast v8, Lo/WebSocketException;

    invoke-interface {v8}, Lo/WebSocketException;->onNavigationEvent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v9, v8, v7}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2253
    :cond_5
    instance-of v9, v8, Lo/verifyServerStatusLine;

    if-eqz v9, :cond_6

    const-string v9, "POST"

    .line 2254
    check-cast v8, Lo/verifyServerStatusLine;

    invoke-interface {v8}, Lo/verifyServerStatusLine;->onPostMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v9, v8, v7}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2255
    :cond_6
    instance-of v9, v8, Lo/verifyServerHandshakeHeaders;

    if-eqz v9, :cond_7

    const-string v9, "PUT"

    .line 2256
    check-cast v8, Lo/verifyServerHandshakeHeaders;

    invoke-interface {v8}, Lo/verifyServerHandshakeHeaders;->extraCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v9, v8, v7}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2257
    :cond_7
    instance-of v9, v8, Lo/blockClose;

    if-eqz v9, :cond_8

    const-string v7, "OPTIONS"

    .line 2258
    check-cast v8, Lo/blockClose;

    invoke-interface {v8}, Lo/blockClose;->onPostMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2259
    :cond_8
    instance-of v9, v8, Lo/closeSocket;

    if-eqz v9, :cond_9

    .line 2260
    check-cast v8, Lo/closeSocket;

    .line 2261
    invoke-interface {v8}, Lo/closeSocket;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8}, Lo/closeSocket;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lo/closeSocket;->onNavigationEvent()Z

    move-result v8

    invoke-virtual {v1, v7, v9, v8}, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2262
    :cond_9
    instance-of v9, v8, Lo/getInnerThread;

    if-eqz v9, :cond_b

    .line 2263
    check-cast v8, Lo/getInnerThread;

    invoke-interface {v8}, Lo/getInnerThread;->onMessageChannelReady()[Ljava/lang/String;

    move-result-object v7

    .line 2264
    array-length v8, v7

    if-eqz v8, :cond_a

    .line 2267
    invoke-virtual {v1, v7}, Lo/leafCompare$ICustomTabsCallback;->onMessageChannelReady([Ljava/lang/String;)Lo/shouldIncludeField;

    move-result-object v7

    iput-object v7, v1, Lo/leafCompare$ICustomTabsCallback;->warmup:Lo/shouldIncludeField;

    goto :goto_1

    :cond_a
    const-string p1, "@Headers annotation is empty."

    new-array v2, v5, [Ljava/lang/Object;

    .line 3743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 2265
    throw p1

    .line 2268
    :cond_b
    instance-of v9, v8, Lo/getHandshake;

    if-eqz v9, :cond_d

    .line 2269
    iget-boolean v8, v1, Lo/leafCompare$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-nez v8, :cond_c

    .line 2272
    iput-boolean v7, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsService:Z

    goto :goto_1

    :cond_c
    const-string p1, "Only one encoding annotation is allowed."

    new-array v2, v5, [Ljava/lang/Object;

    .line 4743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 2270
    throw p1

    .line 2273
    :cond_d
    instance-of v8, v8, Lo/onCloseOpReceived;

    if-eqz v8, :cond_f

    .line 2274
    iget-boolean v8, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsService:Z

    if-nez v8, :cond_e

    .line 2277
    iput-boolean v7, v1, Lo/leafCompare$ICustomTabsCallback;->getInterfaceDescriptor:Z

    goto :goto_1

    :cond_e
    const-string p1, "Only one encoding annotation is allowed."

    new-array v2, v5, [Ljava/lang/Object;

    .line 5743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 2275
    throw p1

    :cond_f
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1175
    :cond_10
    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v2, :cond_1f

    .line 1179
    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v2, :cond_13

    .line 1180
    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsService:Z

    if-nez v2, :cond_12

    .line 1184
    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-nez v2, :cond_11

    goto :goto_2

    :cond_11
    const-string p1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v5, [Ljava/lang/Object;

    .line 8743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1185
    throw p1

    :cond_12
    const-string p1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v2, v5, [Ljava/lang/Object;

    .line 7743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1181
    throw p1

    .line 1190
    :cond_13
    :goto_2
    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->extraCallback:[[Ljava/lang/annotation/Annotation;

    array-length v2, v2

    .line 1191
    new-array v3, v2, [Lo/getFirstChild;

    iput-object v3, v1, Lo/leafCompare$ICustomTabsCallback;->postMessage:[Lo/getFirstChild;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_16

    .line 1193
    iget-object v6, v1, Lo/leafCompare$ICustomTabsCallback;->onNavigationEvent:[Ljava/lang/reflect/Type;

    aget-object v6, v6, v3

    .line 1194
    invoke-static {v6}, Lo/nameAndPriorityCompare;->ICustomTabsCallback(Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 1199
    iget-object v8, v1, Lo/leafCompare$ICustomTabsCallback;->extraCallback:[[Ljava/lang/annotation/Annotation;

    aget-object v8, v8, v3

    if-eqz v8, :cond_14

    .line 1204
    iget-object v9, v1, Lo/leafCompare$ICustomTabsCallback;->postMessage:[Lo/getFirstChild;

    invoke-virtual {v1, v3, v6, v8}, Lo/leafCompare$ICustomTabsCallback;->onPostMessage(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lo/getFirstChild;

    move-result-object v6

    aput-object v6, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_14
    const-string p1, "No Retrofit annotation found."

    new-array v2, v5, [Ljava/lang/Object;

    .line 1201
    invoke-virtual {v1, v3, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->onPostMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_15
    const-string p1, "Parameter type must not include a type variable or wildcard: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v6, v2, v5

    .line 1195
    invoke-virtual {v1, v3, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->onPostMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1207
    :cond_16
    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->newSession:Ljava/lang/String;

    if-nez v2, :cond_18

    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->asBinder:Z

    if-eqz v2, :cond_17

    goto :goto_4

    :cond_17
    const-string p1, "Missing either @%s URL or @Url parameter."

    new-array v2, v7, [Ljava/lang/Object;

    .line 1208
    iget-object v3, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 9743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1208
    throw p1

    .line 1210
    :cond_18
    :goto_4
    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsService:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->onRelationshipValidationResult:Z

    if-nez v2, :cond_19

    goto :goto_5

    :cond_19
    const-string p1, "Non-body HTTP method cannot contain @Body."

    new-array v2, v5, [Ljava/lang/Object;

    .line 10743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1211
    throw p1

    .line 1213
    :cond_1a
    :goto_5
    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->getInterfaceDescriptor:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->onTransact:Z

    if-eqz v2, :cond_1b

    goto :goto_6

    :cond_1b
    const-string p1, "Form-encoded method must contain at least one @Field."

    new-array v2, v5, [Ljava/lang/Object;

    .line 11743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1214
    throw p1

    .line 1216
    :cond_1c
    :goto_6
    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsService:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Lo/leafCompare$ICustomTabsCallback;->asInterface:Z

    if-eqz v2, :cond_1d

    goto :goto_7

    :cond_1d
    const-string p1, "Multipart method must contain at least one @Part."

    new-array v2, v5, [Ljava/lang/Object;

    .line 12743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1217
    throw p1

    .line 1220
    :cond_1e
    :goto_7
    new-instance v2, Lo/leafCompare;

    invoke-direct {v2, v1}, Lo/leafCompare;-><init>(Lo/leafCompare$ICustomTabsCallback;)V

    .line 171
    iget-object v1, p0, Lo/NodeFromJSON;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_8

    :cond_1f
    const-string p1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v2, v5, [Ljava/lang/Object;

    .line 6743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1176
    throw p1

    .line 1165
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lo/leafCompare$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Type;

    .line 1166
    invoke-static {v2}, Lo/nameAndPriorityCompare;->onPostMessage(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v5, [Ljava/lang/Object;

    .line 1743
    invoke-virtual {v1, v4, p1, v2}, Lo/leafCompare$ICustomTabsCallback;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 1165
    throw p1

    .line 173
    :cond_21
    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lo/ensureIndexed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lo/ensureIndexed<",
            "Lo/getChildKey;",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "type == null"

    .line 324
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "annotations == null"

    .line 325
    invoke-static {p2, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 328
    iget-object v1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 329
    iget-object v3, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    .line 330
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ensureIndexed$onPostMessage;

    invoke-virtual {v3, p1, p2, p0}, Lo/ensureIndexed$onPostMessage;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Could not locate ResponseBody converter for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    .line 339
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Tried:"

    .line 347
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object p1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    const-string v1, "\n   * "

    .line 349
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ensureIndexed$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lo/ensureIndexed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lo/ensureIndexed<",
            "TT;",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type == null"

    .line 13274
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parameterAnnotations == null"

    .line 13275
    invoke-static {p2, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "methodAnnotations == null"

    .line 13276
    invoke-static {p3, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13278
    iget-object v0, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13279
    iget-object v1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 13280
    iget-object v3, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ensureIndexed$onPostMessage;

    .line 13282
    invoke-virtual {v3, p1, p2, p3, p0}, Lo/ensureIndexed$onPostMessage;->extraCallback(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13289
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not locate RequestBody converter for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13290
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".\n"

    .line 13291
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Tried:"

    .line 13299
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13300
    iget-object p1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    const-string p3, "\n   * "

    .line 13301
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/ensureIndexed$onPostMessage;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13303
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lo/ensureIndexed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type == null"

    .line 359
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "annotations == null"

    .line 360
    invoke-static {p2, p1}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    iget-object p1, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 363
    iget-object v0, p0, Lo/NodeFromJSON;->extraCallback:Ljava/util/List;

    .line 364
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    sget-object p1, Lo/maxPost$ICustomTabsCallback;->onPostMessage:Lo/maxPost$ICustomTabsCallback;

    return-object p1
.end method
