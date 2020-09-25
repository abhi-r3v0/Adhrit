.class Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;

    iput-object p2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p1, 0x0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage(Lcom/axis/axismerchantsdk/analytics/AxisTracker;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/axis/axismerchantsdk/analytics/RestClient;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/axis/axismerchantsdk/model/ApiResponse;

    move-result-object v0

    .line 1021
    iget v0, v0, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 435
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asBinder()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 437
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface()Z

    .line 442
    iget-object v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1$1;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;

    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback(Lcom/axis/axismerchantsdk/analytics/AxisTracker;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 445
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception trying to post analytics data as JSON "

    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback(Z)Z

    const/4 p1, 0x0

    return-object p1
.end method
