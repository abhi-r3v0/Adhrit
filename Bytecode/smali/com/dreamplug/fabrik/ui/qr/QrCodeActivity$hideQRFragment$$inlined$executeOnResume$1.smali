.class public final Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRightDecorationWidth;
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
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/getRightDecorationWidth;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getRightDecorationWidth;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/getRightDecorationWidth;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/getRightDecorationWidth;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->permissionLayout:I

    invoke-virtual {p1, v0}, Lo/getRightDecorationWidth;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string v0, "permissionLayout"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/getRightDecorationWidth;

    invoke-virtual {p1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 1598
    new-instance v1, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "QRFragment"

    const/4 v4, -0x1

    invoke-direct {v1, p1, v3, v4, v2}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {p1, v1, v0}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v2, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
