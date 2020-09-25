.class Lin/juspay/hypersdk/core/DuiInterface$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->invokeInACSWebview(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$3;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface$3;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$3;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$3;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$3;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$3;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lin/juspay/hypersdk/ui/JuspayWebView;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
