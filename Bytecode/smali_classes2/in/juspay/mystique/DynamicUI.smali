.class public final Lin/juspay/mystique/DynamicUI;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lin/juspay/mystique/DuiLogger;

.field private c:Landroid/app/Activity;

.field private d:Landroid/content/Context;

.field private e:Lin/juspay/mystique/ErrorCallback;

.field private f:Lin/juspay/mystique/JsInterface;

.field private g:Landroid/widget/FrameLayout;

.field private h:Lin/juspay/mystique/Renderer;

.field private i:Lin/juspay/mystique/InflateView;

.field private j:Lin/juspay/mystique/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;[Ljava/lang/String;Landroid/os/Bundle;Lin/juspay/mystique/ErrorCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lin/juspay/mystique/DynamicUI;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;[Ljava/lang/String;Lin/juspay/mystique/ErrorCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;[Ljava/lang/String;Lin/juspay/mystique/ErrorCallback;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lin/juspay/mystique/DynamicUI$a;

    invoke-direct {v0, p0}, Lin/juspay/mystique/DynamicUI$a;-><init>(Lin/juspay/mystique/DynamicUI;)V

    iput-object v0, p0, Lin/juspay/mystique/DynamicUI;->b:Lin/juspay/mystique/DuiLogger;

    .line 20
    iput-object p4, p0, Lin/juspay/mystique/DynamicUI;->e:Lin/juspay/mystique/ErrorCallback;

    .line 21
    instance-of p4, p1, Landroid/app/Activity;

    if-eqz p4, :cond_0

    .line 22
    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    iput-object p4, p0, Lin/juspay/mystique/DynamicUI;->c:Landroid/app/Activity;

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lin/juspay/mystique/DynamicUI;->g:Landroid/widget/FrameLayout;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lin/juspay/mystique/DynamicUI;->k:Ljava/util/Map;

    .line 29
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    .line 31
    invoke-direct {p0, p3}, Lin/juspay/mystique/DynamicUI;->a([Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->g:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->g:Landroid/widget/FrameLayout;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    :cond_1
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    new-instance p1, Lin/juspay/mystique/JsInterface;

    invoke-direct {p1, p0}, Lin/juspay/mystique/JsInterface;-><init>(Lin/juspay/mystique/DynamicUI;)V

    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->f:Lin/juspay/mystique/JsInterface;

    .line 37
    new-instance p1, Lin/juspay/mystique/Renderer;

    invoke-direct {p1, p0}, Lin/juspay/mystique/Renderer;-><init>(Lin/juspay/mystique/DynamicUI;)V

    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->h:Lin/juspay/mystique/Renderer;

    .line 38
    new-instance p1, Lin/juspay/mystique/InflateView;

    invoke-direct {p1, p0}, Lin/juspay/mystique/InflateView;-><init>(Lin/juspay/mystique/DynamicUI;)V

    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->i:Lin/juspay/mystique/InflateView;

    .line 39
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    iget-object p2, p0, Lin/juspay/mystique/DynamicUI;->f:Lin/juspay/mystique/JsInterface;

    const-string p3, "Android"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lin/juspay/mystique/DynamicUI;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lin/juspay/mystique/DynamicUI;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lin/juspay/mystique/DynamicUI;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 34
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lin/juspay/mystique/DynamicUI;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->b:Lin/juspay/mystique/DuiLogger;

    const-string v1, "DynamicUI"

    invoke-interface {v0, v1, p1}, Lin/juspay/mystique/DuiLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "is_dui_debuggable"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 9
    iget-object v2, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 13
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 15
    :cond_0
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    new-instance v2, Lin/juspay/mystique/DynamicUI$b;

    invoke-direct {v2, p0}, Lin/juspay/mystique/DynamicUI$b;-><init>(Lin/juspay/mystique/DynamicUI;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 25
    :goto_0
    new-instance v0, Lin/juspay/mystique/DUIWebViewClient;

    invoke-direct {v0, p1}, Lin/juspay/mystique/DUIWebViewClient;-><init>([Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 29
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    .line 30
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 31
    iget-object p1, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lin/juspay/mystique/DynamicUI;)Lin/juspay/mystique/ErrorCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/juspay/mystique/DynamicUI;->e:Lin/juspay/mystique/ErrorCallback;

    return-object p0
.end method


# virtual methods
.method final a()Landroid/app/Activity;
    .locals 1

    .line 5
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public final addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final addJsToWebView(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Lin/juspay/mystique/DynamicUI$c;

    invoke-direct {v1, p0, p1}, Lin/juspay/mystique/DynamicUI$c;-><init>(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 28
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final addToScreenMap(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lin/juspay/mystique/DynamicUI;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final b()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    return-object v0
.end method

.method final c()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method final d()Lin/juspay/mystique/InflateView;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->i:Lin/juspay/mystique/InflateView;

    return-object v0
.end method

.method public final destroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const-string v1, "http://juspay.in"

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void

    :cond_0
    const-string v0, "Browser is not present"

    .line 6
    invoke-direct {p0, v0}, Lin/juspay/mystique/DynamicUI;->a(Ljava/lang/String;)V

    return-void
.end method

.method final e()Lin/juspay/mystique/Renderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->h:Lin/juspay/mystique/Renderer;

    return-object v0
.end method

.method public final forceSaveState()V
    .locals 1

    const-string v0, "window.callUICallback(forceSaveState,\'failure\');"

    .line 1
    invoke-virtual {p0, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public final getErrorCallback()Lin/juspay/mystique/ErrorCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->e:Lin/juspay/mystique/ErrorCallback;

    return-object v0
.end method

.method public final getHandler()Lin/juspay/mystique/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->j:Lin/juspay/mystique/c;

    return-object v0
.end method

.method public final getJsInterface()Lin/juspay/mystique/JsInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->f:Lin/juspay/mystique/JsInterface;

    return-object v0
.end method

.method public final getLogger()Lin/juspay/mystique/DuiLogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->b:Lin/juspay/mystique/DuiLogger;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->f:Lin/juspay/mystique/JsInterface;

    invoke-virtual {v0}, Lin/juspay/mystique/JsInterface;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getViewFromScreenName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lin/juspay/mystique/DynamicUI;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lin/juspay/mystique/DynamicUI;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final loadURL(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lin/juspay/mystique/DynamicUI$d;

    invoke-direct {v1, p0, p1}, Lin/juspay/mystique/DynamicUI$d;-><init>(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onActivityLifeCycleEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.onActivityLifeCycleEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const-string v0, "window.onBackpressed()"

    .line 1
    invoke-virtual {p0, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public final resetActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lin/juspay/mystique/DynamicUI;->c:Landroid/app/Activity;

    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->c:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    return-void
.end method

.method public final setContainer(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->g:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setErrorCallback(Lin/juspay/mystique/ErrorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->e:Lin/juspay/mystique/ErrorCallback;

    return-void
.end method

.method public final setHandler(Lin/juspay/mystique/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->j:Lin/juspay/mystique/c;

    return-void
.end method

.method public final setInitialVariables()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "brand"

    .line 4
    :try_start_0
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "model"

    .line 5
    :try_start_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "os_version"

    .line 6
    :try_start_2
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "locale"

    .line 7
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "app_name"

    .line 8
    :try_start_4
    iget-object v2, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "apiLevel"

    .line 9
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lin/juspay/mystique/DynamicUI;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "screen_height"

    .line 12
    :try_start_6
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "screen_width"

    .line 13
    :try_start_7
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "screen_ppi"

    .line 14
    :try_start_8
    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.__DEVICE_DETAILS="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-void
.end method

.method public final setLogger(Lin/juspay/mystique/DuiLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI;->b:Lin/juspay/mystique/DuiLogger;

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->f:Lin/juspay/mystique/JsInterface;

    invoke-virtual {v0, p1}, Lin/juspay/mystique/JsInterface;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
