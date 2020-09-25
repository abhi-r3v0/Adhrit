.class Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private dA()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_faq_content_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function(){ document.body.style.paddingBottom = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "px\'})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->a(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;)Lcom/freshchat/consumer/sdk/activity/c;

    move-result-object p2

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->dA()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    const-string p1, "freshchat_assets"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p2, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    sget-object p2, Lcom/freshchat/consumer/sdk/b/c;->lb:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    return v1

    :cond_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->e(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->d(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->c(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unable to process deeplink "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FRESHCHAT"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "LAUNCHED_FROM_FAQ"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity$1;->G:Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return v3
.end method
