.class Lin/juspay/hypersdk/core/JBridge$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge$7;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/JBridge$7;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge$7;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v0, v0, Lin/juspay/hypersdk/core/JBridge$7;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v0}, Lin/juspay/hypersdk/core/JBridge;->access$200(Lin/juspay/hypersdk/core/JBridge;)I

    move-result v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v1, v1, Lin/juspay/hypersdk/core/JBridge$7;->val$maxPollPeriod:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v0, v0, Lin/juspay/hypersdk/core/JBridge$7;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v1, v1, Lin/juspay/hypersdk/core/JBridge$7;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {v1}, Lin/juspay/hypersdk/core/JBridge;->access$200(Lin/juspay/hypersdk/core/JBridge;)I

    move-result v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v2, v2, Lin/juspay/hypersdk/core/JBridge$7;->val$refreshInterval:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JBridge;->access$202(Lin/juspay/hypersdk/core/JBridge;I)I

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v1, v0, Lin/juspay/hypersdk/core/JBridge$7;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v2, v0, Lin/juspay/hypersdk/core/JBridge$7;->val$maxPollPeriod:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v3, v0, Lin/juspay/hypersdk/core/JBridge$7;->val$refreshInterval:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v4, v0, Lin/juspay/hypersdk/core/JBridge$7;->val$isSandbox:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v5, v0, Lin/juspay/hypersdk/core/JBridge$7;->val$cb:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v6, v0, Lin/juspay/hypersdk/core/JBridge$7;->val$payload:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/JBridge;->amazonChargeStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v0, v0, Lin/juspay/hypersdk/core/JBridge$7;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$7$1;->this$1:Lin/juspay/hypersdk/core/JBridge$7;

    iget-object v1, v1, Lin/juspay/hypersdk/core/JBridge$7;->val$cb:Ljava/lang/String;

    const-string v2, "FAILED"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
