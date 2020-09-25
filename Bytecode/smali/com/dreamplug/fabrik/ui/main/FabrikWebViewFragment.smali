.class public final Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/getSubtitleTextView;
.implements Lo/setSubtitleTextAppearance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;,
        Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;,
        Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;,
        Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0017\u0018\u0000 h2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004hijkB\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010.\u001a\u00020/H\u0002J\u0008\u00100\u001a\u00020\u0015H\u0016J\u001c\u00101\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u00104\u001a\u0004\u0018\u000105H\u0002J\u0008\u00106\u001a\u00020/H\u0016J\u0008\u00107\u001a\u00020\u0015H\u0016J\u0012\u00108\u001a\u00020\u000c2\u0008\u00109\u001a\u0004\u0018\u00010\u000cH\u0002J\u0010\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020\u0015H\u0002J\u0008\u0010<\u001a\u00020/H\u0002J\u0008\u0010=\u001a\u00020/H\u0002J\u0008\u0010>\u001a\u00020\u0015H\u0002J\u0008\u0010?\u001a\u00020\u0015H\u0002J\"\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u00082\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u0008\u0010E\u001a\u00020\u0015H\u0016J\u0012\u0010F\u001a\u00020/2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0016J&\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010K\u001a\u00020L2\u0008\u0010M\u001a\u0004\u0018\u00010N2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0008\u0010O\u001a\u00020/H\u0017J\u0008\u0010P\u001a\u00020/H\u0007J-\u0010Q\u001a\u00020/2\u0006\u0010A\u001a\u00020\u00082\u000e\u0010R\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0S2\u0006\u0010T\u001a\u00020UH\u0016\u00a2\u0006\u0002\u0010VJ\u0008\u0010W\u001a\u00020/H\u0016J\u000e\u0010X\u001a\u00020/2\u0006\u0010Y\u001a\u00020JJ\u001a\u0010Z\u001a\u00020/2\u0006\u0010[\u001a\u00020J2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0008\u0010\\\u001a\u00020/H\u0002J\u0006\u0010]\u001a\u00020/J\u0008\u0010^\u001a\u00020/H\u0016J\u0008\u0010_\u001a\u00020/H\u0002J\u0008\u0010`\u001a\u00020/H\u0002J\u0008\u0010a\u001a\u00020/H\u0002J\u0010\u0010b\u001a\u00020/2\u0006\u0010c\u001a\u00020\u0015H\u0002J\u0008\u0010d\u001a\u00020/H\u0016J\u0008\u0010e\u001a\u00020/H\u0016J\u0012\u0010f\u001a\u00020/2\u0008\u0010g\u001a\u0004\u0018\u00010\u000cH\u0002R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u001a\u001a\u00060\u001bR\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010 \u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001f\u001a\u0004\u0008#\u0010$R\u000e\u0010&\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u000f\"\u0004\u0008-\u0010\u0011\u00a8\u0006l"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "Lcom/dreamplug/androidapp/ui/WebViewI;",
        "Lcom/dreamplug/androidapp/helper/NoInternetHandler;",
        "()V",
        "authDataObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "authStateLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "authToken",
        "",
        "downloadFileUrl",
        "getDownloadFileUrl",
        "()Ljava/lang/String;",
        "setDownloadFileUrl",
        "(Ljava/lang/String;)V",
        "fileCallback",
        "Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$FileCallback;",
        "haveInternet",
        "",
        "isTabSubmenu",
        "Ljava/lang/Boolean;",
        "isVideo",
        "isWebGame",
        "javascriptInterface",
        "Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;",
        "getJavascriptInterface",
        "()Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;",
        "javascriptInterface$delegate",
        "Lkotlin/Lazy;",
        "lastBackPress",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "shouldShowPermissionRational",
        "stateChangeListener",
        "Lcom/dreamplug/auth/helpers/AuthStateChangeListener;",
        "toastMsg",
        "Lcom/dreamplug/widget/CREDCustomToast;",
        "url",
        "getUrl",
        "setUrl",
        "attemptFileDownload",
        "",
        "canHandleNoInternet",
        "checkAndLaunchInBrowser",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "dismissErrorLayout",
        "errorLayoutShown",
        "getCookieString",
        "token",
        "handleBackPressResultFromWeb",
        "isHandled",
        "handleInsets",
        "handleNetworkChange",
        "isAllowedStoragePermission",
        "isExternalStorageWritable",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
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
        "onHideCustomView",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onShowCustomView",
        "fullScreenView",
        "onViewCreated",
        "view",
        "openProfilePictureBottomSheet",
        "profilePicReload",
        "reload",
        "reloadOnfileUpload",
        "requestStoragePermission",
        "sendBackPressToWeb",
        "setErrorTexts",
        "noNetwork",
        "showErrorLayout",
        "softReload",
        "takeScreenshot",
        "message",
        "Companion",
        "FileCallback",
        "MyJavascriptInterface",
        "WebViewData",
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
.field public static final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

# The value of this static final field might be set in the static constructor
.field private static final mayLaunchUrl:Ljava/lang/String; = "FabrikWebViewFragment"


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

.field private final ICustomTabsService:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/isSameListener;

.field private asInterface:Z

.field extraCallback:Ljava/lang/String;

.field private extraCommand:Ljava/util/HashMap;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private final newSession:Lo/onActivityResult;

.field private onMessageChannelReady:Ljava/lang/Boolean;

.field public onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/Boolean;

.field private final onRelationshipValidationResult:Lo/isSameListener;

.field private onTransact:Z

.field private final postMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final updateVisuals:Lo/instantiateReceiver;

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;-><init>(B)V

    sput-object v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onNavigationEvent;

    const-string v0, "FabrikWebViewFragment"

    .line 942
    sput-object v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->mayLaunchUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 95
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 96
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage:Ljava/lang/Boolean;

    .line 98
    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$asBinder;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$asBinder;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 98
    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asBinder:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 99
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 99
    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onRelationshipValidationResult:Lo/isSameListener;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asInterface:Z

    .line 108
    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    invoke-direct {v1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;-><init>()V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    .line 109
    new-instance v1, Lo/onActivityResult;

    invoke-direct {v1}, Lo/onActivityResult;-><init>()V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->newSession:Lo/onActivityResult;

    .line 110
    iput-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->warmup:Z

    .line 20097
    sget-object v0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->getInterfaceDescriptor:Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onPostMessage;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsService:Lo/setPlaybackToRemote;

    .line 791
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->postMessage:Lo/setActive;

    .line 792
    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$warmup;

    invoke-direct {v0, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$warmup;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v0, Lo/instantiateReceiver;

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->updateVisuals:Lo/instantiateReceiver;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Lo/getMoveDuration;
    .locals 0

    .line 21000
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback$Stub()I
    .locals 1

    const/16 v0, 0x2af0

    return v0
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V
    .locals 2

    .line 24917
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24918
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/safeSizeOf;

    const-string v1, "javascript:webClient.checkUploadStatus();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 24919
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "errorLayout"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static final synthetic asInterface(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Lo/setActive;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->postMessage:Lo/setActive;

    return-object p0
.end method

.method private final asInterface()V
    .locals 5

    .line 840
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_6

    .line 12854
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Environment.getExternalStorageState()"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mounted"

    .line 12855
    invoke-static {v3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12860
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 843
    sget-object v0, Lo/getTargetRequestCode;->ICustomTabsCallback:Lo/getTargetRequestCode;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {v0}, Lo/getTargetRequestCode;->onPostMessage(Ljava/lang/String;)V

    return-void

    .line 12864
    :cond_3
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->warmup:Z

    if-nez v0, :cond_4

    .line 12865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 12866
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12867
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12868
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 12869
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 12871
    :cond_4
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 848
    :cond_5
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->newSession:Lo/onActivityResult;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext()"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130156

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context"

    .line 13031
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "text"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13032
    sget v4, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_6
    return-void
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->getInterfaceDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asInterface:Z

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 25296
    invoke-static {p1, p0}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 21830
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/safeSizeOf;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, v0, :cond_0

    .line 21831
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/safeSizeOf;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 21833
    :cond_0
    iput-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onTransact:Z

    .line 21834
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asInterface:Z

    return p0
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Lo/onActivityResult;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->newSession:Lo/onActivityResult;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Ljava/lang/String;)V
    .locals 9

    .line 22798
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22800
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string/jumbo v1, "view!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22801
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 22802
    sget-object v2, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    const-string/jumbo v2, "screenshot.jpg"

    invoke-static {v0, v2, v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 22803
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent(Z)V

    return-void
.end method

.method private final onNavigationEvent(Z)V
    .locals 2

    const-string v0, "ourServerText"

    const-string/jumbo v1, "title"

    if-eqz p1, :cond_0

    .line 278
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1302d4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ourServerText:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 281
    :cond_0
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f130411

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->ourServerText:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1301aa

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 25807
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authtoken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; Path=/; Domain=.dreamplug.in"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->warmup:Z

    return-void
.end method

.method public static final synthetic onPostMessage(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub:Z

    return p0
.end method

.method public static final synthetic onRelationshipValidationResult()I
    .locals 1

    const/16 v0, 0x2aef

    return v0
.end method

.method public static final synthetic onRelationshipValidationResult(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V
    .locals 3

    .line 24000
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    const-string/jumbo v0, "web"

    const-string/jumbo v1, "source"

    .line 23788
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24421
    new-instance v1, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback;

    new-instance v2, Lo/onDetach$getDefaultImpl;

    invoke-direct {v2, v0}, Lo/onDetach$getDefaultImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback;-><init>(Lo/onDetach$getDefaultImpl;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {p0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void
.end method

.method public static final synthetic onTransact(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asInterface()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 810
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onTransact:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 12819
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12820
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/safeSizeOf;

    const-string v1, "javascript:mobileClient.backPressResult(\n typeof webClient !== \'undefined\'\n && typeof webClient.onBackPressed !== \'undefined\'\n && webClient.onBackPressed());"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final extraCallback()V
    .locals 5

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/safeSizeOf;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 896
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    new-instance v4, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v4, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback$Stub$Proxy;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v4, Lo/getServerTime;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 963
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2aef

    if-ne p1, v0, :cond_4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 965
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 966
    :goto_0
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    .line 967
    sget-object v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->mayLaunchUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult() called with: requestCode = ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], resultCode = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], data = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17065
    invoke-static {v0, p2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    .line 17102
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;->extraCallback:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_4

    new-array v0, v3, [Landroid/net/Uri;

    .line 968
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "Uri.parse(filePath)"

    invoke-static {p3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p3, v0, v2

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 970
    :cond_3
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    .line 18102
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;->extraCallback:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_4

    .line 970
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    const/16 p2, 0x2af0

    if-ne p1, p2, :cond_5

    .line 18910
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18911
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/safeSizeOf;

    const-string p3, "javascript:webClient.updateProfilePic();"

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 18912
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p0, p2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "errorLayout"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const/16 p2, 0x65

    if-ne p1, p2, :cond_6

    .line 978
    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback()V

    :cond_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 114
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1954
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string/jumbo v0, "webViewData"

    .line 1956
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    .line 2032
    :cond_1
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_6

    const v1, 0x7f1304ef

    .line 2033
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2034
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "/"

    const-string v4, "$this$startsWith"

    .line 2332
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "prefix"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2037
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent:Ljava/lang/String;

    .line 3002
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Boolean;

    .line 117
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 3003
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->onPostMessage:Ljava/lang/Boolean;

    .line 118
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage:Ljava/lang/Boolean;

    .line 3004
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;->extraCallback:Z

    const/4 v0, 0x0

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 119
    :goto_1
    iput-boolean v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub:Z

    .line 120
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FabrikWebViewFragment url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string/jumbo v3, "url"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3029
    invoke-interface {p1, v1, v2, v0}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 121
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 4000
    sget-object p1, Lo/setSplitTrack;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 121
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$asInterface;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$asInterface;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 4988
    sget-object p1, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;

    invoke-direct {v1, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRelationshipValidationResult;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 2040
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "need either \'url\' or \'endpoint\' to work"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1958
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "use FabrikWebViewFragment.getInstance(WebViewData) to get an instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p3, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onMessageChannelReady:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p3, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const p3, 0x7f0e00a3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    iput-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onTransact:Z

    .line 5032
    sget-object p2, Lo/getBridge;->onPostMessage:Lo/getBridge;

    .line 137
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->updateVisuals:Lo/instantiateReceiver;

    invoke-static {p2}, Lo/getBridge;->onNavigationEvent(Lo/instantiateReceiver;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 151
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 6000
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asBinder:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;

    .line 152
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;->showNavigationBar()V

    .line 6032
    sget-object v0, Lo/getBridge;->onPostMessage:Lo/getBridge;

    .line 153
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->updateVisuals:Lo/instantiateReceiver;

    invoke-static {v0}, Lo/getBridge;->onPostMessage(Lo/instantiateReceiver;)V

    .line 154
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onMessageChannelReady:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7000
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCommand:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_2
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 8

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1057
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1058
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 11212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    .line 301
    sget-object v5, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    .line 11320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v7, :cond_1

    move-object v4, v5

    .line 301
    :cond_1
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v6

    .line 12093
    invoke-direct {p0, v4}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent(Z)V

    .line 302
    :cond_2
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p0, v4}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "errorLayout"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, v2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onDestroyView;

    invoke-virtual {v2}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1060
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 1061
    :cond_3
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_4

    .line 1062
    new-instance v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$showErrorLayout$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1063
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1065
    :cond_4
    :goto_1
    new-instance v1, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$newSession;

    invoke-direct {v1, v3, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$newSession;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 314
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->errorLayout:I

    invoke-virtual {p0, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "errorLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCommand:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCommand:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCommand:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCommand:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x7da

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 879
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1077
    new-instance v7, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v7}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1078
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 13212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 880
    array-length v1, p3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 881
    aget p3, p3, v0

    if-nez p3, :cond_3

    .line 14093
    invoke-direct {p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asInterface()V

    goto :goto_2

    .line 15093
    :cond_3
    iget-object p3, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->newSession:Lo/onActivityResult;

    .line 884
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "requireContext()"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f1303d4

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context"

    .line 16031
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "text"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16032
    sget v5, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p3, v1, v4, v0, v5}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 885
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p2

    .line 16093
    iput-boolean p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->warmup:Z

    .line 1080
    :cond_4
    :goto_2
    iput-boolean v2, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_3

    .line 1081
    :cond_5
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_6

    .line 1082
    new-instance v0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p0

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;[I[Ljava/lang/String;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1083
    iget-object p2, v7, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1085
    :cond_6
    :goto_3
    new-instance p2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onTransact;

    invoke-direct {p2, v7, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onTransact;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :goto_4
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/getViewLayoutPosition;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/getViewLayoutPosition;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 5107
    iput-object v1, v0, Lo/getViewLayoutPosition;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 182
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, p2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onDestroyView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    .line 184
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent:Ljava/lang/String;

    const-string/jumbo v1, "url"

    if-nez p2, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 185
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, ".dreamplug.in"

    const-string v4, "$this$endsWith"

    .line 7354
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "suffix"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7356
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v0, :cond_1

    goto/16 :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 9163
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    new-instance v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;

    invoke-direct {v2, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 197
    :cond_2
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/safeSizeOf;

    const-string/jumbo p2, "webView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/removeChildrenForExpandedActionView;

    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;

    invoke-direct {v2, p0, v3}, Lo/removeChildrenForExpandedActionView;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$onMessageChannelReady;)V

    check-cast v2, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 199
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/safeSizeOf;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 201
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/safeSizeOf;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback$Stub;

    invoke-direct {v2, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback$Stub;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast v2, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 247
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/safeSizeOf;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    .line 248
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 249
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/safeSizeOf;

    .line 10000
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->asBinder:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$MyJavascriptInterface;

    const-string v3, "mobileClient"

    .line 249
    invoke-virtual {p2, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 254
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 260
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 262
    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 263
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/safeSizeOf;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 264
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent:Ljava/lang/String;

    if-nez p2, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->getInterfaceDescriptor:Ljava/lang/String;

    .line 10807
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "authtoken="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; Path=/; Domain=.dreamplug.in"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p1, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/safeSizeOf;

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onNavigationEvent:Ljava/lang/String;

    if-nez p2, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->postMessage:Lo/setActive;

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsService:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 267
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->postMessage:Lo/setActive;

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->ICustomTabsService:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 269
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->tryAgain:I

    invoke-virtual {p0, p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    const-string/jumbo p2, "tryAgain"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$getInterfaceDescriptor;

    invoke-direct {p2, p0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$getInterfaceDescriptor;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 186
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8296
    invoke-static {p1, p2}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    :cond_6
    iput-boolean v0, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onTransact:Z

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_7
    return-void
.end method
