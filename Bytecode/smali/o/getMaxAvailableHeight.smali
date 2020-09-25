.class public final Lo/getMaxAvailableHeight;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMaxAvailableHeight$ICustomTabsCallback;,
        Lo/getMaxAvailableHeight$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010*\u0001\u000c\u0018\u0000 o2\u00020\u00012\u00020\u0002:\u0002noB\u0005\u00a2\u0006\u0002\u0010\u0003J*\u0010;\u001a\u00020<2\u0018\u0008\u0002\u0010=\u001a\u0012\u0012\u0004\u0012\u00020$\u0012\u0006\u0012\u0004\u0018\u00010?\u0018\u00010>2\u0008\u0008\u0002\u0010@\u001a\u00020\u001bJ\u0016\u0010A\u001a\u00020<2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020<0CH\u0002J\u0008\u0010D\u001a\u00020<H\u0002J\"\u0010E\u001a\u00020<2\u0006\u0010F\u001a\u00020\u00052\u0006\u0010G\u001a\u00020\u00052\u0008\u0010=\u001a\u0004\u0018\u00010HH\u0016J\u0008\u0010I\u001a\u00020\u001bH\u0016J\u0012\u0010J\u001a\u00020<2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J&\u0010M\u001a\u0004\u0018\u00010N2\u0006\u0010O\u001a\u00020P2\u0008\u0010Q\u001a\u0004\u0018\u00010R2\u0008\u0010S\u001a\u0004\u0018\u00010LH\u0016J\u0008\u0010T\u001a\u00020<H\u0016J\u001a\u0010U\u001a\u00020<2\u0006\u0010V\u001a\u00020N2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0008\u0010W\u001a\u00020<H\u0002J\u001a\u0010X\u001a\u00020<2\u0008\u0008\u0002\u0010Y\u001a\u00020\u00052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001bJ\u0010\u0010[\u001a\u00020<2\u0006\u0010\\\u001a\u00020]H\u0002J\u000e\u0010^\u001a\u00020<2\u0006\u0010_\u001a\u00020`J\u0006\u0010a\u001a\u00020<J\u0010\u0010Z\u001a\u00020<2\u0006\u0010b\u001a\u00020$H\u0002J\u0010\u0010c\u001a\u00020<2\u0006\u0010d\u001a\u00020,H\u0002J\u0010\u0010e\u001a\u00020<2\u0006\u0010f\u001a\u00020$H\u0002J\"\u0010g\u001a\u00020<2\u0006\u0010h\u001a\u00020$2\u0006\u0010i\u001a\u00020$2\n\u0008\u0002\u0010\\\u001a\u0004\u0018\u00010]J\u0006\u0010j\u001a\u00020<J\u0010\u0010k\u001a\u00020<2\u0006\u0010l\u001a\u00020$H\u0002J\u0006\u0010m\u001a\u00020<R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001b0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010$0#0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0#0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010*\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010$0#0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010+\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010,0#0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010/\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u000101\u0012\u0006\u0012\u0004\u0018\u000102000!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040#0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u00105\u001a\u0002068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u00087\u00108\u00a8\u0006p"
    }
    d2 = {
        "Lcom/cred/pay/ui/PaymentContainerFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "()V",
        "PAYMENT_JUSPAY_SAFE_REQUEST",
        "",
        "PAYMENT_UPI_APP_REQUEST",
        "appUpiCommunication",
        "Lcom/dreamplug/upi/UpiFragment$IAppUpiCommunication;",
        "getAppUpiCommunication",
        "()Lcom/dreamplug/upi/UpiFragment$IAppUpiCommunication;",
        "bottomSheetCommunicationInterface",
        "com/cred/pay/ui/PaymentContainerFragment$bottomSheetCommunicationInterface$1",
        "Lcom/cred/pay/ui/PaymentContainerFragment$bottomSheetCommunicationInterface$1;",
        "communicationInterface",
        "Lcom/cred/pay/ui/PaymentContainerFragment$CommunicationInterface;",
        "errorToast",
        "Lcom/dreamplug/widget/ErrorToast;",
        "getTokenRequestRequestTotalRetryCount",
        "getGetTokenRequestRequestTotalRetryCount",
        "()I",
        "setGetTokenRequestRequestTotalRetryCount",
        "(I)V",
        "getTokenRequestRequestTotalRetryDoneCount",
        "getGetTokenRequestRequestTotalRetryDoneCount",
        "setGetTokenRequestRequestTotalRetryDoneCount",
        "getTokenShowErrorAfterRetry",
        "",
        "getGetTokenShowErrorAfterRetry",
        "()Z",
        "setGetTokenShowErrorAfterRetry",
        "(Z)V",
        "goBackLivedataObserver",
        "Landroidx/lifecycle/Observer;",
        "juspaySafeObserver",
        "Lcom/dreamplug/utils/Event;",
        "",
        "lastLaunchedUpiAppPackageName",
        "paymentScreenRouterObserver",
        "Lcom/cred/pay/ui/PaymentScreen;",
        "paymentUpiBottomSheet",
        "Lcom/cred/pay/ui/instrumentlisting/PaymentUpiBottomSheet;",
        "showErrorObserver",
        "showPaymentDroppedBottomSheetObserver",
        "Lcom/cred/pay/ui/PaymentContainerViewModel$ErrorBottomSheet;",
        "upiInterface",
        "Lcom/dreamplug/upi/UpiPaymentData;",
        "upiPayCommandResponseObserver",
        "Lkotlin/Pair;",
        "Lcom/cred/pay/repository/models/UpiSuccessResponse;",
        "Lcom/cred/pay/repository/models/UpiErrorResponse;",
        "upiPayObserver",
        "Lcom/cred/pay/repository/models/UpiPay;",
        "viewModel",
        "Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "getViewModel",
        "()Lcom/cred/pay/ui/PaymentContainerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "changeMethodClicked",
        "",
        "data",
        "",
        "",
        "trackEvent",
        "checkIfSimIsAvailable",
        "startLinkFlow",
        "Lkotlin/Function0;",
        "initUpi",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
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
        "savexdInstanceState",
        "onDestroyView",
        "onViewCreated",
        "view",
        "paymentFinished",
        "reloadUpiData",
        "retryCount",
        "showError",
        "setMpin",
        "pinData",
        "Lcom/dreamplug/upi/UpiViewModel$SetMPinItem;",
        "setPaymentOrder",
        "paymentOrder",
        "Lcom/cred/pay/repository/models/PaymentOrder;",
        "showAddUpiAccountFlow",
        "message",
        "showPaymentDroppedBottomSheet",
        "errorBottomSheet",
        "showPaymentListingFragment",
        "tag",
        "showSetMpin",
        "vpa",
        "accountReferenceId",
        "showSimSelectionFlow",
        "startJustPay",
        "redirectUrl",
        "startLinkUpiFlow",
        "CommunicationInterface",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback$Stub:Lo/getMaxAvailableHeight$onNavigationEvent;


# instance fields
.field ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub$Proxy:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Lo/MenuItemHoverListener$onNavigationEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Lo/getMaxAvailableHeight$ICustomTabsCallback;

.field private asInterface:Lo/getCachedDrawable;

.field final extraCallback:Lo/dispatchAddStarting$onPostMessage;

.field private final getInterfaceDescriptor:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Lo/registerMediaButtonEventReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Lo/getMaxAvailableHeight$extraCallback;

.field private final newSession:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Lo/onItemHoverExit;",
            ">;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:I

.field public final onNavigationEvent:Lo/isSameListener;

.field onPostMessage:Z

.field private onRelationshipValidationResult:Lo/onMoveStarting;

.field private onTransact:Ljava/lang/String;

.field private final postMessage:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/addWrite<",
            "Lcom/cred/pay/repository/models/UpiSuccessResponse;",
            "Lcom/cred/pay/repository/models/UpiErrorResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestPostMessageChannel:Lo/setReenterTransition$onPostMessage;

.field private final updateVisuals:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final warmup:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getMaxAvailableHeight$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getMaxAvailableHeight$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getMaxAvailableHeight;->ICustomTabsCallback$Stub:Lo/getMaxAvailableHeight$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Lo/getMaxAvailableHeight$validateRelationship;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$validateRelationship;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50025
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 58
    iput-object v1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    .line 97
    new-instance v0, Lo/getMaxAvailableHeight$ICustomTabsService;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$ICustomTabsService;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->newSession:Lo/setPlaybackToRemote;

    .line 186
    new-instance v0, Lo/getMaxAvailableHeight$asInterface;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$asInterface;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->ICustomTabsService:Lo/setPlaybackToRemote;

    .line 192
    new-instance v0, Lo/getMaxAvailableHeight$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$onRelationshipValidationResult;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->warmup:Lo/setPlaybackToRemote;

    .line 198
    new-instance v0, Lo/getMaxAvailableHeight$mayLaunchUrl;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$mayLaunchUrl;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->ICustomTabsCallback$Stub$Proxy:Lo/setPlaybackToRemote;

    .line 367
    new-instance v0, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$ICustomTabsService$Stub$Proxy;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->getInterfaceDescriptor:Lo/setPlaybackToRemote;

    .line 375
    new-instance v0, Lo/getMaxAvailableHeight$updateVisuals;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$updateVisuals;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->postMessage:Lo/setPlaybackToRemote;

    .line 494
    new-instance v0, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v0}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/getMaxAvailableHeight;->requestPostMessageChannel:Lo/setReenterTransition$onPostMessage;

    .line 495
    new-instance v0, Lo/getMaxAvailableHeight$warmup;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$warmup;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->updateVisuals:Lo/setPlaybackToRemote;

    .line 743
    new-instance v0, Lo/getMaxAvailableHeight$extraCallback;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$extraCallback;-><init>(Lo/getMaxAvailableHeight;)V

    iput-object v0, p0, Lo/getMaxAvailableHeight;->mayLaunchUrl:Lo/getMaxAvailableHeight$extraCallback;

    .line 761
    new-instance v0, Lo/getMaxAvailableHeight$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/getMaxAvailableHeight$onMessageChannelReady;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v0, Lo/dispatchAddStarting$onPostMessage;

    iput-object v0, p0, Lo/getMaxAvailableHeight;->extraCallback:Lo/dispatchAddStarting$onPostMessage;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getMaxAvailableHeight;)V
    .locals 1

    .line 50078
    iget-object v0, p0, Lo/getMaxAvailableHeight;->asBinder:Lo/getMaxAvailableHeight$ICustomTabsCallback;

    if-eqz v0, :cond_2

    .line 50081
    iget-object p0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/MenuItemHoverListener;

    if-eqz p0, :cond_0

    .line 50082
    iget-object p0, p0, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz p0, :cond_0

    .line 50078
    invoke-virtual {p0}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "N/A"

    :cond_1
    invoke-interface {v0, p0}, Lo/getMaxAvailableHeight$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getMaxAvailableHeight;Lo/MenuItemHoverListener$onNavigationEvent;)V
    .locals 4

    .line 50130
    iget-object v0, p1, Lo/MenuItemHoverListener$onNavigationEvent;->onNavigationEvent:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 50103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 50131
    :cond_0
    iget-object v1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 50132
    iget-object v1, v1, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 50104
    invoke-virtual {v1}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "payment_instrument_group"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50133
    iget-object v1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 50134
    iget-object v1, v1, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz v1, :cond_2

    .line 50105
    invoke-virtual {v1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, "payment_instrument_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payment_failure_bottom_sheet_load"

    .line 50106
    invoke-static {v1, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 50107
    new-instance v1, Lo/updateAllRemainingSpans;

    invoke-direct {v1}, Lo/updateAllRemainingSpans;-><init>()V

    .line 50108
    new-instance v2, Lo/getMaxAvailableHeight$extraCommand;

    invoke-direct {v2, p0, p1, v0}, Lo/getMaxAvailableHeight$extraCommand;-><init>(Lo/getMaxAvailableHeight;Lo/MenuItemHoverListener$onNavigationEvent;Ljava/util/Map;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-virtual {v1, v2}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 50128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    const-string p1, "PAYMENT_DROPPED_DIALOG"

    invoke-virtual {v1, p0, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lo/getMaxAvailableHeight;)Lo/setReenterTransition$onPostMessage;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/getMaxAvailableHeight;->requestPostMessageChannel:Lo/setReenterTransition$onPostMessage;

    return-object p0
.end method

.method public static final synthetic asBinder(Lo/getMaxAvailableHeight;)Lo/getMaxAvailableHeight$ICustomTabsCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/getMaxAvailableHeight;->asBinder:Lo/getMaxAvailableHeight$ICustomTabsCallback;

    return-object p0
.end method

.method private final extraCallback()V
    .locals 4

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18000
    iget-object v1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 18037
    iget-object v1, v1, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v1, :cond_0

    .line 18040
    iget-object v1, v1, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v1, :cond_0

    .line 18060
    iget-object v1, v1, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->asInterface:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 19040
    :cond_0
    sget-object v1, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v1, :cond_5

    check-cast v1, Ljava/util/Map;

    .line 240
    :cond_1
    new-instance v2, Lo/onMoveStarting;

    .line 20000
    iget-object v3, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    .line 20037
    iget-object v3, v3, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v3, :cond_2

    .line 20038
    iget-object v3, v3, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 241
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 240
    :cond_3
    invoke-direct {v2, v0, v3, v1}, Lo/onMoveStarting;-><init>(Lo/onSessionEvent;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Lo/getMaxAvailableHeight;->onRelationshipValidationResult:Lo/onMoveStarting;

    if-eqz v2, :cond_4

    .line 21028
    iget-object v0, v2, Lo/onMoveStarting;->onMessageChannelReady:Lo/setActive;

    if-eqz v0, :cond_4

    .line 243
    move-object v1, p0

    check-cast v1, Lo/toLegacyStreamType;

    new-instance v2, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;

    invoke-direct {v2, p0}, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 269
    :cond_4
    new-instance v0, Lo/toDebugString$onPostMessage;

    invoke-direct {v0}, Lo/toDebugString$onPostMessage;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 270
    iget-object v1, p0, Lo/getMaxAvailableHeight;->onRelationshipValidationResult:Lo/onMoveStarting;

    if-eqz v1, :cond_6

    .line 21030
    iget-object v1, v1, Lo/onMoveStarting;->onRelationshipValidationResult:Lo/setActive;

    if-eqz v1, :cond_6

    .line 270
    move-object v2, p0

    check-cast v2, Lo/toLegacyStreamType;

    new-instance v3, Lo/getMaxAvailableHeight$onTransact;

    invoke-direct {v3, p0, v0}, Lo/getMaxAvailableHeight$onTransact;-><init>(Lo/getMaxAvailableHeight;Lo/toDebugString$onPostMessage;)V

    check-cast v3, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void

    .line 19040
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method public static synthetic extraCallback(Lo/getMaxAvailableHeight;)V
    .locals 2

    .line 17223
    new-instance v0, Lo/getMaxAvailableHeight$newSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lo/getMaxAvailableHeight$newSession;-><init>(Lo/getMaxAvailableHeight;IZ)V

    check-cast v0, Lo/getServerTime;

    .line 17230
    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getMaxAvailableHeight;Ljava/lang/String;)V
    .locals 7

    .line 50026
    iget-object v0, p0, Lo/getMaxAvailableHeight;->requestPostMessageChannel:Lo/setReenterTransition$onPostMessage;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string p0, "context!!"

    invoke-static {v1, p0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady()I
    .locals 1

    const/16 v0, 0x7d3

    return v0
.end method

.method public static final synthetic onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/getMaxAvailableHeight;->asInterface:Lo/getCachedDrawable;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/getMaxAvailableHeight;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/getMaxAvailableHeight;->onTransact:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/getMaxAvailableHeight;Lo/snapFromFling$extraCallback;)V
    .locals 6

    .line 50031
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 50032
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 50028
    new-instance v1, Lo/addWrite;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 50029
    iget-object p0, p0, Lo/getMaxAvailableHeight;->onRelationshipValidationResult:Lo/onMoveStarting;

    if-eqz p0, :cond_0

    const-string v0, "pinData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50033
    iput-object p1, p0, Lo/onMoveStarting;->asInterface:Lo/snapFromFling$extraCallback;

    .line 50034
    iget-boolean v0, p0, Lo/onMoveStarting;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onMoveStarting;->onPostMessage:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onMoveStarting;->extraCallback:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    if-eqz v0, :cond_0

    .line 50035
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50045
    iget-object v1, p1, Lo/snapFromFling$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "customerVpa"

    .line 50036
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50046
    iget-object v1, p1, Lo/snapFromFling$extraCallback;->onPostMessage:Ljava/lang/String;

    const-string v2, "card"

    .line 50037
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50047
    iget-object v1, p1, Lo/snapFromFling$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "expiry"

    .line 50038
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50039
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACD"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UUID.randomUUID().toString()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "-"

    const-string v5, ""

    .line 50048
    invoke-static {v2, v4, v5, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 50039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upiRequestId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50049
    iget-object p1, p1, Lo/snapFromFling$extraCallback;->extraCallback:Ljava/lang/String;

    const-string v1, "accountReferenceId"

    .line 50040
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "udfParameters"

    const-string/jumbo v1, "{}"

    .line 50041
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50042
    iget-object p0, p0, Lo/onMoveStarting;->ICustomTabsCallback$Stub:Lo/add;

    const-string p1, "SET_MPIN"

    invoke-static {p0, p1, v0}, Lo/add;->extraCallback(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/getMaxAvailableHeight;)Lo/onMoveStarting;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/getMaxAvailableHeight;->onRelationshipValidationResult:Lo/onMoveStarting;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/getMaxAvailableHeight;Ljava/lang/String;)V
    .locals 3

    .line 50050
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 50051
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    .line 50059
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 50053
    sget p0, Lo/onItemHoverEnter$ICustomTabsCallback;->slide_in_up:I

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback;->slide_out_down:I

    .line 50061
    iput p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 50062
    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    const/4 p0, 0x0

    .line 50063
    iput p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 50064
    iput p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    .line 50066
    iget-boolean p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 50070
    iput-boolean p0, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 50071
    iput-object p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 50055
    sget p0, Lo/onItemHoverEnter$onNavigationEvent;->paymentContainer:I

    new-instance v1, Lo/addTab;

    invoke-direct {v1}, Lo/addTab;-><init>()V

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    .line 50076
    invoke-virtual {v0, p0, v1, p1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 50056
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_0

    .line 50074
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must use non-zero containerViewId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50067
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic onNavigationEvent(Lo/getMaxAvailableHeight;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0, p1, p2, v0}, Lo/getMaxAvailableHeight;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/snapFromFling$extraCallback;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getMaxAvailableHeight;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lo/getMaxAvailableHeight;->extraCallback()V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getMaxAvailableHeight;Ljava/lang/String;)V
    .locals 10

    .line 50083
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lo/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50085
    new-instance v1, Lo/setPopupClipToScreenEnabled;

    .line 50093
    iget-object v2, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 50094
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 50095
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 50096
    :goto_0
    iget-object v2, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 50097
    iget-object v2, v2, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v2, :cond_1

    .line 50098
    iget-object v2, v2, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 50088
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    const/4 v7, 0x0

    .line 50099
    iget-object v2, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 50100
    iget-object v2, v2, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 50101
    iget-object v2, v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v2, :cond_2

    .line 50102
    iget-boolean v2, v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onNavigationEvent:Z

    if-ne v2, v3, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_2
    const/16 v9, 0x8

    move-object v3, v1

    move-object v5, p1

    .line 50085
    invoke-direct/range {v3 .. v9}, Lo/setPopupClipToScreenEnabled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    check-cast v1, Landroid/os/Parcelable;

    const-string p1, "extraInfo"

    .line 50084
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xfa1

    .line 50083
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic onPostMessage(Lo/getMaxAvailableHeight;Ljava/util/Map;ZI)V
    .locals 11

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    const/4 p1, 0x2

    and-int/2addr p3, p1

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, p2

    .line 30560
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    const-string p3, "lifecycle"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30799
    new-instance v4, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v4}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 30800
    new-instance v8, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v8}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v1, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 30801
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 31212
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    .line 30563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31896
    iget-object v2, v2, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v2

    const-string v3, "childFragmentManager.fragments"

    .line 30563
    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 30803
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 30564
    instance-of v10, v9, Lo/getAllExperimentsInAnalytics;

    if-eqz v10, :cond_3

    .line 30565
    instance-of v10, v9, Lo/removeTabAt;

    if-eqz v10, :cond_5

    .line 32000
    iget-object v3, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    .line 32037
    iget-object v3, v3, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v3, :cond_4

    .line 32040
    iget-object v3, v3, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v3, :cond_4

    .line 32061
    iget-boolean v3, v3, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback$Stub:Z

    if-ne v3, v0, :cond_4

    .line 30570
    check-cast v9, Lo/removeTabAt;

    invoke-virtual {v9, v0}, Lo/removeTabAt;->onNavigationEvent(Z)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const/4 v5, 0x0

    goto :goto_3

    .line 30572
    :cond_5
    instance-of v10, v9, Lo/setSelected;

    if-eqz v10, :cond_6

    .line 30573
    check-cast v9, Lo/setSelected;

    invoke-virtual {v9}, Lo/setSelected;->onPostMessage()V

    goto :goto_3

    .line 30574
    :cond_6
    check-cast v9, Lo/getAllExperimentsInAnalytics;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 30575
    invoke-virtual {v9}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_d

    const-string v2, "payment_farm"

    const-string v6, "recommendation"

    if-eqz v3, :cond_8

    move-object v3, v2

    goto :goto_5

    :cond_8
    move-object v3, v6

    :goto_5
    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    move-object v2, v6

    :goto_6
    const/4 v5, 0x4

    new-array v6, v5, [Lo/addWrite;

    .line 33043
    new-instance v9, Lo/addWrite;

    const-string v10, "destination"

    invoke-direct {v9, v10, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v6, p3

    .line 34043
    new-instance p3, Lo/addWrite;

    const-string/jumbo v3, "source"

    invoke-direct {p3, v3, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, v6, v0

    .line 35000
    iget-object p3, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/MenuItemHoverListener;

    .line 35145
    iget-object p3, p3, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz p3, :cond_a

    .line 30586
    invoke-virtual {p3}, Lo/isInputMethodNotNeeded;->onPostMessage()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_a
    move-object p3, v1

    .line 36043
    :goto_7
    new-instance v2, Lo/addWrite;

    const-string v3, "payment_instrument_group"

    invoke-direct {v2, v3, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, p1

    const/4 p1, 0x3

    .line 37000
    iget-object p0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/MenuItemHoverListener;

    .line 37145
    iget-object p0, p0, Lo/MenuItemHoverListener;->ICustomTabsService$Stub$Proxy:Lo/isInputMethodNotNeeded;

    if-eqz p0, :cond_b

    .line 30587
    invoke-virtual {p0}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 38043
    :cond_b
    new-instance p0, Lo/addWrite;

    const-string p3, "payment_instrument_id"

    invoke-direct {p0, p3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p0, v6, p1

    const-string p0, "pairs"

    .line 30583
    invoke-static {v6, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38088
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    if-eqz v7, :cond_c

    .line 30588
    invoke-interface {p0, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30589
    :cond_c
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    check-cast p1, Ljava/util/Map;

    const-string p0, "payment_failure_change_method_click"

    invoke-static {p0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 30805
    :cond_d
    iput-boolean v0, v4, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_8

    .line 30806
    :cond_e
    invoke-virtual {p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    sget-object p3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p1, p3, :cond_f

    .line 30807
    new-instance p1, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/cred/pay/ui/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMaxAvailableHeight;ZLjava/util/Map;)V

    check-cast p1, Lo/createCallback;

    iput-object p1, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 30808
    iget-object p0, v8, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p0, Lo/createCallback;

    check-cast p0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p2, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 30810
    :cond_f
    :goto_8
    new-instance p0, Lo/getMaxAvailableHeight$onPostMessage;

    invoke-direct {p0, v8, p2}, Lo/getMaxAvailableHeight$onPostMessage;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getMaxAvailableHeight;Lo/getCachedDrawable;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/getMaxAvailableHeight;->asInterface:Lo/getCachedDrawable;

    return-void
.end method

.method public static final synthetic onTransact(Lo/getMaxAvailableHeight;)Lo/setPlaybackToRemote;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/getMaxAvailableHeight;->postMessage:Lo/setPlaybackToRemote;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/cred/pay/repository/models/PaymentOrder;)V
    .locals 10

    const-string v0, "paymentOrder"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22019
    iget-object v1, p1, Lcom/cred/pay/repository/models/PaymentOrder;->onMessageChannelReady:Ljava/util/HashMap;

    .line 23013
    iget-object v2, p1, Lcom/cred/pay/repository/models/PaymentOrder;->onNavigationEvent:Ljava/lang/Double;

    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 503
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "amount"

    .line 502
    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24000
    iget-object v1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    .line 504
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24076
    iput-object p1, v1, Lo/MenuItemHoverListener;->extraCallback:Lcom/cred/pay/repository/models/PaymentOrder;

    .line 24077
    iget-object v1, v1, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25064
    iput-object p1, v1, Lo/setDropDownGravity;->onTransact:Lcom/cred/pay/repository/models/PaymentOrder;

    .line 25065
    sget-object v0, Lo/setWindowLayoutType;->onPostMessage:Lo/setWindowLayoutType;

    const/4 v0, 0x2

    new-array v2, v0, [Lo/addWrite;

    const/4 v3, 0x0

    .line 26017
    iget-object v4, p1, Lcom/cred/pay/repository/models/PaymentOrder;->onPostMessage:Ljava/lang/String;

    .line 26043
    new-instance v5, Lo/addWrite;

    const-string v6, "lob"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 27011
    iget-object p1, p1, Lcom/cred/pay/repository/models/PaymentOrder;->extraCallback:Ljava/lang/String;

    .line 27043
    new-instance v4, Lo/addWrite;

    const-string v5, "order_id"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const-string p1, "pairs"

    .line 25065
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 25065
    invoke-static {p1}, Lo/setWindowLayoutType;->onPostMessage(Ljava/util/HashMap;)V

    .line 28071
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lo/setDropDownGravity;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lo/setDropDownGravity;->onTransact:Lcom/cred/pay/repository/models/PaymentOrder;

    if-eqz v0, :cond_2

    .line 29017
    iget-object v0, v0, Lcom/cred/pay/repository/models/PaymentOrder;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 28071
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30000
    iget-object v0, v1, Lo/setDropDownGravity;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setInputMethodMode;

    .line 28072
    iget-object v2, v1, Lo/setDropDownGravity;->onTransact:Lcom/cred/pay/repository/models/PaymentOrder;

    invoke-interface {v0, v2}, Lo/setInputMethodMode;->onPostMessage(Lcom/cred/pay/repository/models/PaymentOrder;)Lo/clearScrap;

    move-result-object v0

    .line 28073
    sget-object v2, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0xe

    invoke-static/range {v3 .. v9}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 28074
    new-instance v2, Lo/setDropDownGravity$onPostMessage;

    invoke-direct {v2, v1, p1}, Lo/setDropDownGravity$onPostMessage;-><init>(Lo/setDropDownGravity;Ljava/lang/String;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 4

    .line 604
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38896
    iget-object v0, v0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    const-string v1, "childFragmentManager.fragments"

    .line 604
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$firstOrNull"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39243
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

    .line 604
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

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 610
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 613
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "java.util.Collections.singletonList(element)"

    const-string v3, "completed"

    const/16 v4, 0x7d3

    if-ne p1, v4, :cond_6

    .line 40000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 40051
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 613
    new-instance v4, Lo/addWrite;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v1, "response"

    .line 614
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    const/4 v1, 0x3

    new-array v4, v1, [Lo/addWrite;

    const/4 v5, 0x0

    .line 41043
    new-instance v6, Lo/addWrite;

    const-string v7, "app_response"

    invoke-direct {v6, v7, p3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    .line 618
    iget-object v5, p0, Lo/getMaxAvailableHeight;->onTransact:Ljava/lang/String;

    .line 42043
    new-instance v6, Lo/addWrite;

    const-string v7, "app_package_name"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v0

    const/4 v0, 0x2

    .line 619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 43043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "resultCode"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v0

    const-string v0, "pairs"

    .line 616
    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v4, "upi_app_response"

    .line 615
    invoke-static {v4, v0}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 44000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 44037
    iget-object v0, v0, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v0, :cond_1

    .line 44040
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v0, :cond_1

    .line 44059
    iget-object p1, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->onRelationshipValidationResult:Ljava/util/List;

    .line 622
    :cond_1
    sget-object v0, Lo/onItemSelected;->onNavigationEvent:Lo/onItemSelected;

    iget-object v0, p0, Lo/getMaxAvailableHeight;->onTransact:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-static {v0, p2, p3, p1}, Lo/onItemSelected;->onNavigationEvent(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 45019
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    new-instance p3, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 628
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_title:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    .line 629
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_content:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    move-object v3, p3

    .line 627
    invoke-direct/range {v3 .. v8}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    .line 625
    invoke-static {p1, p2, p3}, Lo/MenuItemHoverListener;->extraCallback(Lo/MenuItemHoverListener;Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;)V

    return-void

    .line 46000
    :cond_3
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lo/MenuItemHoverListener;

    .line 46019
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    new-instance p1, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 637
    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_title:I

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    .line 638
    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_content:I

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    move-object v6, p1

    .line 636
    invoke-direct/range {v6 .. v11}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    const-string p2, "exitStatusList"

    .line 634
    invoke-static {v5, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dialogData"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46237
    iget-object p2, v4, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz p2, :cond_4

    .line 47040
    iget-object p2, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz p2, :cond_4

    .line 47055
    iget-object p2, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    if-eqz p2, :cond_4

    .line 47069
    iget-object p2, p2, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->ICustomTabsCallback:Ljava/lang/Long;

    if-eqz p2, :cond_4

    .line 46237
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    goto :goto_1

    :cond_4
    const-wide/16 p2, 0x7d0

    .line 46238
    :goto_1
    iget-object v0, v4, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    if-eqz v0, :cond_5

    .line 48040
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-eqz v0, :cond_5

    .line 48055
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    if-eqz v0, :cond_5

    .line 48071
    iget-object v0, v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;->onPostMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 46238
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_5
    const/4 v7, 0x0

    .line 46239
    new-instance v8, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v8, p2, p3}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x24

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Lo/MenuItemHoverListener;->onPostMessage(Lo/MenuItemHoverListener;Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;ZLcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;ZZI)V

    return-void

    :cond_6
    const/16 p3, 0xfa1

    if-ne p1, p3, :cond_8

    .line 49000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 49051
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 646
    new-instance p3, Lo/addWrite;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    .line 50000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 50019
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    new-instance p3, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 652
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_title:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    .line 653
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_failed_content:I

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    move-object v3, p3

    .line 651
    invoke-direct/range {v3 .. v8}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    .line 648
    invoke-virtual {p1, p2, p3, v0}, Lo/MenuItemHoverListener;->ICustomTabsCallback(Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;Z)V

    return-void

    :cond_7
    if-nez p2, :cond_8

    .line 50020
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lo/MenuItemHoverListener;

    .line 50021
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    new-instance p1, Lo/MenuItemHoverListener$onNavigationEvent;

    .line 661
    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_message:I

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v7

    .line 662
    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_droped_content:I

    invoke-static {p2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    move-object v6, p1

    .line 660
    invoke-direct/range {v6 .. v11}, Lo/MenuItemHoverListener$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lo/updateAllRemainingSpans$extraCallback;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    .line 658
    invoke-static/range {v4 .. v11}, Lo/MenuItemHoverListener;->onPostMessage(Lo/MenuItemHoverListener;Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;ZLcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;ZZI)V

    .line 667
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {p2, p0}, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/getMaxAvailableHeight;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget-object p1, Lo/merge;->extraCallback:Lo/merge;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PaymentContainerFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "cred_pay_ui"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2000
    :goto_0
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    if-nez p1, :cond_1

    .line 64
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v1, "credPaymentUi"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2069
    iput-object p1, v0, Lo/MenuItemHoverListener;->onMessageChannelReady:Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    .line 2070
    new-instance v1, Lo/setDropDownGravity;

    iget-object v2, v0, Lo/MenuItemHoverListener;->validateRelationship:Landroid/app/Application;

    invoke-direct {v1, v2}, Lo/setDropDownGravity;-><init>(Landroid/app/Application;)V

    iput-object v1, v0, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    .line 2071
    iget-object v1, v0, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz v1, :cond_2

    .line 3040
    iget-object p1, p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    .line 3058
    iget-object p1, p1, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;->asBinder:Ljava/util/List;

    const-string v2, "mBlacklistedUpiApps"

    .line 2071
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3059
    iget-object v2, v1, Lo/setDropDownGravity;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 3060
    iget-object v1, v1, Lo/setDropDownGravity;->onNavigationEvent:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3098
    :cond_2
    iget-object p1, v0, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    new-instance v1, Lo/throwIfInMutationOperation;

    sget-object v2, Lo/onItemHoverExit$newSession;->onPostMessage:Lo/onItemHoverExit$newSession;

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3082
    iget-object p1, v0, Lo/MenuItemHoverListener;->onNavigationEvent:Lo/setDropDownGravity;

    if-eqz p1, :cond_3

    .line 4053
    iget-object p1, p1, Lo/setDropDownGravity;->extraCallback:Lo/setActive;

    if-eqz p1, :cond_3

    .line 3082
    new-instance v1, Lo/MenuItemHoverListener$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/MenuItemHoverListener$onMessageChannelReady;-><init>(Lo/MenuItemHoverListener;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 65
    :cond_3
    invoke-direct {p0}, Lo/getMaxAvailableHeight;->extraCallback()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget p3, Lo/onItemHoverEnter$onTransact;->fragment_payment_container:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 11000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 11053
    iget-object v0, v0, Lo/MenuItemHoverListener;->requestPostMessageChannel:Lo/setActive;

    .line 89
    iget-object v1, p0, Lo/getMaxAvailableHeight;->ICustomTabsService:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 12000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 12056
    iget-object v0, v0, Lo/MenuItemHoverListener;->extraCommand:Lo/setActive;

    .line 90
    iget-object v1, p0, Lo/getMaxAvailableHeight;->warmup:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 13000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 13050
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    .line 91
    iget-object v1, p0, Lo/getMaxAvailableHeight;->newSession:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 14000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 14052
    iget-object v0, v0, Lo/MenuItemHoverListener;->updateVisuals:Lo/setActive;

    .line 92
    iget-object v1, p0, Lo/getMaxAvailableHeight;->getInterfaceDescriptor:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 15000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 15054
    iget-object v0, v0, Lo/MenuItemHoverListener;->postMessage:Lo/setActive;

    .line 93
    iget-object v1, p0, Lo/getMaxAvailableHeight;->updateVisuals:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 16000
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 16055
    iget-object v0, v0, Lo/MenuItemHoverListener;->mayLaunchUrl:Lo/setActive;

    .line 94
    iget-object v1, p0, Lo/getMaxAvailableHeight;->ICustomTabsCallback$Stub$Proxy:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/getServerTime;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 50022
    iget-object v0, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 716
    invoke-virtual {v0}, Lo/MenuItemHoverListener;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void

    .line 719
    :cond_0
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 720
    new-instance v1, Lo/updateAllRemainingSpans;

    invoke-direct {v1}, Lo/updateAllRemainingSpans;-><init>()V

    iput-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 721
    iget-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/updateAllRemainingSpans;

    new-instance v2, Lo/getMaxAvailableHeight$asBinder;

    invoke-direct {v2, p0, p1, v0}, Lo/getMaxAvailableHeight$asBinder;-><init>(Lo/getMaxAvailableHeight;Lo/getServerTime;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-virtual {v1, v2}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 732
    iget-object p1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/updateAllRemainingSpans;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "PAYMENT_DROPPED_DIALOG"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/snapFromFling$extraCallback;)V
    .locals 4

    const-string/jumbo p3, "vpa"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "accountReferenceId"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array v0, p3, [Lo/addWrite;

    .line 50023
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "source"

    const-string v3, "payment farm"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 738
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50024
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p3, "upi_set_m_pin_screen_shown"

    .line 738
    invoke-static {p3, v1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 739
    new-instance p3, Lo/setSupportsChangeAnimations;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/getMaxAvailableHeight;->mayLaunchUrl:Lo/getMaxAvailableHeight$extraCallback;

    check-cast v1, Lo/shouldBeKeptAsChild$onPostMessage;

    invoke-direct {p3, v0, v1}, Lo/setSupportsChangeAnimations;-><init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;)V

    .line 740
    new-instance v0, Lo/snapFromFling$onNavigationEvent;

    invoke-direct {v0, p1, p2}, Lo/snapFromFling$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lo/setSupportsChangeAnimations;->extraCallback(Lo/snapFromFling$onNavigationEvent;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 5053
    iget-object p1, p1, Lo/MenuItemHoverListener;->requestPostMessageChannel:Lo/setActive;

    .line 75
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lo/getMaxAvailableHeight;->ICustomTabsService:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 6000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 6056
    iget-object p1, p1, Lo/MenuItemHoverListener;->extraCommand:Lo/setActive;

    .line 76
    iget-object v0, p0, Lo/getMaxAvailableHeight;->warmup:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 7000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 7050
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    .line 77
    iget-object v0, p0, Lo/getMaxAvailableHeight;->newSession:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 8000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 8052
    iget-object p1, p1, Lo/MenuItemHoverListener;->updateVisuals:Lo/setActive;

    .line 78
    iget-object v0, p0, Lo/getMaxAvailableHeight;->getInterfaceDescriptor:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 9000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 9054
    iget-object p1, p1, Lo/MenuItemHoverListener;->postMessage:Lo/setActive;

    .line 79
    iget-object v0, p0, Lo/getMaxAvailableHeight;->updateVisuals:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 10000
    iget-object p1, p0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 10055
    iget-object p1, p1, Lo/MenuItemHoverListener;->mayLaunchUrl:Lo/setActive;

    .line 80
    iget-object v0, p0, Lo/getMaxAvailableHeight;->ICustomTabsCallback$Stub$Proxy:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/getMaxAvailableHeight$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/getMaxAvailableHeight$ICustomTabsCallback;

    iput-object p1, p0, Lo/getMaxAvailableHeight;->asBinder:Lo/getMaxAvailableHeight$ICustomTabsCallback;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.cred.pay.ui.PaymentContainerFragment.CommunicationInterface"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Must implement PaymentContainerFragment.CommunicationInterface"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
