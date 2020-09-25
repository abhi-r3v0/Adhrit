.class public final Lo/removeChildrenForExpandedActionView;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u001c\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J0\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/CredWebChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "fragment",
        "Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;",
        "fileCallback",
        "Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$FileCallback;",
        "(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$FileCallback;)V",
        "getFileCallback",
        "()Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$FileCallback;",
        "setFileCallback",
        "(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$FileCallback;)V",
        "getFragment",
        "()Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;",
        "getDefaultVideoPoster",
        "Landroid/graphics/Bitmap;",
        "onHideCustomView",
        "",
        "onShowCustomView",
        "fullScreenContent",
        "Landroid/view/View;",
        "callback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "onShowFileChooser",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "fileChooserParams",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
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
.field private ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

.field private final onNavigationEvent:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileCallback"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lo/removeChildrenForExpandedActionView;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    iput-object p2, p0, Lo/removeChildrenForExpandedActionView;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 18
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final onHideCustomView()V
    .locals 3

    .line 43
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 44
    iget-object v0, p0, Lo/removeChildrenForExpandedActionView;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    .line 3932
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {v0, v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3933
    :cond_0
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {v0, v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3934
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 36
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    if-eqz p1, :cond_3

    .line 38
    iget-object p2, p0, Lo/removeChildrenForExpandedActionView;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    const-string v0, "fullScreenView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3924
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {p2, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3925
    :cond_0
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {p2, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3926
    :cond_1
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {p2, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3927
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string p1, "filePathCallback"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lo/removeChildrenForExpandedActionView;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    .line 1102
    iput-object p2, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;->extraCallback:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 25
    iget-object p2, p0, Lo/removeChildrenForExpandedActionView;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget-object p3, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    .line 1938
    invoke-static {}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onRelationshipValidationResult()I

    move-result p3

    .line 25
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 27
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "*/*"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.OPENABLE"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object p2, p0, Lo/removeChildrenForExpandedActionView;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget-object p3, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    .line 2938
    invoke-static {}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onRelationshipValidationResult()I

    move-result p3

    .line 30
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
