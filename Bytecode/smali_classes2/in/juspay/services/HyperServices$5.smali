.class Lin/juspay/services/HyperServices$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->process(Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/onSessionEvent;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lin/juspay/services/HyperServices;


# direct methods
.method constructor <init>(Lin/juspay/services/HyperServices;Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iput-object p2, p0, Lin/juspay/services/HyperServices$5;->a:Lo/onSessionEvent;

    iput-object p3, p0, Lin/juspay/services/HyperServices$5;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lin/juspay/services/HyperServices$5;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lin/juspay/services/HyperServices$5;->a:Lo/onSessionEvent;

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v1, v1, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->b:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iput-object v1, v0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->a:Lo/onSessionEvent;

    iget-object v2, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v2, v2, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/HyperFragment;->setContainerAndActivity(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    iget-object v0, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    invoke-virtual {v0}, Lin/juspay/services/HyperServices;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    const-string v2, "info"

    const-string v3, "process"

    const-string v4, "activity_changed"

    const-string v5, "true"

    invoke-static {v1, v2, v3, v4, v5}, Lin/juspay/services/HyperServices;->access$100(Lin/juspay/services/HyperServices;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v2, p0, Lin/juspay/services/HyperServices$5;->b:Landroid/view/ViewGroup;

    iput-object v2, v1, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    invoke-static {v1}, Lin/juspay/services/HyperServices;->access$200(Lin/juspay/services/HyperServices;)V

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v2, p0, Lin/juspay/services/HyperServices$5;->a:Lo/onSessionEvent;

    iput-object v2, v1, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v1, v1, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v2, p0, Lin/juspay/services/HyperServices$5;->a:Lo/onSessionEvent;

    iget-object v3, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v3, v3, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lin/juspay/hypersdk/HyperFragment;->setContainerAndActivity(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    invoke-static {v1}, Lin/juspay/services/HyperServices;->access$300(Lin/juspay/services/HyperServices;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/services/HyperServices$5;->d:Lin/juspay/services/HyperServices;

    iget-object v1, v1, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/core/JuspayServices;->updateActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method
