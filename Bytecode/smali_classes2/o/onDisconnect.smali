.class public final Lo/onDisconnect;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Ljava/net/Proxy;

.field public final extraCallback:Lo/serializeSessionApp;

.field public final onPostMessage:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lo/serializeSessionApp;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 49
    iput-object p1, p0, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 50
    iput-object p2, p0, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 51
    iput-object p3, p0, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inetSocketAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxy == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 82
    instance-of v0, p1, Lo/onDisconnect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lo/onDisconnect;

    .line 84
    iget-object v0, p0, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    iget-object v2, p1, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    iget-object v2, p1, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;

    iget-object p1, p1, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v1, p0, Lo/onDisconnect;->onPostMessage:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
