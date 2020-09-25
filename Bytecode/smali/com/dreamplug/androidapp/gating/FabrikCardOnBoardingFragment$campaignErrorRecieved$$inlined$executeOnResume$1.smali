.class public final Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycle;->extraCallback(Ljava/lang/String;)V
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lo/recycle;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/recycle;

    iput-object p4, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 1000
    sget-object p1, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v0, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    .line 54
    sget-object p1, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 54
    :goto_0
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_1

    .line 2023
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 54
    move-object v1, p1

    check-cast v1, Lo/toggle;

    :cond_1
    if-eqz v1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 60
    sget-object v0, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    iget-object v1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static/range {v0 .. v6}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->onPostMessage(Lo/recycle;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
