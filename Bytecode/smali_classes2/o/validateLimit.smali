.class public final Lo/validateLimit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onChildMoved;


# static fields
.field public static final ICustomTabsCallback:Lo/onChildMoved;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lo/validateLimit;

    invoke-direct {v0}, Lo/validateLimit;-><init>()V

    sput-object v0, Lo/validateLimit;->ICustomTabsCallback:Lo/onChildMoved;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/net/Proxy;Lo/fromCode;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 11391
    :cond_0
    iget-object p0, p1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 85
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Ljava/net/Proxy;Lo/removeValue;)Lo/fromException;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual/range {p2 .. p2}, Lo/removeValue;->extraCallback()Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p2

    .line 7075
    iget-object v1, v1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 8048
    iget-object v2, v1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 64
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/hasChildren;

    .line 9032
    iget-object v7, v6, Lo/hasChildren;->onMessageChannelReady:Ljava/lang/String;

    const-string v8, "Basic"

    .line 65
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    .line 69
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v15, p1

    invoke-static {v15, v2}, Lo/validateLimit;->extraCallback(Ljava/net/Proxy;Lo/fromCode;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    .line 9348
    iget-object v11, v2, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 10037
    iget-object v12, v6, Lo/hasChildren;->ICustomTabsCallback:Ljava/lang/String;

    .line 11032
    iget-object v13, v6, Lo/hasChildren;->onMessageChannelReady:Ljava/lang/String;

    .line 70
    invoke-virtual {v2}, Lo/fromCode;->onMessageChannelReady()Ljava/net/URL;

    move-result-object v14

    sget-object v6, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object v15, v6

    .line 68
    invoke-static/range {v8 .. v15}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {v6}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11094
    new-instance v2, Lo/fromException$onNavigationEvent;

    invoke-direct {v2, v1, v4}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    const-string v1, "Proxy-Authorization"

    .line 76
    invoke-virtual {v2, v1, v0}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v0

    .line 11277
    iget-object v1, v0, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v1, :cond_0

    .line 11278
    new-instance v1, Lo/fromException;

    invoke-direct {v1, v0, v4}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    return-object v1

    .line 11277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/net/Proxy;Lo/removeValue;)Lo/fromException;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual/range {p2 .. p2}, Lo/removeValue;->extraCallback()Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p2

    .line 1075
    iget-object v1, v1, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 2048
    iget-object v2, v1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 42
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/hasChildren;

    .line 3032
    iget-object v7, v6, Lo/hasChildren;->onMessageChannelReady:Ljava/lang/String;

    const-string v8, "Basic"

    .line 43
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3391
    iget-object v8, v2, Lo/fromCode;->extraCallback:Ljava/lang/String;

    move-object/from16 v7, p1

    .line 46
    invoke-static {v7, v2}, Lo/validateLimit;->extraCallback(Ljava/net/Proxy;Lo/fromCode;)Ljava/net/InetAddress;

    move-result-object v9

    .line 3400
    iget v10, v2, Lo/fromCode;->onMessageChannelReady:I

    .line 4348
    iget-object v11, v2, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 5037
    iget-object v12, v6, Lo/hasChildren;->ICustomTabsCallback:Ljava/lang/String;

    .line 6032
    iget-object v13, v6, Lo/hasChildren;->onMessageChannelReady:Ljava/lang/String;

    .line 47
    invoke-virtual {v2}, Lo/fromCode;->onMessageChannelReady()Ljava/net/URL;

    move-result-object v14

    sget-object v15, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 45
    invoke-static/range {v8 .. v15}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 50
    invoke-virtual {v6}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0, v2}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6094
    new-instance v2, Lo/fromException$onNavigationEvent;

    invoke-direct {v2, v1, v4}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    const-string v1, "Authorization"

    .line 52
    invoke-virtual {v2, v1, v0}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v0

    .line 6277
    iget-object v1, v0, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v1, :cond_0

    .line 6278
    new-instance v1, Lo/fromException;

    invoke-direct {v1, v0, v4}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    return-object v1

    .line 6277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v7, p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
