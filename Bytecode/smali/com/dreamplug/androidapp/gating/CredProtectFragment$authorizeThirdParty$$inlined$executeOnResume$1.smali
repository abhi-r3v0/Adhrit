.class public final Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPositionDescription;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onMessageChannelReady:Lo/getPositionDescription;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getPositionDescription;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getPositionDescription;

    iput-object p4, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getPositionDescription;

    invoke-static {p1}, Lo/getPositionDescription;->onMessageChannelReady(Lo/getPositionDescription;)Lo/onDestroyView;

    move-result-object p1

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getPositionDescription;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/getPositionDescription;->onMessageChannelReady(Lo/getPositionDescription;Z)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getPositionDescription;

    invoke-virtual {p1}, Lo/getPositionDescription;->ICustomTabsCallback()Z

    .line 56
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/getPositionDescription;

    invoke-static {p1}, Lo/getPositionDescription;->getInterfaceDescriptor(Lo/getPositionDescription;)Lo/dispatchOnLoadComplete;

    move-result-object p1

    new-instance v1, Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;

    iget-object v2, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/lang/String;

    new-instance v3, Lcom/dreamplug/androidapp/auth/Parameter;

    iget-object v4, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/dreamplug/androidapp/auth/Parameter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;-><init>(Ljava/lang/String;Lcom/dreamplug/androidapp/auth/Parameter;)V

    invoke-virtual {p1, v1}, Lo/dispatchOnLoadComplete;->onPostMessage(Lcom/dreamplug/androidapp/auth/ThirdPartyAuthorizeRequest;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
