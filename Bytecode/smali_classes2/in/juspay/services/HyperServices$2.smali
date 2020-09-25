.class Lin/juspay/services/HyperServices$2;
.super Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->createAndSetupFragment(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
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

    iput-object p1, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    invoke-direct {p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1, p2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    invoke-virtual {v0, p1}, Lin/juspay/services/HyperServices;->handleOnEvent(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1, p2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V

    :cond_0
    return-void
.end method

.method public onStartWaitingDialogCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onStartWaitingDialogCreated(Landroid/view/View;)V

    return-void
.end method

.method public onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices$2;->a:Lin/juspay/services/HyperServices;

    iget-object v0, v0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-interface {v0, p1}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V

    return-void
.end method
