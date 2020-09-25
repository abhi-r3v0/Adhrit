.class public final Lo/generateEventsForChanges;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/generateEventsForChanges$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/generateEvent;

.field private extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/deserializeToType;

.field private onPostMessage:I

.field private final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/changeWithPrevName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/deserializeToType;Lo/generateEvent;Lo/convertInteger;Lo/resolveType;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lo/generateEventsForChanges;->extraCallback:Ljava/util/List;

    .line 54
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lo/generateEventsForChanges;->onRelationshipValidationResult:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 59
    iput-object p2, p0, Lo/generateEventsForChanges;->ICustomTabsCallback:Lo/generateEvent;

    .line 1093
    iget-object p2, p1, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 1136
    iget-object p1, p1, Lo/deserializeToType;->onRelationshipValidationResult:Ljava/net/Proxy;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 2126
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 2129
    :cond_0
    iget-object p1, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 3128
    iget-object p1, p1, Lo/deserializeToType;->asInterface:Ljava/net/ProxySelector;

    .line 2129
    invoke-virtual {p2}, Lo/isFullyInitialized;->ICustomTabsCallback()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2130
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2131
    invoke-static {p1}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    .line 2132
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, p3

    invoke-static {p1}, Lo/generateEventsForType;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    .line 2134
    iput p3, p0, Lo/generateEventsForChanges;->onPostMessage:I

    return-void
.end method

.method private onMessageChannelReady(Ljava/net/Proxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/generateEventsForChanges;->extraCallback:Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 165
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_2

    .line 169
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 9205
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9210
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9214
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_2

    .line 166
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 7093
    iget-object v0, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 7486
    iget-object v1, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 8093
    iget-object v0, v0, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 8502
    iget v0, v0, Lo/isFullyInitialized;->onPostMessage:I

    :goto_2
    if-lez v0, :cond_7

    const v2, 0xffff

    if-gt v0, v2, :cond_7

    .line 179
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v2, :cond_4

    .line 180
    iget-object p1, p0, Lo/generateEventsForChanges;->extraCallback:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 185
    :cond_4
    iget-object p1, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 10098
    iget-object p1, p1, Lo/deserializeToType;->onNavigationEvent:Lo/shouldIncludeGetter;

    .line 185
    invoke-interface {p1, v1}, Lo/shouldIncludeGetter;->onPostMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 194
    iget-object v4, p0, Lo/generateEventsForChanges;->extraCallback:Ljava/util/List;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void

    .line 187
    :cond_6
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 11098
    iget-object v2, v2, Lo/deserializeToType;->onNavigationEvent:Lo/shouldIncludeGetter;

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_7
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
.method public final onNavigationEvent()Lo/generateEventsForChanges$onMessageChannelReady;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lo/generateEventsForChanges;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4139
    :cond_0
    iget v1, p0, Lo/generateEventsForChanges;->onPostMessage:I

    iget-object v2, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 5139
    iget v1, p0, Lo/generateEventsForChanges;->onPostMessage:I

    iget-object v2, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 4148
    iget-object v1, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    iget v2, p0, Lo/generateEventsForChanges;->onPostMessage:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lo/generateEventsForChanges;->onPostMessage:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 4149
    invoke-direct {p0, v1}, Lo/generateEventsForChanges;->onMessageChannelReady(Ljava/net/Proxy;)V

    .line 85
    iget-object v2, p0, Lo/generateEventsForChanges;->extraCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_4

    .line 86
    new-instance v4, Lo/changeWithPrevName;

    iget-object v5, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    iget-object v6, p0, Lo/generateEventsForChanges;->extraCallback:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5, v1, v6}, Lo/changeWithPrevName;-><init>(Lo/deserializeToType;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 87
    iget-object v5, p0, Lo/generateEventsForChanges;->ICustomTabsCallback:Lo/generateEvent;

    invoke-virtual {v5, v4}, Lo/generateEvent;->onPostMessage(Lo/changeWithPrevName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    iget-object v5, p0, Lo/generateEventsForChanges;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 90
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 94
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 4145
    :cond_5
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/generateEventsForChanges;->onNavigationEvent:Lo/deserializeToType;

    .line 6093
    iget-object v2, v2, Lo/deserializeToType;->onPostMessage:Lo/isFullyInitialized;

    .line 6486
    iget-object v2, v2, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 4145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    iget-object v1, p0, Lo/generateEventsForChanges;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v1, p0, Lo/generateEventsForChanges;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    :cond_7
    new-instance v1, Lo/generateEventsForChanges$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/generateEventsForChanges$onMessageChannelReady;-><init>(Ljava/util/List;)V

    return-object v1

    .line 75
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final onPostMessage()Z
    .locals 4

    .line 3139
    iget v0, p0, Lo/generateEventsForChanges;->onPostMessage:I

    iget-object v1, p0, Lo/generateEventsForChanges;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lo/generateEventsForChanges;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    return v2
.end method
