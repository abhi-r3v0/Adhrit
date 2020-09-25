.class final Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;
.super Lo/buildFeaturesSessionDataFrom;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/viewcrawler/EditorConnection;Ljava/net/URI;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    .line 71
    new-instance p1, Lo/defaultSettings;

    invoke-direct {p1}, Lo/defaultSettings;-><init>()V

    const/16 v0, 0x1388

    invoke-direct {p0, p2, p1, v0}, Lo/buildFeaturesSessionDataFrom;-><init>(Ljava/net/URI;Lo/getExpiresAtFrom;I)V

    .line 72
    invoke-virtual {p0, p3}, Lo/buildFeaturesSessionDataFrom;->extraCallback(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    const-string v0, "MixpanelAPI.EditorCnctn"

    const-string v1, "Websocket connected"

    .line 77
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MixpanelAPI.EditorCnctn"

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Websocket Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Unknown websocket error occurred"

    .line 115
    invoke-static {v0, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(ILjava/lang/String;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSocket closed. Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nURI: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->onMessageChannelReady(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MixpanelAPI.EditorCnctn"

    invoke-static {p2, p1}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 4

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received message from editor:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MixpanelAPI.EditorCnctn"

    invoke-static {v1, v0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 85
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_info_request"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->onMessageChannelReady()V

    return-void

    :cond_0
    const-string v3, "snapshot_request"

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->onMessageChannelReady(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    const-string v3, "change_request"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->onNavigationEvent(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    const-string v3, "event_binding_request"

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->extraCallback(Lorg/json/JSONObject;)V

    return-void

    :cond_3
    const-string v3, "clear_request"

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->ICustomTabsCallback(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    const-string v3, "tweak_request"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    iget-object v2, p0, Lcom/mixpanel/android/viewcrawler/EditorConnection$onNavigationEvent;->ICustomTabsCallback:Lcom/mixpanel/android/viewcrawler/EditorConnection;

    invoke-static {v2}, Lcom/mixpanel/android/viewcrawler/EditorConnection;->extraCallback(Lcom/mixpanel/android/viewcrawler/EditorConnection;)Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;->onPostMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Bad JSON received:"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
