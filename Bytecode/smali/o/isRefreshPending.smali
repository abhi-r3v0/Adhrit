.class public final Lo/isRefreshPending;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isRefreshPending$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0002\u0007*\u0018\u0000 f2\u00020\u00012\u00020\u0002:\u0001fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u0002022\u0006\u00106\u001a\u00020\nH\u0002J\u0010\u00107\u001a\u0002022\u0006\u00108\u001a\u000209H\u0002J \u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010<0;2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0002J\u0010\u0010=\u001a\n\u0012\u0004\u0012\u00020?\u0018\u00010>H\u0002J\u000e\u0010@\u001a\u0008\u0012\u0004\u0012\u0002040>H\u0002J\u0010\u0010A\u001a\u0002022\u0006\u0010B\u001a\u00020\u0013H\u0002J\u0008\u0010C\u001a\u000202H\u0002J\u0010\u0010D\u001a\u0002022\u0006\u0010E\u001a\u00020\u0013H\u0002J\u0008\u0010F\u001a\u00020\nH\u0002J\u001a\u0010G\u001a\u00020\n2\u0008\u0010H\u001a\u0004\u0018\u00010I2\u0006\u00103\u001a\u000204H\u0002J\u0010\u0010J\u001a\u0002022\u0006\u0010$\u001a\u00020%H\u0002J\u000c\u0010K\u001a\u00060\nj\u0002`LH\u0016J\u0012\u0010M\u001a\u0002022\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0016J&\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010R\u001a\u00020S2\u0008\u0010T\u001a\u0004\u0018\u00010U2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0016J\u0008\u0010V\u001a\u000202H\u0016J\u0008\u0010W\u001a\u000202H\u0016J\u001a\u0010X\u001a\u0002022\u0006\u0010Y\u001a\u00020Q2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0016J\u0010\u0010Z\u001a\u0002022\u0006\u00108\u001a\u00020[H\u0002J\u0010\u0010\\\u001a\u0002022\u0006\u0010]\u001a\u00020^H\u0002J\u0008\u0010_\u001a\u000202H\u0002J\u0008\u0010`\u001a\u000202H\u0002J\u0008\u0010a\u001a\u000202H\u0002J\u0008\u0010b\u001a\u000202H\u0002J\u0010\u0010c\u001a\u00020\n2\u0006\u00103\u001a\u000204H\u0002J\u0008\u0010d\u001a\u000202H\u0002J\u001a\u0010e\u001a\u0002022\u0006\u00103\u001a\u0002042\u0008\u0008\u0002\u00106\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001a\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010\"\u001a\u00020#X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010+R\u001b\u0010,\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\u001a\u001a\u0004\u0008.\u0010/\u00a8\u0006g"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "()V",
        "cardTemplateData",
        "Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
        "customPayCallback",
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$customPayCallback$1",
        "Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$customPayCallback$1;",
        "customPayOpen",
        "",
        "customPaymentDialogPresenter",
        "Lcom/dreamplug/fabrik/ui/control/payments/CustomPaymentDialogPresenter;",
        "customSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "dueAmountDisparityDialog",
        "Lcom/dreamplug/fabrik/ui/control/payments/DueAmountDisparityDialog;",
        "dueDateState",
        "",
        "fromScreen",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "instrumentId",
        "isCustom",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "paymentAdjusted",
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;",
        "paymentItem",
        "Lcom/dreamplug/androidapp/payments/model/PaymentItem;",
        "paymentMode",
        "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
        "sheetBehaviour",
        "sheetStateListener",
        "com/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1",
        "Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$sheetStateListener$1;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/control/payments/ControlPaymentsViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/control/payments/ControlPaymentsViewModel;",
        "viewModel$delegate",
        "alertAmountDisparity",
        "",
        "amount",
        "",
        "animationDelayForPaymentFragmentLoad",
        "isCustomPayment",
        "checkCardValidation",
        "it",
        "Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;",
        "getCommonParams",
        "",
        "",
        "getSuggestedAmounts",
        "",
        "Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;",
        "getSuggestedAmountsList",
        "handleCustomPaymentActions",
        "action",
        "handleExitIntercept",
        "handlePaymentAmountSelection",
        "type",
        "isAdjustmentApplicable",
        "isEnteredAmountNotSupported",
        "response",
        "Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;",
        "modulateData",
        "onBackPressed",
        "Lcom/dreamplug/utils/IsHandled;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onDetach",
        "onViewCreated",
        "view",
        "populateData",
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;",
        "setAllitemVisibility",
        "visibility",
        "",
        "setCustomPayBottomSheet",
        "setDueDateBadge",
        "setFixitemVisibility",
        "setupUI",
        "shouldAlertAmountDisparity",
        "showAmountAdjustmentDetails",
        "startPaymentFlow",
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
.field public static final onMessageChannelReady:Lo/isRefreshPending$extraCallback;


# instance fields
.field private ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

.field private ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

.field private ICustomTabsService:Lo/fillData;

.field private asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

.field private final asInterface:Lo/isSameListener;

.field public final extraCallback:Lo/isSameListener;

.field private extraCommand:Lo/refresh;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private final mayLaunchUrl:Lo/isRefreshPending$INotificationSideChannel;

.field private final newSession:Lo/isSameListener;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Z

.field private onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

.field private final postMessage:Lo/isRefreshPending$ICustomTabsCallback$Stub;

.field private requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private updateVisuals:Ljava/util/HashMap;

.field private warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/isRefreshPending$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/isRefreshPending$extraCallback;-><init>(B)V

    sput-object v0, Lo/isRefreshPending;->onMessageChannelReady:Lo/isRefreshPending$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 714
    new-instance v0, Lo/isRefreshPending$onPostMessage;

    invoke-direct {v0, p0}, Lo/isRefreshPending$onPostMessage;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 714
    iput-object v2, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    .line 74
    sget-object v0, Lo/isRefreshPending$warmup;->ICustomTabsCallback:Lo/isRefreshPending$warmup;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 74
    iput-object v2, p0, Lo/isRefreshPending;->newSession:Lo/isSameListener;

    const-string v0, "NA"

    .line 75
    iput-object v0, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    const-string v0, "$this$lazyNavigator"

    .line 76
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50022
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50023
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 76
    iput-object v1, p0, Lo/isRefreshPending;->extraCallback:Lo/isSameListener;

    .line 596
    new-instance v0, Lo/isRefreshPending$INotificationSideChannel;

    invoke-direct {v0, p0}, Lo/isRefreshPending$INotificationSideChannel;-><init>(Lo/isRefreshPending;)V

    iput-object v0, p0, Lo/isRefreshPending;->mayLaunchUrl:Lo/isRefreshPending$INotificationSideChannel;

    .line 614
    new-instance v0, Lo/isRefreshPending$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/isRefreshPending$ICustomTabsCallback$Stub;-><init>(Lo/isRefreshPending;)V

    iput-object v0, p0, Lo/isRefreshPending;->postMessage:Lo/isRefreshPending$ICustomTabsCallback$Stub;

    return-void
.end method

.method private final ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 562
    sget-object v0, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    iget-object v0, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    .line 44010
    invoke-static {p1, v0}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 563
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    const-string v1, "paymentItem"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getTotalAmount()Ljava/lang/Double;

    move-result-object v0

    const-string v2, "pay_total"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getMinAmount()Ljava/lang/Double;

    move-result-object v0

    const-string v1, "pay_min"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pay_layout_exp"

    const-string v1, "list"

    .line 565
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v0, p0, Lo/isRefreshPending;->getInterfaceDescriptor:Ljava/lang/String;

    const-string v1, "pay_due_date_state"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v0, p0, Lo/isRefreshPending;->onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    if-nez v0, :cond_2

    const-string v1, "cardTemplateData"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;->getControlMetadata()Lcom/dreamplug/fabrik/ui/control/ControlMetadata;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44044
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/ControlMetadata;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/models/Nudge;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 567
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "banner_visible"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static final synthetic ICustomTabsCallback(Lo/isRefreshPending;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lo/isRefreshPending;->onMessageChannelReady(I)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/isRefreshPending;D)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lo/isRefreshPending;->extraCallback(D)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/isRefreshPending;Ljava/lang/String;)V
    .locals 3

    .line 50162
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x775c41dd

    const-string v2, "paymentItem"

    if-eq v0, v1, :cond_5

    const v1, -0x6586e630

    if-eq v0, v1, :cond_3

    const v1, -0x35d3352b

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "pay_total_clicked"

    .line 50163
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 50164
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "pay_total_click"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 50165
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130366

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setPaymentAmountTitle(Ljava/lang/String;)V

    .line 50166
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/refreshData;

    .line 50185
    iget-wide v0, p1, Lo/refreshData;->onMessageChannelReady:D

    .line 50186
    invoke-direct {p0, v0, v1}, Lo/isRefreshPending;->extraCallback(D)V

    return-void

    :cond_3
    const-string v0, "pay_custom_clicked"

    .line 50177
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 50178
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "pay_custom_click"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 50179
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->customDialogBackGround:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "customDialogBackGround"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/isRefreshPending$newSession;

    invoke-direct {v0, p0}, Lo/isRefreshPending$newSession;-><init>(Lo/isRefreshPending;)V

    check-cast v0, Lo/getServerTime;

    const/4 p0, 0x1

    .line 50191
    invoke-static {p1, p0, v0}, Lo/updateRange;->ICustomTabsCallback(Landroid/view/View;ZLo/getServerTime;)V

    goto :goto_0

    :cond_5
    const-string v0, "pay_min_clicked"

    .line 50168
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 50169
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_6

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "pay_min_click"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 50170
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_7

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130365

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setPaymentAmountTitle(Ljava/lang/String;)V

    .line 50171
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/refreshData;

    .line 50187
    iget-wide v0, p1, Lo/refreshData;->ICustomTabsCallback:D

    .line 50171
    invoke-direct {p0, v0, v1}, Lo/isRefreshPending;->ICustomTabsCallback(D)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 50172
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/refreshData;

    .line 50188
    iget-wide v0, p1, Lo/refreshData;->ICustomTabsCallback:D

    .line 50172
    invoke-direct {p0, v0, v1}, Lo/isRefreshPending;->onNavigationEvent(D)V

    return-void

    .line 50174
    :cond_8
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/refreshData;

    .line 50189
    iget-wide v0, p1, Lo/refreshData;->ICustomTabsCallback:D

    .line 50190
    invoke-direct {p0, v0, v1}, Lo/isRefreshPending;->extraCallback(D)V

    :cond_9
    :goto_0
    return-void
.end method

.method private final ICustomTabsCallback(D)Z
    .locals 11

    .line 572
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/refreshData;

    .line 45020
    iget-wide v0, v0, Lo/refreshData;->onMessageChannelReady:D

    .line 573
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, v2}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/refreshData;

    .line 45024
    iget-wide v2, v2, Lo/refreshData;->ICustomTabsCallback:D

    .line 574
    iget-object v4, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    const-string v5, "paymentItem"

    if-nez v4, :cond_0

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentDueDateWeaklyTyped()Ljava/lang/String;

    move-result-object v4

    const-string v6, "IMMEDIATE"

    const/4 v7, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 45056
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    const-string v8, "null cannot be cast to non-null type kotlin.CharSequence"

    const/4 v9, 0x0

    if-nez v4, :cond_6

    .line 574
    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asBinder()I

    move-result v4

    sget-object v10, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    iget-object v10, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v10, :cond_2

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v10}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    if-eqz v10, :cond_3

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move-object v10, v9

    :goto_1
    invoke-static {v10}, Lo/setPreventCornerOverlap;->onPostMessage(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_5

    goto :goto_2

    :cond_5
    if-lt v4, v10, :cond_7

    :cond_6
    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_7

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_10

    .line 575
    :cond_7
    :goto_2
    iget-object v4, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v4, :cond_8

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentDueDateWeaklyTyped()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_3

    .line 46056
    :cond_9
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :goto_3
    if-nez v4, :cond_e

    .line 575
    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asBinder()I

    move-result v4

    sget-object v6, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    iget-object v6, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v6, :cond_a

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v6}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz v5, :cond_b

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_4
    invoke-static {v9}, Lo/setPreventCornerOverlap;->onPostMessage(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_d

    goto :goto_5

    :cond_d
    if-lt v4, v5, :cond_f

    :cond_e
    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_f

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_f

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_10

    :cond_f
    :goto_5
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_11

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_11

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v2

    cmpl-double v2, p1, v0

    if-lez v2, :cond_11

    :cond_10
    const/4 p1, 0x1

    return p1

    :cond_11
    return v7
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lo/isRefreshPending;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 63
    iget-object p0, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method public static final synthetic asBinder(Lo/isRefreshPending;)V
    .locals 8

    .line 50202
    iget-object v0, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onRangeChanged;

    .line 50203
    iget-object v0, v0, Lo/onRangeChanged;->onMessageChannelReady:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 50204
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50205
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 50192
    :goto_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/UserSegmentResponse;

    if-eqz v0, :cond_1

    .line 50209
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/control/UserSegmentResponse;->onPostMessage:Ljava/util/List;

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    const-string/jumbo v3, "zero_txn"

    .line 50193
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo v4, "zombie"

    .line 50194
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_3

    sget-object v4, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 50210
    sget-object v4, Lo/isInLayout;->fromMediaItem:Lo/isAdded;

    sget-object v5, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v6, 0x72

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 50196
    sget-object v3, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->ICustomTabsService()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    sget-object v3, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->ICustomTabsService()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 50211
    sget-object v5, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:Lo/isRemoving;

    sget-object v6, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v7, 0x73

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 50197
    :cond_6
    sget-object v3, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->warmup()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    .line 50198
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->ICustomTabsService()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lo/getTrackTintList;->extraCallback(I)V

    .line 50212
    iget-object v0, p0, Lo/isRefreshPending;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 50199
    iget-object v1, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    iget-object p0, p0, Lo/isRefreshPending;->onNavigationEvent:Ljava/lang/String;

    if-nez v2, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    const-string/jumbo v3, "userSegments"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50213
    new-instance v3, Lo/onGetChildDrawingOrder$search;

    new-instance v4, Lo/getMaxCachedTiles$onMessageChannelReady;

    invoke-direct {v4, v1, p0, v2}, Lo/getMaxCachedTiles$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v3, v4}, Lo/onGetChildDrawingOrder$search;-><init>(Lo/getMaxCachedTiles$onMessageChannelReady;)V

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v0, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_8
    return-void
.end method

.method public static final synthetic asInterface(Lo/isRefreshPending;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 63
    iget-object p0, p0, Lo/isRefreshPending;->ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string/jumbo v0, "sheetBehaviour"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private static asInterface()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 34247
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 470
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 35068
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v3, 0x0

    .line 35098
    invoke-virtual {v1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "Moshi.Builder().build().\u2026ouble>>(List::class.java)"

    .line 470
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    :try_start_0
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 36000
    sget-object v1, Lo/isInLayout;->connect:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "[]"

    .line 472
    :cond_0
    invoke-virtual {v0, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 36070
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37070
    :catch_0
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final synthetic extraCallback(Lo/isRefreshPending;)Lcom/dreamplug/androidapp/payments/model/PaymentItem;
    .locals 1

    .line 63
    iget-object p0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p0, :cond_0

    const-string v0, "paymentItem"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final extraCallback()V
    .locals 7

    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    iget-object v1, p0, Lo/isRefreshPending;->onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    if-nez v1, :cond_0

    const-string v2, "cardTemplateData"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "CardDetails"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30000
    iget-object v1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onRangeChanged;

    .line 30027
    iget-object v1, v1, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 30320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 30321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 401
    :goto_0
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "PaymentData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31000
    iget-object v1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onRangeChanged;

    .line 31029
    iget-object v1, v1, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 31320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 31321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    move-object v3, v1

    .line 402
    :cond_2
    invoke-static {v3}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "ValidationData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    iget-object v1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    const-string v2, "paymentAdjusted"

    if-nez v1, :cond_3

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getMinDue()Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    goto :goto_1

    :cond_4
    move-wide v5, v3

    :goto_1
    const-string v1, "adjustedMin"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 404
    iget-object v1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-nez v1, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalDue()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    :cond_6
    const-string v1, "adjustedTotal"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 405
    invoke-static {}, Lo/isRefreshPending;->onTransact()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "SuggestedAmounts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 406
    iget-object v1, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lo/isRefreshPending;->extraCommand:Lo/refresh;

    if-eqz v1, :cond_7

    new-instance v1, Lo/isRefreshPending$IPostMessageService$Stub;

    invoke-direct {v1, p0}, Lo/isRefreshPending$IPostMessageService$Stub;-><init>(Lo/isRefreshPending;)V

    .line 412
    :cond_7
    iget-object v1, p0, Lo/isRefreshPending;->extraCommand:Lo/refresh;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lo/refresh;->onMessageChannelReady(Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method

.method private final extraCallback(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_6

    .line 522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    iget-object v1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_0

    const-string v2, "paymentItem"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "PaymentItem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    iget-object v1, p0, Lo/isRefreshPending;->asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    const-string v2, "paymentMode"

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v3, "PaymentMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 525
    iget-object v1, p0, Lo/isRefreshPending;->asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "CardDetails"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "amount"

    .line 526
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 41000
    iget-object p1, p0, Lo/isRefreshPending;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const-string p2, "bundle"

    .line 527
    invoke-static {v0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41293
    new-instance p2, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub$Proxy;

    invoke-direct {p2, v0}, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/Bundle;)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p1, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 705
    new-instance v1, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v1}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 706
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 42212
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 530
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 708
    iput-boolean v3, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 709
    :cond_4
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v2, :cond_5

    .line 710
    new-instance v0, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isRefreshPending;)V

    check-cast v0, Lo/createCallback;

    iput-object v0, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 711
    iget-object p2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 713
    :cond_5
    :goto_0
    new-instance p2, Lo/isRefreshPending$cancel;

    invoke-direct {p2, v1, p1}, Lo/isRefreshPending$cancel;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_6
    return-void
.end method

.method public static final synthetic extraCallback(Lo/isRefreshPending;Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;)V
    .locals 6

    .line 50036
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iput-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    .line 50037
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    iput-object v0, p0, Lo/isRefreshPending;->onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    .line 50038
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    const-string v1, "paymentItem"

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    iput-object v0, p0, Lo/isRefreshPending;->asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    .line 50039
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentData()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    move-result-object p1

    iput-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    .line 50040
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setSource(Ljava/lang/String;)V

    .line 50051
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 50052
    iget-object p1, p1, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 50053
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50054
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    .line 50042
    iget-object p1, p0, Lo/isRefreshPending;->onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    if-nez p1, :cond_5

    const-string v0, "cardTemplateData"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;->getData()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 50058
    iget-object v0, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onRangeChanged;

    .line 50043
    invoke-virtual {v0, p1}, Lo/onRangeChanged;->extraCallback(Ljava/lang/String;)V

    .line 50046
    :cond_6
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez p1, :cond_7

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 50059
    :cond_7
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v0

    .line 50068
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 50060
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setDueDateText(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, " "

    .line 50062
    invoke-virtual {p1, v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setDueDateText(Ljava/lang/String;)V

    .line 50064
    :goto_1
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getMinAmount()Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getMinAmount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_e

    :cond_b
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getTotalAmount()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getTotalAmount()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double p1, v4, v2

    if-gtz p1, :cond_e

    .line 50065
    :cond_d
    iput-boolean v1, p0, Lo/isRefreshPending;->onRelationshipValidationResult:Z

    .line 50047
    :cond_e
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_f

    const-string/jumbo v0, "sheetBehaviour"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 50048
    invoke-direct {p0}, Lo/isRefreshPending;->onPostMessage()V

    .line 50049
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/AsyncListUtil$DataCallback;

    invoke-static {}, Lo/isRefreshPending;->onTransact()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->ICustomTabsCallback(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/isRefreshPending;Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lo/isRefreshPending;->onPostMessage:Z

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 11

    .line 416
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    const-string v1, "paymentItem"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentDueDateWeaklyTyped()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "IMMEDIATE"

    .line 32056
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const-string v3, "dueDate"

    if-eqz v0, :cond_2

    .line 417
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->dueDate:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13036b

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "immediate"

    .line 418
    iput-object v0, p0, Lo/isRefreshPending;->getInterfaceDescriptor:Ljava/lang/String;

    return-void

    .line 420
    :cond_2
    sget-object v0, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/setPreventCornerOverlap;->onPostMessage(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    .line 422
    sget-object v7, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 33000
    sget-object v7, Lo/isInLayout;->getRoot:Lo/isRemoving;

    sget-object v8, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v9, 0x38

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-lez v10, :cond_9

    const-string v0, "due_on"

    .line 423
    iput-object v0, p0, Lo/isRefreshPending;->getInterfaceDescriptor:Ljava/lang/String;

    .line 424
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->dueDate:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v3, v9, [Ljava/lang/Object;

    sget-object v5, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    iget-object v5, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v5, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f13036c

    const-string v5, "dd MMM"

    invoke-static {v1, v5}, Lo/setPreventCornerOverlap;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-lez v0, :cond_a

    const-string v1, "due_in"

    .line 427
    iput-object v1, p0, Lo/isRefreshPending;->getInterfaceDescriptor:Ljava/lang/String;

    .line 428
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->dueDate:I

    invoke-virtual {p0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110005

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_a
    const-string v0, "hidden"

    .line 431
    iput-object v0, p0, Lo/isRefreshPending;->getInterfaceDescriptor:Ljava/lang/String;

    .line 432
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->dueDate:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final onMessageChannelReady(I)V
    .locals 2

    .line 252
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->chooseText:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "chooseText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->dueDate:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "dueDate"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/refreshData;

    const-string v1, "paymentAmountsView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->card:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/extendRangeInto;

    const-string v1, "card"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final onMessageChannelReady(Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;)V
    .locals 19

    move-object/from16 v0, p0

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getSupported()Lcom/dreamplug/fabrik/ui/control/Supported;

    move-result-object v1

    const-string v2, "bottomNoteLayout"

    const/4 v3, 0x0

    const-string v4, "bottomSubTitle"

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/Supported;->getValue()Z

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_b

    .line 7485
    iget-object v1, v0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    const-string v7, "paymentAdjusted"

    if-nez v1, :cond_0

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalPaid()Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    goto :goto_0

    :cond_1
    move-wide v10, v8

    :goto_0
    cmpl-double v1, v10, v8

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v8, "details"

    const-string/jumbo v9, "span"

    if-eqz v1, :cond_5

    .line 154
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomNoteLayout:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 156
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v10, Lo/isRefreshPending$asInterface;

    invoke-direct {v10, v0}, Lo/isRefreshPending$asInterface;-><init>(Lo/isRefreshPending;)V

    check-cast v10, Lo/onDisconnectSetValue;

    invoke-static {v1, v10}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 677
    new-instance v10, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v10, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string v1, "payment of "

    .line 161
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8059
    iget-object v11, v10, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    iget-object v1, v0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-nez v1, :cond_3

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalPaid()Ljava/lang/Double;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Number;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    invoke-static/range {v11 .. v18}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9059
    iget-object v7, v10, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, " is adjusted in total payable amount "

    .line 163
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10059
    iget-object v7, v10, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v7, Lo/isRefreshPending$asBinder;

    invoke-direct {v7, v10}, Lo/isRefreshPending$asBinder;-><init>(Lo/setActivityChooserPolicyIfNeeded$onPostMessage;)V

    invoke-static {v1, v7}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11059
    iget-object v7, v10, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11156
    iget-object v1, v10, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    move-object v1, v3

    .line 175
    :goto_2
    sget v7, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle:I

    invoke-virtual {v0, v7}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v4, v6, [Lo/addWrite;

    .line 177
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v10, "text"

    invoke-direct {v7, v10, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v5

    const-string v1, "pairs"

    .line 176
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v4, "pay_now_subtitle_text_shown"

    .line 176
    invoke-static {v4, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 181
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getCashback_disabled()Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->getValue()Z

    move-result v1

    if-ne v1, v6, :cond_8

    .line 183
    invoke-direct/range {p0 .. p0}, Lo/isRefreshPending;->onNavigationEvent()V

    .line 184
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomNoteLayout:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getCashback_disabled()Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const v1, 0x7f1301dd

    .line 186
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.fallback_cashback_blocked)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getCashback_disabled()Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;->getDetails()Lcom/dreamplug/fabrik/ui/control/CashBackDetails;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 188
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle2:I

    invoke-virtual {v0, v3}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "bottomSubTitle2"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 189
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle2:I

    invoke-virtual {v0, v3}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle2:I

    invoke-virtual {v0, v3}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v5, Lo/isRefreshPending$onNavigationEvent;

    invoke-direct {v5, v2, v0}, Lo/isRefreshPending$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/control/CashBackDetails;Lo/isRefreshPending;)V

    check-cast v5, Lo/onDisconnectSetValue;

    invoke-static {v3, v5}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 197
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle2:I

    invoke-virtual {v0, v2}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    new-instance v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v3, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    const-string v1, " "

    .line 199
    invoke-virtual {v3, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 200
    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v4, Lo/isRefreshPending$onTransact;

    invoke-direct {v4, v3}, Lo/isRefreshPending$onTransact;-><init>(Lo/setActivityChooserPolicyIfNeeded$onPostMessage;)V

    invoke-static {v1, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13059
    iget-object v4, v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13156
    iget-object v1, v3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v1, Ljava/lang/CharSequence;

    .line 686
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    .line 14000
    :cond_8
    iget-object v1, v0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onRangeChanged;

    .line 14027
    iget-object v1, v1, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 14320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 14321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_9

    move-object v3, v1

    :cond_9
    if-eqz v3, :cond_a

    .line 215
    invoke-direct/range {p0 .. p0}, Lo/isRefreshPending;->onNavigationEvent()V

    :cond_a
    return-void

    .line 220
    :cond_b
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->card:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/extendRangeInto;

    .line 15061
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->layoutNudge:I

    invoke-virtual {v1, v6}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lo/onChildrenLoaded;

    const-string v7, "layoutNudge"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    const-string v7, "$this$gone"

    invoke-static {v6, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 16017
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 15062
    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successGroup:I

    invoke-virtual {v1, v6}, Lo/extendRangeInto;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string/jumbo v6, "successGroup"

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17017
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v1, v0, Lo/isRefreshPending;->asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    if-nez v1, :cond_c

    const-string v6, "paymentMode"

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_c
    invoke-direct {v0, v1}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object v1

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getSupported()Lcom/dreamplug/fabrik/ui/control/Supported;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/dreamplug/fabrik/ui/control/Supported;->getType()Ljava/lang/String;

    move-result-object v3

    :cond_d
    const-string/jumbo v6, "type"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "biller_instrument_not_supported"

    .line 223
    invoke-static {v3, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 224
    invoke-direct {v0, v8}, Lo/isRefreshPending;->onMessageChannelReady(I)V

    .line 225
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->card:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/extendRangeInto;

    const-string v3, "card"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomNoteLayout:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 227
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->dividerView:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dividerView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 228
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomTitle:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "bottomTitle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 229
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomSubTitle:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getSupported()Lcom/dreamplug/fabrik/ui/control/Supported;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/Supported;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_e
    const-string v2, "currently, we don\u2019t support payments against this bank. we are working on it!"

    .line 231
    check-cast v2, Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/AsyncListUtil$DataCallback;

    const-string v2, "payCustomOnly"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/isRefreshPending;D)V
    .locals 0

    .line 518
    invoke-direct {p0, p1, p2}, Lo/isRefreshPending;->extraCallback(D)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/isRefreshPending;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lo/isRefreshPending;->onPostMessage:Z

    return p0
.end method

.method public static final synthetic onNavigationEvent(Lo/isRefreshPending;)Lo/onRangeChanged;
    .locals 0

    .line 50035
    iget-object p0, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onRangeChanged;

    return-object p0
.end method

.method private final onNavigationEvent()V
    .locals 4

    .line 238
    iget-boolean v0, p0, Lo/isRefreshPending;->onRelationshipValidationResult:Z

    const/4 v1, 0x0

    const-string v2, "paymentAmountsView"

    if-eqz v0, :cond_0

    .line 239
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/refreshData;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->chooseText:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v3, "chooseText"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->dueDate:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v3, "dueDate"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/AsyncListUtil$DataCallback;

    const-string v2, "payCustomOnly"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/AsyncListUtil$DataCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/AsyncListUtil$DataCallback;->onPostMessage(Lo/AsyncListUtil$DataCallback;Z)V

    return-void

    .line 246
    :cond_0
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/refreshData;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final onNavigationEvent(D)V
    .locals 4

    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    iget-object v1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_0

    const-string v2, "paymentItem"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "PaymentItem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 496
    iget-object v1, p0, Lo/isRefreshPending;->asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    const-string v2, "paymentMode"

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v3, "PaymentMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    iget-object v1, p0, Lo/isRefreshPending;->asBinder:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Lo/getMaxName;->onNavigationEvent(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "CardDetails"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "amount"

    .line 498
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 499
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/refreshData;

    .line 38024
    iget-wide p1, p1, Lo/refreshData;->ICustomTabsCallback:D

    const-string v1, "adjustedMin"

    .line 499
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 500
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/refreshData;

    .line 39020
    iget-wide p1, p1, Lo/refreshData;->onMessageChannelReady:D

    const-string v1, "adjustedTotal"

    .line 500
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 502
    new-instance p1, Lo/fillData;

    invoke-direct {p1}, Lo/fillData;-><init>()V

    iput-object p1, p0, Lo/isRefreshPending;->ICustomTabsService:Lo/fillData;

    if-nez p1, :cond_3

    .line 503
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    new-instance p2, Lo/isRefreshPending$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/isRefreshPending$ICustomTabsCallback;-><init>(Lo/isRefreshPending;)V

    check-cast p2, Lo/onDisconnectSetValue;

    .line 39057
    iput-object p2, p1, Lo/fillData;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 506
    iget-object p1, p0, Lo/isRefreshPending;->ICustomTabsService:Lo/fillData;

    if-nez p1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 508
    iget-object p2, p0, Lo/isRefreshPending;->ICustomTabsService:Lo/fillData;

    if-nez p2, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    const-string v0, "PaymentAmountDisparityDialog"

    invoke-virtual {p2, p1, v0}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 40000
    :cond_6
    iget-object p1, p0, Lo/isRefreshPending;->newSession:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 511
    new-instance p2, Lo/isRefreshPending$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/isRefreshPending$onMessageChannelReady;-><init>(Lo/isRefreshPending;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/isRefreshPending;Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lo/isRefreshPending;->onRelationshipValidationResult:Z

    return-void
.end method

.method private final onPostMessage()V
    .locals 8

    .line 28000
    iget-object v0, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onRangeChanged;

    .line 28029
    iget-object v0, v0, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 28320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 28321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 371
    :goto_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    const/4 v1, 0x1

    new-array v3, v1, [Lo/addWrite;

    const/4 v4, 0x0

    .line 373
    iget-object v5, p0, Lo/isRefreshPending;->onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    const-string v6, "cardTemplateData"

    if-nez v5, :cond_1

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;->getData()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    .line 29043
    :cond_2
    new-instance v5, Lo/addWrite;

    const-string v7, "card_external_id"

    invoke-direct {v5, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const-string v2, "pairs"

    .line 372
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "card_pay_now"

    .line 372
    invoke-static {v1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 375
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->card:I

    invoke-virtual {p0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/extendRangeInto;

    iget-object v2, p0, Lo/isRefreshPending;->onTransact:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    if-nez v2, :cond_3

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v2}, Lo/extendRangeInto;->setup(Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V

    .line 377
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/AsyncListUtil$DataCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo/isRefreshPending$IPostMessageService;

    invoke-direct {v3, p0}, Lo/isRefreshPending$IPostMessageService;-><init>(Lo/isRefreshPending;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-virtual {v1, v2, v3}, Lo/AsyncListUtil$DataCallback;->setup(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/onDisconnectSetValue;)V

    .line 380
    invoke-direct {p0}, Lo/isRefreshPending;->extraCallback()V

    .line 382
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->paymentAmountsView:I

    invoke-virtual {p0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/refreshData;

    .line 383
    iget-object v2, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    const-string v3, "paymentItem"

    if-nez v2, :cond_4

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 384
    :cond_4
    iget-object v4, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-nez v4, :cond_5

    const-string v5, "paymentAdjusted"

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 385
    :cond_5
    new-instance v5, Lo/isRefreshPending$validateRelationship;

    invoke-direct {v5, p0}, Lo/isRefreshPending$validateRelationship;-><init>(Lo/isRefreshPending;)V

    check-cast v5, Lo/onDisconnectSetValue;

    .line 386
    new-instance v6, Lo/isRefreshPending$ICustomTabsService$Stub$Proxy;

    invoke-direct {v6, p0}, Lo/isRefreshPending$ICustomTabsService$Stub$Proxy;-><init>(Lo/isRefreshPending;)V

    check-cast v6, Lo/onDisconnectSetValue;

    .line 382
    invoke-virtual {v1, v2, v4, v5, v6}, Lo/refreshData;->setup(Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;)V

    if-eqz v0, :cond_6

    .line 391
    invoke-direct {p0, v0}, Lo/isRefreshPending;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;)V

    .line 393
    :cond_6
    invoke-direct {p0}, Lo/isRefreshPending;->onMessageChannelReady()V

    .line 394
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v0, :cond_7

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "card_screen_amount_to_pay_screen_load"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 395
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_8

    const-string/jumbo v1, "sheetBehaviour"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/isRefreshPending;)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 50028
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "score"

    const-string v4, "pay_screen"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "pairs"

    .line 50024
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50029
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "pay_now_amount_adjustment_shown"

    .line 50024
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 50025
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->mainLayout:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 50026
    new-instance v0, Lo/removeListListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/removeListListener;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    const-string v2, "paymentAdjusted"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getStatementDate()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-nez p0, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalPaid()Ljava/lang/Double;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    invoke-static/range {v2 .. v9}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "amount"

    invoke-static {p0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50030
    iget-object v0, v0, Lo/removeListListener;->ICustomTabsCallback:Lo/log;

    .line 50032
    iget-object v2, v0, Lo/log;->onNavigationEvent:Landroid/widget/TextView;

    sget-object v3, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    const-string v3, "dd MMM, yyyy"

    invoke-static {v1, v3}, Lo/setPreventCornerOverlap;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50033
    iget-object v0, v0, Lo/log;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/isRefreshPending;D)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lo/isRefreshPending;->onNavigationEvent(D)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/isRefreshPending;Ljava/lang/String;)V
    .locals 10

    .line 50069
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x2a45b91c

    const-string v2, "pay_total"

    const-string v3, "custom_amount_entered"

    const-string v4, ""

    const-string v5, ","

    const-string v6, "$this$toPlainNumbers"

    const-string v7, "payAmount"

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v0, v1, :cond_11

    const v1, -0x73e8dcf

    if-eq v0, v1, :cond_1

    const p0, 0x4de25dda    # 4.74725184E8f

    if-eq v0, p0, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string p0, "custom_pay_focus_acquired"

    .line 50076
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    return-void

    :cond_1
    const-string v0, "custom_pay_proceed_clicked"

    .line 50079
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 50080
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/AsyncListUtil$DataCallback;

    .line 50127
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p1, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50129
    invoke-static {p1, v5, v4, v8}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 50080
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 50130
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 50131
    iget-object p1, p1, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 50132
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50133
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v9

    .line 50081
    :goto_0
    check-cast p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v9

    :goto_1
    invoke-direct {p0, p1}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    .line 50137
    iget-object v4, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/onRangeChanged;

    .line 50138
    iget-object v4, v4, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 50139
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50140
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v9

    .line 50082
    :goto_2
    check-cast v4, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentData()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalDue()Ljava/lang/Double;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v9

    :goto_3
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50083
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 50084
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "amount_error"

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pay_custom_amount_submit"

    .line 50085
    invoke-static {v5, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_10

    .line 50087
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->mainLayout:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 50088
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/AsyncListUtil$DataCallback;

    invoke-static {p1, v8}, Lo/AsyncListUtil$DataCallback;->onPostMessage(Lo/AsyncListUtil$DataCallback;Z)V

    .line 50144
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 50145
    iget-object p1, p1, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 50146
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50147
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v2, :cond_7

    goto :goto_5

    :cond_7
    move-object p1, v9

    .line 50090
    :goto_5
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getInvalidPaymentAmount()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    move-result-object p1

    goto :goto_6

    :cond_8
    move-object p1, v9

    :goto_6
    if-eqz p1, :cond_b

    .line 50151
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getValue()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v4, :cond_a

    :cond_9
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMinInvalidPaymentAmount()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMinInvalidPaymentAmount()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_b

    :cond_a
    const/4 v8, 0x1

    :cond_b
    if-eqz v8, :cond_e

    .line 50091
    new-instance p1, Lo/recycleData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50152
    iget-object v1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onRangeChanged;

    .line 50153
    iget-object v1, v1, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 50154
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50155
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_c

    goto :goto_7

    :cond_c
    move-object v1, v9

    .line 50091
    :goto_7
    check-cast v1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getInvalidPaymentAmount()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMessage()Ljava/lang/String;

    move-result-object v9

    :cond_d
    invoke-direct {p1, v0, v9}, Lo/recycleData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50092
    new-instance v0, Lo/isRefreshPending$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/isRefreshPending$onRelationshipValidationResult;-><init>(Lo/isRefreshPending;)V

    check-cast v0, Lo/getServerTime;

    .line 50159
    iput-object v0, p1, Lo/recycleData;->onPostMessage:Lo/getServerTime;

    return-void

    .line 50096
    :cond_e
    invoke-direct {p0, v0, v1}, Lo/isRefreshPending;->ICustomTabsCallback(D)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0, v0, v1}, Lo/isRefreshPending;->onNavigationEvent(D)V

    return-void

    .line 50098
    :cond_f
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/AsyncListUtil$DataCallback;

    sget-object v2, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    new-instance v3, Lo/isRefreshPending$getInterfaceDescriptor;

    invoke-direct {v3, p0, v0, v1}, Lo/isRefreshPending$getInterfaceDescriptor;-><init>(Lo/isRefreshPending;D)V

    check-cast v3, Lo/getServerTime;

    invoke-virtual {p1, v2, v3}, Lo/AsyncListUtil$DataCallback;->setCtaState(Lo/findLastCompletelyVisibleItemPositions;Lo/getServerTime;)V

    return-void

    .line 50105
    :cond_10
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lo/AsyncListUtil$DataCallback;

    .line 50160
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->error:I

    invoke-virtual {p0, p1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "error"

    invoke-static {p0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_11
    const-string v0, "custom_pay_user_interacted"

    .line 50070
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 50110
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 50111
    iget-object p1, p1, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 50112
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50113
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_12

    goto :goto_8

    :cond_12
    move-object p1, v9

    .line 50071
    :goto_8
    check-cast p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    goto :goto_9

    :cond_13
    move-object p1, v9

    :goto_9
    invoke-direct {p0, p1}, Lo/isRefreshPending;->ICustomTabsCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    .line 50072
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/AsyncListUtil$DataCallback;

    .line 50117
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {v0, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50119
    invoke-static {v0, v5, v4, v8}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 50072
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50120
    iget-object p0, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onRangeChanged;

    .line 50121
    iget-object p0, p0, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 50122
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 50123
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p0, v0, :cond_14

    goto :goto_a

    :cond_14
    move-object p0, v9

    .line 50073
    :goto_a
    check-cast p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentData()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalDue()Ljava/lang/Double;

    move-result-object v9

    :cond_15
    invoke-interface {p1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pay_custom_amount_key_triggered"

    .line 50074
    invoke-static {p0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_16
    :goto_b
    return-void
.end method

.method private static onTransact()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-static {}, Lo/isRefreshPending;->asInterface()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 699
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33039
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 699
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 701
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    .line 702
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 465
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;-><init>(DZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_1

    .line 33441
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 703
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final synthetic onTransact(Lo/isRefreshPending;)Lo/refresh;
    .locals 0

    .line 63
    iget-object p0, p0, Lo/isRefreshPending;->extraCommand:Lo/refresh;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 4

    .line 632
    iget-object v0, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 47970
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 633
    iget-object v0, p0, Lo/isRefreshPending;->extraCommand:Lo/refresh;

    if-eqz v0, :cond_0

    new-instance v2, Lo/isRefreshPending$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v2, p0}, Lo/isRefreshPending$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/isRefreshPending;)V

    check-cast v2, Lo/getServerTime;

    .line 48089
    iget-object v0, v0, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    :cond_0
    return v1

    .line 638
    :cond_1
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    const-string/jumbo v2, "sheetBehaviour"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return v1
.end method

.method public final extraCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/isRefreshPending;->updateVisuals:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/isRefreshPending;->updateVisuals:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/isRefreshPending;->updateVisuals:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/isRefreshPending;->updateVisuals:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "BottomPaymentFabrikDialog"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "instrumentId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lo/isRefreshPending;->onNavigationEvent:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "NA"

    :cond_2
    iput-object p1, p0, Lo/isRefreshPending;->warmup:Ljava/lang/String;

    .line 2000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 3000
    iget-object v1, p1, Lo/onRangeChanged;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMainThreadExecutor;

    .line 2083
    invoke-interface {v1}, Lo/getMainThreadExecutor;->onPostMessage()Lo/clearScrap;

    move-result-object v1

    .line 2084
    new-instance v2, Lo/onRangeChanged$onNavigationEvent;

    invoke-direct {v2, p1}, Lo/onRangeChanged$onNavigationEvent;-><init>(Lo/onRangeChanged;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 91
    iget-object p1, p0, Lo/isRefreshPending;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 4000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 92
    iget-object v0, p0, Lo/isRefreshPending;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {p1, v0}, Lo/onRangeChanged;->extraCallback(Ljava/lang/String;)V

    .line 5000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 93
    iget-object v0, p0, Lo/isRefreshPending;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {p1, v0}, Lo/onRangeChanged;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 6000
    :cond_5
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v0, "PaymentData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Lo/getMaxName;->extraCallback(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    .line 6040
    iget-object p1, p1, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 7000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 96
    iget-object v0, p0, Lo/isRefreshPending;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-virtual {p1, v0}, Lo/onRangeChanged;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0096

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 580
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 581
    iget-object v0, p0, Lo/isRefreshPending;->ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string/jumbo v1, "sheetBehaviour"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lo/isRefreshPending;->mayLaunchUrl:Lo/isRefreshPending$INotificationSideChannel;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 46914
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 47000
    iget-object v0, p0, Lo/isRefreshPending;->updateVisuals:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_1
    return-void
.end method

.method public final onDetach()V
    .locals 3

    .line 536
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 537
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 43000
    sget-object v0, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 537
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 44000
    iget-object v0, p0, Lo/isRefreshPending;->newSession:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 18000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 18027
    iget-object p1, p1, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/isRefreshPending$requestPostMessageChannel;

    invoke-direct {v0, p0}, Lo/isRefreshPending$requestPostMessageChannel;-><init>(Lo/isRefreshPending;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 19000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 19031
    iget-object p1, p1, Lo/onRangeChanged;->extraCallback:Lo/setActive;

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/isRefreshPending$updateVisuals;

    invoke-direct {v0, p0}, Lo/isRefreshPending$updateVisuals;-><init>(Lo/isRefreshPending;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 20000
    iget-object p1, p0, Lo/isRefreshPending;->asInterface:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onRangeChanged;

    .line 20029
    iget-object p1, p1, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/isRefreshPending$mayLaunchUrl;

    invoke-direct {v0, p0}, Lo/isRefreshPending$mayLaunchUrl;-><init>(Lo/isRefreshPending;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 310
    new-instance p1, Lo/refresh;

    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->customBottomSheetView:I

    invoke-virtual {p0, v0}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "customBottomSheetView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lo/isRefreshPending;->postMessage:Lo/isRefreshPending$ICustomTabsCallback$Stub;

    check-cast v2, Lo/refresh$onNavigationEvent;

    invoke-direct {p1, p2, v0, v2}, Lo/refresh;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/View;Lo/refresh$onNavigationEvent;)V

    iput-object p1, p0, Lo/isRefreshPending;->extraCommand:Lo/refresh;

    .line 311
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->customBottomSheetView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    const-string v0, "$this$adjustBottom"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lifecycle"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20669
    new-instance v2, Lo/updateRange$extraCallback;

    invoke-direct {v2, p1, p2}, Lo/updateRange$extraCallback;-><init>(Landroid/view/View;Lo/toLegacyStreamType;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 312
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->customBottomSheetView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 313
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 690
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 691
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 21212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x3

    const-string v8, "customDialogBackGround"

    if-eqz v5, :cond_3

    .line 22063
    iget-boolean v5, p0, Lo/isRefreshPending;->onPostMessage:Z

    if-eqz v5, :cond_1

    .line 317
    sget v5, Lo/getSwitchMinWidth$onPostMessage;->customDialogBackGround:I

    invoke-virtual {p0, v5}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23063
    iget-object v5, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v5, :cond_2

    .line 318
    invoke-virtual {v5, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    goto :goto_1

    .line 24063
    :cond_1
    iget-object v5, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v5, :cond_2

    const/4 v9, 0x5

    .line 320
    invoke-virtual {v5, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 693
    :cond_2
    :goto_1
    iput-boolean v6, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_2

    .line 694
    :cond_3
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v9, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v5, v9, :cond_4

    .line 695
    new-instance v5, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$$inlined$executeOnResume$1;

    invoke-direct {v5, p1, v2, p0}, Lcom/dreamplug/fabrik/ui/control/payments/BottomPaymentFabrikDialogFragment$onViewCreated$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isRefreshPending;)V

    check-cast v5, Lo/createCallback;

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 696
    iget-object v2, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/createCallback;

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 698
    :cond_4
    :goto_2
    new-instance v2, Lo/isRefreshPending$ICustomTabsService;

    invoke-direct {v2, v4, p1}, Lo/isRefreshPending$ICustomTabsService;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 324
    iget-object p1, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_5

    .line 24838
    iput-boolean v3, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 325
    :cond_5
    iget-object p1, p0, Lo/isRefreshPending;->requestPostMessageChannel:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p1, :cond_6

    new-instance v2, Lo/isRefreshPending$extraCommand;

    invoke-direct {v2, p0}, Lo/isRefreshPending$extraCommand;-><init>(Lo/isRefreshPending;)V

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 24903
    iget-object v3, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 24904
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_6
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->customDialogBackGround:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/isRefreshPending$postMessage;

    invoke-direct {v2, p0}, Lo/isRefreshPending$postMessage;-><init>(Lo/isRefreshPending;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 352
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->mainLayout:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string v2, "mainLayout"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25669
    new-instance v0, Lo/updateRange$extraCallback;

    invoke-direct {v0, p1, p2}, Lo/updateRange$extraCallback;-><init>(Landroid/view/View;Lo/toLegacyStreamType;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 353
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->mainLayout:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string p2, "BottomSheetBehavior.from(mainLayout)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/isRefreshPending;->ICustomTabsCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_7

    const-string/jumbo p2, "sheetBehaviour"

    .line 354
    invoke-static {p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 355
    :cond_7
    iget-object p2, p0, Lo/isRefreshPending;->mayLaunchUrl:Lo/isRefreshPending$INotificationSideChannel;

    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    .line 25903
    iget-object v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 25904
    iget-object v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_8
    sget-object p2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 27000
    sget-object p2, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/sortAndDedup$ICustomTabsCallback;

    .line 27042
    iget p2, p2, Lo/sortAndDedup$ICustomTabsCallback;->extraCallback:I

    .line 27702
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    .line 357
    invoke-virtual {p1, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 27838
    iput-boolean v6, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 359
    invoke-virtual {p1, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 361
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->dialogBackGround:I

    invoke-virtual {p0, p1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "dialogBackGround"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/isRefreshPending$ICustomTabsService$Stub;

    invoke-direct {p2, p0}, Lo/isRefreshPending$ICustomTabsService$Stub;-><init>(Lo/isRefreshPending;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    const/4 p1, 0x4

    .line 364
    invoke-direct {p0, p1}, Lo/isRefreshPending;->onMessageChannelReady(I)V

    .line 365
    move-object p1, p0

    check-cast p1, Lo/isRefreshPending;

    iget-object p2, p1, Lo/isRefreshPending;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-eqz p2, :cond_9

    iget-object p1, p1, Lo/isRefreshPending;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-eqz p1, :cond_9

    .line 366
    invoke-direct {p0}, Lo/isRefreshPending;->onPostMessage()V

    :cond_9
    return-void
.end method
