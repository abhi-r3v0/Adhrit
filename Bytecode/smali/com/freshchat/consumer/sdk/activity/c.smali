.class public Lcom/freshchat/consumer/sdk/activity/c;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/activity/c$a;,
        Lcom/freshchat/consumer/sdk/activity/c$b;
    }
.end annotation


# static fields
.field static final bJ:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private bA:Landroid/widget/FrameLayout;

.field private bB:Landroid/widget/FrameLayout;

.field private bC:Landroid/widget/VideoView;

.field public bD:Lcom/freshchat/consumer/sdk/activity/c$b;

.field private bE:I

.field private bF:I

.field private bG:I

.field private bH:I

.field private bI:Z

.field private bv:Lcom/freshchat/consumer/sdk/activity/c$a;

.field private bw:Landroid/view/View;

.field private bx:Landroid/widget/FrameLayout;

.field private by:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private bz:Landroid/widget/FrameLayout;

.field private density:F

.field private mContext:Landroid/content/Context;

.field private scrollPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/c;->bJ:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bE:I

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bI:Z

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bw:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bw:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/c;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->by:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bx:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/c;->by:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/c;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bB:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_custom_html5_webview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bA:Landroid/widget/FrameLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->main_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bz:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bA:Landroid/widget/FrameLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->fullscreen_custom_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bx:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bB:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bA:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/freshchat/consumer/sdk/activity/c;->bJ:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    new-instance p1, Lcom/freshchat/consumer/sdk/activity/c$a;

    invoke-direct {p1, p0, v1}, Lcom/freshchat/consumer/sdk/activity/c$a;-><init>(Lcom/freshchat/consumer/sdk/activity/c;Lcom/freshchat/consumer/sdk/activity/c$1;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bv:Lcom/freshchat/consumer/sdk/activity/c$a;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Landroid/webkit/WebViewClient;

    invoke-direct {p1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bz:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/c;->bJ:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->density:F

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eR()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bC:Landroid/widget/VideoView;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/activity/c$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    iput p2, p0, Lcom/freshchat/consumer/sdk/activity/c;->bE:I

    return-void
.end method

.method public aA()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bv:Lcom/freshchat/consumer/sdk/activity/c$a;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public aB()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bC:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public az()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bw:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bB:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c;->bw:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Lcom/freshchat/consumer/sdk/activity/c;->density:F

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bG:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bF:I

    iget p3, p0, Lcom/freshchat/consumer/sdk/activity/c;->bG:I

    sub-int/2addr p3, p2

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/freshchat/consumer/sdk/activity/c;->scrollPosition:I

    iget p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bE:I

    int-to-float p1, p1

    iget p2, p0, Lcom/freshchat/consumer/sdk/activity/c;->density:F

    mul-float p1, p1, p2

    float-to-double p1, p1

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bH:I

    const/4 p2, 0x1

    if-gt p3, p1, :cond_1

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bI:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/activity/c$b;->h()V

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/activity/c;->bI:Z

    :cond_1
    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bI:Z

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->scrollPosition:I

    iget p2, p0, Lcom/freshchat/consumer/sdk/activity/c;->bH:I

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/activity/c$b;->i()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/c;->bI:Z

    :cond_2
    return-void
.end method
