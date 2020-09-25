.class Lin/juspay/services/HyperServices$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->terminate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/services/HyperServices;


# direct methods
.method constructor <init>(Lin/juspay/services/HyperServices;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->destroy()V

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    invoke-static {v0}, Lin/juspay/services/HyperServices;->access$200(Lin/juspay/services/HyperServices;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lin/juspay/services/HyperServices;->access$502(Lin/juspay/services/HyperServices;Z)Z

    const-string v1, "HyperServices"

    const-string v2, "lifecycle"

    const-string v3, "hypersdk"

    const-string v4, "initiate"

    const-string v5, "Failed to remove the fragment"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    const/4 v1, 0x0

    iput-object v1, v0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    iput-object v1, v0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    iput-object v1, v0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v0, p0, Lin/juspay/services/HyperServices$8;->a:Lin/juspay/services/HyperServices;

    invoke-static {v0, v1}, Lin/juspay/services/HyperServices;->access$602(Lin/juspay/services/HyperServices;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
