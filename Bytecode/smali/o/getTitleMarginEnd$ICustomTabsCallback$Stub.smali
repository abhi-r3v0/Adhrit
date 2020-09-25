.class public final Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDecoratedTop$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitleMarginEnd;-><init>()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/FabrikOnboardAddCardFragment$dialogInterface$1",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardAddCardHolderNameDialog$DialogInterface;",
        "onComplete",
        "",
        "onVerifyClicked",
        "name",
        "",
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
.field public final synthetic ICustomTabsCallback:Lo/getTitleMarginEnd;


# direct methods
.method constructor <init>(Lo/getTitleMarginEnd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 14

    .line 93
    iget-object v0, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 619
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 620
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
    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {v2}, Lo/getTitleMarginEnd;->onPostMessage(Lo/getTitleMarginEnd;)Lo/getDecoratedTop;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/onAudioInfoChanged;->m_()V

    .line 95
    :cond_1
    iget-object v2, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {v2}, Lo/getTitleMarginEnd;->onMessageChannelReady(Lo/getTitleMarginEnd;)Lo/setTitleMarginStart;

    move-result-object v2

    .line 4000
    iget-object v2, v2, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setActive;

    .line 95
    new-instance v4, Lo/getThumbTintList;

    new-instance v13, Lo/setTitleMarginStart$extraCallback;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1e

    const-string v7, "COINS_INTRO_FRAGMENT"

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v4, v13}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 622
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_3

    .line 624
    new-instance v2, Lcom/dreamplug/androidapp/gating/FabrikOnboardAddCardFragment$dialogInterface$1$onComplete$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/androidapp/gating/FabrikOnboardAddCardFragment$dialogInterface$1$onComplete$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 625
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 627
    :cond_3
    :goto_0
    new-instance v1, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub$ICustomTabsCallback;

    invoke-direct {v1, v3, v0}, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {v0, p1}, Lo/getTitleMarginEnd;->ICustomTabsCallback(Lo/getTitleMarginEnd;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->asBinder(Lo/getTitleMarginEnd;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v0, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    .line 1181
    iget-object v0, v0, Lo/getTitleMarginEnd;->onPostMessage:Lo/stopLoading;

    if-nez v0, :cond_1

    const-string v1, "addCardView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-interface {v0}, Lo/stopLoading;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->asBinder(Lo/getTitleMarginEnd;)Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-static {p1, v0}, Lo/getTitleMarginEnd;->onMessageChannelReady(Lo/getTitleMarginEnd;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "verify_a_card_screen_verify_click"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 87
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->ICustomTabsService(Lo/getTitleMarginEnd;)V

    .line 88
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->onPostMessage(Lo/getTitleMarginEnd;)Lo/getDecoratedTop;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 89
    :cond_3
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->onPostMessage(Lo/getTitleMarginEnd;)Lo/getDecoratedTop;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2071
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 2072
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->nameCta:I

    invoke-virtual {p1, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getMaxEnd;

    if-eqz v1, :cond_5

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    :cond_5
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->nameCta:I

    invoke-virtual {p1, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getMaxEnd;

    if-eqz v1, :cond_6

    sget-object v2, Lo/getMaxStart;->onPostMessage:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 2074
    :cond_6
    iput-boolean v0, p1, Lo/getDecoratedTop;->extraCallback:Z

    :cond_7
    return-void
.end method
