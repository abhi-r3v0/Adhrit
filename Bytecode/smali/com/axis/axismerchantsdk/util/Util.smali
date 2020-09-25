.class public Lcom/axis/axismerchantsdk/util/Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/axis/axismerchantsdk/util/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/axis/axismerchantsdk/util/Util;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v2, 0x16

    const-string v3, "provider"

    const-string/jumbo v4, "simSerialNo"

    const-string v5, "id"

    if-lt v1, v2, :cond_1

    .line 37
    :try_start_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 43
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v8, v1, 0x1

    :try_start_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move v8, v1

    move-object v1, v2

    .line 52
    :goto_1
    :try_start_4
    sget-object v2, Lcom/axis/axismerchantsdk/util/Util;->extraCallback:Ljava/lang/String;

    const-string v6, "Exception getting sim details for SDK >= 22"

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move v1, v8

    goto :goto_0

    :cond_0
    const-string p0, "SIM_CARD_NOT_AVAILABLE"

    return-object p0

    :cond_1
    const-string v1, "phone"

    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz p0, :cond_2

    .line 62
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 70
    :try_start_6
    sget-object v1, Lcom/axis/axismerchantsdk/util/Util;->extraCallback:Ljava/lang/String;

    const-string v2, "Exception getting sim details for SDK < 22"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_2
    :goto_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "simDetails"

    .line 75
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    .line 78
    sget-object v0, Lcom/axis/axismerchantsdk/util/Util;->extraCallback:Ljava/lang/String;

    const-string v1, "Not able to fetch Sim Cards"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "Axis UPI transactionCallback null"

    const-string v1, "SDKuniqueRequestId"

    const-string v2, "SDKcommand"

    .line 87
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-static {v4}, Lcom/axis/axismerchantsdk/AxisUpi;->onPostMessage(Ljava/lang/String;)Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {v4}, Lcom/axis/axismerchantsdk/AxisUpi;->onPostMessage(Ljava/lang/String;)Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    move-result-object v0

    invoke-interface {v0, p0, v3, v4}, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;->onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v4}, Lcom/axis/axismerchantsdk/AxisUpi;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p0

    const-string v1, "This may happen if don\'t keep activity is enabled"

    invoke-virtual {p0, v0, v0, v1}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :catch_0
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p0

    const-string v0, "Error generating merchant response"

    invoke-virtual {p0, v0, v0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p0

    const-string v0, "UPI response doesn\'t have SDK Command"

    invoke-virtual {p0, v0, v0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
