.class public final Lo/equalTo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Ljava/net/InetSocketAddress;

.field private ICustomTabsCallback$Stub:I

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onDisconnect;",
            ">;"
        }
    .end annotation
.end field

.field private asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/setEventTarget;

.field public final onMessageChannelReady:Lo/serializeSessionApp;

.field private onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/net/Proxy;

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Lo/serializeSessionApp;Lo/setEventTarget;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/equalTo;->asBinder:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 59
    iput-object p2, p0, Lo/equalTo;->extraCallback:Lo/setEventTarget;

    .line 1090
    iget-object p2, p1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 1154
    iget-object p1, p1, Lo/serializeSessionApp;->asInterface:Ljava/net/Proxy;

    if-eqz p1, :cond_0

    .line 2115
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    goto :goto_0

    .line 2119
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    .line 2120
    iget-object p1, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 2146
    iget-object p1, p1, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    .line 2120
    invoke-virtual {p2}, Lo/fromCode;->extraCallback()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2121
    iget-object p2, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2123
    :cond_1
    iget-object p1, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2124
    iget-object p1, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 2126
    iput p1, p0, Lo/equalTo;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private onPostMessage(Ljava/net/Proxy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    .line 152
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 157
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    .line 161
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 14191
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_1

    .line 14196
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14200
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_2

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 12100
    iget-object v0, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 12391
    iget-object v1, v0, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 13111
    iget-object v0, v0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 13400
    iget v0, v0, Lo/fromCode;->onMessageChannelReady:I

    :goto_2
    if-lez v0, :cond_6

    const v2, 0xffff

    if-gt v0, v2, :cond_6

    .line 171
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    .line 172
    iget-object p1, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 175
    :cond_4
    iget-object p1, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 15116
    iget-object p1, p1, Lo/serializeSessionApp;->onMessageChannelReady:Lo/hasNext;

    .line 175
    invoke-interface {p1, v1}, Lo/hasNext;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 177
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 178
    iget-object v5, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v4, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    :cond_5
    :goto_4
    iput v3, p0, Lo/equalTo;->onRelationshipValidationResult:I

    return-void

    .line 167
    :cond_6
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No route to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 4

    .line 2205
    iget v0, p0, Lo/equalTo;->onRelationshipValidationResult:I

    iget-object v1, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3131
    iget v0, p0, Lo/equalTo;->ICustomTabsCallback$Stub:I

    iget-object v1, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 3219
    iget-object v0, p0, Lo/equalTo;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v3
.end method

.method public final onPostMessage()Lo/onDisconnect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4205
    :goto_0
    iget v0, p0, Lo/equalTo;->onRelationshipValidationResult:I

    iget-object v1, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "No route to "

    if-nez v0, :cond_6

    .line 5131
    iget v0, p0, Lo/equalTo;->ICustomTabsCallback$Stub:I

    iget-object v4, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    .line 5219
    iget-object v0, p0, Lo/equalTo;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 5224
    iget-object v0, p0, Lo/equalTo;->asBinder:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDisconnect;

    return-object v0

    .line 79
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 7131
    :cond_3
    iget v0, p0, Lo/equalTo;->ICustomTabsCallback$Stub:I

    iget-object v4, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 6140
    iget-object v0, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    iget v4, p0, Lo/equalTo;->ICustomTabsCallback$Stub:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lo/equalTo;->ICustomTabsCallback$Stub:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 6141
    invoke-direct {p0, v0}, Lo/equalTo;->onPostMessage(Ljava/net/Proxy;)V

    .line 83
    iput-object v0, p0, Lo/equalTo;->onPostMessage:Ljava/net/Proxy;

    goto :goto_4

    .line 6137
    :cond_5
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 8100
    iget-object v1, v1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 8391
    iget-object v1, v1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 6137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; exhausted proxy configurations: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/equalTo;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10205
    :cond_6
    :goto_4
    iget v0, p0, Lo/equalTo;->onRelationshipValidationResult:I

    iget-object v4, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_9

    .line 9214
    iget-object v0, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    iget v1, p0, Lo/equalTo;->onRelationshipValidationResult:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/equalTo;->onRelationshipValidationResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 85
    iput-object v0, p0, Lo/equalTo;->ICustomTabsCallback:Ljava/net/InetSocketAddress;

    .line 87
    new-instance v1, Lo/onDisconnect;

    iget-object v2, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    iget-object v3, p0, Lo/equalTo;->onPostMessage:Ljava/net/Proxy;

    invoke-direct {v1, v2, v3, v0}, Lo/onDisconnect;-><init>(Lo/serializeSessionApp;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 88
    iget-object v0, p0, Lo/equalTo;->extraCallback:Lo/setEventTarget;

    invoke-virtual {v0, v1}, Lo/setEventTarget;->ICustomTabsCallback(Lo/onDisconnect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    iget-object v0, p0, Lo/equalTo;->asBinder:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-object v1

    .line 9211
    :cond_9
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/equalTo;->onMessageChannelReady:Lo/serializeSessionApp;

    .line 11100
    iget-object v1, v1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 11391
    iget-object v1, v1, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 9211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; exhausted inet socket addresses: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/equalTo;->asInterface:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
