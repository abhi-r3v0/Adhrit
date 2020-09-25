.class public final Lcom/dreamplug/androidapp/ui/main/LockScreenUtil$observer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureSpinner;-><init>(Lo/asBinder;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/main/LockScreenUtil$observer$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "onPause",
        "onResume",
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
.field private synthetic ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/ensureSpinner;


# direct methods
.method public constructor <init>(Lo/ensureSpinner;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaControllerCompatApi21$CallbackProxy;",
            ")V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/LockScreenUtil$observer$1;->onPostMessage:Lo/ensureSpinner;

    iput-object p2, p0, Lcom/dreamplug/androidapp/ui/main/LockScreenUtil$observer$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/LockScreenUtil$observer$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object p1, Lo/isInLayout;->onPostMessage:Lo/isResumed;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "property"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p1, p1, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getJsonObjectFrom;

    .line 1020
    invoke-interface {p1}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p1

    .line 1000
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 35
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->asBinder()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->asInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/LockScreenUtil$observer$1;->onPostMessage:Lo/ensureSpinner;

    .line 2023
    iget-object v0, v0, Lo/ensureSpinner;->onNavigationEvent:Lo/asBinder;

    .line 36
    invoke-static {p1, v0}, Lo/updateToolbarLogo;->ICustomTabsCallback(Lo/updateToolbarLogo;Lo/asBinder;)V

    return-void

    .line 3057
    :cond_0
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->onNavigationEvent()V

    :cond_1
    return-void
.end method
