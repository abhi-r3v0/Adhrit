.class public final Lo/joinBytes;
.super Lo/removeFromArray;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/joinBytes$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/net/InetSocketAddress;

.field public final onPostMessage:Ljava/net/SocketAddress;


# direct methods
.method private constructor <init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lo/removeFromArray;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 51
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 52
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3592
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-array p3, v1, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "The proxy address %s is not resolved"

    invoke-static {p1, p3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 55
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    .line 56
    iput-object p2, p0, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    .line 57
    iput-object p3, p0, Lo/joinBytes;->extraCallback:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lo/joinBytes;->ICustomTabsCallback:Ljava/lang/String;

    return-void

    .line 2910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targetAddress"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAddress"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lo/joinBytes;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 93
    instance-of v0, p1, Lo/joinBytes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    check-cast p1, Lo/joinBytes;

    .line 97
    iget-object v0, p0, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    iget-object v2, p1, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 4052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 5052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lo/joinBytes;->extraCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/joinBytes;->extraCallback:Ljava/lang/String;

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    .line 6052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lo/joinBytes;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/joinBytes;->ICustomTabsCallback:Ljava/lang/String;

    if-eq v0, p1, :cond_8

    if-eqz v0, :cond_7

    .line 7052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_9

    return v3

    :cond_9
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/joinBytes;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/joinBytes;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 7105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 110
    iget-object v1, p0, Lo/joinBytes;->onPostMessage:Ljava/net/SocketAddress;

    const-string v3, "proxyAddr"

    .line 111
    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/joinBytes;->onNavigationEvent:Ljava/net/InetSocketAddress;

    const-string v3, "targetAddr"

    .line 112
    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/joinBytes;->extraCallback:Ljava/lang/String;

    const-string v3, "username"

    .line 113
    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/joinBytes;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v1, "hasPassword"

    .line 115
    invoke-virtual {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
