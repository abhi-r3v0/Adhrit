.class public final Lo/layoutDecoratedWithMargins$onTransact;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult()V
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
        "com/dreamplug/fabrik/ui/onboardAddCard/NewAddCardViewManager$showCardExpiry$3",
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
.field public final synthetic onPostMessage:Lo/layoutDecoratedWithMargins;


# direct methods
.method constructor <init>(Lo/layoutDecoratedWithMargins;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 252
    iget-object p1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 3040
    iget-object p1, p1, Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult:Lo/onReset;

    .line 252
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string v0, "addCardDialogFragment.lifecycle"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v0, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v0}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 305
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 306
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 253
    iget-object v3, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 4040
    iget-object v3, v3, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback:Landroid/view/View;

    .line 253
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 5040
    iget-object v3, v3, Lo/layoutDecoratedWithMargins;->ICustomTabsCallback:Landroid/view/View;

    .line 254
    new-instance v5, Lo/layoutDecoratedWithMargins$onTransact$extraCallback;

    invoke-direct {v5, p0}, Lo/layoutDecoratedWithMargins$onTransact$extraCallback;-><init>(Lo/layoutDecoratedWithMargins$onTransact;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 257
    iget-object v3, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 6040
    iget-object v3, v3, Lo/layoutDecoratedWithMargins;->extraCallback:Lo/updateSpecWithExtra;

    .line 6179
    iget-object v3, v3, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    .line 257
    invoke-virtual {v3, v1}, Lo/recycleFromStart;->setEnabled(Z)V

    .line 258
    iget-object v3, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 7070
    iget-object v3, v3, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    .line 258
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 8070
    iget-object v1, v1, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 260
    iget-object v1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 9040
    iget-object v1, v1, Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult:Lo/onReset;

    const-string v3, "name"

    .line 260
    invoke-virtual {v1, v3}, Lo/onReset;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 9070
    iget-object v1, v1, Lo/layoutDecoratedWithMargins;->onPostMessage:Landroid/widget/EditText;

    .line 261
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 308
    iput-boolean v4, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_2

    .line 310
    new-instance v1, Lcom/dreamplug/fabrik/ui/onboardAddCard/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/dreamplug/fabrik/ui/onboardAddCard/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/layoutDecoratedWithMargins$onTransact;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 311
    iget-object v0, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 313
    :cond_2
    :goto_1
    new-instance v0, Lo/layoutDecoratedWithMargins$onTransact$onMessageChannelReady;

    invoke-direct {v0, v2, p1}, Lo/layoutDecoratedWithMargins$onTransact$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 1040
    iget-object p1, p1, Lo/layoutDecoratedWithMargins;->asInterface:Landroid/view/View;

    const/4 v0, 0x4

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lo/layoutDecoratedWithMargins$onTransact;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 2040
    iget-object p1, p1, Lo/layoutDecoratedWithMargins;->asBinder:Landroid/view/View;

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
