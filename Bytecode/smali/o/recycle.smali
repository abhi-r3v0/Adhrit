.class public final Lo/recycle;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/createScroller;
.implements Lo/onOptionsItemSelected$onMessageChannelReady;
.implements Lo/getDecoratedBottom$extraCallback;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010#\u001a\u00020 H\u0016J\u0008\u0010$\u001a\u00020 H\u0002J \u0010%\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u00010\'0&2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0002J\u0008\u0010*\u001a\u00020 H\u0002J\u0008\u0010+\u001a\u00020 H\u0002J\u0008\u0010,\u001a\u00020 H\u0002J\u0008\u0010-\u001a\u00020 H\u0016J\"\u0010.\u001a\u00020 2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002002\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u0010\u00104\u001a\u00020 2\u0006\u00105\u001a\u000206H\u0016J\u0008\u00107\u001a\u00020\u0010H\u0016J\u0010\u00108\u001a\u00020 2\u0006\u00109\u001a\u00020:H\u0016J\u0012\u0010;\u001a\u00020 2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J&\u0010>\u001a\u0004\u0018\u00010:2\u0006\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u001a\u0010C\u001a\u00020 2\u0006\u0010D\u001a\u00020:2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0014\u0010E\u001a\u00020 2\n\u0008\u0002\u0010F\u001a\u0004\u0018\u00010\"H\u0002J\u0008\u0010G\u001a\u00020 H\u0016J\u0008\u0010H\u001a\u00020 H\u0002J\u0008\u0010I\u001a\u00020 H\u0016J\u0012\u0010J\u001a\u00020 2\u0008\u0010K\u001a\u0004\u0018\u00010\"H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00140\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/CampaignIntroFragment$CampaignIntroCallback;",
        "Lcom/dreamplug/fabrik/ui/onboardMachine/OnboardMachineFragment$Callbacks;",
        "()V",
        "cardsAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "cardsListObserver",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "gatingViewModel",
        "Lcom/dreamplug/androidapp/gating/GatingViewModel;",
        "isCampaignInterstitialVisible",
        "",
        "nfcData",
        "Lcom/dreamplug/androidapp/utils/creditCardNfcReader/model/NfcData;",
        "nfcDataObserver",
        "Lcom/dreamplug/androidapp/core/Event;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onboardCardsViewModel",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsViewModel;",
        "getOnboardCardsViewModel",
        "()Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsViewModel;",
        "onboardCardsViewModel$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardDetailViewModel;",
        "campaignErrorRecieved",
        "",
        "message",
        "",
        "campaignIntroVisible",
        "getCards",
        "getCommonParams",
        "",
        "",
        "paymentMode",
        "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
        "handleCampaign",
        "hideCampaignIntro",
        "initViewModel",
        "introCtaClicked",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onBackPressed",
        "onClick",
        "v",
        "Landroid/view/View;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "openQrCodeActivity",
        "errorMessage",
        "postRedemptionCtaClicked",
        "showCampaignIntro",
        "skipReward",
        "validateQRCode",
        "qr",
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
.field private ICustomTabsCallback:Lo/setTitleMarginStart;

.field private ICustomTabsCallback$Stub:Ljava/util/HashMap;

.field private final asBinder:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private asInterface:Lo/setMaxHeight;

.field private extraCallback:Lo/getContentInsetLeft;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

.field private final onPostMessage:Lo/isSameListener;

.field private final onRelationshipValidationResult:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/getThumbTintList<",
            "Lo/setMaxHeight;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Lo/recycle$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/recycle$onRelationshipValidationResult;-><init>(Lo/recycle;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 64
    iput-object v1, p0, Lo/recycle;->onPostMessage:Lo/isSameListener;

    .line 180
    new-instance v0, Lo/recycle$onPostMessage;

    invoke-direct {v0, p0}, Lo/recycle$onPostMessage;-><init>(Lo/recycle;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/recycle;->onRelationshipValidationResult:Lo/setPlaybackToRemote;

    .line 188
    new-instance v0, Lo/recycle$extraCallback;

    invoke-direct {v0, p0}, Lo/recycle$extraCallback;-><init>(Lo/recycle;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/recycle;->asBinder:Lo/setPlaybackToRemote;

    .line 414
    new-instance v0, Lo/recycle$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/recycle$ICustomTabsCallback;-><init>(Lo/recycle;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/recycle;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/recycle;)Lo/getContentInsetLeft;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lo/recycle;)Lo/repositionToWrapContentIfNecessary;
    .locals 1

    .line 61
    iget-object p0, p0, Lo/recycle;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez p0, :cond_0

    const-string v0, "cardsAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic asBinder(Lo/recycle;)Lo/getBottomDecorationHeight;
    .locals 0

    .line 39000
    iget-object p0, p0, Lo/recycle;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getBottomDecorationHeight;

    return-object p0
.end method

.method private final asBinder()V
    .locals 9

    .line 118
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 10000
    sget-object v0, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v1, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_0
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 11000
    sget-object v0, Lo/onDestroyOptionsMenu;->onTransact:Lo/setTitleTextColor;

    sget-object v1, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    iget-object v0, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    if-eqz v0, :cond_6

    .line 11027
    iget-boolean v0, v0, Lo/getContentInsetLeft;->onNavigationEvent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 120
    iget-object v0, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    if-eqz v0, :cond_1

    .line 12027
    iput-boolean v2, v0, Lo/getContentInsetLeft;->onNavigationEvent:Z

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v3, "lifecycle"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v2, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 451
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 452
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v6

    sget-object v7, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 12212
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 122
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->childFragmentContainer:I

    invoke-virtual {p0, v6}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const-string v7, "childFragmentContainer"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 12581
    invoke-virtual {v2}, Lo/requestExtraBinder;->ICustomTabsCallback()Z

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 13464
    new-instance v6, Lo/binderDied;

    invoke-direct {v6, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const v2, 0x7f0b01b2

    .line 125
    new-instance v7, Lo/onOptionsItemSelected;

    invoke-direct {v7}, Lo/onOptionsItemSelected;-><init>()V

    check-cast v7, Landroidx/fragment/app/Fragment;

    const/4 v8, 0x2

    .line 14343
    invoke-virtual {v6, v2, v7, v5, v8}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 14651
    iget-boolean v2, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_3

    .line 14655
    iput-boolean v1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    const-string v2, "CampaignIntroFragment"

    .line 14656
    iput-object v2, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 127
    invoke-virtual {v6}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 454
    iput-boolean v1, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 14652
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_4
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v2, :cond_5

    .line 456
    new-instance v1, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$showCampaignIntro$$inlined$executeOnResume$1;

    invoke-direct {v1, v0, v3, p0}, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$showCampaignIntro$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 457
    iget-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 459
    :cond_5
    :goto_1
    new-instance v1, Lo/recycle$onTransact;

    invoke-direct {v1, v4, v0}, Lo/recycle$onTransact;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    nop

    :cond_6
    return-void
.end method

.method public static final synthetic asInterface(Lo/recycle;)Ljava/util/Map;
    .locals 2

    .line 39229
    sget-object p0, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    const-string/jumbo p0, "verify_cards"

    const/4 v0, 0x0

    .line 40010
    invoke-static {v0, p0}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    .line 39230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "count_of_cards"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private final asInterface()V
    .locals 6

    .line 161
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->childFragmentContainer:I

    invoke-virtual {p0, v0}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "childFragmentContainer"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lo/recycle;->onMessageChannelReady:Z

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 18598
    new-instance v2, Lo/requestExtraBinder$onMessageChannelReady;

    const-string v3, "CampaignIntroFragment"

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v4, v5}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v1, v2, v0}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/recycle;)Lo/setMaxHeight;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/recycle;->asInterface:Lo/setMaxHeight;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/recycle;Lo/setMaxHeight;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/recycle;->asInterface:Lo/setMaxHeight;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/recycle;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/recycle;->asBinder()V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;
    .locals 1

    .line 61
    iget-object p0, p0, Lo/recycle;->ICustomTabsCallback:Lo/setTitleMarginStart;

    if-nez p0, :cond_0

    const-string v0, "gatingViewModel"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/recycle;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/recycle;->asInterface()V

    return-void
.end method

.method public static final synthetic onTransact(Lo/recycle;)Lo/setPlaybackToRemote;
    .locals 0

    .line 61
    iget-object p0, p0, Lo/recycle;->onRelationshipValidationResult:Lo/setPlaybackToRemote;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 8

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const v3, 0x7f0b01b2

    invoke-virtual {v2, v3}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 317
    instance-of v3, v2, Lo/createScroller;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 318
    move-object v3, v2

    check-cast v3, Lo/createScroller;

    invoke-interface {v3}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    .line 323
    :cond_0
    sget-object v3, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {}, Lo/onDestroyOptionsMenu;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 326
    :cond_1
    instance-of v3, v2, Lo/getDecoratedBottom;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    sget-object v3, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 32000
    sget-object v3, Lo/onDestroyOptionsMenu;->onTransact:Lo/setTitleTextColor;

    sget-object v6, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 328
    :cond_2
    instance-of v3, v2, Lo/onOptionsItemSelected;

    if-nez v3, :cond_6

    if-nez v2, :cond_3

    goto :goto_1

    .line 332
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32686
    iget-object v1, v2, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, v2, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v4, :cond_5

    .line 333
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->childFragmentContainer:I

    invoke-virtual {p0, v1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const-string v2, "childFragmentContainer"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33571
    :cond_5
    new-instance v1, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v0, v2, v3, v5}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {v0, v1, v5}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return v4

    :cond_6
    :goto_1
    return v5
.end method

.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/recycle;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/recycle;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/recycle;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/recycle;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final extraCallback()V
    .locals 6

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 491
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 492
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 20212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 175
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->haveQr:I

    invoke-virtual {p0, v2}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v4, "haveQr"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21061
    invoke-direct {p0}, Lo/recycle;->asInterface()V

    .line 494
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 496
    new-instance v2, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$skipReward$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$skipReward$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 497
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 499
    :cond_2
    :goto_0
    new-instance v1, Lo/recycle$ICustomTabsCallback$Stub;

    invoke-direct {v1, v3, v0}, Lo/recycle$ICustomTabsCallback$Stub;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 14

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 471
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 472
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 16212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    .line 141
    sget-object v5, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 17000
    sget-object v5, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v7, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v7, v2

    invoke-virtual {v5, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 142
    sget-object v2, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    .line 17320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 17321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 142
    :goto_1
    check-cast v2, Lo/getThumbTintList;

    if-eqz v2, :cond_2

    .line 18023
    iget-object v2, v2, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 142
    move-object v4, v2

    check-cast v4, Lo/toggle;

    :cond_2
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 148
    sget-object v7, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1e

    move-object v8, p1

    invoke-static/range {v7 .. v13}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 18061
    :cond_3
    invoke-direct {p0}, Lo/recycle;->asInterface()V

    .line 474
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 475
    :cond_4
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_5

    .line 476
    new-instance v2, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle;Ljava/lang/String;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 477
    iget-object p1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 479
    :cond_5
    :goto_2
    new-instance p1, Lo/recycle$onMessageChannelReady;

    invoke-direct {p1, v3, v0}, Lo/recycle$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    .line 369
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_8

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const-string p2, "qr_code_data"

    .line 344
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lo/getChildRectangleOnScreenScrollAmount;

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    if-eqz p3, :cond_2

    const-string v1, "promo_code_data"

    .line 345
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p1

    :goto_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 347
    :cond_3
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 34000
    sget-object v1, Lo/setTrackTintMode;->getExtras:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 348
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 35000
    sget-object v1, Lo/setTrackTintMode;->isConnected:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 351
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 35016
    iget-object p1, p2, Lo/getChildRectangleOnScreenScrollAmount;->onPostMessage:Ljava/lang/String;

    .line 35376
    sget-object p2, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    new-instance p3, Lo/recycle$asBinder;

    invoke-direct {p3, p0}, Lo/recycle$asBinder;-><init>(Lo/recycle;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-virtual {p2, p1, p3}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Ljava/lang/String;Lo/onDisconnectSetValue;)V

    return-void

    :cond_5
    if-eqz p3, :cond_7

    .line 354
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {p1, v0}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Z)V

    .line 355
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {p3}, Lo/onDestroyOptionsMenu;->onPostMessage(Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    if-eqz p1, :cond_6

    .line 36027
    iput-boolean v0, p1, Lo/getContentInsetLeft;->onNavigationEvent:Z

    .line 357
    :cond_6
    invoke-direct {p0}, Lo/recycle;->asBinder()V

    :cond_7
    return-void

    :cond_8
    const/4 p1, 0x2

    new-array p2, p1, [Lo/addWrite;

    const/4 p3, 0x0

    .line 36043
    new-instance v1, Lo/addWrite;

    const-string v2, "action"

    const-string v3, "error"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, p3

    .line 37043
    new-instance p3, Lo/addWrite;

    const-string v1, "failure_reason"

    const-string v2, "QR not found"

    invoke-direct {p3, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, v0

    const-string p3, "pairs"

    .line 361
    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p3, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_qr_confirmation"

    .line 360
    invoke-static {p1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 28080
    :cond_0
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 274
    const-class p1, Lo/setTitleMarginStart;

    invoke-virtual {v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(ac\u2026ingViewModel::class.java)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setTitleMarginStart;

    iput-object p1, p0, Lo/recycle;->ICustomTabsCallback:Lo/setTitleMarginStart;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0063

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x7f0b01c3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b040b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onboard_qr_click"

    .line 286
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void

    :cond_1
    const-string p1, "onboard_claimed_reward_click"

    .line 290
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 291
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->childFragmentContainer:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "childFragmentContainer"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 30464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 293
    new-instance p1, Lo/fixLayoutEndGap;

    invoke-direct {p1}, Lo/fixLayoutEndGap;-><init>()V

    .line 294
    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/Fragment;

    new-instance v3, Lo/onDetach$warmup;

    const/4 v4, 0x1

    const-string v5, "onboarding"

    invoke-direct {v3, v5, v4}, Lo/onDetach$warmup;-><init>(Ljava/lang/String;Z)V

    check-cast v3, Landroid/os/Parcelable;

    const-string v5, "extra"

    .line 31016
    invoke-static {v1, v3, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 295
    new-instance v3, Landroid/transition/Slide;

    const/16 v5, 0x50

    invoke-direct {v3, v5}, Landroid/transition/Slide;-><init>(I)V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    .line 296
    new-instance v3, Landroid/transition/Slide;

    invoke-direct {v3, v5}, Landroid/transition/Slide;-><init>(I)V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setReturnTransition(Ljava/lang/Object;)V

    const p1, 0x7f0b01b2

    const/4 v3, 0x2

    .line 31343
    invoke-virtual {v0, p1, v1, v2, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 31651
    iget-boolean p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_2

    .line 31655
    iput-boolean v4, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    const-string p1, "LifeStyleClaimedRewardFragment"

    .line 31656
    iput-object p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 299
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    :goto_0
    return-void

    .line 31652
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28229
    :cond_3
    sget-object p1, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    const-string/jumbo p1, "verify_cards"

    .line 29010
    invoke-static {v2, p1}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 28230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "count_of_cards"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "source"

    const-string v1, "onboarding_verify_card_list"

    .line 281
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "add_card_click"

    .line 280
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 283
    iget-object p1, p0, Lo/recycle;->ICustomTabsCallback:Lo/setTitleMarginStart;

    if-nez p1, :cond_4

    const-string v0, "gatingViewModel"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 30000
    :cond_4
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 283
    new-instance v0, Lo/getThumbTintList;

    new-instance v8, Lo/setTitleMarginStart$extraCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const-string v2, "VERIFY_CARD_FRAGMENT"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v0, v8}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lo/recycle;->ICustomTabsCallback:Lo/setTitleMarginStart;

    if-nez p1, :cond_0

    const-string p1, "gatingViewModel"

    invoke-static {p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lo/setTitleMarginStart;->onPostMessage()V

    .line 74
    iget-object p1, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1027
    iput-boolean v0, p1, Lo/getContentInsetLeft;->onNavigationEvent:Z

    .line 75
    :cond_1
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "FabrikCardOnBoardingFragment"

    .line 1029
    invoke-interface {p1, v2, v1, v0}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0e00a1

    .line 79
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2000
    iget-object p2, p0, Lo/recycle;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getBottomDecorationHeight;

    .line 2022
    iget-object p2, p2, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 80
    iget-object v0, p0, Lo/recycle;->asBinder:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 3000
    iget-object p2, p0, Lo/recycle;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getBottomDecorationHeight;

    .line 3022
    iget-object p2, p2, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 81
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    iget-object v1, p0, Lo/recycle;->asBinder:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 3264
    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 4060
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p2}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 3264
    const-class p2, Lo/getContentInsetLeft;

    invoke-virtual {v0, p2}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p2

    check-cast p2, Lo/getContentInsetLeft;

    iput-object p2, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    if-nez p2, :cond_0

    .line 3265
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4080
    :cond_1
    new-instance v0, Lo/setMetadata;

    invoke-direct {v0, p2}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    .line 3265
    const-class p2, Lo/appendViewToAllSpans$extraCallback;

    invoke-virtual {v0, p2}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p2

    const-string v0, "ViewModelProviders.of(ac\u2026BarViewModel::class.java)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/appendViewToAllSpans$extraCallback;

    const-string v0, "<set-?>"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object p2, p0, Lo/recycle;->onPostMessage:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getBottomDecorationHeight;

    .line 5269
    invoke-virtual {p2}, Lo/getBottomDecorationHeight;->ICustomTabsCallback()V

    const-string p2, "card_screen"

    .line 84
    invoke-static {p2}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    const-string/jumbo p2, "state_onboarding_verify_cards"

    .line 86
    invoke-static {p2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array v0, p2, [Lo/addWrite;

    .line 87
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v1, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "score"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, p3

    const-string p3, "pairs"

    .line 87
    invoke-static {v0, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-static {p2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p2

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p2, "onboard_score_show_screen_load"

    .line 87
    invoke-static {p2, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    move-result-object p2

    .line 88
    sget-object p3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    sget-object p3, Lo/setTrackTintMode;->getRoot:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x2d

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    .line 8012
    sget-object p3, Lo/access$201;->ICustomTabsCallback:Lo/access$201;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    sget-object p2, Lo/setTrackTintMode;->getRoot:Lo/setTitleTextColor;

    sget-object p3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object p3, p3, v1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 41000
    iget-object v0, p0, Lo/recycle;->ICustomTabsCallback$Stub:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 6

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 461
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 462
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 15212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 134
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->haveQr:I

    invoke-virtual {p0, v2}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v4, "haveQr"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16061
    invoke-direct {p0}, Lo/recycle;->asInterface()V

    .line 464
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 466
    new-instance v2, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 467
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 469
    :cond_2
    :goto_0
    new-instance v1, Lo/recycle$onNavigationEvent;

    invoke-direct {v1, v3, v0}, Lo/recycle$onNavigationEvent;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lo/recycle;->onMessageChannelReady:Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 6

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 481
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 482
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 19212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 168
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->haveQr:I

    invoke-virtual {p0, v2}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v4, "haveQr"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20061
    invoke-direct {p0}, Lo/recycle;->asInterface()V

    .line 484
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 486
    new-instance v2, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/androidapp/gating/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/recycle;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 487
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 489
    :cond_2
    :goto_0
    new-instance v1, Lo/recycle$asInterface;

    invoke-direct {v1, v3, v0}, Lo/recycle$asInterface;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 236
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->haveQr:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Landroid/view/View;

    move-object p2, p0

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 237
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->claimedReward:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 238
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->addMoreCard:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/saveOldPosition;

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 239
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 22000
    sget-object p1, Lo/isInLayout;->onConnectionSuspended:Lo/isAdded;

    sget-object p2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v0, 0x45

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 23000
    sget-object v0, Lo/setTrackTintMode;->onResult:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 241
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 242
    new-instance v0, Lo/getChangingConfigurations;

    iget-object v1, p0, Lo/recycle;->onTransact:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/getChangingConfigurations;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v0, Lo/checkForGaps;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lo/performGetLayoutInflater;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lo/performGetLayoutInflater;-><init>(B)V

    check-cast v0, Lo/checkForGaps;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24043
    new-instance v0, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v0, p1, v2}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 244
    iput-object v0, p0, Lo/recycle;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 245
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cardsRecyclerView:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "cardsRecyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/recycle;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_3

    const-string v1, "cardsAdapter"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 246
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 24098
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 25000
    sget-object p1, Lo/setTrackTintMode;->getExtras:Lo/setSubtitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x30

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 24099
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 26000
    sget-object v0, Lo/setTrackTintMode;->isConnected:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x31

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 24102
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->fabrikLoaderView:I

    invoke-virtual {p0, v0}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-static {v0}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 26376
    sget-object v0, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    new-instance v1, Lo/recycle$asBinder;

    invoke-direct {v1, p0}, Lo/recycle$asBinder;-><init>(Lo/recycle;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, p1, v1}, Lo/onDestroyOptionsMenu;->onNavigationEvent(Ljava/lang/String;Lo/onDisconnectSetValue;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 24106
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {v0}, Lo/onDestroyOptionsMenu;->onPostMessage(Ljava/lang/String;)V

    .line 24109
    :cond_5
    invoke-direct {p0}, Lo/recycle;->asBinder()V

    .line 249
    :goto_0
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {p1}, Lo/shouldCollapse;->onPostMessage(Lo/shouldCollapse;)V

    .line 251
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 27000
    sget-object p1, Lo/onDestroyOptionsMenu;->ICustomTabsCallback:Lo/setSubtitleTextColor;

    sget-object v0, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 251
    iget-boolean p1, p0, Lo/recycle;->onMessageChannelReady:Z

    if-eqz p1, :cond_7

    .line 252
    iget-object p1, p0, Lo/recycle;->extraCallback:Lo/getContentInsetLeft;

    if-eqz p1, :cond_6

    .line 27027
    iput-boolean p2, p1, Lo/getContentInsetLeft;->onNavigationEvent:Z

    .line 253
    :cond_6
    invoke-direct {p0}, Lo/recycle;->asBinder()V

    .line 256
    :cond_7
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 28000
    sget-object p1, Lo/isInLayout;->INotificationSideChannel$Default:Lo/isAdded;

    sget-object p2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v0, 0x28

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "verifyCardSubTitle"

    if-eqz p1, :cond_8

    .line 257
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->verifyCardSubTitle:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 259
    :cond_8
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->verifyCardSubTitle:I

    invoke-virtual {p0, p1}, Lo/recycle;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
