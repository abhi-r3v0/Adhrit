.class final Lo/SettingsJsonConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SettingsJsonConstants$extraCallback;,
        Lo/SettingsJsonConstants$onPostMessage;
    }
.end annotation


# static fields
.field private static final asInterface:Lorg/json/JSONArray;


# instance fields
.field private final ICustomTabsCallback:Lcom/mixpanel/android/util/ImageStore;

.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/SessionSettingsData;

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/parseSettingsJson;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getQueryParamsFor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lo/SettingsJsonConstants;->asInterface:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/SessionSettingsData;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lo/SettingsJsonConstants;->extraCallback:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lo/SettingsJsonConstants;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/SettingsJsonConstants;->onNavigationEvent:Ljava/util/Map;

    .line 1075
    new-instance p2, Lcom/mixpanel/android/util/ImageStore;

    const-string v0, "DecideChecker"

    invoke-direct {p2, p1, v0}, Lcom/mixpanel/android/util/ImageStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lo/SettingsJsonConstants;->ICustomTabsCallback:Lcom/mixpanel/android/util/ImageStore;

    .line 71
    invoke-static {p1}, Lo/getQueryParamsFor;->onMessageChannelReady(Landroid/content/Context;)Lo/getQueryParamsFor;

    move-result-object p1

    iput-object p1, p0, Lo/SettingsJsonConstants;->onPostMessage:Lo/getQueryParamsFor;

    return-void
.end method

.method private ICustomTabsCallback(Lo/AppRequestData;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 4168
    iget-object v2, p1, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "@2x"

    invoke-static {v2, v3}, Lo/AppRequestData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 5164
    iget-object v2, p1, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "window"

    .line 298
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 299
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 5320
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-ge v2, v6, :cond_0

    .line 5321
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    goto :goto_0

    .line 5323
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 5324
    invoke-virtual {p2, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 5325
    iget p2, v2, Landroid/graphics/Point;->x:I

    .line 302
    :goto_0
    invoke-virtual {p1}, Lo/AppRequestData;->extraCallback()Lo/AppRequestData$onMessageChannelReady;

    move-result-object v2

    sget-object v6, Lo/AppRequestData$onMessageChannelReady;->onMessageChannelReady:Lo/AppRequestData$onMessageChannelReady;

    if-ne v2, v6, :cond_1

    const/16 v2, 0x2d0

    if-lt p2, v2, :cond_1

    const/4 p2, 0x3

    new-array v1, p2, [Ljava/lang/String;

    .line 6172
    iget-object p2, p1, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "@4x"

    invoke-static {p2, v2}, Lo/AppRequestData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    .line 7168
    iget-object p2, p1, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p2, v3}, Lo/AppRequestData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v5

    .line 8164
    iget-object p1, p1, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    aput-object p1, v1, v0

    .line 306
    :cond_1
    array-length p1, v1

    :goto_1
    if-ge v4, p1, :cond_2

    aget-object p2, v1, v4

    .line 308
    :try_start_0
    iget-object v0, p0, Lo/SettingsJsonConstants;->ICustomTabsCallback:Lcom/mixpanel/android/util/ImageStore;

    invoke-virtual {v0, p2}, Lcom/mixpanel/android/util/ImageStore;->onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Lcom/mixpanel/android/util/ImageStore$CantGetImageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load image "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for a notification"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "MixpanelAPI.DChecker"

    invoke-static {v2, p2, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lo/AppRequestData;",
            ">;"
        }
    .end annotation

    const-string v0, "Received a strange response from notifications service: "

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "notifications"

    .line 139
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MixpanelAPI.DChecker"

    if-eqz v3, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Mixpanel endpoint returned non-array JSON for notifications: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 149
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 151
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "display_triggers"

    .line 152
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_2

    if-lt v5, v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    if-ge v3, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    :goto_2
    const-string v7, "type"

    .line 165
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "takeover"

    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 167
    new-instance v7, Lo/requestWasSuccessful;

    invoke-direct {v7, v6}, Lo/requestWasSuccessful;-><init>(Lorg/json/JSONObject;)V

    .line 168
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v8, "mini"

    .line 169
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    new-instance v7, Lo/getFeaturesData;

    invoke-direct {v7, v6}, Lo/getFeaturesData;-><init>(Lorg/json/JSONObject;)V

    .line 171
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lo/setStoredBuildInstanceIdentifier; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Not enough memory to show load notification from package: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v6

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v6

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    return-object v1
.end method

.method private ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)Lo/SettingsJsonConstants$onPostMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;,
            Lo/SettingsJsonConstants$extraCallback;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lo/SettingsJsonConstants;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Mixpanel decide server response was:\n"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "MixpanelAPI.DChecker"

    invoke-static {p3, p2}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 127
    invoke-static {p1}, Lo/SettingsJsonConstants;->extraCallback(Ljava/lang/String;)Lo/SettingsJsonConstants$onPostMessage;

    move-result-object p1

    .line 128
    iget-object p2, p1, Lo/SettingsJsonConstants$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/SettingsJsonConstants;->onNavigationEvent(Ljava/util/Iterator;)V

    .line 129
    iget-object p2, p1, Lo/SettingsJsonConstants$onPostMessage;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/SettingsJsonConstants;->onNavigationEvent(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static extraCallback(Ljava/lang/String;)Lo/SettingsJsonConstants$onPostMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/SettingsJsonConstants$extraCallback;
        }
    .end annotation

    .line 189
    new-instance v0, Lo/SettingsJsonConstants$onPostMessage;

    invoke-direct {v0}, Lo/SettingsJsonConstants$onPostMessage;-><init>()V

    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 198
    invoke-static {v1}, Lo/SettingsJsonConstants;->ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AppRequestData;

    .line 2184
    iget-object v3, v2, Lo/AppRequestData;->asBinder:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lo/AppRequestData;->asBinder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 200
    iget-object v3, v0, Lo/SettingsJsonConstants$onPostMessage;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_1
    iget-object v3, v0, Lo/SettingsJsonConstants$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "event_bindings"

    .line 206
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MixpanelAPI.DChecker"

    if-eqz v2, :cond_3

    .line 208
    :try_start_1
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    iput-object p0, v0, Lo/SettingsJsonConstants$onPostMessage;->onMessageChannelReady:Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 210
    :catch_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Mixpanel endpoint returned non-array JSON for event bindings: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string p0, "variants"

    .line 214
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    :try_start_2
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    iput-object p0, v0, Lo/SettingsJsonConstants$onPostMessage;->onPostMessage:Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 218
    :catch_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Mixpanel endpoint returned non-array JSON for variants: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-string p0, "automatic_events"

    .line 222
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    :try_start_3
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lo/SettingsJsonConstants$onPostMessage;->extraCallback:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 226
    :catch_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Mixpanel endpoint returned a non boolean value for automatic events: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    const-string p0, "integrations"

    .line 230
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    :try_start_4
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    iput-object p0, v0, Lo/SettingsJsonConstants$onPostMessage;->onTransact:Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 234
    :catch_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mixpanel endpoint returned a non-array JSON for integrations: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-object v0

    :catch_4
    move-exception v0

    .line 194
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mixpanel endpoint returned unparsable result:\n"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    new-instance v1, Lo/SettingsJsonConstants$extraCallback;

    invoke-direct {v1, p0, v0}, Lo/SettingsJsonConstants$extraCallback;-><init>(Ljava/lang/String;Lorg/json/JSONException;)V

    throw v1
.end method

.method private onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;
        }
    .end annotation

    const-string v0, "MixpanelAPI.DChecker"

    const-string v1, "utf-8"

    .line 246
    :try_start_0
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 248
    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 256
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?version=1&lib=android&token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, "&distinct_id="

    .line 261
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "&properties="

    .line 264
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string p2, "$android_lib_version"

    const-string v4, "5.8.4"

    .line 268
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "$android_app_version"

    .line 269
    iget-object v4, p0, Lo/SettingsJsonConstants;->onPostMessage:Lo/getQueryParamsFor;

    .line 3095
    iget-object v4, v4, Lo/getQueryParamsFor;->ICustomTabsCallback:Ljava/lang/String;

    .line 269
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "$android_version"

    .line 270
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "$android_app_release"

    .line 271
    iget-object v4, p0, Lo/SettingsJsonConstants;->onPostMessage:Lo/getQueryParamsFor;

    .line 3097
    iget-object v4, v4, Lo/getQueryParamsFor;->onRelationshipValidationResult:Ljava/lang/Integer;

    .line 271
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "$android_device_model"

    .line 272
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "Exception constructing properties JSON"

    invoke-static {v0, p2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/SettingsJsonConstants;->onMessageChannelReady:Lo/SessionSettingsData;

    .line 3413
    iget-object v1, v1, Lo/SessionSettingsData;->mayLaunchUrl:Ljava/lang/String;

    .line 279
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Querying decide server, url: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Lo/SettingsJsonConstants;->extraCallback:Landroid/content/Context;

    invoke-static {p3, p2, p1}, Lo/SettingsJsonConstants;->onPostMessage(Lcom/mixpanel/android/util/RemoteService;Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 288
    :cond_2
    :try_start_2
    new-instance p2, Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    .line 290
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "UTF not supported on this platform?"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Mixpanel library requires utf-8 string encoding to be available"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private onNavigationEvent(Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lo/AppRequestData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;
        }
    .end annotation

    .line 106
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppRequestData;

    .line 108
    iget-object v1, p0, Lo/SettingsJsonConstants;->extraCallback:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lo/SettingsJsonConstants;->ICustomTabsCallback(Lo/AppRequestData;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve image for notification "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2138
    iget v0, v0, Lo/AppRequestData;->onNavigationEvent:I

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", will not show the notification."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MixpanelAPI.DChecker"

    invoke-static {v1, v0}, Lo/TrimmedThrowableData;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2176
    :cond_0
    iput-object v1, v0, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic onPostMessage()Lorg/json/JSONArray;
    .locals 1

    .line 32
    sget-object v0, Lo/SettingsJsonConstants;->asInterface:Lorg/json/JSONArray;

    return-object v0
.end method

.method private static onPostMessage(Lcom/mixpanel/android/util/RemoteService;Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;
        }
    .end annotation

    const-string v0, "."

    const-string v1, "Cannot get "

    const-string v2, "MixpanelAPI.DChecker"

    .line 331
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Lo/SessionSettingsData;->onPostMessage()Lo/onPostMessage$extraCallback;

    move-result-object v4

    invoke-interface {p0, p1, v4}, Lcom/mixpanel/android/util/RemoteService;->onNavigationEvent(Landroid/content/Context;Lo/onPostMessage$extraCallback;)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    .line 339
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lo/SessionSettingsData;->extraCallback()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 340
    invoke-interface {p0, p2, v4, p1}, Lcom/mixpanel/android/util/RemoteService;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Out of memory when getting to "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", file not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot interpret "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as a URL."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v4
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/util/RemoteService$ServiceUnavailableException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lo/SettingsJsonConstants;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/parseSettingsJson;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lo/parseSettingsJson;->extraCallback()Ljava/lang/String;

    move-result-object p1

    .line 2039
    :try_start_0
    iget-object v1, v0, Lo/parseSettingsJson;->ICustomTabsCallback:Ljava/lang/String;

    .line 87
    invoke-direct {p0, v1, p1, p2}, Lo/SettingsJsonConstants;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/util/RemoteService;)Lo/SettingsJsonConstants$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object v1, p1, Lo/SettingsJsonConstants$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    iget-object v2, p1, Lo/SettingsJsonConstants$onPostMessage;->onNavigationEvent:Ljava/util/List;

    iget-object v3, p1, Lo/SettingsJsonConstants$onPostMessage;->onMessageChannelReady:Lorg/json/JSONArray;

    iget-object v4, p1, Lo/SettingsJsonConstants$onPostMessage;->onPostMessage:Lorg/json/JSONArray;

    iget-boolean v5, p1, Lo/SettingsJsonConstants$onPostMessage;->extraCallback:Z

    iget-object v6, p1, Lo/SettingsJsonConstants$onPostMessage;->onTransact:Lorg/json/JSONArray;

    invoke-virtual/range {v0 .. v6}, Lo/parseSettingsJson;->extraCallback(Ljava/util/List;Ljava/util/List;Lorg/json/JSONArray;Lorg/json/JSONArray;ZLorg/json/JSONArray;)V
    :try_end_0
    .catch Lo/SettingsJsonConstants$extraCallback; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MixpanelAPI.DChecker"

    invoke-static {v0, p2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
