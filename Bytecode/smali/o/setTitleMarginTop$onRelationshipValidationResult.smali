.class public final Lo/setTitleMarginTop$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginTop;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/cancelPositionAnimator;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/data/repository/inapp/InAppData;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic extraCallback:Lo/setTitleMarginTop;


# direct methods
.method constructor <init>(Lo/setTitleMarginTop;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginTop$onRelationshipValidationResult;->extraCallback:Lo/setTitleMarginTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 82
    check-cast p1, Lo/getThumbTintList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1135
    :goto_0
    check-cast p1, Lo/cancelPositionAnimator;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    .line 1137
    iget-object v2, p0, Lo/setTitleMarginTop$onRelationshipValidationResult;->extraCallback:Lo/setTitleMarginTop;

    invoke-virtual {v2}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1591
    new-instance v5, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v5}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1592
    invoke-virtual {v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v1, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 1138
    sget-object v1, Lo/hitThumb;->asBinder:Lo/hitThumb;

    iget-object v1, p0, Lo/setTitleMarginTop$onRelationshipValidationResult;->extraCallback:Lo/setTitleMarginTop;

    check-cast v1, Lo/onSessionEvent;

    invoke-static {v1, p1}, Lo/hitThumb;->ICustomTabsCallback(Lo/onSessionEvent;Lo/cancelPositionAnimator;)V

    .line 1594
    iput-boolean v0, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 1595
    :cond_3
    invoke-virtual {v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_4

    .line 1596
    new-instance v0, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$3$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, v2, v3, p0, p1}, Lcom/dreamplug/androidapp/gating/GatingActivity$onCreate$3$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setTitleMarginTop$onRelationshipValidationResult;Lo/cancelPositionAnimator;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1597
    iget-object p1, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v2, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1599
    :cond_4
    :goto_2
    new-instance p1, Lo/setTitleMarginTop$onRelationshipValidationResult$onMessageChannelReady;

    invoke-direct {p1, v5, v2}, Lo/setTitleMarginTop$onRelationshipValidationResult$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_5
    return-void
.end method
