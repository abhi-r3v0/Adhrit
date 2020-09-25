.class Lin/juspay/hypersdk/core/DuiInterface$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->runInJuspayWebView(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;

.field final synthetic val$callbackName:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->val$callbackName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->val$methodName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v1, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->val$callbackName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->val$callbackName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "run_in_juspay_webview"

    const-string v6, "Not allowed to access"

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "run_in_juspay_webview"

    const-string v6, "Error while Invoking"

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "run_in_juspay_webview"

    const-string v6, "Method Not found"

    :goto_0
    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->val$callbackName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$8;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
