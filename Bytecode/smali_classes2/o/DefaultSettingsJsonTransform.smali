.class public abstract Lo/DefaultSettingsJsonTransform;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildFromJson;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/readCachedSettings;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Lo/readCachedSettings;->onMessageChannelReady()Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "\" /></cross-domain-policy>\u0000"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string v0, "socket not bound"

    invoke-direct {p1, v0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()Lo/getStoredBuildInstanceIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 28
    new-instance v0, Lo/logSettings;

    invoke-direct {v0}, Lo/logSettings;-><init>()V

    return-object v0
.end method

.method public final onPostMessage(Lo/readCachedSettings;Lo/toFeaturesJson;)V
    .locals 1

    .line 61
    new-instance v0, Lo/loadSettingsData;

    invoke-direct {v0, p2}, Lo/loadSettingsData;-><init>(Lo/toFeaturesJson;)V

    .line 62
    sget-object p2, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    .line 1063
    iput-object p2, v0, Lo/loadSettingsData;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    .line 63
    invoke-interface {p1, v0}, Lo/readCachedSettings;->ICustomTabsCallback(Lo/toFeaturesJson;)V

    return-void
.end method
