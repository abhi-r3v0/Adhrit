.class public final Lo/dispatchOnLoadComplete;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020\u000bJ\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020\u000bR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001e\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/CredProtectViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_authorizedDomainResponse",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;",
        "_credProtectAuthResponse",
        "Lcom/dreamplug/fabrik/ui/control/CredProtectResponse;",
        "_domainSelectorEvent",
        "",
        "authService",
        "Lcom/dreamplug/androidapp/auth/CredProtectService;",
        "getAuthService",
        "()Lcom/dreamplug/androidapp/auth/CredProtectService;",
        "authService$delegate",
        "Lkotlin/Lazy;",
        "authorizedDomainResponse",
        "Landroidx/lifecycle/LiveData;",
        "getAuthorizedDomainResponse",
        "()Landroidx/lifecycle/LiveData;",
        "credProtectAuthResponse",
        "getCredProtectAuthResponse",
        "domainSelectionEvent",
        "getDomainSelectionEvent",
        "screenSource",
        "getScreenSource",
        "()Ljava/lang/String;",
        "setScreenSource",
        "(Ljava/lang/String;)V",
        "selectedAuthDomain",
        "getSelectedAuthDomain",
        "setSelectedAuthDomain",
        "authorizeThirdParty",
        "",
        "paramBody",
        "Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;",
        "getAuthorizedDomain",
        "context",
        "isFromOnboardingFlow",
        "",
        "triggerWebAuthFlow",
        "domain",
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
.field public final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/cancelLoadInBackground;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/isSameListener;

.field public asInterface:Ljava/lang/String;

.field public extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/control/AuthSupportedResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 23
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/dispatchOnLoadComplete;->ICustomTabsCallback:Lo/setActive;

    .line 27
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/dispatchOnLoadComplete;->onMessageChannelReady:Lo/setActive;

    .line 31
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/dispatchOnLoadComplete;->onNavigationEvent:Lo/setActive;

    const-string p1, ""

    .line 33
    iput-object p1, p0, Lo/dispatchOnLoadComplete;->extraCallback:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lo/dispatchOnLoadComplete;->asInterface:Ljava/lang/String;

    .line 36
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 88
    sget-object p1, Lo/dispatchOnLoadComplete$ICustomTabsCallback;->ICustomTabsCallback:Lo/dispatchOnLoadComplete$ICustomTabsCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 88
    iput-object v0, p0, Lo/dispatchOnLoadComplete;->ICustomTabsCallback$Stub:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/dispatchOnLoadComplete;)Lo/setActive;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/dispatchOnLoadComplete;->onMessageChannelReady:Lo/setActive;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/dispatchOnLoadComplete;)Lo/setActive;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/dispatchOnLoadComplete;->ICustomTabsCallback:Lo/setActive;

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lo/dispatchOnLoadComplete;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getThumbTintMode;

    .line 60
    invoke-interface {v0, p1}, Lo/getThumbTintMode;->extraCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 61
    new-instance v0, Lo/dispatchOnLoadComplete$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/dispatchOnLoadComplete$onMessageChannelReady;-><init>(Lo/dispatchOnLoadComplete;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public final onPostMessage(Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;)V
    .locals 1

    const-string v0, "paramBody"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lo/dispatchOnLoadComplete;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getThumbTintMode;

    .line 39
    invoke-interface {v0, p1}, Lo/getThumbTintMode;->onNavigationEvent(Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;)Lo/clearScrap;

    move-result-object v0

    .line 1006
    iget-object p1, p1, Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lo/dispatchOnLoadComplete;->asInterface:Ljava/lang/String;

    .line 41
    new-instance p1, Lo/dispatchOnLoadComplete$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/dispatchOnLoadComplete$onNavigationEvent;-><init>(Lo/dispatchOnLoadComplete;)V

    check-cast p1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, p1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
