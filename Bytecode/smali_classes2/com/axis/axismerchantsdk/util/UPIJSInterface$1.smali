.class Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/UPIJSInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

.field private synthetic extraCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface;Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, ""

    if-eqz p2, :cond_0

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "errorCode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 333
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS_SENDING_ERROR_CODE"

    invoke-static {v1, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 336
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS_RESULT"

    const-string v2, "SMS_RESULT_CODE"

    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "window.callUICallback(\""

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"EXCEPTION\", \"837\")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"NO_SERVICE\", \"838\")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 348
    :cond_3
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"NULL_PDU\", \"839\")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    goto :goto_2

    .line 351
    :cond_4
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"RADIO_OFF\", \"840\")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    goto :goto_2

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", \"GENERIC_FAILURE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"837\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    goto :goto_2

    .line 339
    :cond_7
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"SUCCESS\")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    .line 356
    :goto_2
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$1;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-virtual {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->unregisterReceiver()V

    return-void
.end method
