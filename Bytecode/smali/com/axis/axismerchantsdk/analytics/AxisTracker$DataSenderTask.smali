.class Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/axis/axismerchantsdk/analytics/AxisTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataSenderTask"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker;


# direct methods
.method constructor <init>(Lcom/axis/axismerchantsdk/analytics/AxisTracker;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 404
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 406
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 407
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;

    invoke-direct {v0, p0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask$1;-><init>(Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
