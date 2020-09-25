.class public final Lo/ensureNavButtonView;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/getMenuListView$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureNavButtonView$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 &2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0010J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u000c\u0010\u0017\u001a\u00060\u0012j\u0002`\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0016J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0010\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/checkout/PayWithCredFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerFragment$CommunicationInterface;",
        "()V",
        "callingActivity",
        "",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "refId",
        "source",
        "exitPaymentScreen",
        "",
        "isResultOk",
        "",
        "goBack",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onBackPressed",
        "Lcom/dreamplug/utils/IsHandled;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDetach",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "paymentCanceled",
        "reason",
        "",
        "paymentFinished",
        "paymentStatus",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;",
        "Companion",
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
.field public static final ICustomTabsCallback:Lo/ensureNavButtonView$ICustomTabsCallback;


# instance fields
.field private extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ensureNavButtonView$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ensureNavButtonView$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/ensureNavButtonView;->ICustomTabsCallback:Lo/ensureNavButtonView$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0e009b

    .line 29
    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const-string v0, "$this$lazyNavigator"

    .line 36
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 36
    iput-object v1, p0, Lo/ensureNavButtonView;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/ensureNavButtonView;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Lo/ensureNavButtonView;->onNavigationEvent(Z)V

    return-void
.end method

.method private final onNavigationEvent(Z)V
    .locals 4

    .line 106
    iget-object v0, p0, Lo/ensureNavButtonView;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 108
    :cond_0
    sget-object v0, Lo/getWrappedTypeArray;->asBinder:Lo/getWrappedTypeArray;

    new-instance v2, Lo/throwIfInMutationOperation;

    new-instance v3, Lo/getIndexCount;

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    :cond_1
    invoke-direct {v3, v1}, Lo/getIndexCount;-><init>(I)V

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 13000
    :cond_2
    iget-object p1, p0, Lo/ensureNavButtonView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v2, 0x7

    .line 110
    invoke-static {p1, v0, v1, v1, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 4

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8896
    iget-object v0, v0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    const-string v1, "childFragmentManager.fragments"

    .line 74
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$firstOrNull"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9243
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_0
    instance-of v1, v0, Lo/createScroller;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    check-cast v2, Lo/createScroller;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lo/createScroller;->ICustomTabsCallback()Z

    move-result v0

    return v0

    :cond_2
    return v3
.end method

.method public final extraCallback(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 10000
    iget-object p1, p0, Lo/ensureNavButtonView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 80
    invoke-static {p1, v1, v0, v0, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 81
    sget-object p1, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onMessageChannelReady()V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, v0}, Lo/ensureNavButtonView;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 116
    sget-object p1, Lo/getParentFragmentManager;->onTransact:Lo/getParentFragmentManager;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "refId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lo/ensureNavButtonView;->onNavigationEvent:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "callingActivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lo/ensureNavButtonView;->extraCallback:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "source"

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lo/ensureNavButtonView;->onPostMessage:Ljava/lang/String;

    .line 43
    sget-object p1, Lo/setWindowLayoutType;->onPostMessage:Lo/setWindowLayoutType;

    const/4 p1, 0x3

    new-array v2, p1, [Lo/addWrite;

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string v4, "lob"

    const-string v5, "PWC"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 45
    iget-object v5, p0, Lo/ensureNavButtonView;->onPostMessage:Ljava/lang/String;

    .line 2043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v1, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    const/4 v1, 0x2

    .line 46
    iget-object v3, p0, Lo/ensureNavButtonView;->onNavigationEvent:Ljava/lang/String;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "reference_id"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v1

    const-string v1, "pairs"

    .line 43
    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    move-object p1, v1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 43
    invoke-static {v1}, Lo/setWindowLayoutType;->onPostMessage(Ljava/util/HashMap;)V

    .line 48
    iget-object p1, p0, Lo/ensureNavButtonView;->onNavigationEvent:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 5000
    iget-object p1, p0, Lo/ensureNavButtonView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v1, 0x7

    .line 4070
    invoke-static {p1, v0, v4, v4, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_3
    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 3

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 121
    sget-object v0, Lo/getParentFragmentManager;->onTransact:Lo/getParentFragmentManager;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 122
    sget-object v0, Lo/getFloat;->ICustomTabsCallback$Stub:Lo/getFloat;

    .line 13320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 13321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 122
    :goto_0
    check-cast v0, Lo/getThumbTintList;

    if-eqz v0, :cond_2

    .line 14011
    iget-boolean v1, v0, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 14016
    :cond_1
    iget-object v2, v0, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 122
    :goto_1
    check-cast v2, Lo/getFont;

    :cond_2
    if-eqz v2, :cond_3

    .line 124
    sget-object v0, Lo/getFloat;->ICustomTabsCallback$Stub:Lo/getFloat;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
    .locals 5

    const-string v0, "paymentStatus"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lo/ensureNavButtonView;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lo/measureChildConstrained;->onMessageChannelReady:Lo/measureChildConstrained$onNavigationEvent;

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10084
    new-instance v1, Lo/measureChildConstrained;

    invoke-direct {v1}, Lo/measureChildConstrained;-><init>()V

    .line 10085
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10086
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10085
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    new-instance p1, Lo/ensureNavButtonView$extraCallback;

    invoke-direct {p1, p0}, Lo/ensureNavButtonView$extraCallback;-><init>(Lo/ensureNavButtonView;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10162
    iput-object p1, v1, Lo/findLastVisibleItemPositions;->asInterface:Lo/getServerTime;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 10571
    new-instance v0, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {p1, v0, v4}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 11464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 97
    check-cast v1, Landroidx/fragment/app/Fragment;

    const p1, 0x7f0b0542

    const/4 v2, 0x2

    const-string v3, "checkout_payment_status"

    .line 12343
    invoke-virtual {v0, p1, v1, v3, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 98
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 100
    invoke-direct {p0, p1}, Lo/ensureNavButtonView;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder;

    sget-object p2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object p2, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 53
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-direct {p1, p2}, Lcom/cred/pay/ui/checkout/CheckoutBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance p2, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;

    .line 55
    iget-object v1, p0, Lo/ensureNavButtonView;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const/4 v2, 0x0

    .line 56
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 6122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v3, "context"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const v3, 0x7f130272

    .line 56
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "DreamApplication.context\u2026(R.string.google_api_key)"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v0}, Lo/setTrackTintMode;->onPostMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 58
    :cond_3
    iget-object v5, p0, Lo/ensureNavButtonView;->onPostMessage:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lo/ensureNavButtonView;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    move-object v0, p2

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7018
    iput-object p2, p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->onNavigationEvent:Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;

    .line 61
    sget-object p2, Lo/getContentInsetEndWithActions;->ICustomTabsCallback:Lo/getContentInsetEndWithActions;

    invoke-static {p2}, Lo/getContentInsetEndWithActions;->extraCallback(Lo/getContentInsetEndWithActions;)Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    move-result-object p2

    const-string v0, "checkoutConfigs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7023
    iput-object p2, p1, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->extraCallback:Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    .line 62
    invoke-virtual {p1}, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->extraCallback()Lo/getMenuListView;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    .line 7464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 65
    check-cast p1, Landroidx/fragment/app/Fragment;

    const p2, 0x7f0b0542

    const/4 v1, 0x2

    const-string v2, "paymentFragment"

    .line 8343
    invoke-virtual {v0, p2, p1, v2, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void
.end method
