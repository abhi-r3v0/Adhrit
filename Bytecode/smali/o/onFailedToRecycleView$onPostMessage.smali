.class public final Lo/onFailedToRecycleView$onPostMessage;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onFailedToRecycleView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000C\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0017J.\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0014H\u0016J\u001c\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001c\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/CredProtectAuthWebView$onViewCreated$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "shouldOverrideUrlLoading",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onFailedToRecycleView;


# direct methods
.method constructor <init>(Lo/onFailedToRecycleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-static {p1}, Lo/onFailedToRecycleView;->extraCallback(Lo/onFailedToRecycleView;)Lo/onDestroyView;

    move-result-object p1

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    :cond_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asInterface()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-virtual {p1}, Lo/onFailedToRecycleView;->ICustomTabsCallback()Z

    :cond_0
    const/4 p1, 0x1

    new-array p2, p1, [Lo/addWrite;

    const/4 p4, 0x0

    .line 2043
    new-instance v0, Lo/addWrite;

    const-string v1, "error_details"

    invoke-direct {v0, v1, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p2, p4

    const-string p3, "pairs"

    .line 94
    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cp_web_auth_failure"

    .line 94
    invoke-static {p1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 84
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asInterface()Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-virtual {p1}, Lo/onFailedToRecycleView;->ICustomTabsCallback()Z

    :cond_0
    const/4 p1, 0x1

    new-array p2, p1, [Lo/addWrite;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 87
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1043
    :goto_0
    new-instance v1, Lo/addWrite;

    const-string v2, "error_details"

    invoke-direct {v1, v2, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v0

    const-string p3, "pairs"

    .line 87
    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cp_web_auth_failure"

    .line 87
    invoke-static {p1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .line 98
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asInterface()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-virtual {p1}, Lo/onFailedToRecycleView;->ICustomTabsCallback()Z

    :cond_0
    const/4 p1, 0x1

    new-array p2, p1, [Lo/addWrite;

    const/4 p3, 0x0

    .line 3043
    new-instance v0, Lo/addWrite;

    const-string v1, "error_details"

    const-string v2, "SSL"

    invoke-direct {v0, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p2, p3

    const-string p3, "pairs"

    .line 101
    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cp_web_auth_failure"

    .line 101
    invoke-static {p1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 78
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lo/onFailedToRecycleView;->ICustomTabsCallback(Lo/onFailedToRecycleView;Landroid/net/Uri;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 73
    iget-object p1, p0, Lo/onFailedToRecycleView$onPostMessage;->onNavigationEvent:Lo/onFailedToRecycleView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lo/onFailedToRecycleView;->ICustomTabsCallback(Lo/onFailedToRecycleView;Landroid/net/Uri;)V

    const/4 p1, 0x0

    return p1
.end method
