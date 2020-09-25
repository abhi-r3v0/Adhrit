.class Lo/tryScheduleReconnect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addToArray;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tryScheduleReconnect$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/getIdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getIdManager<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/tryScheduleReconnect$onMessageChannelReady;

.field private static final onMessageChannelReady:Ljava/util/logging/Logger;


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/net/InetSocketAddress;

.field private final onNavigationEvent:Lo/tryScheduleReconnect$onMessageChannelReady;

.field private final onPostMessage:Lo/getIdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getIdManager<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    const-class v0, Lo/tryScheduleReconnect;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    .line 125
    new-instance v0, Lo/tryScheduleReconnect$4;

    invoke-direct {v0}, Lo/tryScheduleReconnect$4;-><init>()V

    sput-object v0, Lo/tryScheduleReconnect;->extraCallback:Lo/tryScheduleReconnect$onMessageChannelReady;

    .line 143
    new-instance v0, Lo/tryScheduleReconnect$1;

    invoke-direct {v0}, Lo/tryScheduleReconnect$1;-><init>()V

    sput-object v0, Lo/tryScheduleReconnect;->ICustomTabsCallback:Lo/getIdManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 171
    sget-object v0, Lo/tryScheduleReconnect;->ICustomTabsCallback:Lo/getIdManager;

    sget-object v1, Lo/tryScheduleReconnect;->extraCallback:Lo/tryScheduleReconnect$onMessageChannelReady;

    const-string v2, "GRPC_PROXY_EXP"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lo/tryScheduleReconnect;-><init>(Lo/getIdManager;Lo/tryScheduleReconnect$onMessageChannelReady;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lo/getIdManager;Lo/tryScheduleReconnect$onMessageChannelReady;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getIdManager<",
            "Ljava/net/ProxySelector;",
            ">;",
            "Lo/tryScheduleReconnect$onMessageChannelReady;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 179
    check-cast p1, Lo/getIdManager;

    iput-object p1, p0, Lo/tryScheduleReconnect;->onPostMessage:Lo/getIdManager;

    if-eqz p2, :cond_3

    .line 180
    check-cast p2, Lo/tryScheduleReconnect$onMessageChannelReady;

    iput-object p2, p0, Lo/tryScheduleReconnect;->onNavigationEvent:Lo/tryScheduleReconnect$onMessageChannelReady;

    if-eqz p3, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    const-string p2, ":"

    .line 3289
    invoke-virtual {p3, p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x50

    .line 3291
    array-length p3, p1

    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    .line 3292
    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3294
    :cond_1
    sget-object p3, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    const-string v0, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 3299
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 182
    :goto_0
    iput-object v0, p0, Lo/tryScheduleReconnect;->ICustomTabsCallback$Stub:Ljava/net/InetSocketAddress;

    return-void

    .line 184
    :cond_2
    iput-object v0, p0, Lo/tryScheduleReconnect;->ICustomTabsCallback$Stub:Ljava/net/InetSocketAddress;

    return-void

    .line 2890
    :cond_3
    throw v0

    .line 1890
    :cond_4
    throw v0
.end method

.method static synthetic onMessageChannelReady()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private onMessageChannelReady(Ljava/net/InetSocketAddress;)Lo/removeFromArray;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 207
    :try_start_0
    invoke-static {p1}, Lo/getAuthTokenProvider;->onNavigationEvent(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    new-instance v9, Ljava/net/URI;

    const-string v2, "https"

    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    iget-object v1, p0, Lo/tryScheduleReconnect;->onPostMessage:Lo/getIdManager;

    invoke-interface {v1}, Lo/getIdManager;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 233
    sget-object p1, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "proxy selector is null, so continuing without proxy lookup"

    invoke-virtual {p1, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {v1, v9}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 238
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 239
    sget-object v2, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    const-string v3, "More than 1 proxy detected, gRPC will select the first one"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 241
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 243
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_2

    return-object v0

    .line 246
    :cond_2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 250
    iget-object v3, p0, Lo/tryScheduleReconnect;->onNavigationEvent:Lo/tryScheduleReconnect$onMessageChannelReady;

    .line 251
    invoke-static {v1}, Lo/getAuthTokenProvider;->onNavigationEvent(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 253
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    const-string v8, ""

    const-string v7, "https"

    .line 250
    invoke-interface/range {v3 .. v8}, Lo/tryScheduleReconnect$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v3

    .line 259
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 261
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v5, v4, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v1, v5

    .line 7123
    :cond_3
    new-instance v4, Lo/joinBytes$ICustomTabsCallback;

    invoke-direct {v4, v2}, Lo/joinBytes$ICustomTabsCallback;-><init>(B)V

    if-eqz p1, :cond_7

    .line 7153
    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, v4, Lo/joinBytes$ICustomTabsCallback;->onPostMessage:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_6

    .line 8145
    check-cast v1, Ljava/net/SocketAddress;

    iput-object v1, v4, Lo/joinBytes$ICustomTabsCallback;->onNavigationEvent:Ljava/net/SocketAddress;

    if-nez v3, :cond_4

    .line 9179
    new-instance p1, Lo/joinBytes;

    iget-object v6, v4, Lo/joinBytes$ICustomTabsCallback;->onNavigationEvent:Ljava/net/SocketAddress;

    iget-object v7, v4, Lo/joinBytes$ICustomTabsCallback;->onPostMessage:Ljava/net/InetSocketAddress;

    iget-object v8, v4, Lo/joinBytes$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-object v9, v4, Lo/joinBytes$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lo/joinBytes;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;B)V

    return-object p1

    .line 276
    :cond_4
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p1

    .line 10162
    iput-object p1, v4, Lo/joinBytes$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 277
    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 10171
    :goto_0
    iput-object v0, v4, Lo/joinBytes$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 10179
    new-instance p1, Lo/joinBytes;

    iget-object v6, v4, Lo/joinBytes$ICustomTabsCallback;->onNavigationEvent:Ljava/net/SocketAddress;

    iget-object v7, v4, Lo/joinBytes$ICustomTabsCallback;->onPostMessage:Ljava/net/InetSocketAddress;

    iget-object v8, v4, Lo/joinBytes$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-object v9, v4, Lo/joinBytes$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lo/joinBytes;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;B)V

    return-object p1

    .line 8910
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxyAddress"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7910
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "targetAddress"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 224
    sget-object v1, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to construct URI for proxy lookup, proceeding without proxy"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 210
    sget-object v1, Lo/tryScheduleReconnect;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to get host for proxy lookup, proceeding without proxy"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final onPostMessage(Ljava/net/SocketAddress;)Lo/removeFromArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 194
    :cond_0
    iget-object v0, p0, Lo/tryScheduleReconnect;->ICustomTabsCallback$Stub:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_3

    .line 4123
    new-instance v0, Lo/joinBytes$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/joinBytes$ICustomTabsCallback;-><init>(B)V

    .line 195
    iget-object v1, p0, Lo/tryScheduleReconnect;->ICustomTabsCallback$Stub:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    .line 4145
    check-cast v1, Ljava/net/SocketAddress;

    iput-object v1, v0, Lo/joinBytes$ICustomTabsCallback;->onNavigationEvent:Ljava/net/SocketAddress;

    .line 196
    check-cast p1, Ljava/net/InetSocketAddress;

    if-eqz p1, :cond_1

    .line 5153
    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, v0, Lo/joinBytes$ICustomTabsCallback;->onPostMessage:Ljava/net/InetSocketAddress;

    .line 6179
    new-instance p1, Lo/joinBytes;

    iget-object v2, v0, Lo/joinBytes$ICustomTabsCallback;->onNavigationEvent:Ljava/net/SocketAddress;

    iget-object v3, v0, Lo/joinBytes$ICustomTabsCallback;->onPostMessage:Ljava/net/InetSocketAddress;

    iget-object v4, v0, Lo/joinBytes$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, v0, Lo/joinBytes$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/joinBytes;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;B)V

    return-object p1

    .line 5910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "targetAddress"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "proxyAddress"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_3
    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-direct {p0, p1}, Lo/tryScheduleReconnect;->onMessageChannelReady(Ljava/net/InetSocketAddress;)Lo/removeFromArray;

    move-result-object p1

    return-object p1
.end method
