.class Lin/juspay/hypersdk/HyperFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/HyperFragment;->onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/HyperFragment;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$postData:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    iput-object p2, p0, Lin/juspay/hypersdk/HyperFragment$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/HyperFragment$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/HyperFragment$5;->val$postData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$5;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/HyperFragment;->addWebView(Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/HyperFragment;->access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v1}, Lin/juspay/hypersdk/HyperFragment;->access$500(Lin/juspay/hypersdk/HyperFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$5;->this$0:Lin/juspay/hypersdk/HyperFragment;

    iget-object v1, p0, Lin/juspay/hypersdk/HyperFragment$5;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/HyperFragment$5;->val$postData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/HyperFragment;->loadPage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
