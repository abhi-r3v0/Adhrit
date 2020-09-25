.class Lin/juspay/hypersdk/core/JBridge$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge$5;->onError(Lamazonpay/silentpay/APayError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/juspay/hypersdk/core/JBridge$5;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge$5;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$5$2;->this$1:Lin/juspay/hypersdk/core/JBridge$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$5$2;->this$1:Lin/juspay/hypersdk/core/JBridge$5;

    iget-object v0, v0, Lin/juspay/hypersdk/core/JBridge$5;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$5$2;->this$1:Lin/juspay/hypersdk/core/JBridge$5;

    iget-object v1, v1, Lin/juspay/hypersdk/core/JBridge$5;->val$cb:Ljava/lang/String;

    const-string v2, "ERROR"

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
