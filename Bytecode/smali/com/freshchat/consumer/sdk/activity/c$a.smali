.class Lcom/freshchat/consumer/sdk/activity/c$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/activity/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private bK:Landroid/view/View;

.field final synthetic bL:Lcom/freshchat/consumer/sdk/activity/c;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/activity/c;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshchat/consumer/sdk/activity/c;Lcom/freshchat/consumer/sdk/activity/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/c$a;-><init>(Lcom/freshchat/consumer/sdk/activity/c;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bK:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_html5_video_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bK:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bK:Landroid/view/View;

    return-object v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->b(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->b(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->c(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/activity/c$b;->k()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x64

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lo/asBinder;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lo/asBinder;

    invoke-virtual {p1}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/c;->d(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/c;->bD:Lcom/freshchat/consumer/sdk/activity/c$b;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/activity/c$b;->j()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/c;->b(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/activity/c;->bJ:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/c;->b(Lcom/freshchat/consumer/sdk/activity/c;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/c$a;->bL:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/activity/c;->b(Lcom/freshchat/consumer/sdk/activity/c;Landroid/view/View;)V

    return-void
.end method
