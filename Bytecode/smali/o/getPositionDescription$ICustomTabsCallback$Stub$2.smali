.class public final Lo/getPositionDescription$ICustomTabsCallback$Stub$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getContentPaddingRight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPositionDescription$ICustomTabsCallback$Stub;
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1",
        "Lcom/dreamplug/androidapp/ui/widget/highlightedview/AnimationListener;",
        "onAnimationEnd",
        "",
        "onAnimationStart",
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
.field public final synthetic onMessageChannelReady:Lo/getPositionDescription$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/getPositionDescription$ICustomTabsCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lo/getPositionDescription$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/getPositionDescription$ICustomTabsCallback$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 6

    .line 120
    iget-object v0, p0, Lo/getPositionDescription$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/getPositionDescription$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/getPositionDescription$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getPositionDescription;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 479
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 480
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lo/getPositionDescription$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/getPositionDescription$ICustomTabsCallback$Stub;

    iget-object v2, v2, Lo/getPositionDescription$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getPositionDescription;

    invoke-static {v2}, Lo/getPositionDescription;->extraCallback(Lo/getPositionDescription;)Lo/onChildrenLoaded;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v4, "$this$gone"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 2017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lo/getPositionDescription$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/getPositionDescription$ICustomTabsCallback$Stub;

    iget-object v2, v2, Lo/getPositionDescription$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getPositionDescription;

    invoke-static {v2}, Lo/getPositionDescription;->onNavigationEvent(Lo/getPositionDescription;)Lo/onChildrenLoaded;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v4, Lo/getPositionDescription$ICustomTabsCallback$Stub$2$onMessageChannelReady;

    invoke-direct {v4, p0}, Lo/getPositionDescription$ICustomTabsCallback$Stub$2$onMessageChannelReady;-><init>(Lo/getPositionDescription$ICustomTabsCallback$Stub$2;)V

    check-cast v4, Lo/getContentPaddingRight;

    invoke-static {v2, v4}, Lo/getCardBackgroundColor;->onMessageChannelReady(Landroid/view/View;Lo/getContentPaddingRight;)V

    .line 482
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 484
    new-instance v2, Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getPositionDescription$ICustomTabsCallback$Stub$2;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 485
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 487
    :cond_2
    :goto_0
    new-instance v1, Lo/getPositionDescription$ICustomTabsCallback$Stub$2$ICustomTabsCallback;

    invoke-direct {v1, v3, v0}, Lo/getPositionDescription$ICustomTabsCallback$Stub$2$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
