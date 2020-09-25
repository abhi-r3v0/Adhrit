.class public final Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$$special$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

.field private synthetic extraCallback:Lo/getPaddingTop$onRelationshipValidationResult;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lo/getPaddingTop$onRelationshipValidationResult;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->extraCallback:Lo/getPaddingTop$onRelationshipValidationResult;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/StaggeredGridLayoutManager;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

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
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->extraCallback:Lo/getPaddingTop$onRelationshipValidationResult;

    iget-object p1, p1, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    .line 54
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->extraCallback:Lo/getPaddingTop$onRelationshipValidationResult;

    iget-object p1, p1, Lo/getPaddingTop$onRelationshipValidationResult;->onPostMessage:Lo/getPaddingTop;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lo/shouldMeasureChild;

    invoke-static {p1, v0}, Lo/getPaddingTop;->extraCallback(Lo/getPaddingTop;Lo/shouldMeasureChild;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationCentreFragment$onItemClickListener$1$onClick$$inlined$let$lambda$1;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
