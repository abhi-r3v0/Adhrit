.class Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 506
    :try_start_0
    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-object p1, p1, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {p1}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onNavigationEvent(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-boolean v1, v1, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->extraCallback:Z

    invoke-static {p1, v0, v1}, Lcom/axis/axismerchantsdk/util/RemoteAssetService;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUCCESS : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FAILURE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/util/UPIJSInterface;->onMessageChannelReady(Lcom/axis/axismerchantsdk/util/UPIJSInterface;)Lin/juspay/mystique/DynamicUI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-object v2, v2, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;

    iget-object p1, p1, Lcom/axis/axismerchantsdk/util/UPIJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
