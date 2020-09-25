.class public final Lo/releaseGlows;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/releaseGlows$onPostMessage;,
        Lo/releaseGlows$onNavigationEvent;,
        Lo/releaseGlows$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 e2\u00020\u00012\u00020\u0002:\u0003efgB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010B\u001a\u00020.J\u0012\u0010C\u001a\u00020.2\u0008\u0008\u0002\u0010D\u001a\u00020EH\u0002J\u0014\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010J\u0008\u0010G\u001a\u00020\u001fH\u0016J\u0012\u0010H\u001a\u00020.2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J&\u0010K\u001a\u0004\u0018\u00010L2\u0006\u0010M\u001a\u00020N2\u0008\u0010O\u001a\u0004\u0018\u00010P2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0008\u0010Q\u001a\u00020.H\u0016J\u0006\u0010R\u001a\u00020.J\u001a\u0010S\u001a\u00020.2\u0006\u0010T\u001a\u00020L2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0006\u0010U\u001a\u00020.J\u001a\u0010V\u001a\u00020.2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020Z0XJ\u001a\u0010[\u001a\u00020.2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020Z0XJ\u0010\u0010]\u001a\u00020.2\u0006\u0010^\u001a\u00020\u0011H\u0002J\u0018\u0010_\u001a\u00020.2\u0006\u0010^\u001a\u00020\u00112\u0006\u0010`\u001a\u00020\u0011H\u0002J\u0018\u0010a\u001a\u00020.2\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020\u0014H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u0019\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\'\u001a\u0004\u0018\u00010(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\t\u001a\u0004\u0008)\u0010*R\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010/\u001a\n 1*\u0004\u0018\u000100008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\t\u001a\u0004\u00082\u00103R\u0011\u00105\u001a\u000206\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010;\u001a\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010\t\u001a\u0004\u0008=\u0010>R\u000e\u0010@\u001a\u00020AX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006h"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "()V",
        "audioFocusManager",
        "Lcom/dreamplug/fabrik/helper/soundprox/SoundProxAudioFocusManager;",
        "getAudioFocusManager",
        "()Lcom/dreamplug/fabrik/helper/soundprox/SoundProxAudioFocusManager;",
        "audioFocusManager$delegate",
        "Lkotlin/Lazy;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager$delegate",
        "commonParams",
        "",
        "",
        "",
        "currentVolume",
        "",
        "getCurrentVolume",
        "()I",
        "setCurrentVolume",
        "(I)V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$Data;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$Data;",
        "extra$delegate",
        "isDismissing",
        "",
        "value",
        "isHideable",
        "()Z",
        "setHideable",
        "(Z)V",
        "listItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "onCancel",
        "Lkotlin/Function0;",
        "",
        "publisher",
        "Lcom/cred/sproxlib/share/medium/sound/SoundPublisher;",
        "kotlin.jvm.PlatformType",
        "getPublisher",
        "()Lcom/cred/sproxlib/share/medium/sound/SoundPublisher;",
        "publisher$delegate",
        "redeemCtaClickListener",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$OnRedeemCtaClickedListener;",
        "getRedeemCtaClickListener",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$OnRedeemCtaClickedListener;",
        "redeemUtils",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemUtils;",
        "redeemViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel;",
        "getRedeemViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemViewModel;",
        "redeemViewModel$delegate",
        "rewardDialogPresenter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter;",
        "dismiss",
        "dismissAnimation",
        "animationDuration",
        "",
        "getCommonParams",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDetach",
        "onInadequateShow",
        "onViewCreated",
        "view",
        "realDismiss",
        "redeemComplete",
        "response",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "redeemInitiated",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemInitiatedRewardDetailsResponse;",
        "senBroadcastEvent",
        "status",
        "sendSoundBroadcastResult",
        "code",
        "setItemBroadcastAnimationState",
        "data",
        "Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedOutputButton;",
        "state",
        "Companion",
        "Data",
        "OnRedeemCtaClickedListener",
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
.field final ICustomTabsCallback:Lo/isSameListener;

.field private final ICustomTabsCallback$Stub:Lo/isSameListener;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

.field private asBinder:Lo/stopInterceptRequestLayout;

.field private final asInterface:Lo/isSameListener;

.field extraCallback:I

.field private getInterfaceDescriptor:Z

.field private final newSession:Lo/hasGapsToFix$onMessageChannelReady;

.field final onMessageChannelReady:Lo/isSameListener;

.field public final onNavigationEvent:Lo/isSameListener;

.field public final onPostMessage:Lo/releaseGlows$onPostMessage;

.field private onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/getMinFlingVelocity;

.field private final warmup:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 70
    new-instance v0, Lo/releaseGlows$onTransact;

    invoke-direct {v0, p0}, Lo/releaseGlows$onTransact;-><init>(Lo/releaseGlows;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50434
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 70
    iput-object v2, p0, Lo/releaseGlows;->onMessageChannelReady:Lo/isSameListener;

    .line 74
    new-instance v0, Lo/releaseGlows$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/releaseGlows$onRelationshipValidationResult;-><init>(Lo/releaseGlows;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50435
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 74
    iput-object v2, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    .line 79
    new-instance v0, Lo/releaseGlows$warmup;

    invoke-direct {v0, p0}, Lo/releaseGlows$warmup;-><init>(Lo/releaseGlows;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50436
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 79
    iput-object v2, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub:Lo/isSameListener;

    .line 84
    new-instance v0, Lo/releaseGlows$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/releaseGlows$ICustomTabsCallback;-><init>(Lo/releaseGlows;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50437
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 84
    iput-object v2, p0, Lo/releaseGlows;->warmup:Lo/isSameListener;

    .line 440
    new-instance v0, Lo/releaseGlows$extraCallback;

    invoke-direct {v0, p0}, Lo/releaseGlows$extraCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50438
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 440
    iput-object v2, p0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    const-string v0, "$this$lazySafeNavigator"

    .line 98
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50439
    new-instance v0, Lo/setAddDuration$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/setAddDuration$ICustomTabsCallback;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50440
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 98
    iput-object v1, p0, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    .line 196
    new-instance v0, Lo/releaseGlows$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/releaseGlows$ICustomTabsCallback$Stub;-><init>(Lo/releaseGlows;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/releaseGlows;->newSession:Lo/hasGapsToFix$onMessageChannelReady;

    .line 389
    new-instance v0, Lo/releaseGlows$getInterfaceDescriptor;

    invoke-direct {v0, p0}, Lo/releaseGlows$getInterfaceDescriptor;-><init>(Lo/releaseGlows;)V

    check-cast v0, Lo/releaseGlows$onPostMessage;

    iput-object v0, p0, Lo/releaseGlows;->onPostMessage:Lo/releaseGlows$onPostMessage;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/releaseGlows;)Lo/setMenuVisibility;
    .locals 0

    .line 50461
    iget-object p0, p0, Lo/releaseGlows;->warmup:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setMenuVisibility;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/releaseGlows;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 50482
    iget-object p0, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/releaseGlows$onNavigationEvent;

    if-eqz p0, :cond_0

    .line 50483
    iget-object p0, p0, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz p0, :cond_0

    .line 50484
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/removeItemDecoration;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 50485
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "reward_ID"

    invoke-direct {v2, v3, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const/4 p0, 0x1

    .line 50486
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "status"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, p0

    const/4 p0, 0x2

    .line 50487
    new-instance p1, Lo/addWrite;

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "reward_redeem_dialog"

    invoke-direct {p1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v1, p0

    const-string p0, "pairs"

    .line 50476
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50488
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "cta_sound_broadcast"

    .line 50475
    invoke-static {p1, p0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/releaseGlows;)Lo/setIconifiedByDefault;
    .locals 0

    .line 50442
    iget-object p0, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setIconifiedByDefault;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/releaseGlows;)Lo/pullGlows;
    .locals 0

    .line 50441
    iget-object p0, p0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/pullGlows;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Lo/addWrite;

    .line 50469
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_data"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 50463
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onRelationshipValidationResult()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 50470
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_volume"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    .line 50464
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->ICustomTabsCallback$Stub()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 50471
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_loopitr"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    .line 50465
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 50472
    new-instance v2, Lo/addWrite;

    const-string v3, "broadcast_band"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x3

    aput-object v2, v1, p1

    .line 50473
    new-instance p1, Lo/addWrite;

    const-string v2, "broadcast_result"

    invoke-direct {p1, v2, p0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x4

    aput-object p1, v1, p0

    const-string p0, "pairs"

    .line 50462
    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50474
    new-instance p0, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "sound_published"

    .line 50462
    invoke-static {p1, p0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/releaseGlows;)Lo/releaseGlows$onNavigationEvent;
    .locals 0

    .line 50489
    iget-object p0, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/releaseGlows$onNavigationEvent;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/releaseGlows;Lo/getRecycleChildrenOnDetach;I)V
    .locals 5

    .line 50443
    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    const-string/jumbo v1, "rewardDialogPresenter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 50451
    :cond_0
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->INotificationSideChannel$Stub$Proxy:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/repositionToWrapContentIfNecessary;

    .line 50453
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 50454
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 50443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/StaggeredGridLayoutManager;

    .line 50444
    instance-of v3, v2, Lo/getRecycleChildrenOnDetach;

    if-eqz v3, :cond_1

    check-cast v2, Lo/getRecycleChildrenOnDetach;

    .line 50455
    iget-object v3, v2, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 50456
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 50457
    iget-object v4, p1, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 50458
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 50444
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50459
    iput p2, v2, Lo/getRecycleChildrenOnDetach;->onNavigationEvent:I

    .line 50446
    iget-object p0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez p0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 50460
    :cond_2
    iget-object p0, p0, Lo/stopInterceptRequestLayout;->INotificationSideChannel$Stub$Proxy:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/repositionToWrapContentIfNecessary;

    .line 50446
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public static final synthetic onPostMessage(Lo/releaseGlows;)Lo/stopInterceptRequestLayout;
    .locals 1

    .line 57
    iget-object p0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez p0, :cond_0

    const-string/jumbo v0, "rewardDialogPresenter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final onPostMessage(J)V
    .locals 2

    .line 115
    iget-boolean v0, p0, Lo/releaseGlows;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lo/releaseGlows;->getInterfaceDescriptor:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 117
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 118
    new-instance v1, Lo/releaseGlows$asBinder;

    invoke-direct {v1, p0}, Lo/releaseGlows$asBinder;-><init>(Lo/releaseGlows;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 129
    new-instance p1, Lo/releaseGlows$asInterface;

    invoke-direct {p1, p0}, Lo/releaseGlows$asInterface;-><init>(Lo/releaseGlows;)V

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final synthetic onTransact(Lo/releaseGlows;)Lo/getMinFlingVelocity;
    .locals 0

    .line 57
    iget-object p0, p0, Lo/releaseGlows;->onTransact:Lo/getMinFlingVelocity;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 7

    .line 166
    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez v0, :cond_0

    const-string/jumbo v1, "rewardDialogPresenter"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9607
    :cond_0
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->onTransact:Lo/onDestroyView;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    iget-object v1, v0, Lo/stopInterceptRequestLayout;->onRelationshipValidationResult:Lo/onChildrenLoaded;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 9610
    :cond_1
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 10078
    iget-object v1, v1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 10320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 9610
    :goto_0
    check-cast v1, Ljava/lang/String;

    const-string v3, "form"

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10970
    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-eq v1, v3, :cond_3

    .line 9611
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 11632
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    check-cast v1, Landroid/view/View;

    .line 12001
    invoke-static {v1, v5}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 11633
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->getInterfaceDescriptor:Landroid/widget/TextView;

    check-cast v1, Landroid/view/View;

    .line 13001
    invoke-static {v1, v5}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 11634
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->setDefaultImpl:Landroid/view/View;

    .line 14001
    invoke-static {v0, v5}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    return v2

    .line 9615
    :cond_3
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 14078
    iget-object v1, v1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 14320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 14321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v4

    .line 9615
    :goto_1
    check-cast v1, Ljava/lang/String;

    const-string v6, "redeemed"

    invoke-static {v1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 14970
    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-eq v1, v3, :cond_5

    .line 9616
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 15638
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->setDefaultImpl:Landroid/view/View;

    .line 16001
    invoke-static {v1, v5}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 15639
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->cancel:Lo/createFullSpanItemFromEnd;

    check-cast v1, Landroid/view/View;

    .line 17001
    invoke-static {v1, v5}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    .line 15640
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->IPostMessageService:Landroid/view/View;

    .line 18001
    invoke-static {v0, v5}, Lo/stopScroll;->onPostMessage(Landroid/view/View;Z)V

    return v2

    .line 9619
    :cond_5
    iget-object v1, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    invoke-virtual {v1}, Lo/pullGlows;->onRelationshipValidationResult()Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 9622
    :cond_6
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 18078
    iget-object v0, v0, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 18320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 18321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    move-object v4, v0

    .line 9622
    :cond_7
    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 9623
    sget-object v0, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->onMessageChannelReady()Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_2

    .line 9625
    :cond_8
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onPostMessage()V

    :goto_2
    return v5

    :cond_9
    :goto_3
    return v2
.end method

.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final extraCallback()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [Lo/addWrite;

    .line 49000
    iget-object v2, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/releaseGlows$onNavigationEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 49427
    iget-object v2, v2, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v2, :cond_0

    .line 50000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    if-eqz v2, :cond_0

    .line 50396
    iget-object v2, v2, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 50397
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reward_ID"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 50398
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    if-eqz v4, :cond_1

    .line 50399
    iget-object v4, v4, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v4, :cond_1

    .line 50400
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/removeItemDecoration;

    if-eqz v4, :cond_1

    .line 50401
    iget-object v4, v4, Lo/removeItemDecoration;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 50402
    :goto_1
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "usage_id"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v2, 0x2

    .line 50403
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    const-string v5, "NA"

    if-eqz v4, :cond_2

    .line 50404
    iget-object v4, v4, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v4, :cond_2

    .line 50405
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_2

    .line 50406
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_2

    .line 50407
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v5

    .line 50408
    :cond_3
    new-instance v6, Lo/addWrite;

    const-string v7, "currency"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x3

    .line 50409
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    if-eqz v4, :cond_4

    .line 50410
    iget-object v4, v4, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v4, :cond_4

    .line 50411
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_4

    .line 50412
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_4

    .line 50413
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 406
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    double-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 50414
    :goto_2
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "reward_cred_value"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x4

    .line 50415
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    if-eqz v4, :cond_5

    .line 50416
    iget-object v4, v4, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v4, v3

    .line 50417
    :goto_3
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "source"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x5

    .line 408
    sget-object v4, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v4}, Lo/onPanelClosed;->onPostMessage()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 50418
    new-instance v6, Lo/addWrite;

    const-string v7, "cred_balance"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x6

    .line 409
    sget-object v4, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {v4}, Lo/onPanelClosed;->ICustomTabsCallback()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 50419
    new-instance v6, Lo/addWrite;

    const-string v7, "cred_gem_balance"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    const/4 v2, 0x7

    .line 50420
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    if-eqz v4, :cond_7

    .line 50421
    iget-object v4, v4, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v4, :cond_7

    .line 50422
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_7

    .line 50423
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->onMessageChannelReady:Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v5, v4

    .line 50424
    :cond_7
    :goto_4
    new-instance v4, Lo/addWrite;

    const-string v6, "entity_type"

    invoke-direct {v4, v6, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/16 v2, 0x8

    .line 50425
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    if-eqz v4, :cond_8

    .line 50426
    iget-object v4, v4, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v4, :cond_8

    .line 50427
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->onTransact:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v4, v3

    .line 50428
    :goto_5
    new-instance v5, Lo/addWrite;

    const-string v6, "card_template"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/16 v2, 0x9

    .line 50429
    iget-object v4, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/releaseGlows$onNavigationEvent;

    if-eqz v4, :cond_9

    .line 50430
    iget v3, v4, Lo/releaseGlows$onNavigationEvent;->onPostMessage:I

    .line 412
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50431
    :cond_9
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "reward_farm_card_position"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 402
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50432
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    return-object v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 170
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 19000
    iget-object v1, v0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/releaseGlows$onNavigationEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 19427
    iget-object v1, v1, Lo/releaseGlows$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v1, :cond_14

    .line 172
    new-instance v3, Lo/getMinFlingVelocity;

    invoke-virtual/range {p0 .. p0}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object v4

    .line 20000
    iget-object v5, v0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/releaseGlows$onNavigationEvent;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 20427
    iget-object v5, v5, Lo/releaseGlows$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 172
    :goto_0
    invoke-direct {v3, v0, v1, v4, v5}, Lo/getMinFlingVelocity;-><init>(Lo/releaseGlows;Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v3, v0, Lo/releaseGlows;->onTransact:Lo/getMinFlingVelocity;

    .line 21000
    iget-object v3, v0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/pullGlows;

    const-string/jumbo v4, "rewardData"

    .line 173
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21101
    iput-object v1, v3, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 22422
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_1

    .line 23082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_1

    .line 23099
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->asInterface:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    move-object v4, v6

    .line 21102
    :goto_1
    iput-object v4, v3, Lo/pullGlows;->IPostMessageService$Stub:Ljava/lang/Double;

    .line 23422
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_2

    .line 24082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_2

    .line 24097
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v4, :cond_2

    .line 21103
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    .line 24509
    :goto_2
    iput-wide v4, v3, Lo/pullGlows;->IPostMessageService:D

    .line 24510
    invoke-virtual {v3}, Lo/pullGlows;->onTransact()V

    .line 25422
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_3

    .line 26082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_3

    .line 26105
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lifestyle/models/Banner;

    goto :goto_3

    :cond_3
    move-object v4, v6

    .line 21104
    :goto_3
    iput-object v4, v3, Lo/pullGlows;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Banner;

    .line 26422
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 27082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_6

    .line 27094
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onPostMessage:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 21105
    check-cast v4, Ljava/lang/Iterable;

    .line 22069
    new-instance v7, Ljava/util/ArrayList;

    const-string v8, "$this$collectionSizeOrDefault"

    invoke-static {v4, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28039
    instance-of v8, v4, Ljava/util/Collection;

    if-eqz v8, :cond_4

    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    goto :goto_4

    :cond_4
    const/16 v8, 0xa

    .line 22069
    :goto_4
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 22070
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 22071
    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;

    .line 21106
    new-instance v9, Lo/clearOnScrollListeners;

    const/4 v10, 0x4

    invoke-direct {v9, v8, v5, v2, v10}, Lo/clearOnScrollListeners;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/Component;ZZI)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 22072
    :cond_5
    check-cast v7, Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object v7, v6

    :goto_6
    iput-object v7, v3, Lo/pullGlows;->asBinder:Ljava/util/List;

    .line 28424
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz v4, :cond_7

    .line 29424
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    .line 21110
    invoke-virtual {v3, v1}, Lo/pullGlows;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V

    goto/16 :goto_b

    .line 30420
    :cond_7
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v4, :cond_8

    .line 31061
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v4, v6

    :goto_7
    if-nez v4, :cond_9

    goto/16 :goto_b

    .line 21113
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const v8, -0x790dfe46

    if-eq v7, v8, :cond_11

    const v8, -0x37b94664

    if-eq v7, v8, :cond_a

    goto/16 :goto_b

    :cond_a
    const-string v7, "redeem"

    .line 21118
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "placeholderText"

    .line 21120
    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v7, 0x7f1302b5

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 21121
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x6

    invoke-static {v8, v4, v2, v2, v9}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v10

    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 21122
    invoke-static {v8, v4, v2, v2, v9}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 21124
    iget-object v7, v3, Lo/pullGlows;->ICustomTabsCallback$Stub:Lo/setActive;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33191
    invoke-virtual {v3}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v9

    const-string v11, "CRED_POINTS"

    invoke-static {v9, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v3}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v9

    const-string v11, "GEMS"

    invoke-static {v9, v11}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :cond_c
    :goto_8
    if-nez v5, :cond_d

    .line 21125
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13045c

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 21127
    :cond_d
    sget-object v5, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 34122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v5

    if-nez v5, :cond_e

    const-string v9, "context"

    invoke-static {v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 21127
    :cond_e
    check-cast v5, Landroid/content/Context;

    .line 22073
    new-instance v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v9, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "span"

    .line 21128
    invoke-static {v10, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35059
    iget-object v11, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35422
    iget-object v10, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v10, :cond_f

    .line 36082
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v10, :cond_f

    .line 36091
    iget-object v6, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    .line 21129
    :cond_f
    invoke-static {v6}, Lo/pullGlows;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37059
    iget-object v10, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21130
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37422
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v1, :cond_10

    .line 38082
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v1, :cond_10

    .line 38097
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    .line 21132
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_9
    check-cast v1, Ljava/lang/Number;

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfe

    .line 21131
    invoke-static/range {v10 .. v17}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21130
    invoke-virtual {v9, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 21135
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39059
    iget-object v1, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39156
    iget-object v1, v9, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v1, Ljava/lang/CharSequence;

    .line 40043
    :goto_a
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v8, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21124
    invoke-virtual {v7, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    const-string v1, "redeem_with_form"

    .line 21114
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 21115
    iget-object v1, v3, Lo/pullGlows;->ICustomTabsCallback$Stub:Lo/setActive;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v5, 0x7f130452

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    .line 32043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21115
    invoke-virtual {v1, v7}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 32426
    invoke-virtual {v3, v6, v6}, Lo/pullGlows;->onPostMessage(Ljava/util/Map;Lo/getServerTime;)V

    .line 21142
    :cond_12
    :goto_b
    iget-object v1, v3, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string v4, "form"

    invoke-virtual {v1, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 21143
    iget-object v1, v3, Lo/pullGlows;->IPostMessageService$Stub$Proxy:Lo/setActive;

    iget-object v4, v3, Lo/pullGlows;->ICustomTabsService$Stub:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 21145
    iget-object v1, v3, Lo/pullGlows;->requestPostMessageChannel:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v4, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 41000
    sget-object v4, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setActive;

    .line 21145
    check-cast v4, Landroidx/lifecycle/LiveData;

    .line 41108
    iget-object v1, v1, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v1, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    if-eqz v1, :cond_13

    .line 41145
    iget-object v4, v1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    invoke-virtual {v4, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 21146
    :cond_13
    iget-object v1, v3, Lo/pullGlows;->requestPostMessageChannel:Lo/MediaControllerCompatApi24$TransportControls;

    sget-object v4, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 42000
    sget-object v4, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setActive;

    .line 21146
    check-cast v4, Landroidx/lifecycle/LiveData;

    new-instance v5, Lo/pullGlows$warmup;

    invoke-direct {v5, v3}, Lo/pullGlows$warmup;-><init>(Lo/pullGlows;)V

    check-cast v5, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v4, v5}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 21149
    invoke-virtual {v3}, Lo/pullGlows;->ICustomTabsCallback$Stub()V

    .line 43000
    :cond_14
    iget-object v1, v0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pullGlows;

    .line 44000
    iget-object v3, v0, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getMoveDuration;

    .line 44050
    iput-object v3, v1, Lo/pullGlows;->onPostMessage:Lo/getMoveDuration;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lo/releaseGlows;->onRelationshipValidationResult:Ljava/util/Map;

    .line 177
    sget-object v1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "RewardRedeemDialogFragment"

    .line 45029
    invoke-interface {v1, v4, v3, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00d2

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 50490
    iget-object v0, p0, Lo/releaseGlows;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 3

    .line 422
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 423
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 50433
    sget-object v0, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 423
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 7

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 431
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 432
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 46212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    .line 47057
    iget-object v2, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez v2, :cond_1

    const-string/jumbo v4, "rewardDialogPresenter"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 47589
    :cond_1
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->requestPostMessageChannel:Lo/isLayoutSuppressed;

    sget-object v4, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    const-string/jumbo v6, "state"

    invoke-static {v4, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48140
    iget-object v2, v2, Lo/isLayoutSuppressed;->ICustomTabsService:Lo/recycleFromEnd;

    invoke-virtual {v2, v4}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 434
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_3

    .line 436
    new-instance v2, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$onInadequateShow$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/releaseGlows;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 437
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 439
    :cond_3
    :goto_0
    new-instance v1, Lo/releaseGlows$ICustomTabsService;

    invoke-direct {v1, v3, v0}, Lo/releaseGlows$ICustomTabsService;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 5

    .line 103
    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    const-string/jumbo v1, "rewardDialogPresenter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1970
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const-wide/16 v2, 0xfa

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    .line 104
    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2077
    :cond_1
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->ICustomTabsService$Stub:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 104
    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 2114
    invoke-direct {p0, v2, v3}, Lo/releaseGlows;->onPostMessage(J)V

    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3080
    :cond_3
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3970
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    if-eq v0, v4, :cond_5

    .line 107
    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4080
    :cond_4
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->notify:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 107
    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 4114
    invoke-direct {p0, v2, v3}, Lo/releaseGlows;->onPostMessage(J)V

    return-void

    :cond_5
    const-wide/16 v0, 0x96

    .line 110
    invoke-direct {p0, v0, v1}, Lo/releaseGlows;->onPostMessage(J)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 7

    .line 5000
    iget-object v0, p0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pullGlows;

    .line 5078
    iget-object v0, v0, Lo/pullGlows;->updateVisuals:Lo/setActive;

    .line 5320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 148
    :goto_0
    check-cast v0, Ljava/lang/String;

    const-string v1, "redeemed"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 149
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v0

    const-class v3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    .line 6072
    sget-object v4, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 6098
    invoke-virtual {v0, v3, v4, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 149
    new-instance v3, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;

    new-instance v4, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;

    .line 7000
    iget-object v5, p0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/pullGlows;

    const/4 v6, 0x2

    .line 150
    invoke-static {v5, v1, v2, v6}, Lo/pullGlows;->extraCallback(Lo/pullGlows;ZLjava/util/Map;I)Ljava/util/List;

    move-result-object v5

    .line 149
    invoke-direct {v4, v5}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v4}, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRequestModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserSelectionRequestModel;)V

    invoke-virtual {v0, v3}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v3, p0, Lo/releaseGlows;->onRelationshipValidationResult:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 153
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    :cond_1
    const-string/jumbo v4, "selection"

    .line 154
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Reward_card_bad_exit"

    .line 152
    invoke-static {v0, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 8000
    iget-object v0, p0, Lo/releaseGlows;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/releaseGlows$onNavigationEvent;

    if-eqz v0, :cond_3

    .line 8427
    iget-boolean v0, v0, Lo/releaseGlows$onNavigationEvent;->onNavigationEvent:Z

    if-ne v0, v1, :cond_3

    .line 157
    sget-object v0, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->onMessageChannelReady()Lo/setActive;

    move-result-object v0

    new-instance v3, Lo/getThumbTintList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_2
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onPostMessage()V

    .line 9000
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/releaseGlows;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 162
    invoke-static {v0, v2, v1, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 187
    new-instance p1, Lo/stopInterceptRequestLayout;

    iget-object p2, p0, Lo/releaseGlows;->newSession:Lo/hasGapsToFix$onMessageChannelReady;

    .line 46000
    iget-object v0, p0, Lo/releaseGlows;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/pullGlows;

    .line 187
    new-instance v1, Lo/releaseGlows$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lo/releaseGlows$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/releaseGlows;)V

    check-cast v1, Lo/getServerTime;

    invoke-direct {p1, p0, p2, v0, v1}, Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V

    iput-object p1, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    .line 192
    sget-object p1, Lo/assertInLayoutOrScroll;->onPostMessage:Lo/assertInLayoutOrScroll;

    invoke-static {}, Lo/assertInLayoutOrScroll;->onMessageChannelReady()Lo/setActive;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    iget-object v0, p0, Lo/releaseGlows;->asBinder:Lo/stopInterceptRequestLayout;

    if-nez v0, :cond_0

    const-string/jumbo v1, "rewardDialogPresenter"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 46110
    :cond_0
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->RemoteActionCompatParcelizer:Lo/setPlaybackToRemote;

    .line 192
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 193
    invoke-virtual {p0}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo p2, "reward_details_screen_load"

    invoke-static {p2, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
