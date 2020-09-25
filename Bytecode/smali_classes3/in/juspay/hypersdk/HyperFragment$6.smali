.class Lin/juspay/hypersdk/HyperFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/HyperFragment;->onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/HyperFragment;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$htmlContent:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$prevUrl:Ljava/lang/String;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    iput-object p2, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$htmlContent:Ljava/lang/String;

    iput-object p5, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$encoding:Ljava/lang/String;

    iput-object p7, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$prevUrl:Ljava/lang/String;

    iput-object p8, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/HyperFragment;->addWebView(Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$htmlContent:Ljava/lang/String;

    iget-object v4, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$mimeType:Ljava/lang/String;

    iget-object v5, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$encoding:Ljava/lang/String;

    iget-object v6, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$prevUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$6;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v1}, Lin/juspay/hypersdk/HyperFragment;->access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void

    :cond_2
    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment$6;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v3, "system"

    const-string v4, "error"

    const-string v5, "on_browser_ready"

    const-string v6, "missing"

    const-string v7, "JuspayWebView"

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
