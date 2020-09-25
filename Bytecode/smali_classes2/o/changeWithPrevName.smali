.class public final Lo/changeWithPrevName;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Ljava/net/Proxy;

.field public final onMessageChannelReady:Ljava/net/InetSocketAddress;

.field public final onNavigationEvent:Lo/deserializeToType;


# direct methods
.method public constructor <init>(Lo/deserializeToType;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 52
    iput-object p1, p0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 53
    iput-object p2, p0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 54
    iput-object p3, p0, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inetSocketAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxy == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 84
    instance-of v0, p1, Lo/changeWithPrevName;

    if-eqz v0, :cond_0

    check-cast p1, Lo/changeWithPrevName;

    iget-object v0, p1, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    iget-object v1, p0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    iget-object v1, p0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 92
    iget-object v0, p0, Lo/changeWithPrevName;->onNavigationEvent:Lo/deserializeToType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Route{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/changeWithPrevName;->onMessageChannelReady:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
