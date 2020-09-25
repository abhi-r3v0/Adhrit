.class public final Lo/getTitleMarginBottom$onNavigationEvent;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitleMarginBottom;->onTransact()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/NewOnboardAddCardViewManager$showCardNumber$3",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field public final synthetic onNavigationEvent:Lo/getTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/getTitleMarginBottom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 178
    iget-object p1, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 2031
    iget-object p1, p1, Lo/getTitleMarginBottom;->ICustomTabsCallback$Stub:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 224
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 225
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 226
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 3031
    iget-object v4, v4, Lo/getTitleMarginBottom;->extraCallback:Landroid/view/View;

    const/16 v6, 0x8

    .line 179
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 4031
    iget-object v4, v4, Lo/getTitleMarginBottom;->extraCallback:Landroid/view/View;

    .line 180
    invoke-static {v4, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 181
    iget-object v3, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 5031
    iget-object v3, v3, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 5179
    iget-object v3, v3, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 181
    invoke-virtual {v3, v5}, Lo/recycleFromStart;->setEnabled(Z)V

    .line 182
    iget-object v3, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 6031
    iget-object v3, v3, Lo/getTitleMarginBottom;->onPostMessage:Landroid/view/View;

    .line 182
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 7031
    iget-object v3, v3, Lo/getTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    .line 183
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 8031
    iget-object v1, v1, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 8179
    iget-object v1, v1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 184
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 185
    iget-object v1, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 9031
    iget-object v1, v1, Lo/getTitleMarginBottom;->onNavigationEvent:Lo/updateSpecWithExtra;

    .line 9179
    iget-object v1, v1, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 185
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 228
    iput-boolean v5, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_2

    .line 230
    new-instance v1, Lcom/dreamplug/androidapp/gating/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/androidapp/gating/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getTitleMarginBottom$onNavigationEvent;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 231
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 233
    :cond_2
    :goto_1
    new-instance v0, Lo/getTitleMarginBottom$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v0, v2, p1}, Lo/getTitleMarginBottom$onNavigationEvent$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lo/getTitleMarginBottom$onNavigationEvent;->onNavigationEvent:Lo/getTitleMarginBottom;

    .line 1031
    iget-object p1, p1, Lo/getTitleMarginBottom;->asBinder:Lo/calculateItemDecorationsForChild;

    const-string v0, "card"

    .line 174
    invoke-interface {p1, v0}, Lo/calculateItemDecorationsForChild;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method
