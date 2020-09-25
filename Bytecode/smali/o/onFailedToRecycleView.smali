.class public final Lo/onFailedToRecycleView;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onFailedToRecycleView$onNavigationEvent;,
        Lo/onFailedToRecycleView$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0002&\'B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010#\u001a\u00020\u0015H\u0016J\u001a\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/CredProtectAuthWebView;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "()V",
        "accessCode",
        "",
        "getAccessCode",
        "()Ljava/lang/String;",
        "setAccessCode",
        "(Ljava/lang/String;)V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/main/CredProtectAuthWebView$AuthData;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/main/CredProtectAuthWebView$AuthData;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "loader",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "webView",
        "Landroid/webkit/WebView;",
        "checkForRedirectCode",
        "",
        "uri",
        "Landroid/net/Uri;",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "AuthData",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/onFailedToRecycleView$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private extraCallback:Lo/onDestroyView;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/onFailedToRecycleView$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onFailedToRecycleView$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/onFailedToRecycleView;->onMessageChannelReady:Lo/onFailedToRecycleView$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 38
    new-instance v0, Lo/onFailedToRecycleView$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/onFailedToRecycleView$ICustomTabsCallback;-><init>(Lo/onFailedToRecycleView;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 38
    iput-object v1, p0, Lo/onFailedToRecycleView;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/onFailedToRecycleView;Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5131
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 6000
    :goto_0
    iget-object v2, p0, Lo/onFailedToRecycleView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onFailedToRecycleView$onNavigationEvent;

    if-eqz v2, :cond_1

    .line 6165
    iget-object v2, v2, Lo/onFailedToRecycleView$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 5131
    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Uri.parse(extra?.redirectUrl)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_2

    const-string v0, "code"

    .line 5132
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lo/onFailedToRecycleView;->onNavigationEvent:Ljava/lang/String;

    .line 5133
    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_5

    .line 5134
    new-instance v0, Lo/onActivityResult;

    invoke-direct {v0}, Lo/onActivityResult;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f130412

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.something_went_wrong)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7032
    sget v3, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {v0, v1, v2, p1, v3}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 5135
    invoke-virtual {p0}, Lo/onFailedToRecycleView;->ICustomTabsCallback()Z

    return-void

    .line 8000
    :cond_5
    iget-object p1, p0, Lo/onFailedToRecycleView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onFailedToRecycleView$onNavigationEvent;

    if-eqz p1, :cond_8

    .line 8165
    iget-object p1, p1, Lo/onFailedToRecycleView$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 5142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lo/getAllowEnterTransitionOverlap;

    iget-object p0, p0, Lo/onFailedToRecycleView;->onNavigationEvent:Ljava/lang/String;

    if-nez p0, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-interface {v0, p0, p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.cm.TriggerAuthFlowListener"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method

.method public static final synthetic extraCallback(Lo/onFailedToRecycleView;)Lo/onDestroyView;
    .locals 1

    .line 33
    iget-object p0, p0, Lo/onFailedToRecycleView;->extraCallback:Lo/onDestroyView;

    if-nez p0, :cond_0

    const-string v0, "loader"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lo/onFailedToRecycleView;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    const-string/jumbo v1, "webView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "MsLoginWebView"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00bb

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 51
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onDestroyView;

    const-string/jumbo p3, "view.loaderView"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/onFailedToRecycleView;->extraCallback:Lo/onDestroyView;

    .line 52
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    const-string/jumbo p3, "view.webView"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x30

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lo/onFailedToRecycleView;->extraCallback:Lo/onDestroyView;

    if-nez v0, :cond_1

    const-string v1, "loader"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    iget-object p1, p0, Lo/onFailedToRecycleView;->extraCallback:Lo/onDestroyView;

    if-nez p1, :cond_0

    const-string p2, "loader"

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 68
    iget-object p1, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    const-string/jumbo p2, "webView"

    if-nez p1, :cond_1

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 69
    iget-object p1, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object p1, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    if-nez p1, :cond_3

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lo/onFailedToRecycleView$onPostMessage;

    invoke-direct {v0, p0}, Lo/onFailedToRecycleView$onPostMessage;-><init>(Lo/onFailedToRecycleView;)V

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    iget-object p1, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    if-nez p1, :cond_4

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v0, "settings"

    .line 113
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 124
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 126
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 127
    iget-object p1, p0, Lo/onFailedToRecycleView;->onPostMessage:Landroid/webkit/WebView;

    if-nez p1, :cond_5

    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3000
    iget-object v1, p0, Lo/onFailedToRecycleView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onFailedToRecycleView$onNavigationEvent;

    if-eqz v1, :cond_6

    .line 3165
    iget-object v1, v1, Lo/onFailedToRecycleView$onNavigationEvent;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object v1, v0

    .line 127
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&redirect_uri="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    iget-object v1, p0, Lo/onFailedToRecycleView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onFailedToRecycleView$onNavigationEvent;

    if-eqz v1, :cond_7

    .line 4165
    iget-object v0, v1, Lo/onFailedToRecycleView$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 127
    :cond_7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
