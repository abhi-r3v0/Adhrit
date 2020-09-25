.class public Lin/juspay/hypersdk/ui/JuspayWebView;
.super Landroid/webkit/WebView;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private keyboardInputType:Ljava/lang/Integer;

.field private keyboardStickinessTime:I

.field private lastKeyboardTypeSetTime:J

.field private webChromeClient:Landroid/webkit/WebChromeClient;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lin/juspay/hypersdk/ui/JuspayWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/hypersdk/ui/JuspayWebView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    const/16 p1, 0x12c

    iput p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardStickinessTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    const/16 p1, 0x12c

    iput p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardStickinessTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    const/16 p1, 0x12c

    iput p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardStickinessTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    const/16 p1, 0x12c

    iput p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardStickinessTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    const/16 p1, 0x12c

    iput p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardStickinessTime:I

    return-void
.end method


# virtual methods
.method public addJsToWebView(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/ui/JuspayWebView;->addJsToWebView(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public addJsToWebView(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lin/juspay/hypersdk/ui/JuspayWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "javascript:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->webViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6

    sget-object v0, Lin/juspay/hypersdk/ui/JuspayWebView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Creating input connection"

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    sub-long/2addr v1, v3

    iget v3, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardStickinessTime:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v2, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v1, v1, 0xe0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_1
    return-object v0
.end method

.method public requestNumericKeyboardShow()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lin/juspay/hypersdk/ui/JuspayWebView;->setLastKeyboardTypeSetTime()V

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public requestPasswordKeyboardShow()V
    .locals 2

    const/16 v0, 0xe1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lin/juspay/hypersdk/ui/JuspayWebView;->setLastKeyboardTypeSetTime()V

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public requestPhoneKeyboardShow()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->keyboardInputType:Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lin/juspay/hypersdk/ui/JuspayWebView;->setLastKeyboardTypeSetTime()V

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public setDefaultWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setDefaultWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setLastKeyboardTypeSetTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->lastKeyboardTypeSetTime:J

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/ui/JuspayWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
