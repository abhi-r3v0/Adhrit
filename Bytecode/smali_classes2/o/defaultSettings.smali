.class public final Lo/defaultSettings;
.super Lo/buildAppDataFrom;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/buildAppDataFrom;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getExpiresAtFrom;
    .locals 1

    .line 25
    new-instance v0, Lo/defaultSettings;

    invoke-direct {v0}, Lo/defaultSettings;-><init>()V

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lo/defaultSettings;->onNavigationEvent(Lo/getAppSettings;)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 12
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1

    .line 13
    :cond_0
    sget-object p1, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p1
.end method

.method public final onPostMessage(Lo/getSettings;)Lo/getSettings;
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lo/buildAppDataFrom;->onPostMessage(Lo/getSettings;)Lo/getSettings;

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    .line 19
    invoke-interface {p1, v0, v1}, Lo/getSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
