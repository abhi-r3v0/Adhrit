.class public Lin/juspay/hypersdk/ui/JuspayWebChromeClient;
.super Landroid/webkit/WebChromeClient;


# static fields
.field private static currentProgress:I


# instance fields
.field private browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebChromeClient;->juspayWebView:Lin/juspay/hypersdk/ui/JuspayWebView;

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebChromeClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebChromeClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebChromeClient;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onProgressChanged"

    invoke-virtual {p1, v0, p2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    const/4 p3, 0x1

    shl-long/2addr p1, p3

    invoke-interface {p5, p1, p2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method
