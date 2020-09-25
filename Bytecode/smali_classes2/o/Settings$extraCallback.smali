.class Lo/Settings$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Settings$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/Settings;


# direct methods
.method private constructor <init>(Lo/Settings;)V
    .locals 0

    .line 2077
    iput-object p1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/Settings;B)V
    .locals 0

    .line 2077
    invoke-direct {p0, p1}, Lo/Settings$extraCallback;-><init>(Lo/Settings;)V

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2458
    invoke-virtual {p0}, Lo/Settings$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    .line 2459
    iget-object v2, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 16937
    iget-object v2, v2, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v2}, Lo/AppSpiCall;->extraCallback()Ljava/lang/String;

    move-result-object v2

    .line 2460
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2461
    iget-object p1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {p1}, Lo/Settings;->ICustomTabsCallback(Lo/Settings;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "$token"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v3, "$time"

    invoke-virtual {v0, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2463
    iget-object p1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {p1}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object p1

    invoke-virtual {p1}, Lo/AppSpiCall;->onNavigationEvent()Z

    move-result p1

    const-string p2, "$had_persisted_distinct_id"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    const-string p1, "$device_id"

    .line 2465
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz v1, :cond_1

    const-string p1, "$distinct_id"

    .line 2468
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$user_id"

    .line 2469
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2471
    :cond_1
    iget-object p1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {p1}, Lo/Settings;->ICustomTabsCallback$Stub(Lo/Settings;)Lo/onAuthRevoked;

    move-result-object p1

    const/4 p2, 0x0

    .line 17034
    invoke-virtual {p1, p2}, Lo/onAuthRevoked;->onPostMessage(Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "$mp_metadata"

    .line 2471
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private extraCallback(Lorg/json/JSONObject;)V
    .locals 4

    .line 2109
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 4350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2111
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1}, Lo/Settings;->onNavigationEvent(Lo/Settings;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2112
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2114
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p1, "$set"

    .line 2117
    invoke-direct {p0, p1, v0}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2118
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0, p1}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MixpanelAPI.API"

    const-string v1, "Exception setting people properties"

    .line 2120
    invoke-static {v0, v1, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    :try_start_0
    const-string v0, "$delete"

    .line 2365
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2366
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1, v0}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "MixpanelAPI.API"

    const-string v1, "Exception deleting a user"

    .line 2368
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    .line 2080
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 3350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "MixpanelAPI.API"

    const-string v0, "Can\'t identify with null distinct_id."

    .line 2082
    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2085
    :cond_1
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v0

    monitor-enter v0

    .line 2086
    :try_start_0
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/AppSpiCall;->onPostMessage(Ljava/lang/String;)V

    .line 2087
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1}, Lo/Settings;->onPostMessage(Lo/Settings;)Lo/parseSettingsJson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/parseSettingsJson;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2088
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2089
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0, p1}, Lo/Settings;->ICustomTabsCallback(Lo/Settings;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2088
    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;D)V
    .locals 2

    .line 2197
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 7350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2198
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2199
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8171
    iget-object p1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 8350
    iget-object p2, p1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object p1, p1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8172
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :try_start_0
    const-string p2, "$add"

    .line 8174
    invoke-direct {p0, p2, p1}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8175
    iget-object p2, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {p2, p1}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MixpanelAPI.API"

    const-string p3, "Exception incrementing properties"

    .line 8177
    invoke-static {p2, p3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Lo/AppRequestData;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 2263
    :cond_0
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v0

    .line 10138
    iget v1, p1, Lo/AppRequestData;->onNavigationEvent:I

    .line 2263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AppSpiCall;->onMessageChannelReady(Ljava/lang/Integer;)V

    .line 2264
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 10350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "$campaign_delivery"

    .line 2266
    invoke-virtual {p0, v1, p1, v0}, Lo/Settings$extraCallback;->onNavigationEvent(Ljava/lang/String;Lo/AppRequestData;Lorg/json/JSONObject;)V

    .line 2267
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 11206
    iget-object v0, v0, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 2267
    invoke-virtual {p0}, Lo/Settings$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Settings$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Lo/Settings$onMessageChannelReady;

    move-result-object v0

    const-string v1, "MixpanelAPI.API"

    if-eqz v0, :cond_2

    .line 2269
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2270
    invoke-virtual {p1}, Lo/AppRequestData;->onPostMessage()Lorg/json/JSONObject;

    move-result-object v3

    :try_start_0
    const-string v4, "$time"

    .line 2272
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "Exception trying to track an in-app notification seen"

    .line 2274
    invoke-static {v1, v4, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12138
    :goto_0
    iget p1, p1, Lo/AppRequestData;->onNavigationEvent:I

    .line 2276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "$campaigns"

    invoke-interface {v0, v1, p1}, Lo/Settings$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$notifications"

    .line 2277
    invoke-interface {v0, p1, v3}, Lo/Settings$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p1, "No identity found. Make sure to call getPeople().identify() before showing in-app notifications."

    .line 2279
    invoke-static {v1, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/SettingsRequest;)V
    .locals 1

    .line 2447
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onRelationshipValidationResult(Lo/Settings;)Lo/getSingleFileWithExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/getSingleFileWithExtension;->onMessageChannelReady(Lo/SettingsRequest;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 3

    const-string v0, "$transactions"

    .line 15244
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 15350
    iget-object v2, v1, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v1, v1, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15246
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 15247
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "$unset"

    .line 15248
    invoke-direct {p0, v0, v1}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 15249
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1, v0}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MixpanelAPI.API"

    const-string v2, "Exception unsetting a property"

    .line 15251
    invoke-static {v1, v2, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 4

    .line 2380
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "MixpanelAPI.API"

    const-string v2, "Setting push token on people profile: "

    .line 2381
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/AppSpiCall;->onMessageChannelReady(Ljava/lang/String;)V

    .line 2383
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2384
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "$android_devices"

    .line 16218
    iget-object v2, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 16350
    iget-object v3, v2, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v2, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 16220
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 16221
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$union"

    .line 16222
    invoke-direct {p0, p1, v2}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 16223
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1, p1}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "MixpanelAPI.API"

    const-string v1, "Exception unioning a property"

    .line 16225
    invoke-static {p1, v1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2205
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 9350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2207
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2208
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$append"

    .line 2209
    invoke-direct {p0, p1, v0}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2210
    iget-object p2, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {p2, p1}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MixpanelAPI.API"

    const-string v0, "Exception appending a property"

    .line 2212
    invoke-static {p2, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 2184
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 6350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2185
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2187
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$merge"

    .line 2188
    invoke-direct {p0, p1, v0}, Lo/Settings$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2189
    iget-object p2, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {p2, p1}, Lo/Settings;->onNavigationEvent(Lo/Settings;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MixpanelAPI.API"

    const-string v0, "Exception merging a property"

    .line 2191
    invoke-static {p2, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 2574
    invoke-virtual {p0}, Lo/Settings$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 2410
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v0

    invoke-virtual {v0}, Lo/AppSpiCall;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/Settings$onMessageChannelReady;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2418
    :cond_0
    new-instance v0, Lo/Settings$extraCallback$5;

    invoke-direct {v0, p0, p1}, Lo/Settings$extraCallback$5;-><init>(Lo/Settings$extraCallback;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onNavigationEvent(Landroid/app/Activity;)V
    .locals 2

    .line 2285
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    .line 12477
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string p1, "MixpanelAPI.API"

    const-string v0, "Will not show notifications, os version is too low."

    .line 12478
    invoke-static {p1, v0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12482
    :cond_1
    new-instance v0, Lo/Settings$extraCallback$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lo/Settings$extraCallback$1;-><init>(Lo/Settings$extraCallback;Lo/AppRequestData;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2126
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 5350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2128
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Settings$extraCallback;->extraCallback(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MixpanelAPI.API"

    const-string v0, "set"

    .line 2130
    invoke-static {p2, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lo/AppRequestData;Lorg/json/JSONObject;)V
    .locals 3

    .line 2307
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    .line 14350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2308
    :cond_0
    invoke-virtual {p2}, Lo/AppRequestData;->onPostMessage()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 2311
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 2312
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2314
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v0, "MixpanelAPI.API"

    const-string v1, "Exception merging provided properties with notification properties"

    .line 2317
    invoke-static {v0, v1, p3}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2320
    :cond_1
    iget-object p3, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-virtual {p3, p1, p2}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 2374
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onMessageChannelReady(Lo/Settings;)Lo/AppSpiCall;

    move-result-object v0

    invoke-virtual {v0}, Lo/AppSpiCall;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/AppRequestData;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 13477
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const-string p1, "MixpanelAPI.API"

    const-string p2, "Will not show notifications, os version is too low."

    .line 13478
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13482
    :cond_0
    new-instance v0, Lo/Settings$extraCallback$1;

    invoke-direct {v0, p0, p1, p2}, Lo/Settings$extraCallback$1;-><init>(Lo/Settings$extraCallback;Lo/AppRequestData;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onTransact()V
    .locals 2

    .line 2325
    iget-object v0, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v0}, Lo/Settings;->onPostMessage(Lo/Settings;)Lo/parseSettingsJson;

    move-result-object v0

    invoke-virtual {v0}, Lo/parseSettingsJson;->onPostMessage()Lorg/json/JSONArray;

    move-result-object v0

    .line 2326
    iget-object v1, p0, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    invoke-static {v1}, Lo/Settings;->onRelationshipValidationResult(Lo/Settings;)Lo/getSingleFileWithExtension;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/getSingleFileWithExtension;->onNavigationEvent(Lorg/json/JSONArray;)V

    return-void
.end method
