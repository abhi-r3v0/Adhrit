.class public final Lo/getCodedOutput$onPostMessage$extraCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCodedOutput$onPostMessage;",
        "Lo/getCodedOutput$onPostMessage$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2102
    invoke-static {}, Lo/getCodedOutput$onPostMessage;->access$3800()Lo/getCodedOutput$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCodedOutput$4;)V
    .locals 0

    .line 2095
    invoke-direct {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAllExperimentPayload(Ljava/lang/Iterable;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/SessionProtobufHelper;",
            ">;)",
            "Lo/getCodedOutput$onPostMessage$extraCallback;"
        }
    .end annotation

    .line 2299
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2300
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onPostMessage;->access$4900(Lo/getCodedOutput$onPostMessage;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final addAllNamespaceKeyValue(Ljava/lang/Iterable;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;)",
            "Lo/getCodedOutput$onPostMessage$extraCallback;"
        }
    .end annotation

    .line 2187
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2188
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onPostMessage;->access$4200(Lo/getCodedOutput$onPostMessage;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final addExperimentPayload(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2288
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2289
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onPostMessage;->access$4800(Lo/getCodedOutput$onPostMessage;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final addNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2177
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    .line 2179
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/getCodedOutput$ICustomTabsCallback;

    .line 2178
    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onPostMessage;->access$4100(Lo/getCodedOutput$onPostMessage;ILo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final addNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2159
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2160
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onPostMessage;->access$4100(Lo/getCodedOutput$onPostMessage;ILo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final addNamespaceKeyValue(Lo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2168
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2169
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCodedOutput$ICustomTabsCallback;

    invoke-static {v0, p1}, Lo/getCodedOutput$onPostMessage;->access$4000(Lo/getCodedOutput$onPostMessage;Lo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final addNamespaceKeyValue(Lo/getCodedOutput$ICustomTabsCallback;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2150
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2151
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onPostMessage;->access$4000(Lo/getCodedOutput$onPostMessage;Lo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final clearExperimentPayload()Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2308
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2309
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0}, Lo/getCodedOutput$onPostMessage;->access$5000(Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final clearNamespaceKeyValue()Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2195
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2196
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0}, Lo/getCodedOutput$onPostMessage;->access$4300(Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final clearTimestamp()Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2239
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2240
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0}, Lo/getCodedOutput$onPostMessage;->access$4600(Lo/getCodedOutput$onPostMessage;)V

    return-object p0
.end method

.method public final getExperimentPayload(I)Lo/SessionProtobufHelper;
    .locals 1

    .line 2269
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0, p1}, Lo/getCodedOutput$onPostMessage;->getExperimentPayload(I)Lo/SessionProtobufHelper;

    move-result-object p1

    return-object p1
.end method

.method public final getExperimentPayloadCount()I
    .locals 1

    .line 2260
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0}, Lo/getCodedOutput$onPostMessage;->getExperimentPayloadCount()I

    move-result v0

    return v0
.end method

.method public final getExperimentPayloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;"
        }
    .end annotation

    .line 2251
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    .line 2252
    invoke-virtual {v0}, Lo/getCodedOutput$onPostMessage;->getExperimentPayloadList()Ljava/util/List;

    move-result-object v0

    .line 2251
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceKeyValue(I)Lo/getCodedOutput$ICustomTabsCallback;
    .locals 1

    .line 2125
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0, p1}, Lo/getCodedOutput$onPostMessage;->getNamespaceKeyValue(I)Lo/getCodedOutput$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final getNamespaceKeyValueCount()I
    .locals 1

    .line 2119
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0}, Lo/getCodedOutput$onPostMessage;->getNamespaceKeyValueCount()I

    move-result v0

    return v0
.end method

.method public final getNamespaceKeyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getCodedOutput$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    .line 2112
    invoke-virtual {v0}, Lo/getCodedOutput$onPostMessage;->getNamespaceKeyValueList()Ljava/util/List;

    move-result-object v0

    .line 2111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 2222
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0}, Lo/getCodedOutput$onPostMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasTimestamp()Z
    .locals 1

    .line 2214
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-virtual {v0}, Lo/getCodedOutput$onPostMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public final removeNamespaceKeyValue(I)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2203
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2204
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1}, Lo/getCodedOutput$onPostMessage;->access$4400(Lo/getCodedOutput$onPostMessage;I)V

    return-object p0
.end method

.method public final setExperimentPayload(ILo/SessionProtobufHelper;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2278
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2279
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onPostMessage;->access$4700(Lo/getCodedOutput$onPostMessage;ILo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final setNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback$onMessageChannelReady;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2142
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    .line 2143
    invoke-virtual {p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p2

    check-cast p2, Lo/getCodedOutput$ICustomTabsCallback;

    .line 2142
    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onPostMessage;->access$3900(Lo/getCodedOutput$onPostMessage;ILo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final setNamespaceKeyValue(ILo/getCodedOutput$ICustomTabsCallback;)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2132
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2133
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onPostMessage;->access$3900(Lo/getCodedOutput$onPostMessage;ILo/getCodedOutput$ICustomTabsCallback;)V

    return-object p0
.end method

.method public final setTimestamp(J)Lo/getCodedOutput$onPostMessage$extraCallback;
    .locals 1

    .line 2230
    invoke-virtual {p0}, Lo/getCodedOutput$onPostMessage$extraCallback;->copyOnWrite()V

    .line 2231
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCodedOutput$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/getCodedOutput$onPostMessage;->access$4500(Lo/getCodedOutput$onPostMessage;J)V

    return-object p0
.end method
