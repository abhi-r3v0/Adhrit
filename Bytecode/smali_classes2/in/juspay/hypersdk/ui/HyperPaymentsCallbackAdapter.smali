.class public abstract Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/hypersdk/core/JuspayCallback;
.implements Lin/juspay/hypersdk/ui/HyperPaymentsCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDelegate(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lin/juspay/hypersdk/ui/HyperPaymentsCallback;",
            ":",
            "Lin/juspay/hypersdk/core/JuspayCallback;",
            ">(TT;)",
            "Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;"
        }
    .end annotation

    new-instance v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$4;-><init>(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    return-object v0
.end method

.method public static createHyperDelegate(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
    .locals 1

    new-instance v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$1;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$1;-><init>(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    return-object v0
.end method

.method public static createJuspayDelegate(Lin/juspay/hypersdk/core/JuspayCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
    .locals 1

    new-instance v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$2;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$2;-><init>(Lin/juspay/hypersdk/core/JuspayCallback;)V

    return-object v0
.end method

.method public static createJuspayPaymentsDelegate(Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$3;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter$3;-><init>(Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;)V

    return-object v0
.end method


# virtual methods
.method public createJuspaySafeWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMerchantView(Landroid/view/ViewGroup;Lin/juspay/hypersdk/core/MerchantViewType;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onStartWaitingDialogCreated(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onWebViewReady(Lin/juspay/hypersdk/ui/JuspayWebView;)V
    .locals 0

    return-void
.end method
