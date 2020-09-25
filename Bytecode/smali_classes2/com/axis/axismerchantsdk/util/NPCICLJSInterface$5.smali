.class Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;
.super Landroid/os/ResultReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->getCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;->onPostMessage:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    iput-object p3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .line 171
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 172
    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;->onPostMessage:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p2, "resultCode"

    .line 184
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :catch_1
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;->onPostMessage:Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/NPCICLJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "window.callUICallback(\""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/NPCICLJSInterface$5;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\");"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
