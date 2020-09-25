.class public Lo/buildSessionDataFrom;
.super Lo/getExpiresAtFrom;
.source ""


# instance fields
.field protected ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

.field protected onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/toFeaturesJson;",
            ">;"
        }
    .end annotation
.end field

.field protected onNavigationEvent:Z

.field private final onRelationshipValidationResult:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/getExpiresAtFrom;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/buildSessionDataFrom;->onMessageChannelReady:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/buildSessionDataFrom;->onRelationshipValidationResult:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 68
    invoke-interface {p1}, Lo/toFeaturesJson;->onTransact()Lo/toFeaturesJson$onMessageChannelReady;

    move-result-object v0

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne v0, v1, :cond_0

    .line 72
    invoke-interface {p1}, Lo/toFeaturesJson;->onPostMessage()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 76
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    const/4 p1, -0x1

    .line 78
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-object v0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "only text frames supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback()Lo/getExpiresAtFrom;
    .locals 1

    .line 204
    new-instance v0, Lo/buildSessionDataFrom;

    invoke-direct {v0}, Lo/buildSessionDataFrom;-><init>()V

    return-object v0
.end method

.method public onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 1

    const-string v0, "Origin"

    .line 60
    invoke-interface {p1, v0}, Lo/getSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/buildSessionDataFrom;->extraCallback(Lo/getAppSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 63
    :cond_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public onNavigationEvent(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lo/toFeaturesJson;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lo/buildSessionDataFrom;->onPostMessage(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 175
    :cond_0
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const/16 v0, 0x3ea

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    throw p1
.end method

.method public onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;
    .locals 1

    .line 188
    sget-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtFrom$ICustomTabsCallback;

    return-object v0
.end method

.method public onNavigationEvent(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 1

    const-string v0, "WebSocket-Origin"

    .line 55
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Origin"

    invoke-interface {p2, v0}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lo/buildSessionDataFrom;->extraCallback(Lo/getAppSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    :cond_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1
.end method

.method protected final onPostMessage(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lo/toFeaturesJson;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 132
    iput-boolean v1, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    const-string v0, "unexpected START_OF_FRAME"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 134
    iget-boolean v0, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 140
    new-instance v0, Lo/loadSettingsData;

    invoke-direct {v0}, Lo/loadSettingsData;-><init>()V

    .line 141
    iget-object v2, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lo/loadSettingsData;->onPostMessage(Ljava/nio/ByteBuffer;)V

    .line 1058
    iput-boolean v1, v0, Lo/loadSettingsData;->ICustomTabsCallback:Z

    .line 143
    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    .line 1063
    iput-object v1, v0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    .line 144
    iget-object v1, p0, Lo/buildSessionDataFrom;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iput-object v3, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    :cond_2
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    goto :goto_0

    .line 135
    :cond_3
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;

    const-string v0, "unexpected END_OF_FRAME"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_4
    iget-boolean v2, p0, Lo/buildSessionDataFrom;->onNavigationEvent:Z

    if-eqz v2, :cond_8

    .line 150
    iget-object v2, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_5

    .line 1192
    sget v1, Lo/buildSessionDataFrom;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 151
    iput-object v1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 152
    :cond_5
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_7

    .line 153
    iget-object v2, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    .line 1196
    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1197
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    shl-int/lit8 v1, v3, 0x1

    if-ltz v1, :cond_6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1198
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 153
    iput-object v1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1216
    :cond_6
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 155
    :cond_7
    :goto_1
    iget-object v1, p0, Lo/buildSessionDataFrom;->ICustomTabsCallback$Stub:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_8
    return-object v3

    .line 166
    :cond_9
    iget-object p1, p0, Lo/buildSessionDataFrom;->onMessageChannelReady:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/buildSessionDataFrom;->onMessageChannelReady:Ljava/util/List;

    return-object p1
.end method

.method public onPostMessage(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getAppSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    const-string v0, "Web Socket Protocol Handshake"

    .line 115
    invoke-interface {p2, v0}, Lo/getStoredBuildInstanceIdentifier;->extraCallback(Ljava/lang/String;)V

    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    .line 116
    invoke-interface {p2, v0, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    .line 117
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Origin"

    .line 118
    invoke-interface {p1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket-Origin"

    invoke-interface {p2, v1, v0}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Host"

    invoke-interface {p1, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/getSettings;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocket-Location"

    .line 120
    invoke-interface {p2, v0, p1}, Lo/getStoredBuildInstanceIdentifier;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onPostMessage(Lo/getSettings;)Lo/getSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    .line 104
    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    .line 105
    invoke-interface {p1, v1, v0}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Origin"

    .line 106
    invoke-interface {p1, v0}, Lo/getSettings;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "random"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/buildSessionDataFrom;->onRelationshipValidationResult:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
