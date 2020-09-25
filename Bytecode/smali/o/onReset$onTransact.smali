.class public final Lo/onReset$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dataToString$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onReset;-><init>()V
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
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment$bottomSheetListener$1",
        "Lcom/dreamplug/fabrik/ui/control/addcard/NewVerifyCardBottomSheet$BottomSheetInterface;",
        "onComplete",
        "",
        "onEditCardClicked",
        "onVerifyClicked",
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
.field public final synthetic onNavigationEvent:Lo/onReset;


# direct methods
.method constructor <init>(Lo/onReset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 101
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->warmup(Lo/onReset;)V

    .line 102
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v1

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    :goto_0
    check-cast v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-static {v0, v1}, Lo/onReset;->extraCallback(Lo/onReset;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "card_add_card_verify_now"

    invoke-static {v0, v2, v1}, Lo/onReset;->onNavigationEvent(Lo/onReset;Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 103
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub$Proxy(Lo/onReset;)Lo/dataToString;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 104
    :cond_1
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub$Proxy(Lo/onReset;)Lo/dataToString;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    :cond_2
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub$Proxy(Lo/onReset;)Lo/dataToString;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo/dataToString;->extraCallback(Lo/dataToString;)V

    :cond_3
    return-void
.end method

.method public final extraCallback()V
    .locals 5

    .line 109
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub$Proxy(Lo/onReset;)Lo/dataToString;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 110
    :cond_0
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v1

    .line 2320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 110
    :goto_0
    check-cast v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-static {v0, v1}, Lo/onReset;->extraCallback(Lo/onReset;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "card_add_card_edit_details"

    invoke-static {v0, v2, v1}, Lo/onReset;->onNavigationEvent(Lo/onReset;Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string/jumbo v2, "this@NewAddCardDialogFragment.lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    new-instance v4, Lo/onReset$onTransact$onMessageChannelReady;

    invoke-direct {v4, p0}, Lo/onReset$onTransact$onMessageChannelReady;-><init>(Lo/onReset$onTransact;)V

    check-cast v4, Lo/getServerTime;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onPostMessage()V
    .locals 8

    .line 118
    iget-object v0, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 652
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 653
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 119
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v2, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x19

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    .line 6000
    sget-object v4, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v7, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-static {v2}, Lo/onReset;->newSession(Lo/onReset;)V

    .line 121
    iget-object v2, p0, Lo/onReset$onTransact;->onNavigationEvent:Lo/onReset;

    invoke-virtual {v2}, Lo/onAudioInfoChanged;->m_()V

    .line 655
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 657
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment$bottomSheetListener$1$onComplete$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment$bottomSheetListener$1$onComplete$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onReset$onTransact;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 658
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 660
    :cond_2
    :goto_0
    new-instance v1, Lo/onReset$onTransact$extraCallback;

    invoke-direct {v1, v3, v0}, Lo/onReset$onTransact$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
