.class public final Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterSharedElementCallback$onMessageChannelReady;->onPostMessage(Landroid/view/View;I)V
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
.field private synthetic ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/setEnterSharedElementCallback$onMessageChannelReady;

.field private synthetic onPostMessage:I


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setEnterSharedElementCallback$onMessageChannelReady;I)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setEnterSharedElementCallback$onMessageChannelReady;

    iput p4, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:I

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setEnterSharedElementCallback$onMessageChannelReady;

    iget-object p1, p1, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->ICustomTabsCallback(Lo/setEnterSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 53
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setEnterSharedElementCallback$onMessageChannelReady;

    iget-object p1, p1, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->onPostMessage(Lo/setEnterSharedElementCallback;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:Lo/setEnterSharedElementCallback$onMessageChannelReady;

    iget-object p1, p1, Lo/setEnterSharedElementCallback$onMessageChannelReady;->onMessageChannelReady:Lo/setEnterSharedElementCallback;

    invoke-static {p1}, Lo/setEnterSharedElementCallback;->onMessageChannelReady(Lo/setEnterSharedElementCallback;)V

    .line 27
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
