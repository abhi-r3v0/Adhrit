.class public Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Lorg/npci/upi/security/services/CLServices;


# instance fields
.field private ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

.field private onMessageChannelReady:Landroid/content/Context;

.field public onPostMessage:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lin/juspay/mystique/DynamicUI;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 205
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p1

    .line 207
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_9

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 210
    :cond_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 214
    :cond_2
    :try_start_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 215
    new-instance v0, Lorg/json/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 216
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-direct {p0, p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    .line 219
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_7

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 233
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_0
    return-object p1

    :catch_0
    :cond_8
    const/4 p1, 0x0

    :cond_9
    :goto_1
    return-object p1
.end method

.method static synthetic ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;)Lin/juspay/mystique/DynamicUI;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lorg/npci/upi/security/services/CLServices;)Lorg/npci/upi/security/services/CLServices;
    .locals 0

    .line 30
    sput-object p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onNavigationEvent:Lorg/npci/upi/security/services/CLServices;

    return-object p0
.end method

.method private onPostMessage(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 242
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 248
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 244
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a primitive array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic onPostMessage()Lorg/npci/upi/security/services/CLServices;
    .locals 1

    .line 30
    sget-object v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onNavigationEvent:Lorg/npci/upi/security/services/CLServices;

    return-object v0
.end method


# virtual methods
.method public decodeNPCIXmlKeys(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 341
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public fetchData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v1, "NPCI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NOT_FOUND"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateTrustCred(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 293
    :try_start_0
    new-instance v0, Lcom/axis/axismerchantsdk/util/CryptLib;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/util/CryptLib;-><init>()V

    .line 294
    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/CryptLib;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 295
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 296
    invoke-static {p1, p2}, Lcom/axis/axismerchantsdk/util/CryptLib;->onPostMessage([B[B)[B

    move-result-object p1

    .line 297
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    new-instance v1, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$3;-><init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object v12, p0

    .line 168
    new-instance v3, Lorg/npci/upi/security/services/CLRemoteResultReceiver;

    new-instance v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object/from16 v2, p9

    invoke-direct {v0, p0, v1, v2}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;-><init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lorg/npci/upi/security/services/CLRemoteResultReceiver;-><init>(Landroid/os/ResultReceiver;)V

    .line 194
    iget-object v13, v12, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    new-instance v14, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$6;-><init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs handleInit(Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;[Ljava/lang/String;)V
    .locals 20
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 76
    :try_start_0
    iget-object v0, v7, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady:Landroid/content/Context;

    new-instance v10, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;-><init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;)V

    invoke-static {v0, v10}, Lorg/npci/upi/security/services/CLServices;->a(Landroid/content/Context;Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NPCICL"

    const-string v2, "handleInit Exception"

    .line 114
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Service already initiated"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, -0x1

    .line 116
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getChallenge"

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "getCredential"

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "unbindService"

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "registerApp"

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "\",\""

    const-string v6, "\")"

    const-string/jumbo v9, "window.callUICallback(\""

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    :try_start_1
    sget-object v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onNavigationEvent:Lorg/npci/upi/security/services/CLServices;

    invoke-virtual {v0}, Lorg/npci/upi/security/services/CLServices;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :catch_1
    iget-object v0, v7, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 127
    :cond_2
    sget-object v10, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onNavigationEvent:Lorg/npci/upi/security/services/CLServices;

    aget-object v11, p4, v2

    aget-object v12, p4, v4

    aget-object v13, p4, v5

    aget-object v14, p4, v3

    const/4 v0, 0x4

    aget-object v15, p4, v0

    const/4 v0, 0x5

    aget-object v16, p4, v0

    const/4 v0, 0x6

    aget-object v17, p4, v0

    const/4 v0, 0x7

    aget-object v18, p4, v0

    move-object/from16 v19, p3

    invoke-virtual/range {v10 .. v19}, Lorg/npci/upi/security/services/CLServices;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;)V

    .line 128
    iget-object v0, v7, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    .line 122
    :cond_3
    sget-object v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onNavigationEvent:Lorg/npci/upi/security/services/CLServices;

    aget-object v2, p4, v2

    aget-object v4, p4, v4

    aget-object v10, p4, v5

    aget-object v3, p4, v3

    invoke-virtual {v0, v2, v4, v10, v3}, Lorg/npci/upi/security/services/CLServices;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 123
    iget-object v2, v7, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_4
    sget-object v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onNavigationEvent:Lorg/npci/upi/security/services/CLServices;

    aget-object v2, p4, v2

    aget-object v3, p4, v4

    invoke-virtual {v0, v2, v3}, Lorg/npci/upi/security/services/CLServices;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v2, v7, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v2, "intialiseNPCICL"

    .line 141
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f27d382 -> :sswitch_3
        -0x5b438c81 -> :sswitch_2
        -0x3a7b5fb3 -> :sswitch_1
        0x5307edad -> :sswitch_0
    .end sparse-switch
.end method

.method public initialiseNPCICL(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    new-instance v1, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$1;-><init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/npci/upi/security/services/CLServices;->a(Landroid/content/Context;Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service already initiated"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback:Lin/juspay/mystique/DynamicUI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.callUICallback(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public populateHMAC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "|"

    .line 275
    :try_start_0
    new-instance v1, Lcom/axis/axismerchantsdk/util/CryptLib;

    invoke-direct {v1}, Lcom/axis/axismerchantsdk/util/CryptLib;-><init>()V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    .line 278
    invoke-static {p3, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 280
    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/CryptLib;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object p1

    .line 279
    invoke-static {p1, p2}, Lcom/axis/axismerchantsdk/util/CryptLib;->onPostMessage([B[B)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 282
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public registerApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    new-instance v8, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$4;-><init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage:Landroid/app/Activity;

    const-string v1, "NPCI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public trustCred(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 310
    :try_start_0
    new-instance v0, Lcom/axis/axismerchantsdk/util/CryptLib;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/util/CryptLib;-><init>()V

    .line 311
    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/CryptLib;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 312
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 313
    invoke-static {p1, p2}, Lcom/axis/axismerchantsdk/util/CryptLib;->onPostMessage([B[B)[B

    move-result-object p1

    .line 314
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public unbindNPCICL(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "unbindService"

    const/4 v2, 0x0

    .line 266
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->handleInit(Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;[Ljava/lang/String;)V

    return-void
.end method
