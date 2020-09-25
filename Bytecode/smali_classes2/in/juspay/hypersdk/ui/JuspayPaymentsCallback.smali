.class public interface abstract Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/hypersdk/core/JuspayCallback;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;
.end method

.method public abstract onEvent(Ljava/lang/String;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V
.end method

.method public abstract onStartWaitingDialogCreated(Landroid/view/View;)V
.end method

.method public abstract onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V
.end method
