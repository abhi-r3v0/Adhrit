.class Lin/juspay/hypersdk/core/JBridge$30;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->startQRScanner(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$30;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$30;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$30;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$30;->this$0:Lin/juspay/hypersdk/core/JBridge;

    invoke-static {p1}, Lin/juspay/hypersdk/core/JBridge;->access$1000(Lin/juspay/hypersdk/core/JBridge;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$30;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$30;->val$parentId:Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$30;->val$callback:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lin/juspay/hypersdk/core/JBridge;->access$1100(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/JBridge$30;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$30;->val$callback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "permission_denied"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "{\"error\":\"true\",\"data\":\"%s\"}"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method
