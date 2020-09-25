.class Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    .line 410
    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback(Z)Z

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact()Ljava/lang/String;

    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady()V

    .line 414
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 415
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x4b

    if-gt v3, v5, :cond_1

    .line 420
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 423
    :cond_1
    invoke-static {v3}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback(I)I

    .line 424
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 426
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "data"

    .line 427
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;

    invoke-direct {v1, p0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;-><init>(Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 450
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 451
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact()Ljava/lang/String;

    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->extraCallback()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 453
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
