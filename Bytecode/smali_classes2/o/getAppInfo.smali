.class final synthetic Lo/getAppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Lo/trackStateJson;

.field private final extraCallback:Lo/setIdentifier;

.field private final onMessageChannelReady:Ljava/util/Map;


# direct methods
.method constructor <init>(Lo/trackStateJson;Ljava/util/Map;Lo/setIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getAppInfo;->ICustomTabsCallback:Lo/trackStateJson;

    iput-object p2, p0, Lo/getAppInfo;->onMessageChannelReady:Ljava/util/Map;

    iput-object p3, p0, Lo/getAppInfo;->extraCallback:Lo/setIdentifier;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 5

    iget-object p1, p0, Lo/getAppInfo;->ICustomTabsCallback:Lo/trackStateJson;

    iget-object v0, p0, Lo/getAppInfo;->onMessageChannelReady:Ljava/util/Map;

    iget-object v1, p0, Lo/getAppInfo;->extraCallback:Lo/setIdentifier;

    iget-object v2, p1, Lo/trackStateJson;->extraCallback:Lo/addressAdded;

    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lo/addressAdded;->onNavigationEvent(Lo/addressAdded;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "messageType"

    const-string v4, "htmlLoaded"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p1, Lo/trackStateJson;->extraCallback:Lo/addressAdded;

    invoke-static {p1}, Lo/addressAdded;->onPostMessage(Lo/addressAdded;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sendMessageToNativeJs"

    invoke-interface {v1, p1, v0}, Lo/setIdentifier;->onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
