.class public final Lo/getTitleTextView;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u000c\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\rH\u0002J\u0010\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\rH\u0002J\u000e\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0017J\u0010\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/amex/AmexWebViewFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "()V",
        "amexWebViewInterface",
        "Lcom/dreamplug/androidapp/ui/amex/AmexWebViewInterface;",
        "binding",
        "Lcom/dreamplug/androidapp/databinding/LayoutAmexWebViewBinding;",
        "getBinding",
        "()Lcom/dreamplug/androidapp/databinding/LayoutAmexWebViewBinding;",
        "binding$delegate",
        "Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate;",
        "urlToLoad",
        "",
        "viewModel",
        "Lcom/dreamplug/androidapp/ui/amex/AmexWebviewViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/androidapp/ui/amex/AmexWebviewViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "launchInBrowser",
        "",
        "onBackPressed",
        "",
        "Lcom/dreamplug/utils/IsHandled;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "openDeepLink",
        "deepLink",
        "setupWebView",
        "javaScriptToInject",
        "showLoader",
        "show",
        "showToast",
        "text",
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
.field private static synthetic extraCallback:[Lo/applyUserOverwrite;


# instance fields
.field private final ICustomTabsCallback:Lcom/dreamplug/androidapp/ui/amex/AmexWebViewInterface;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/isSameListener;

.field private final onPostMessage:Lo/addChildrenForExpandedActionView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/applyUserOverwrite;

    new-instance v1, Lo/access$2900;

    const-class v2, Lo/getTitleTextView;

    invoke-static {v2}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v2

    const-string v3, "binding"

    const-string v4, "getBinding()Lcom/dreamplug/androidapp/databinding/LayoutAmexWebViewBinding;"

    invoke-direct {v1, v2, v3, v4}, Lo/access$2900;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v1

    check-cast v1, Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/getTitleTextView;->extraCallback:[Lo/applyUserOverwrite;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0e01b9

    .line 26
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 28
    sget-object v0, Lo/getTitleTextView$onMessageChannelReady;->onNavigationEvent:Lo/getTitleTextView$onMessageChannelReady;

    check-cast v0, Lo/onDisconnectSetValue;

    const-string v1, "$this$viewBinding"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "viewBindingFactory"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7049
    new-instance v1, Lo/addChildrenForExpandedActionView;

    invoke-direct {v1, p0, v0}, Lo/addChildrenForExpandedActionView;-><init>(Landroidx/fragment/app/Fragment;Lo/onDisconnectSetValue;)V

    .line 28
    iput-object v1, p0, Lo/getTitleTextView;->onPostMessage:Lo/addChildrenForExpandedActionView;

    .line 30
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 8000
    sget-object v0, Lo/isInLayout;->dump:Lo/isDetached;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x63

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lo/getTitleTextView;->onMessageChannelReady:Ljava/lang/String;

    .line 133
    new-instance v0, Lo/getTitleTextView$extraCallback;

    invoke-direct {v0, p0}, Lo/getTitleTextView$extraCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 133
    iput-object v1, p0, Lo/getTitleTextView;->onNavigationEvent:Lo/isSameListener;

    .line 34
    new-instance v0, Lcom/dreamplug/androidapp/ui/amex/AmexWebViewInterface;

    new-instance v1, Lo/getTitleTextView$onNavigationEvent;

    move-object v2, p0

    check-cast v2, Lo/getTitleTextView;

    invoke-direct {v1, v2}, Lo/getTitleTextView$onNavigationEvent;-><init>(Lo/getTitleTextView;)V

    check-cast v1, Lo/onDisconnectSetValue;

    new-instance v3, Lo/getTitleTextView$ICustomTabsCallback;

    invoke-direct {v3, v2}, Lo/getTitleTextView$ICustomTabsCallback;-><init>(Lo/getTitleTextView;)V

    check-cast v3, Lo/onDisconnectSetValue;

    new-instance v4, Lo/getTitleTextView$onPostMessage;

    invoke-direct {v4, v2}, Lo/getTitleTextView$onPostMessage;-><init>(Lo/getTitleTextView;)V

    check-cast v4, Lo/onDisconnectSetValue;

    invoke-direct {v0, v1, v3, v4}, Lcom/dreamplug/androidapp/ui/amex/AmexWebViewInterface;-><init>(Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;)V

    iput-object v0, p0, Lo/getTitleTextView;->ICustomTabsCallback:Lcom/dreamplug/androidapp/ui/amex/AmexWebViewInterface;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getTitleTextView;Ljava/lang/String;)V
    .locals 1

    .line 12095
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getTitleTextView;)V
    .locals 2

    .line 8054
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo/getTitleTextView;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getTitleTextView;Ljava/lang/String;)V
    .locals 8

    .line 8058
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 8059
    new-instance v2, Lo/sessionFile$onPostMessage;

    invoke-direct {v2}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 8247
    new-instance v3, Lo/sessionFile;

    invoke-direct {v3, v2}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 8059
    check-cast v0, Ljava/lang/reflect/Type;

    .line 9068
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v5, 0x0

    .line 9098
    invoke-virtual {v3, v0, v2, v5}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "Moshi.Builder().build().adapter(listMyData)"

    .line 8059
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8062
    :try_start_0
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 10000
    sget-object v2, Lo/isInLayout;->isCurrent:Lo/isDetached;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v5, 0x64

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8062
    invoke-virtual {v0, v2}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 10070
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11070
    :catch_0
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;

    .line 8067
    :cond_0
    :goto_0
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object v2

    iget-object v2, v2, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    const-string v3, "binding.webView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lo/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v0, p1}, Lo/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    check-cast v5, Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8068
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object p1

    iget-object p1, p1, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8070
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object p1

    iget-object p1, p1, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v2, "settings"

    .line 8071
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 8072
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object v2

    iget-object v2, v2, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    iget-object v3, p0, Lo/getTitleTextView;->ICustomTabsCallback:Lcom/dreamplug/androidapp/ui/amex/AmexWebViewInterface;

    const-string v5, "mobileClient"

    invoke-virtual {v2, v3, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8078
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 8079
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 8080
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 8086
    check-cast v0, Ljava/lang/Iterable;

    .line 8130
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 8131
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8087
    iget-object v2, p0, Lo/getTitleTextView;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Uri.parse(urlToLoad)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 8089
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object p1

    iget-object p1, p1, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    iget-object p0, p0, Lo/getTitleTextView;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 8091
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_6
    return-void
.end method

.method private final onNavigationEvent()Lo/getDropDownViewTheme;
    .locals 5

    iget-object v0, p0, Lo/getTitleTextView;->onPostMessage:Lo/addChildrenForExpandedActionView;

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    sget-object v2, Lo/getTitleTextView;->extraCallback:[Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string/jumbo v4, "thisRef"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "property"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    iget-object v2, v0, Lo/addChildrenForExpandedActionView;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v2, v0, Lo/addChildrenForExpandedActionView;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v2

    const-string v4, "fragment.viewLifecycleOwner"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v4, "fragment.viewLifecycleOwner.lifecycle"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v2, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 1044
    iget-object v2, v0, Lo/addChildrenForExpandedActionView;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string/jumbo v3, "thisRef.requireView()"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/MediaSessionCompat$1$onMessageChannelReady;

    iput-object v2, v0, Lo/addChildrenForExpandedActionView;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    :goto_0
    check-cast v2, Lo/getDropDownViewTheme;

    return-object v2

    .line 1041
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not attempt to get bindings when Fragment views are destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final synthetic onNavigationEvent(Lo/getTitleTextView;)Lo/getDropDownViewTheme;
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/getTitleTextView;Ljava/lang/String;)V
    .locals 1

    .line 11098
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lo/getTitleTextView$onRelationshipValidationResult;

    invoke-direct {v0, p1}, Lo/getTitleTextView$onRelationshipValidationResult;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 118
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object v0

    iget-object v0, v0, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object v0

    iget-object v0, v0, Lo/getDropDownViewTheme;->onPostMessage:Lo/safeSizeOf;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lo/getTitleTextView;->onNavigationEvent()Lo/getDropDownViewTheme;

    move-result-object p1

    iget-object p1, p1, Lo/getDropDownViewTheme;->extraCallback:Lo/onDestroyView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    .line 2000
    iget-object p1, p0, Lo/getTitleTextView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Toolbar$OnMenuItemClickListener;

    .line 2021
    iget-object p1, p1, Lo/Toolbar$OnMenuItemClickListener;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    const-string/jumbo v0, "viewLifecycleOwner"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lo/getTitleTextView$onTransact;

    invoke-direct {v0, p0}, Lo/getTitleTextView$onTransact;-><init>(Lo/getTitleTextView;)V

    check-cast v0, Lo/setPlaybackToRemote;

    .line 128
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 3000
    iget-object p1, p0, Lo/getTitleTextView;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Toolbar$OnMenuItemClickListener;

    .line 3026
    sget-object p2, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 4000
    sget-object p2, Lo/getScrapCount;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/propertyName;

    .line 3027
    new-instance v0, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>()V

    .line 3028
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 5000
    sget-object v1, Lo/isInLayout;->forceCloseConnection:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x65

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3028
    invoke-virtual {v0, v1}, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object v0

    .line 5196
    iget-object v1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v2, "NoAuth"

    .line 5311
    invoke-static {v2}, Lo/shouldIncludeField;->extraCallback(Ljava/lang/String;)V

    const-string/jumbo v3, "true"

    .line 5312
    invoke-static {v3, v2}, Lo/shouldIncludeField;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 5362
    iget-object v4, v1, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5363
    iget-object v1, v1, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6292
    iget-object v1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v1, :cond_0

    .line 6293
    new-instance v1, Lo/isCompleteForChild;

    invoke-direct {v1, v0}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    const/4 v0, 0x0

    .line 6427
    invoke-static {p2, v1, v0}, Lo/getIndexedNode;->extraCallback(Lo/propertyName;Lo/isCompleteForChild;Z)Lo/getIndexedNode;

    move-result-object p2

    .line 3032
    new-instance v0, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/Toolbar$OnMenuItemClickListener$onMessageChannelReady;-><init>(Lo/Toolbar$OnMenuItemClickListener;)V

    check-cast v0, Lo/convertDouble;

    invoke-interface {p2, v0}, Lo/convertInteger;->onNavigationEvent(Lo/convertDouble;)V

    return-void

    .line 6292
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "url == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
