.class Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/npci/upi/security/services/ServiceConnectionStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->handleInit(Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

.field private synthetic extraCallback:Lorg/npci/upi/security/services/CLRemoteResultReceiver;

.field private synthetic onMessageChannelReady:[Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onMessageChannelReady:[Ljava/lang/String;

    iput-object p4, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onPostMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->extraCallback:Lorg/npci/upi/security/services/CLRemoteResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Error Code : 843"

    const-string v1, "Description : NPCI Service Disconnected"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lorg/npci/upi/security/services/CLServices;)V
    .locals 17

    move-object/from16 v0, p0

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lorg/npci/upi/security/services/CLServices;)Lorg/npci/upi/security/services/CLServices;

    .line 81
    iget-object v1, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "getChallenge"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "getCredential"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "unbindService"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "registerApp"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "\",\""

    const-string v7, "\")"

    const-string v8, "window.callUICallback(\""

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_2

    .line 97
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage()Lorg/npci/upi/security/services/CLServices;

    move-result-object v1

    invoke-virtual {v1}, Lorg/npci/upi/security/services/CLServices;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    iget-object v1, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    invoke-static {v1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 91
    :cond_2
    iget-object v1, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onPostMessage:Ljava/lang/String;

    invoke-static {v1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage()Lorg/npci/upi/security/services/CLServices;

    move-result-object v7

    iget-object v1, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v8, v1, v3

    aget-object v9, v1, v5

    aget-object v10, v1, v6

    aget-object v11, v1, v4

    const/4 v2, 0x4

    aget-object v12, v1, v2

    const/4 v2, 0x5

    aget-object v13, v1, v2

    const/4 v2, 0x6

    aget-object v14, v1, v2

    const/4 v2, 0x7

    aget-object v15, v1, v2

    iget-object v1, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->extraCallback:Lorg/npci/upi/security/services/CLRemoteResultReceiver;

    move-object/from16 v16, v1

    invoke-virtual/range {v7 .. v16}, Lorg/npci/upi/security/services/CLServices;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/npci/upi/security/services/CLRemoteResultReceiver;)V

    return-void

    .line 87
    :cond_3
    invoke-static {}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage()Lorg/npci/upi/security/services/CLServices;

    move-result-object v1

    iget-object v9, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v3, v9, v3

    aget-object v5, v9, v5

    aget-object v10, v9, v6

    aget-object v4, v9, v4

    invoke-virtual {v1, v3, v5, v10, v4}, Lorg/npci/upi/security/services/CLServices;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 88
    iget-object v3, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    invoke-static {v3}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_4
    invoke-static {}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onPostMessage()Lorg/npci/upi/security/services/CLServices;

    move-result-object v1

    iget-object v4, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v3, v4, v3

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/npci/upi/security/services/CLServices;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v3, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    invoke-static {v3}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$2;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f27d382 -> :sswitch_3
        -0x5b438c81 -> :sswitch_2
        -0x3a7b5fb3 -> :sswitch_1
        0x5307edad -> :sswitch_0
    .end sparse-switch
.end method
