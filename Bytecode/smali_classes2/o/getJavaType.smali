.class final Lo/getJavaType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WireFormat$FieldType;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 0

    .line 55
    check-cast p1, Lo/WireFormat$1;

    .line 2227
    iget-boolean p1, p1, Lo/WireFormat$1;->extraCallback:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 9095
    check-cast p2, Lo/WireFormat$1;

    .line 9096
    check-cast p3, Lo/getTagWireType;

    .line 9098
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 9102
    :cond_0
    invoke-virtual {p2}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 9157
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v3

    iget-object v4, p3, Lo/getTagWireType;->onPostMessage:Lo/getTagWireType$extraCallback;

    .line 10114
    iget-object v5, v4, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v6, 0x1

    invoke-static {v5, v6, v2}, Lo/getBinaryImageSize;->ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I

    move-result v2

    iget-object v4, v4, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v5, 0x2

    .line 10115
    invoke-static {v4, v5, v0}, Lo/getBinaryImageSize;->ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 9158
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->postMessage(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final extraCallback(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 40
    check-cast p1, Lo/WireFormat$1;

    return-object p1
.end method

.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 66
    invoke-static {}, Lo/WireFormat$1;->onPostMessage()Lo/WireFormat$1;

    move-result-object v0

    .line 4214
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lo/WireFormat$1;

    invoke-direct {v0}, Lo/WireFormat$1;-><init>()V

    return-object v0

    :cond_0
    new-instance v1, Lo/WireFormat$1;

    invoke-direct {v1, v0}, Lo/WireFormat$1;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 60
    move-object v0, p1

    check-cast v0, Lo/WireFormat$1;

    const/4 v1, 0x0

    .line 3222
    iput-boolean v1, v0, Lo/WireFormat$1;->extraCallback:Z

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5076
    check-cast p1, Lo/WireFormat$1;

    .line 5077
    check-cast p2, Lo/WireFormat$1;

    .line 5078
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5227
    iget-boolean v0, p1, Lo/WireFormat$1;->extraCallback:Z

    if-nez v0, :cond_1

    .line 6214
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lo/WireFormat$1;

    invoke-direct {p1}, Lo/WireFormat$1;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/WireFormat$1;

    invoke-direct {v0, p1}, Lo/WireFormat$1;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    .line 8227
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lo/WireFormat$1;->extraCallback:Z

    if-eqz v0, :cond_2

    .line 7075
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7076
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 7232
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 50
    check-cast p1, Lo/WireFormat$1;

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Lo/getTagWireType$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getTagWireType$extraCallback<",
            "**>;"
        }
    .end annotation

    .line 45
    check-cast p1, Lo/getTagWireType;

    .line 1229
    iget-object p1, p1, Lo/getTagWireType;->onPostMessage:Lo/getTagWireType$extraCallback;

    return-object p1
.end method
