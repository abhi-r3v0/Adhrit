.class public final Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onBackPressed()V
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

.field private synthetic onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field private synthetic onPostMessage:Lo/notifyDataSetChanged;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/notifyDataSetChanged;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onPostMessage:Lo/notifyDataSetChanged;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

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
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-virtual {p1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 2464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 54
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object p1

    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_1

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onRelationshipValidationResult(Lo/notifyDataSetChanged;)Lo/RecyclerView$ChildDrawingOrderCallback;

    move-result-object p1

    .line 3055
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    const v1, 0x800005

    .line 3836
    invoke-virtual {p1, v1}, Lo/isSessionReady;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3838
    invoke-static {p1}, Lo/isSessionReady;->onPostMessage(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onRelationshipValidationResult(Lo/notifyDataSetChanged;)Lo/RecyclerView$ChildDrawingOrderCallback;

    move-result-object p1

    .line 4120
    iget-object v2, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    invoke-virtual {v2, v0, v1}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 4121
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    invoke-virtual {p1}, Lo/isSessionReady;->onNavigationEvent()V

    goto :goto_1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onTransact(Lo/notifyDataSetChanged;)Lo/dispatchAnimationsFinished;

    move-result-object p1

    .line 5025
    iget-object p1, p1, Lo/dispatchAnimationsFinished;->onNavigationEvent:Lo/performCompletion$onNavigationEvent;

    invoke-virtual {p1}, Lo/performCompletion$onNavigationEvent;->onNavigationEvent()V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v1, p0

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/MainActivity$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
