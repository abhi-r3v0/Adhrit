.class final Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;
.super Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createDelegate(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-direct {p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public final getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1, p2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1, p2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V

    return-void
.end method

.method public final onResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    check-cast v0, Lin/juspay/hypersdk/core/JuspayCallback;

    invoke-interface {v0, p1, p2, p3}, Lin/juspay/hypersdk/core/JuspayCallback;->onResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onStartWaitingDialogCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onStartWaitingDialogCreated(Landroid/view/View;)V

    return-void
.end method

.method public final onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;->val$callback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V

    return-void
.end method
