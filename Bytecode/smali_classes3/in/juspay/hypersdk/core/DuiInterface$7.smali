.class Lin/juspay/hypersdk/core/DuiInterface$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/DuiInterface;->runInJuspayWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/DuiInterface;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->val$methodName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->val$methodName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "loadFirstPage"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "goForward"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "reload"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "goBack"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "requestPasswordKeyboardShow"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "requestNumericKeyboardShow"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_6
    const-string v3, "requestPhoneKeyboardShow"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    invoke-static {v0}, Lin/juspay/hypersdk/core/DuiInterface;->access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->val$methodName:Ljava/lang/String;

    const-string v1, "system"

    const-string v2, "error"

    const-string v3, "run_in_juspay_webview"

    const-string v4, "missing"

    invoke-static {v1, v2, v3, v4, v0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->loadPage()V

    return-void

    :pswitch_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void

    :pswitch_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface$7;->this$0:Lin/juspay/hypersdk/core/DuiInterface;

    iget-object v0, v0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/core/PaymentUtils;->refreshPage(Lin/juspay/hypersdk/HyperFragment;)V

    return-void

    :pswitch_4
    invoke-virtual {v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->requestPasswordKeyboardShow()V

    return-void

    :pswitch_5
    invoke-virtual {v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->requestPhoneKeyboardShow()V

    return-void

    :pswitch_6
    invoke-virtual {v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->requestNumericKeyboardShow()V

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a97cebd -> :sswitch_6
        -0x5df3efde -> :sswitch_5
        -0x4f114112 -> :sswitch_4
        -0x4a012e11 -> :sswitch_3
        -0x37b57e67 -> :sswitch_2
        -0x12f8b743 -> :sswitch_1
        0x4c034f19 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
