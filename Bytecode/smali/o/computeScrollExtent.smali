.class public final Lo/computeScrollExtent;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeScrollExtent$onNavigationEvent;,
        Lo/computeScrollExtent$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 F2\u00020\u0001:\u0002FGB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J&\u00103\u001a\u0004\u0018\u0001042\u0006\u00105\u001a\u0002062\u0008\u00107\u001a\u0004\u0018\u0001082\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0008\u00109\u001a\u000200H\u0016J\u001a\u0010:\u001a\u0002002\u0006\u0010;\u001a\u0002042\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0008\u0010<\u001a\u000200H\u0002J$\u0010=\u001a\u0002002\u0006\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0002J\u0010\u0010C\u001a\u0002002\u0006\u0010D\u001a\u00020EH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070.0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "dragObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "errorDataObserver",
        "",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$Extra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$Extra;",
        "setExtra",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullInternalFragment$Extra;)V",
        "machinePullViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullViewModel;",
        "getMachinePullViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/MachinePullViewModel;",
        "machinePullViewModel$delegate",
        "Lkotlin/Lazy;",
        "machineUpdateListener",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "rewardData",
        "getRewardData",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "setRewardData",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V",
        "rewardRedeemUseCase",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemRewardUseCase;",
        "rewardStatus",
        "Lcom/dreamplug/fabrik/ui/lifestyle/MachineRewardStatus;",
        "getRewardStatus",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/MachineRewardStatus;",
        "setRewardStatus",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/MachineRewardStatus;)V",
        "stateChanged",
        "getStateChanged",
        "()Z",
        "setStateChanged",
        "(Z)V",
        "tryAgainObserver",
        "Lcom/dreamplug/androidapp/core/Event;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "setRedeemedUi",
        "showReferralBottomSheet",
        "referralBottomSheetResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;",
        "rewardId",
        "",
        "rewardUsageId",
        "stateChange",
        "outputComponent",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;",
        "Companion",
        "Extra",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onTransact:Lo/computeScrollExtent$ICustomTabsCallback;


# instance fields
.field public ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final ICustomTabsService:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/getThumbTintList<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/isSameListener;

.field extraCallback:Lo/computeScrollExtent$onNavigationEvent;

.field private final getInterfaceDescriptor:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

.field public final onNavigationEvent:Lo/isSameListener;

.field public onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

.field private onRelationshipValidationResult:Lo/stopScrollersInternal;

.field private warmup:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/computeScrollExtent$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/computeScrollExtent$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/computeScrollExtent;->onTransact:Lo/computeScrollExtent$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Lo/computeScrollExtent$extraCallback;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$extraCallback;-><init>(Lo/computeScrollExtent;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50093
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 71
    iput-object v2, p0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    const-string v0, "$this$lazyNavigator"

    .line 75
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50094
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50095
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 75
    iput-object v1, p0, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    .line 93
    new-instance v0, Lo/computeScrollExtent$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$onRelationshipValidationResult;-><init>(Lo/computeScrollExtent;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v0, p0, Lo/computeScrollExtent;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 345
    new-instance v0, Lo/computeScrollExtent$onPostMessage;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$onPostMessage;-><init>(Lo/computeScrollExtent;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/computeScrollExtent;->asBinder:Lo/setPlaybackToRemote;

    .line 353
    new-instance v0, Lo/computeScrollExtent$warmup;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$warmup;-><init>(Lo/computeScrollExtent;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/computeScrollExtent;->ICustomTabsService:Lo/setPlaybackToRemote;

    .line 495
    new-instance v0, Lo/computeScrollExtent$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/computeScrollExtent$onMessageChannelReady;-><init>(Lo/computeScrollExtent;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/computeScrollExtent;->getInterfaceDescriptor:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/computeScrollExtent;)Lo/stopScrollersInternal;
    .locals 0

    .line 65
    iget-object p0, p0, Lo/computeScrollExtent;->onRelationshipValidationResult:Lo/stopScrollersInternal;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/computeScrollExtent;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lo/computeScrollExtent;->onPostMessage()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V
    .locals 2

    .line 50102
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/computeScrollExtent$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0, p1}, Lo/computeScrollExtent$ICustomTabsCallback$Stub;-><init>(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V

    check-cast v0, Lo/getServerTime;

    const-string p0, "command"

    invoke-static {v0, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50144
    new-instance p0, Lo/updateItemAt$extraCallback;

    invoke-direct {p0, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1, p0}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;
    .locals 0

    .line 50096
    iget-object p0, p0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/updateLayoutState;

    return-object p0
.end method

.method private final onPostMessage()V
    .locals 13

    .line 388
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->youWonText:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "youWonText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 45007
    iget-object v1, v1, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 388
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 45009
    :cond_1
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_2

    .line 46000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 388
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winDiscriptionText:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "winDiscriptionText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    if-eqz v1, :cond_3

    .line 46007
    iget-object v1, v1, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_4

    .line 389
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 46010
    :cond_4
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_5

    .line 47000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 389
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    if-eqz v0, :cond_6

    .line 47007
    iget-object v0, v0, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    goto :goto_4

    :cond_6
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_7

    .line 391
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 47016
    :cond_7
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/List;

    .line 391
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x1

    :goto_6
    const-string v4, "couponCodeLayout"

    const/16 v5, 0x8

    if-nez v0, :cond_1a

    .line 393
    iget-object v0, p0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    if-eqz v0, :cond_a

    .line 48007
    iget-object v0, v0, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    goto :goto_7

    :cond_a
    move-object v0, v2

    :goto_7
    if-nez v0, :cond_b

    .line 393
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 48016
    :cond_b
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;->asInterface:Ljava/util/List;

    if-eqz v0, :cond_d

    const-string v6, "$this$getOrNull"

    .line 393
    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$this$lastIndex"

    .line 48266
    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ltz v6, :cond_c

    .line 48266
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_c
    move-object v0, v2

    .line 393
    :goto_8
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    goto :goto_9

    :cond_d
    move-object v0, v2

    :goto_9
    if-eqz v0, :cond_f

    .line 50079
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_f

    if-eqz v1, :cond_e

    .line 395
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v1, v2

    :goto_a
    if-nez v1, :cond_10

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, -0x521dd8ce

    const-string v8, "displayCopy"

    const-string v9, "copyCode"

    const-string/jumbo v10, "secondaryCta"

    if-eq v6, v7, :cond_16

    const v7, 0x63a518c2

    const-string/jumbo v11, "voucherCodeText"

    const-string/jumbo v12, "voucherCodeTitle"

    if-eq v6, v7, :cond_15

    const v7, 0x6f7e005a

    if-eq v6, v7, :cond_11

    goto/16 :goto_c

    :cond_11
    const-string v6, "display_w_copy"

    .line 397
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 398
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50080
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v4, :cond_12

    .line 50081
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_12

    .line 50082
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_b

    :cond_12
    move-object v4, v2

    .line 398
    :goto_b
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeTitle:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50083
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onPostMessage:Ljava/lang/String;

    .line 399
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeText:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50084
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 400
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getRemainingScrollVertical;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 403
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_13
    if-eqz v2, :cond_14

    check-cast v2, Landroid/content/ClipboardManager;

    .line 405
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getRemainingScrollVertical;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v3, Lo/computeScrollExtent$asBinder;

    invoke-direct {v3, p0, v2, v0}, Lo/computeScrollExtent$asBinder;-><init>(Lo/computeScrollExtent;Landroid/content/ClipboardManager;Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v1, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 404
    :cond_14
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string v2, "display"

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 419
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeTitle:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50085
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onPostMessage:Ljava/lang/String;

    .line 419
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->voucherCodeText:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50086
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 420
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getRemainingScrollVertical;

    invoke-static {v0, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 423
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_16
    const-string v6, "button"

    .line 426
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 427
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 428
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->copyCode:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getRemainingScrollVertical;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 50087
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v1, :cond_17

    .line 50088
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 430
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p0, v4}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50089
    sget-object v5, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v5, Lo/calculateScrollDirectionForPosition;

    invoke-static {v4, v1, v5}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 432
    :cond_17
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50090
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz v0, :cond_18

    .line 50091
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v0, :cond_18

    .line 50092
    iget-object v0, v0, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 432
    :cond_18
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 436
    :cond_19
    :goto_c
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->couponCodeLayout:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 440
    :cond_1a
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->couponCodeLayout:I

    invoke-virtual {p0, v0}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/computeScrollExtent;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50099
    iget-object p0, p0, Lo/computeScrollExtent;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 50097
    new-instance v0, Lo/getEdgeEffectFactory$extraCallback;

    const-string v1, "machine"

    invoke-direct {v0, p2, p3, v1, p1}, Lo/getEdgeEffectFactory$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/ReferralBottomSheetResponse;)V

    const-string p1, "data"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50100
    new-instance p1, Lo/onGetChildDrawingOrder$handleMessage;

    invoke-direct {p1, v0}, Lo/onGetChildDrawingOrder$handleMessage;-><init>(Lo/getEdgeEffectFactory$extraCallback;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {p0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/computeScrollExtent;Lo/stopScrollersInternal;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/computeScrollExtent;->onRelationshipValidationResult:Lo/stopScrollersInternal;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/computeScrollExtent;->warmup:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/computeScrollExtent;->warmup:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/computeScrollExtent;->warmup:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/computeScrollExtent;->warmup:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-object p1, p0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz p1, :cond_0

    .line 1000
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/removeItemDecoration;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2000
    iget-object v0, p0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/updateLayoutState;

    .line 82
    invoke-virtual {v0, p1}, Lo/updateLayoutState;->onNavigationEvent(Lo/removeItemDecoration;)Lo/onQueryRefine$onPostMessage;

    move-result-object p1

    iput-object p1, p0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    .line 84
    :cond_1
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lo/computeScrollExtent$onNavigationEvent;

    iput-object p1, p0, Lo/computeScrollExtent;->extraCallback:Lo/computeScrollExtent$onNavigationEvent;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00c8

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/computeScrollRange;

    iget-object v1, p0, Lo/computeScrollExtent;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const-string v2, "listener"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44407
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v0, v2}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 45000
    iget-object v0, p0, Lo/computeScrollExtent;->warmup:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lifestyle.MachinePullDownFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    const-string/jumbo v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->sideImageView:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    const-string/jumbo v2, "sideImageView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v1, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 2216
    iget-object v1, v1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    check-cast v1, Lo/setMaxFrame;

    .line 137
    check-cast v1, Lo/getComposition;

    const-string/jumbo v4, "sideImageView.hierarchy"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    if-eqz v4, :cond_3e

    const/4 v5, 0x2

    .line 4369
    invoke-virtual {v1, v5}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v1

    .line 4370
    instance-of v6, v1, Lo/fromAssets;

    if-eqz v6, :cond_0

    .line 4371
    check-cast v1, Lo/fromAssets;

    goto :goto_0

    .line 4373
    :cond_0
    sget-object v6, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v1, v6}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v1

    .line 5094
    :goto_0
    iget-object v6, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v6, v4, :cond_2

    if-eqz v6, :cond_1

    .line 6053
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_3

    .line 5098
    iput-object v4, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 5099
    iput-object v3, v1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 5100
    invoke-virtual {v1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 5101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 138
    :cond_3
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->sideImageViewlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    const-string/jumbo v4, "sideImageViewlr4"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6116
    iget-object v1, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 6216
    iget-object v1, v1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v1, :cond_3d

    check-cast v1, Lo/setMaxFrame;

    .line 138
    check-cast v1, Lo/getComposition;

    const-string/jumbo v6, "sideImageViewlr4.hierarchy"

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    if-eqz v6, :cond_3c

    .line 8369
    invoke-virtual {v1, v5}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v1

    .line 8370
    instance-of v9, v1, Lo/fromAssets;

    if-eqz v9, :cond_4

    .line 8371
    check-cast v1, Lo/fromAssets;

    goto :goto_3

    .line 8373
    :cond_4
    sget-object v9, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v1, v9}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v1

    .line 9094
    :goto_3
    iget-object v9, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v9, v6, :cond_6

    if-eqz v9, :cond_5

    .line 10053
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_7

    .line 9098
    iput-object v6, v1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 9099
    iput-object v3, v1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 9100
    invoke-virtual {v1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 9101
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 140
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3b

    check-cast v1, Lo/computeScrollRange;

    iget-object v6, v0, Lo/computeScrollExtent;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const-string v9, "listener"

    invoke-static {v6, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10403
    sget v9, Lo/getSwitchMinWidth$onPostMessage;->machineLottieView:I

    invoke-virtual {v1, v9}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    const-string/jumbo v6, "titleTv"

    if-eqz v1, :cond_39

    const/4 v1, 0x7

    new-array v9, v1, [Lo/addWrite;

    .line 11000
    iget-object v10, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/updateLayoutState;

    .line 11053
    iget-object v11, v10, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v11, :cond_8

    const-string v10, "navigation"

    goto :goto_6

    .line 11056
    :cond_8
    iget-object v10, v10, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    .line 12043
    :goto_6
    new-instance v11, Lo/addWrite;

    const-string/jumbo v12, "source"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v8

    .line 145
    iget-object v10, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v10, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 13000
    :cond_9
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/removeItemDecoration;

    .line 13043
    new-instance v11, Lo/addWrite;

    const-string/jumbo v12, "reward_ID"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v7

    .line 146
    sget-object v10, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v10}, Lo/setTrackTintMode;->asBinder()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 14043
    new-instance v11, Lo/addWrite;

    const-string v12, "cred_balance"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v5

    const/4 v5, 0x3

    .line 147
    iget-object v10, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v10, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 15039
    :cond_a
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    const-string v11, "NA"

    if-eqz v10, :cond_b

    .line 15082
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v10, :cond_b

    .line 15097
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->onTransact:Ljava/lang/Double;

    if-eqz v10, :cond_b

    .line 147
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    double-to-int v10, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    :cond_b
    move-object v10, v11

    .line 16043
    :goto_7
    new-instance v12, Lo/addWrite;

    const-string/jumbo v13, "reward_cred_value"

    invoke-direct {v12, v13, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v9, v5

    .line 149
    iget-object v5, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v5, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 17039
    :cond_c
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v5, :cond_e

    .line 17082
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v5, :cond_e

    .line 17091
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_d

    goto :goto_8

    :cond_d
    move-object v11, v5

    .line 18043
    :cond_e
    :goto_8
    new-instance v5, Lo/addWrite;

    const-string v10, "currency"

    invoke-direct {v5, v10, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x4

    aput-object v5, v9, v10

    const/4 v5, 0x5

    .line 150
    iget-object v11, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v11, :cond_f

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 19033
    :cond_f
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 19156
    iget-object v11, v11, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v11, :cond_10

    .line 20000
    iget-object v11, v11, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_9

    :cond_10
    move-object v11, v3

    .line 20043
    :goto_9
    new-instance v12, Lo/addWrite;

    const-string v13, "expires_in"

    invoke-direct {v12, v13, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v9, v5

    const/4 v5, 0x6

    .line 21000
    iget-object v11, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/updateLayoutState;

    .line 21078
    iget v11, v11, Lo/updateLayoutState;->ICustomTabsCallback$Stub$Proxy:I

    .line 151
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 22043
    new-instance v12, Lo/addWrite;

    const-string v13, "mystery_rewards"

    invoke-direct {v12, v13, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v9, v5

    const-string v5, "pairs"

    .line 143
    invoke-static {v9, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v9}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "reward_mystery_reward_screen_load"

    .line 143
    invoke-static {v1, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 154
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_11

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 23033
    :cond_11
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 23148
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_12

    .line 23349
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v1, :cond_12

    .line 24039
    iget-object v1, v1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_a

    :cond_12
    move-object v1, v3

    .line 155
    :goto_a
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_14

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_b

    :cond_13
    const/4 v5, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v5, 0x1

    :goto_c
    const-string/jumbo v9, "rewardLayout"

    if-nez v5, :cond_15

    .line 156
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 157
    sget-object v5, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1, v7}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent(IZ)Ljava/lang/String;

    move-result-object v1

    .line 158
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->cardBackground:I

    invoke-virtual {v0, v5}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v11

    const-string v5, "cardBackground"

    invoke-static {v11, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v15, "Resources.getSystem()"

    invoke-static {v5, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v14, 0x41a00000    # 20.0f

    .line 25010
    invoke-static {v7, v14, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7c

    move-object v12, v1

    const/high16 v3, 0x41a00000    # 20.0f

    move-object v14, v5

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    .line 158
    invoke-static/range {v11 .. v18}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 159
    sget v11, Lo/getSwitchMinWidth$onPostMessage;->rewardLayout:I

    invoke-virtual {v0, v11}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/cardview/widget/CardView;

    invoke-static {v11, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/view/View;

    .line 26009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 26010
    invoke-static {v7, v3, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7c

    move-object v12, v1

    .line 159
    invoke-static/range {v11 .. v18}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 163
    :cond_15
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_16

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 26033
    :cond_16
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 26148
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_17

    .line 26350
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    :goto_d
    const-string v3, "dark"

    .line 163
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 164
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_18

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_18
    const v5, 0x7f060220

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->currencyValue:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_19

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_19
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->expiryTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1a
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTvlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1b
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->currencyValuelr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1c
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->expiryTvlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1d
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_e

    .line 173
    :cond_1e
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1f

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1f
    const v5, 0x7f060027

    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->currencyValue:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_20

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_20
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->expiryTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_21

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_21
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTvlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_22

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_22
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->currencyValuelr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_23

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_23
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->expiryTvlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_24

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_24
    invoke-static {v3, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    :goto_e
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_25

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 27031
    :cond_25
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v3, "lr_3"

    .line 181
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "reward_lr4"

    const/16 v5, 0x8

    const-string/jumbo v11, "reward_lr3"

    if-eqz v1, :cond_2d

    .line 182
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->reward_lr3:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->reward_lr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v3, :cond_26

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 27033
    :cond_26
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 27152
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_27

    .line 28000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_f

    :cond_27
    const/4 v3, 0x0

    .line 184
    :goto_f
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->currencyValue:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "currencyValue"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v3, :cond_28

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 28033
    :cond_28
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 28154
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_29

    .line 29000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_10

    :cond_29
    const/4 v3, 0x0

    .line 185
    :goto_10
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->expiryTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "expiryTv"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v3, :cond_2a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 29033
    :cond_2a
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 29156
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_2b

    .line 30000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_11

    :cond_2b
    const/4 v3, 0x0

    .line 186
    :goto_11
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_2c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 30033
    :cond_2c
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 30148
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_36

    .line 30346
    iget-object v12, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    if-eqz v12, :cond_36

    .line 188
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->sideImageView:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lo/setSpeed;

    invoke-static {v11, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x36

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 189
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    goto/16 :goto_15

    .line 191
    :cond_2d
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->reward_lr3:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->reward_lr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 193
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTvlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "titleTvlr4"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v2, :cond_2e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 31033
    :cond_2e
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 31152
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2f

    .line 32000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_12

    :cond_2f
    const/4 v2, 0x0

    .line 193
    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->currencyValuelr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "currencyValuelr4"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v2, :cond_30

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 32033
    :cond_30
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 32154
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_31

    .line 33000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_13

    :cond_31
    const/4 v2, 0x0

    .line 194
    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->expiryTvlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "expiryTvlr4"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v2, :cond_32

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 33033
    :cond_32
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 33156
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_33

    .line 34000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_14

    :cond_33
    const/4 v2, 0x0

    .line 195
    :goto_14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_34

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 34033
    :cond_34
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 34150
    iget-object v12, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onNavigationEvent:Ljava/lang/String;

    .line 197
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->brandLogo:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lo/setSpeed;

    const-string v1, "brandLogo"

    invoke-static {v11, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x36

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 198
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 199
    iget-object v1, v0, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_35

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 35033
    :cond_35
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;

    .line 35148
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_36

    .line 35346
    iget-object v12, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    if-eqz v12, :cond_36

    .line 200
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->sideImageViewlr4:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lo/setSpeed;

    invoke-static {v11, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x36

    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 201
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 205
    :cond_36
    :goto_15
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getLayoutInflater;

    new-instance v2, Lo/computeScrollExtent$onTransact;

    invoke-direct {v2, v0}, Lo/computeScrollExtent$onTransact;-><init>(Lo/computeScrollExtent;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-virtual {v1, v2}, Lo/getLayoutInflater;->setOnDragStateChangeListener(Lo/onDisconnectSetValue;)V

    .line 282
    iget-object v1, v0, Lo/computeScrollExtent;->onMessageChannelReady:Lo/onQueryRefine$onPostMessage;

    if-eqz v1, :cond_37

    .line 36007
    iget-object v3, v1, Lo/onQueryRefine$onPostMessage;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/ClaimedRewardDetailsResponse;

    goto :goto_16

    :cond_37
    const/4 v3, 0x0

    :goto_16
    const-string v1, "$this$invisible"

    const-string v2, "$this$visible"

    const-string v4, "claimedRewardLayout"

    if-nez v3, :cond_38

    .line 283
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/getLayoutInflater;

    invoke-virtual {v3, v7}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    .line 284
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->rewardLayout:I

    invoke-virtual {v0, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 285
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->rewardLayout:I

    invoke-virtual {v0, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36009
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 286
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v2}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36013
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 289
    :cond_38
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 290
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v3}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37009
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 291
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->rewardLayout:I

    invoke-virtual {v0, v2}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37013
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lo/computeScrollExtent;->onPostMessage()V

    .line 293
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getLayoutInflater;

    invoke-virtual {v1, v8}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    goto :goto_18

    .line 38000
    :cond_39
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 38129
    iget-object v2, v1, Lo/updateLayoutState;->warmup:Lo/removeItemDecoration;

    if-eqz v2, :cond_3a

    iget v2, v1, Lo/updateLayoutState;->newSession:I

    if-ne v2, v7, :cond_3a

    .line 38130
    invoke-virtual {v1}, Lo/updateLayoutState;->extraCallback()V

    goto :goto_17

    .line 38132
    :cond_3a
    invoke-virtual {v1}, Lo/updateLayoutState;->ICustomTabsCallback()V

    .line 297
    :goto_17
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->titleTv:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loading more rewards"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getLayoutInflater;

    invoke-virtual {v1, v8}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    .line 39000
    :goto_18
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 39035
    iget-object v1, v1, Lo/updateLayoutState;->onMessageChannelReady:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 301
    iget-object v2, v0, Lo/computeScrollExtent;->getInterfaceDescriptor:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 40000
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 40035
    iget-object v1, v1, Lo/updateLayoutState;->onMessageChannelReady:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 302
    move-object v2, v0

    check-cast v2, Lo/toLegacyStreamType;

    iget-object v3, v0, Lo/computeScrollExtent;->getInterfaceDescriptor:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 303
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {v0, v1}, Lo/computeScrollExtent;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v3, "secondaryCta"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v3, Lo/computeScrollExtent$asInterface;

    invoke-direct {v3, v0}, Lo/computeScrollExtent$asInterface;-><init>(Lo/computeScrollExtent;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v1, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 41000
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 41104
    iget-object v1, v1, Lo/updateLayoutState;->postMessage:Lo/setActive;

    .line 339
    iget-object v3, v0, Lo/computeScrollExtent;->ICustomTabsService:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 42000
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 42104
    iget-object v1, v1, Lo/updateLayoutState;->postMessage:Lo/setActive;

    .line 340
    iget-object v3, v0, Lo/computeScrollExtent;->ICustomTabsService:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 43000
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 43046
    iget-object v1, v1, Lo/updateLayoutState;->extraCallback:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 341
    iget-object v3, v0, Lo/computeScrollExtent;->asBinder:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 44000
    iget-object v1, v0, Lo/computeScrollExtent;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/updateLayoutState;

    .line 44046
    iget-object v1, v1, Lo/updateLayoutState;->extraCallback:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 342
    iget-object v3, v0, Lo/computeScrollExtent;->asBinder:Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 140
    :cond_3b
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lifestyle.MachinePullDownFragment"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    move-object v1, v3

    .line 8215
    throw v1

    :cond_3d
    move-object v1, v3

    .line 7215
    throw v1

    :cond_3e
    move-object v1, v3

    .line 4215
    throw v1

    :cond_3f
    move-object v1, v3

    .line 3215
    throw v1
.end method
