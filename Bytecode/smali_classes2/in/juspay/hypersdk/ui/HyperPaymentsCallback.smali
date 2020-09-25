.class public interface abstract Lin/juspay/hypersdk/ui/HyperPaymentsCallback;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;
.end method

.method public abstract getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;
.end method

.method public abstract onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V
.end method

.method public abstract onStartWaitingDialogCreated(Landroid/view/View;)V
.end method

.method public abstract onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V
.end method
