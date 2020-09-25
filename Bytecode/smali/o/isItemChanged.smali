.class public final Lo/isItemChanged;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;
.implements Lo/removeItemAt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isItemChanged$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0002\u0006\t\u0018\u0000 w2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001wB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010O\u001a\u00020I2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020I0QH\u0002J\u000e\u0010R\u001a\u0008\u0012\u0004\u0012\u00020T0SH\u0002J\u0008\u0010U\u001a\u00020*H\u0002J\u0008\u0010V\u001a\u00020\u000cH\u0002J\u0008\u0010W\u001a\u00020\u000cH\u0002J\u0008\u0010X\u001a\u00020IH\u0002J\u000c\u0010Y\u001a\u00060\u000cj\u0002`ZH\u0016J\u0012\u0010[\u001a\u00020I2\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0016J&\u0010^\u001a\u0004\u0018\u00010_2\u0006\u0010`\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010c2\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0016J\u0008\u0010d\u001a\u00020IH\u0016J\u0008\u0010e\u001a\u00020IH\u0002J\u0008\u0010f\u001a\u00020IH\u0016J\u0008\u0010g\u001a\u00020IH\u0016J\u0008\u0010h\u001a\u00020IH\u0016J\u001a\u0010i\u001a\u00020I2\u0006\u0010j\u001a\u00020_2\u0008\u0010\\\u001a\u0004\u0018\u00010]H\u0016J\u0006\u0010k\u001a\u00020IJ\u000e\u0010l\u001a\u00020I2\u0006\u0010m\u001a\u00020\u000cJ\u0008\u0010n\u001a\u00020IH\u0002J\u0008\u0010o\u001a\u00020IH\u0002J\"\u0010p\u001a\u00020I2\u0006\u0010q\u001a\u00020\u00182\u0006\u0010r\u001a\u00020\u00182\n\u0008\u0002\u0010s\u001a\u0004\u0018\u00010tJ\u0008\u0010u\u001a\u00020IH\u0002J\u000e\u0010v\u001a\u00020I2\u0006\u0010s\u001a\u00020tR\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u001a\u0010\u0015\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0010\u00105\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00106\u001a\u0004\u0018\u000107X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u000e\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER(\u0010F\u001a\u001c\u0012\u0004\u0012\u00020\u0018\u0012\u0006\u0012\u0004\u0018\u00010H\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020I0GX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010J\u001a\u00020K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010\"\u001a\u0004\u0008L\u0010M\u00a8\u0006x"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/TrackFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/utils/BackKeyHandler;",
        "Lcom/dreamplug/utils/ScrollBackHandler;",
        "()V",
        "appUpiCommunication",
        "com/dreamplug/fabrik/ui/track/TrackFragment$appUpiCommunication$1",
        "Lcom/dreamplug/fabrik/ui/track/TrackFragment$appUpiCommunication$1;",
        "bottomSheetCommunicationInterface",
        "com/dreamplug/fabrik/ui/track/TrackFragment$bottomSheetCommunicationInterface$1",
        "Lcom/dreamplug/fabrik/ui/track/TrackFragment$bottomSheetCommunicationInterface$1;",
        "didActivityGoToBackground",
        "",
        "getDidActivityGoToBackground",
        "()Z",
        "setDidActivityGoToBackground",
        "(Z)V",
        "isAccountListLoadedTracked",
        "setAccountListLoadedTracked",
        "isOnboardingLoadedTracked",
        "setOnboardingLoadedTracked",
        "isStandAlonePage",
        "setStandAlonePage",
        "lastSessionId",
        "",
        "getLastSessionId",
        "()Ljava/lang/String;",
        "setLastSessionId",
        "(Ljava/lang/String;)V",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "onClick",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getOnClick",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "progressDialog",
        "Lcom/dreamplug/widget/CredProgressDialog;",
        "refreshTapCount",
        "",
        "getRefreshTapCount",
        "()I",
        "setRefreshTapCount",
        "(I)V",
        "smoothScroller",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "getSmoothScroller",
        "()Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "setSmoothScroller",
        "(Landroidx/recyclerview/widget/LinearSmoothScroller;)V",
        "source",
        "timeTracker",
        "Lcom/dreamplug/androidapp/utils/TimeTracker;",
        "getTimeTracker",
        "()Lcom/dreamplug/androidapp/utils/TimeTracker;",
        "setTimeTracker",
        "(Lcom/dreamplug/androidapp/utils/TimeTracker;)V",
        "toastMsg",
        "Lcom/dreamplug/widget/CREDCustomToast;",
        "trackAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "trackData",
        "Lcom/dreamplug/upi/UpiTrackData;",
        "getTrackData",
        "()Lcom/dreamplug/upi/UpiTrackData;",
        "setTrackData",
        "(Lcom/dreamplug/upi/UpiTrackData;)V",
        "upiCallBack",
        "Lkotlin/Function3;",
        "Lcom/cred/pay/repository/models/UpiResponse;",
        "",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/track/TrackViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/track/TrackViewModel;",
        "viewModel$delegate",
        "checkIfSimIsAvailable",
        "startLinkFlow",
        "Lkotlin/Function0;",
        "getDummyListData",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getNumberOfCards",
        "goBack",
        "isSimAvailable",
        "onAccountListLoaded",
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
        "onDestroy",
        "onOnboardingPageLoad",
        "onPause",
        "onResume",
        "onScrollBackToTop",
        "onViewCreated",
        "view",
        "retryBalanceCheck",
        "setOnboardingBackground",
        "show",
        "showAddUpiAccountFlow",
        "showSessionCachedBottomSheet",
        "showSetMpin",
        "vpa",
        "accountReferenceId",
        "pinData",
        "Lcom/dreamplug/upi/UpiViewModel$SetMPinItem;",
        "startLinkUpiFlow",
        "startSetMpinRequest",
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
.field public static final onTransact:Lo/isItemChanged$onNavigationEvent;


# instance fields
.field final ICustomTabsCallback:Lo/isSameListener;

.field private ICustomTabsCallback$Stub:Lo/createFullSpanItemFromStart;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:Lo/repositionToWrapContentIfNecessary;

.field private IPostMessageService:Ljava/util/HashMap;

.field asBinder:I

.field private final asInterface:Lo/onActivityResult;

.field extraCallback:Lo/calculateScrollDistance;

.field private extraCommand:Z

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private mayLaunchUrl:Z

.field private final newSession:Lo/hasGapsToFix$onMessageChannelReady;

.field onMessageChannelReady:Landroidx/recyclerview/widget/LinearSmoothScroller;

.field onNavigationEvent:Z

.field onPostMessage:Lo/evictionCount;

.field private final onRelationshipValidationResult:Lo/isSameListener;

.field private final postMessage:Lo/rerunTransactionQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/rerunTransactionQueue<",
            "Ljava/lang/String;",
            "Lo/MediaSessionCompat$1$onMessageChannelReady;",
            "Ljava/lang/Boolean;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private requestPostMessageChannel:Z

.field private final updateVisuals:Lo/isItemChanged$extraCallback;

.field private final warmup:Lo/isItemChanged$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/isItemChanged$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/isItemChanged$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/isItemChanged;->onTransact:Lo/isItemChanged$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 71
    invoke-static {p0}, Lo/setAddDuration;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/isSameListener;

    move-result-object v0

    iput-object v0, p0, Lo/isItemChanged;->onRelationshipValidationResult:Lo/isSameListener;

    .line 819
    new-instance v0, Lo/isItemChanged$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/isItemChanged$ICustomTabsCallback;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 819
    iput-object v1, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    .line 74
    new-instance v0, Lo/onActivityResult;

    invoke-direct {v0}, Lo/onActivityResult;-><init>()V

    iput-object v0, p0, Lo/isItemChanged;->asInterface:Lo/onActivityResult;

    .line 495
    new-instance v0, Lo/isItemChanged$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/isItemChanged$onRelationshipValidationResult;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/isItemChanged;->newSession:Lo/hasGapsToFix$onMessageChannelReady;

    .line 605
    new-instance v0, Lo/isItemChanged$onPostMessage;

    invoke-direct {v0, p0}, Lo/isItemChanged$onPostMessage;-><init>(Lo/isItemChanged;)V

    iput-object v0, p0, Lo/isItemChanged;->warmup:Lo/isItemChanged$onPostMessage;

    .line 641
    new-instance v0, Lo/isItemChanged$INotificationSideChannel$Stub;

    invoke-direct {v0, p0}, Lo/isItemChanged$INotificationSideChannel$Stub;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/rerunTransactionQueue;

    iput-object v0, p0, Lo/isItemChanged;->postMessage:Lo/rerunTransactionQueue;

    .line 667
    new-instance v0, Lo/isItemChanged$extraCallback;

    invoke-direct {v0, p0}, Lo/isItemChanged$extraCallback;-><init>(Lo/isItemChanged;)V

    iput-object v0, p0, Lo/isItemChanged;->updateVisuals:Lo/isItemChanged$extraCallback;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/isItemChanged;)Lo/rerunTransactionQueue;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/isItemChanged;->postMessage:Lo/rerunTransactionQueue;

    return-object p0
.end method

.method private final ICustomTabsCallback(Lo/getServerTime;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Lo/isItemChanged;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void

    .line 625
    :cond_0
    new-instance v0, Lo/updateAllRemainingSpans;

    invoke-direct {v0}, Lo/updateAllRemainingSpans;-><init>()V

    .line 626
    new-instance v1, Lo/isItemChanged$onMessageChannelReady;

    invoke-direct {v1, p0, p1, v0}, Lo/isItemChanged$onMessageChannelReady;-><init>(Lo/isItemChanged;Lo/getServerTime;Lo/updateAllRemainingSpans;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, v1}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v1, "PAYMENT_DROPPED_DIALOG"

    invoke-virtual {v0, p1, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/isItemChanged;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p0, p1, p2, v0}, Lo/isItemChanged;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/snapFromFling$extraCallback;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lo/isItemChanged;)V
    .locals 7

    .line 47777
    iget-boolean v0, p0, Lo/isItemChanged;->extraCommand:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v2, v0, [Lo/addWrite;

    const/4 v3, 0x0

    .line 47780
    iget-object v4, p0, Lo/isItemChanged;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 48043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "source"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 49000
    iget-object v3, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/RecyclerView$OnFlingListener;

    .line 48724
    invoke-virtual {v3}, Lo/RecyclerView$OnFlingListener;->asBinder()I

    move-result v3

    .line 47781
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49043
    new-instance v4, Lo/addWrite;

    const-string v5, "count_of_cards"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v1

    const/4 v3, 0x2

    .line 50000
    iget-object v4, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/RecyclerView$OnFlingListener;

    .line 50053
    iget-boolean v4, v4, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub:Z

    .line 47782
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 50054
    new-instance v5, Lo/addWrite;

    const-string v6, "cache"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const-string v3, "pairs"

    .line 47779
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50055
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "track_bb_home_page_load"

    .line 47778
    invoke-static {v0, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 47785
    :cond_0
    iput-boolean v1, p0, Lo/isItemChanged;->extraCommand:Z

    return-void
.end method

.method public static final synthetic ICustomTabsCallback$Stub$Proxy(Lo/isItemChanged;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lo/isItemChanged;->onPostMessage()Z

    move-result p0

    return p0
.end method

.method public static final synthetic ICustomTabsService(Lo/isItemChanged;)V
    .locals 1

    .line 50066
    new-instance v0, Lo/isItemChanged$getDefaultImpl;

    invoke-direct {v0, p0}, Lo/isItemChanged$getDefaultImpl;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/getServerTime;

    .line 50075
    invoke-direct {p0, v0}, Lo/isItemChanged;->ICustomTabsCallback(Lo/getServerTime;)V

    return-void
.end method

.method public static final synthetic asBinder(Lo/isItemChanged;)V
    .locals 6

    .line 50056
    iget-boolean v0, p0, Lo/isItemChanged;->requestPostMessageChannel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Lo/addWrite;

    const/4 v2, 0x0

    .line 50059
    iget-object v3, p0, Lo/isItemChanged;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 50064
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const-string v2, "pairs"

    .line 50058
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50065
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "track_bb_new_user_landing_page_load"

    .line 50057
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 50062
    :cond_0
    iput-boolean v1, p0, Lo/isItemChanged;->requestPostMessageChannel:Z

    return-void
.end method

.method public static final synthetic asInterface(Lo/isItemChanged;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lo/isItemChanged;->onNavigationEvent()V

    return-void
.end method

.method public static final synthetic extraCallback(Lo/isItemChanged;)Lo/onActivityResult;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/isItemChanged;->asInterface:Lo/onActivityResult;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/isItemChanged;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/isItemChanged;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    return-void
.end method

.method private final extraCallback()Z
    .locals 9

    .line 579
    iget-object v0, p0, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/evictionCount;->onMessageChannelReady()J

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 26000
    iget-object v2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/RecyclerView$OnFlingListener;

    .line 25724
    invoke-virtual {v2}, Lo/RecyclerView$OnFlingListener;->asBinder()I

    move-result v2

    .line 582
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 26043
    new-instance v3, Lo/addWrite;

    const-string v4, "count_of_cards"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v3, 0x1

    .line 27000
    iget-object v4, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/RecyclerView$OnFlingListener;

    .line 27068
    iget-object v4, v4, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    check-cast v4, Landroidx/lifecycle/LiveData;

    .line 27320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 27321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v6

    .line 583
    :goto_0
    instance-of v4, v4, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 28043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v7, "upi_accounts_available"

    invoke-direct {v5, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    const/4 v3, 0x2

    .line 584
    iget-object v4, p0, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lo/evictionCount;->extraCallback()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    :goto_1
    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 29043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v7, "time_spent"

    invoke-direct {v5, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    const-string v3, "pairs"

    .line 581
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "track_bb_back"

    .line 580
    invoke-static {v0, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 587
    iget-boolean v0, p0, Lo/isItemChanged;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    .line 30000
    iget-object v0, p0, Lo/isItemChanged;->onRelationshipValidationResult:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x7

    .line 588
    invoke-static {v0, v6, v2, v2, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 589
    :cond_3
    iget-boolean v0, p0, Lo/isItemChanged;->onNavigationEvent:Z

    return v0
.end method

.method public static final synthetic getInterfaceDescriptor(Lo/isItemChanged;)Lo/isItemChanged$onPostMessage;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/isItemChanged;->warmup:Lo/isItemChanged$onPostMessage;

    return-object p0
.end method

.method public static final synthetic newSession(Lo/isItemChanged;)V
    .locals 1

    .line 50077
    new-instance v0, Lo/isItemChanged$INotificationSideChannel;

    invoke-direct {v0, p0}, Lo/isItemChanged$INotificationSideChannel;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/getServerTime;

    .line 50089
    invoke-direct {p0, v0}, Lo/isItemChanged;->ICustomTabsCallback(Lo/getServerTime;)V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/isItemChanged;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lo/isItemChanged;->extraCallback()Z

    move-result p0

    return p0
.end method

.method public static final synthetic onNavigationEvent(Lo/isItemChanged;)I
    .locals 0

    .line 46000
    iget-object p0, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/RecyclerView$OnFlingListener;

    .line 45724
    invoke-virtual {p0}, Lo/RecyclerView$OnFlingListener;->asBinder()I

    move-result p0

    return p0
.end method

.method private final onNavigationEvent()V
    .locals 11

    .line 696
    invoke-direct {p0}, Lo/isItemChanged;->onPostMessage()Z

    move-result v0

    .line 697
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130477

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130476

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_0
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130478

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 705
    iget v0, p0, Lo/isItemChanged;->asBinder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 706
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130474

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 708
    :cond_1
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130475

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    .line 711
    sget-object v0, Lo/RecyclerView$OnScrollListener;->onPostMessage:Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;

    .line 712
    new-instance v0, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 714
    new-instance v1, Lo/isItemChanged$cancel;

    invoke-direct {v1, p0}, Lo/isItemChanged$cancel;-><init>(Lo/isItemChanged;)V

    move-object v9, v1

    check-cast v9, Lo/onDisconnectSetValue;

    const/16 v10, 0x38

    move-object v2, v0

    .line 712
    invoke-direct/range {v2 .. v10}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    const-string/jumbo v1, "sheetData"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39069
    new-instance v1, Lo/RecyclerView$OnScrollListener;

    invoke-direct {v1}, Lo/RecyclerView$OnScrollListener;-><init>()V

    .line 39070
    invoke-static {v1, v0}, Lo/RecyclerView$OnScrollListener;->onMessageChannelReady(Lo/RecyclerView$OnScrollListener;Lo/RecyclerView$OnScrollListener$onMessageChannelReady;)V

    .line 718
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v2, "ErrorBottomSheet"

    invoke-virtual {v1, v0, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/isItemChanged;)Lo/createFullSpanItemFromStart;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/isItemChanged;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromStart;

    return-object p0
.end method

.method private final onPostMessage()Z
    .locals 3

    .line 685
    new-instance v0, Lo/requireArguments;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/requireArguments;-><init>(Landroid/content/Context;)V

    .line 38150
    iget-boolean v1, v0, Lo/requireArguments;->onMessageChannelReady:Z

    if-nez v1, :cond_1

    .line 38154
    iget-boolean v0, v0, Lo/requireArguments;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final synthetic onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;
    .locals 0

    .line 47000
    iget-object p0, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/RecyclerView$OnFlingListener;

    return-object p0
.end method

.method public static final synthetic onTransact(Lo/isItemChanged;)Lo/repositionToWrapContentIfNecessary;
    .locals 0

    .line 67
    iget-object p0, p0, Lo/isItemChanged;->ICustomTabsService:Lo/repositionToWrapContentIfNecessary;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 772
    invoke-direct {p0}, Lo/isItemChanged;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public final extraCallback(Lo/snapFromFling$extraCallback;)V
    .locals 9

    const-string v0, "pinData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32000
    iget-object v1, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecyclerView$OnFlingListener;

    .line 32439
    iput-object p1, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub:Lo/snapFromFling$extraCallback;

    .line 33156
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 681
    iget-object v1, p0, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34100
    iget-boolean v0, v1, Lo/calculateScrollDistance;->onPostMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lo/calculateScrollDistance;->ICustomTabsCallback:Lcom/cred/pay/repository/models/JuspaySessionToken;

    if-eqz v0, :cond_0

    .line 34101
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 35054
    iget-object v0, p1, Lo/snapFromFling$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "customerVpa"

    .line 34102
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36054
    iget-object v0, p1, Lo/snapFromFling$extraCallback;->onPostMessage:Ljava/lang/String;

    const-string v2, "card"

    .line 34103
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37054
    iget-object v0, p1, Lo/snapFromFling$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "expiry"

    .line 34104
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ACD"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UUID.randomUUID().toString()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v5, "-"

    const-string v6, ""

    .line 37075
    invoke-static {v2, v5, v6, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 34105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upiRequestId"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38054
    iget-object p1, p1, Lo/snapFromFling$extraCallback;->extraCallback:Ljava/lang/String;

    const-string v0, "accountReferenceId"

    .line 34106
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "udfParameters"

    const-string/jumbo v0, "{}"

    .line 34107
    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34108
    iget-object v2, v1, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    .line 34110
    iget-object v5, v1, Lo/calculateScrollDistance;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    const/4 v6, 0x0

    .line 34111
    new-instance v7, Lo/add$ICustomTabsCallback;

    const/4 p1, 0x2

    sget-object v0, Lo/calculateScrollDistance$onPostMessage;->ICustomTabsCallback:Lo/calculateScrollDistance$onPostMessage;

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-direct {v7, p1, v0}, Lo/add$ICustomTabsCallback;-><init>(ILo/onDisconnectSetValue;)V

    const/16 v8, 0x8

    const-string v3, "SET_MPIN"

    .line 34108
    invoke-static/range {v2 .. v8}, Lo/add;->onMessageChannelReady(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "TrackFragment"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lo/isItemChanged$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/isItemChanged$ICustomTabsCallback$Stub;-><init>(Lo/isItemChanged;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2000
    iget-object p1, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RecyclerView$OnFlingListener;

    .line 2114
    iget-object v0, p1, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    sget-object v2, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;

    invoke-virtual {v0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 2115
    iput-boolean v1, p1, Lo/RecyclerView$OnFlingListener;->asBinder:Z

    const/4 v0, 0x0

    .line 2116
    iput-object v0, p1, Lo/RecyclerView$OnFlingListener;->asInterface:Ljava/lang/String;

    .line 2117
    invoke-virtual {p1}, Lo/RecyclerView$OnFlingListener;->onPostMessage()V

    .line 91
    new-instance p1, Lo/createFullSpanItemFromStart;

    invoke-direct {p1}, Lo/createFullSpanItemFromStart;-><init>()V

    iput-object p1, p0, Lo/isItemChanged;->ICustomTabsCallback$Stub:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1, v1}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lo/isItemChanged;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v0, "show_toolbar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lo/isItemChanged;->onNavigationEvent:Z

    .line 95
    new-instance p1, Lo/evictionCount;

    invoke-direct {p1}, Lo/evictionCount;-><init>()V

    iput-object p1, p0, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00dc

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 392
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 393
    iget-object v0, p0, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v0, :cond_0

    .line 16215
    iget-object v0, v0, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    .line 17047
    sget-object v1, Lo/add;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    iget-object v0, v0, Lo/add;->onPostMessage:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-static {v1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 17048
    sput-object v0, Lo/add;->onMessageChannelReady:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    :cond_0
    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 50091
    iget-object v0, p0, Lo/isItemChanged;->IPostMessageService:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 809
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, v0}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/isItemChanged$asBinder;

    invoke-direct {v2, p0}, Lo/isItemChanged$asBinder;-><init>(Lo/isItemChanged;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x0

    .line 44045
    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/snapFromFling$extraCallback;)V
    .locals 2

    const-string/jumbo p3, "vpa"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "accountReferenceId"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31000
    iget-object p3, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/RecyclerView$OnFlingListener;

    .line 31053
    iget-boolean p3, p3, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub:Z

    if-eqz p3, :cond_0

    .line 660
    invoke-direct {p0}, Lo/isItemChanged;->onNavigationEvent()V

    return-void

    .line 662
    :cond_0
    new-instance p3, Lo/setSupportsChangeAnimations;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/isItemChanged;->updateVisuals:Lo/isItemChanged$extraCallback;

    check-cast v1, Lo/shouldBeKeptAsChild$onPostMessage;

    invoke-direct {p3, v0, v1}, Lo/setSupportsChangeAnimations;-><init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;)V

    .line 663
    new-instance v0, Lo/snapFromFling$onNavigationEvent;

    invoke-direct {v0, p1, p2}, Lo/snapFromFling$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lo/setSupportsChangeAnimations;->extraCallback(Lo/snapFromFling$onNavigationEvent;)V

    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/isItemChanged;->IPostMessageService:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/isItemChanged;->IPostMessageService:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/isItemChanged;->IPostMessageService:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/isItemChanged;->IPostMessageService:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent(Z)V
    .locals 38

    move-object/from16 v0, p0

    const-string v1, "listOverlay"

    const-string v2, "recyclerView"

    if-eqz p1, :cond_4

    .line 398
    iget-object v3, v0, Lo/isItemChanged;->ICustomTabsService:Lo/repositionToWrapContentIfNecessary;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v6, 0x4

    new-array v6, v6, [Lo/StaggeredGridLayoutManager;

    .line 17412
    new-instance v7, Lo/getViewAdapterPosition$extraCallback;

    .line 17413
    new-instance v8, Lcom/dreamplug/fabrik/ui/track/network/response/Card;

    .line 17414
    new-instance v15, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;

    .line 17419
    new-instance v10, Lcom/dreamplug/fabrik/ui/track/network/response/Background;

    .line 17420
    new-instance v9, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    const-string v11, "#F7E1E1"

    .line 17421
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 18019
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v14, "java.util.Collections.singletonList(element)"

    invoke-static {v11, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17422
    sget-object v17, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move-object/from16 v18, v11

    .line 17420
    invoke-direct/range {v16 .. v21}, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v11, "https://d2tecn3vwkchpd.cloudfront.net/fabrik/patterns/bb_banner_v1.png"

    .line 17419
    invoke-direct {v10, v9, v11}, Lcom/dreamplug/fabrik/ui/track/network/response/Background;-><init>(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;)V

    const-string v16, "bank_balance_landing"

    const-string v11, "know your bank balance. ignorance is not always bliss."

    const-string v12, "powered by"

    const-string v13, "https://d704ayip06922.cloudfront.net/prod-rewards-assets-data/upi.png"

    move-object v9, v15

    move-object/from16 v22, v14

    move-object/from16 v14, v16

    .line 17414
    invoke-direct/range {v9 .. v14}, Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/Background;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "null"

    .line 17413
    invoke-direct {v8, v9, v15}, Lcom/dreamplug/fabrik/ui/track/network/response/Card;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/track/network/response/CardTemplateProperties;)V

    .line 17412
    invoke-direct {v7, v8}, Lo/getViewAdapterPosition$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/Card;)V

    check-cast v7, Lo/StaggeredGridLayoutManager;

    aput-object v7, v6, v5

    .line 17429
    new-instance v7, Lo/RecyclerView$OnItemTouchListener$onMessageChannelReady;

    const-string v8, "1"

    invoke-direct {v7, v8}, Lo/RecyclerView$OnItemTouchListener$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    check-cast v7, Lo/StaggeredGridLayoutManager;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 17430
    new-instance v7, Lo/onFling$ICustomTabsCallback;

    .line 17431
    new-instance v11, Lcom/cred/pay/repository/models/VpaAccount;

    .line 17432
    new-instance v10, Lcom/cred/pay/repository/models/Account;

    const-string v24, ""

    const-string v25, "1"

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string/jumbo v32, "true"

    const-string v33, ""

    const-string v34, ""

    const-string v35, ""

    const-string v36, ""

    const-string v37, ""

    move-object/from16 v23, v10

    invoke-direct/range {v23 .. v37}, Lcom/cred/pay/repository/models/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ""

    .line 17431
    invoke-direct {v11, v10, v12}, Lcom/cred/pay/repository/models/VpaAccount;-><init>(Lcom/cred/pay/repository/models/Account;Ljava/lang/String;)V

    .line 17450
    new-instance v12, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;

    .line 17452
    new-instance v10, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    .line 17453
    new-instance v13, Lcom/dreamplug/fabrik/ui/track/network/response/Body;

    const/4 v15, 0x2

    new-array v14, v15, [Lcom/dreamplug/fabrik/ui/track/network/response/Section;

    .line 17455
    new-instance v15, Lcom/dreamplug/fabrik/ui/track/network/response/Section;

    .line 17456
    new-instance v9, Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;

    const-string v4, "IFSC"

    const-string v5, "SBI0000000"

    invoke-direct {v9, v4, v5}, Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17460
    new-instance v4, Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;

    const-string/jumbo v5, "savings"

    move-object/from16 v19, v1

    const-string/jumbo v1, "type"

    invoke-direct {v4, v1, v5}, Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17455
    invoke-direct {v15, v9, v4}, Lcom/dreamplug/fabrik/ui/track/network/response/Section;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;)V

    const/4 v4, 0x0

    aput-object v15, v14, v4

    .line 17465
    new-instance v4, Lcom/dreamplug/fabrik/ui/track/network/response/Section;

    .line 17466
    new-instance v9, Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;

    invoke-direct {v9, v1, v5}, Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 17465
    invoke-direct {v4, v9, v1}, Lcom/dreamplug/fabrik/ui/track/network/response/Section;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;Lcom/dreamplug/fabrik/ui/track/network/response/SectionData;)V

    const/4 v1, 0x1

    aput-object v4, v14, v1

    const-string v1, "elements"

    .line 17454
    invoke-static {v14, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$asList"

    .line 18076
    invoke-static {v14, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19013
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v9, "ArraysUtilJVM.asList(this)"

    .line 18129
    invoke-static {v5, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17453
    invoke-direct {v13, v5}, Lcom/dreamplug/fabrik/ui/track/network/response/Body;-><init>(Ljava/util/List;)V

    .line 17474
    new-instance v5, Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    .line 17475
    new-instance v14, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    .line 17477
    new-instance v15, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v24, "1"

    move-object/from16 v23, v15

    invoke-direct/range {v23 .. v28}, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20019
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v20, v2

    move-object/from16 v2, v22

    invoke-static {v15, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v24, 0x0

    const-string/jumbo v26, "settings"

    move-object/from16 v23, v14

    move-object/from16 v25, v15

    .line 17475
    invoke-direct/range {v23 .. v28}, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17474
    invoke-direct {v5, v14}, Lcom/dreamplug/fabrik/ui/track/network/response/Footer;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/Cta;)V

    .line 17483
    new-instance v2, Lcom/dreamplug/fabrik/ui/track/network/response/Header;

    const-string v14, "ICICI bank"

    const-string v15, "a/c xxxxxxx"

    const-string v0, "https://d1sofudel0ufia.cloudfront.net/banks/ic_bank_508534.png"

    invoke-direct {v2, v0, v15, v14}, Lcom/dreamplug/fabrik/ui/track/network/response/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17452
    invoke-direct {v10, v13, v5, v2}, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/Body;Lcom/dreamplug/fabrik/ui/track/network/response/Footer;Lcom/dreamplug/fabrik/ui/track/network/response/Header;)V

    const/4 v0, 0x0

    .line 17450
    invoke-direct {v12, v0, v10}, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x38

    move-object v10, v7

    const/4 v2, 0x2

    .line 17430
    invoke-direct/range {v10 .. v16}, Lo/onFling$ICustomTabsCallback;-><init>(Lcom/cred/pay/repository/models/VpaAccount;Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;ZLjava/lang/CharSequence;ZI)V

    check-cast v7, Lo/StaggeredGridLayoutManager;

    aput-object v7, v6, v2

    const/4 v2, 0x3

    .line 17491
    new-instance v5, Lo/RecyclerView$RecycledViewPool$onNavigationEvent;

    invoke-direct {v5, v8}, Lo/RecyclerView$RecycledViewPool$onNavigationEvent;-><init>(Ljava/lang/String;)V

    check-cast v5, Lo/StaggeredGridLayoutManager;

    aput-object v5, v6, v2

    .line 17411
    invoke-static {v6, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20076
    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21013
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 20129
    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    .line 398
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23000
    iget-object v2, v3, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/checkSpanForGap;

    .line 22038
    invoke-virtual {v2, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const/4 v0, 0x0

    :goto_0
    move-object/from16 v1, p0

    .line 399
    iget-object v2, v1, Lo/isItemChanged;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearSmoothScroller;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 400
    :cond_1
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v3, v20

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v4, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v4, :cond_3

    iget-object v0, v1, Lo/isItemChanged;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearSmoothScroller;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 401
    :cond_3
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v0}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$visible"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 23009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->listOverlay:I

    invoke-virtual {v1, v0}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v4, v19

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->listOverlay:I

    invoke-virtual {v1, v0}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/isItemChanged$notify;->extraCallback:Lo/isItemChanged$notify;

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v0, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    :cond_4
    move-object v4, v1

    move-object v3, v2

    move-object v1, v0

    .line 405
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v0}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$gone"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 24017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->listOverlay:I

    invoke-virtual {v1, v0}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25017
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 765
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 766
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 43212
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    xor-int/lit8 v0, v2, 0x1

    .line 767
    iput-boolean v0, p0, Lo/isItemChanged;->mayLaunchUrl:Z

    .line 768
    iget-object v0, p0, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/evictionCount;->onMessageChannelReady()J

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 9

    .line 728
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 729
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lo/getViewLayoutPosition;

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/getViewLayoutPosition;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 39107
    iput-object v1, v0, Lo/getViewLayoutPosition;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    .line 730
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lo/isItemChanged;->onNavigationEvent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 734
    iget-object v0, p0, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/isItemChanged;->mayLaunchUrl:Z

    if-nez v0, :cond_2

    .line 735
    iput-boolean v3, p0, Lo/isItemChanged;->mayLaunchUrl:Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 40000
    :goto_1
    iget-object v4, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/RecyclerView$OnFlingListener;

    .line 40068
    iget-object v4, v4, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    check-cast v4, Landroidx/lifecycle/LiveData;

    .line 40320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 40321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v1

    .line 738
    :goto_2
    instance-of v4, v4, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;

    if-eqz v4, :cond_5

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/setMinimumHeight;

    const-string v5, "lottie"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    .line 739
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p0, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/setMinimumHeight;

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v5

    const-string/jumbo v6, "viewLifecycleOwner"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v5

    const-string/jumbo v6, "viewLifecycleOwner.lifecycle"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x96

    new-instance v8, Lo/isItemChanged$asInterface;

    invoke-direct {v8, p0}, Lo/isItemChanged$asInterface;-><init>(Lo/isItemChanged;)V

    check-cast v8, Lo/getServerTime;

    invoke-static {v4, v5, v6, v7, v8}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 748
    :cond_5
    :goto_3
    iget-object v4, p0, Lo/isItemChanged;->getInterfaceDescriptor:Ljava/lang/String;

    sget-object v5, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onNavigationEvent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    if-eqz v2, :cond_9

    .line 41000
    iget-object v0, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecyclerView$OnFlingListener;

    .line 41068
    iget-object v0, v0, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 41320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 41321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_7

    move-object v1, v0

    .line 752
    :cond_7
    nop

    instance-of v0, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;

    if-eqz v0, :cond_8

    .line 42000
    iget-object v0, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecyclerView$OnFlingListener;

    .line 42677
    iget-object v1, v0, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    .line 42678
    invoke-virtual {v0}, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult()V

    .line 754
    :cond_8
    iget-object v0, p0, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v0, :cond_9

    .line 43064
    invoke-virtual {v0, v3}, Lo/calculateScrollDistance;->extraCallback(I)V

    .line 757
    :cond_9
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/isItemChanged;->getInterfaceDescriptor:Ljava/lang/String;

    .line 758
    iput-boolean v3, p0, Lo/isItemChanged;->mayLaunchUrl:Z

    .line 759
    iget-object v0, p0, Lo/isItemChanged;->onPostMessage:Lo/evictionCount;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo/evictionCount;->onPostMessage()V

    :cond_a
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    sget-object p1, Lo/setChangeDuration;->asInterface:Lo/setChangeDuration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/isItemChanged$ICustomTabsService;

    invoke-direct {v0, p0}, Lo/isItemChanged$ICustomTabsService;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 113
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->topGroup:I

    invoke-virtual {p0, p1}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string/jumbo p2, "topGroup"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-boolean p2, p0, Lo/isItemChanged;->onNavigationEvent:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 815
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    new-instance p1, Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/isItemChanged;->onMessageChannelReady:Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 116
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p1, p2, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 117
    new-instance p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p2}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 118
    new-instance v3, Lo/RecyclerView$OnChildAttachStateChangeListener;

    iget-object v4, p0, Lo/isItemChanged;->newSession:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v3, v4}, Lo/RecyclerView$OnChildAttachStateChangeListener;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v3, Lo/checkForGaps;

    const-string v4, "adapter"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3036
    check-cast p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3043
    new-instance v3, Lo/repositionToWrapContentIfNecessary;

    iget-object p2, p2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v3, p2, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 119
    iput-object v3, p0, Lo/isItemChanged;->ICustomTabsService:Lo/repositionToWrapContentIfNecessary;

    .line 120
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->rvContainer:I

    invoke-virtual {p0, p2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const-string/jumbo v3, "rvContainer"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v3, Lo/isItemChanged$IPostMessageService$Stub;

    invoke-direct {v3, p0}, Lo/isItemChanged$IPostMessageService$Stub;-><init>(Lo/isItemChanged;)V

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    new-instance v9, Lo/setGapStrategy;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    new-instance v6, Lo/getGapStrategy;

    invoke-direct {v6, v1, v1, v1, v1}, Lo/getGapStrategy;-><init>(IIII)V

    .line 135
    new-instance v7, Lo/getGapStrategy;

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v8, "Resources.getSystem()"

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v8, 0x41f00000    # 30.0f

    .line 4010
    invoke-static {v2, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 135
    invoke-direct {v7, v2, v1, v1, v1}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v8, 0x2

    move-object v3, v9

    .line 132
    invoke-direct/range {v3 .. v8}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 131
    invoke-virtual {p2, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 138
    iget-object v2, p0, Lo/isItemChanged;->ICustomTabsService:Lo/repositionToWrapContentIfNecessary;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    new-instance v2, Lo/isItemChanged$onTransact;

    invoke-direct {v2, p0, p1}, Lo/isItemChanged$onTransact;-><init>(Lo/isItemChanged;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 155
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$linkFabWithScroll"

    invoke-static {p0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4053
    new-instance v2, Lo/onItemRangeMoved;

    invoke-direct {v2, p0, p2}, Lo/onItemRangeMoved;-><init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 156
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->insetBottom:I

    invoke-virtual {p0, p2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onLowMemory;

    const-string v2, "insetBottom"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    iget-boolean v2, p0, Lo/isItemChanged;->onNavigationEvent:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 817
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-boolean p2, p0, Lo/isItemChanged;->onNavigationEvent:Z

    if-eqz p2, :cond_2

    .line 158
    sget-object p2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$ICustomTabsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lo/isItemChanged$ICustomTabsService$Stub$Proxy;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 161
    :cond_2
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {p0, p2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/offsetPosition;

    const-string v0, "back"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/isItemChanged$validateRelationship;

    invoke-direct {v0, p0}, Lo/isItemChanged$validateRelationship;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 164
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {p0, p2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onDestroyView;

    const-string v0, "loader"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    sget-object v0, Lo/isItemChanged$IPostMessageService;->onPostMessage:Lo/isItemChanged$IPostMessageService;

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 5000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 5084
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->postMessage:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$ICustomTabsService$Stub;

    invoke-direct {v1, p0}, Lo/isItemChanged$ICustomTabsService$Stub;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 6000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 6076
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$IPostMessageService$Stub$Proxy;

    invoke-direct {v1, p0}, Lo/isItemChanged$IPostMessageService$Stub$Proxy;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 7000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 7080
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->getInterfaceDescriptor:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$cancelAll;

    invoke-direct {v1, p0}, Lo/isItemChanged$cancelAll;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 8000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 8072
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->warmup:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$warmup;

    invoke-direct {v1, p0}, Lo/isItemChanged$warmup;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 9000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 9096
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->extraCommand:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lo/isItemChanged$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 10000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 10068
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$getInterfaceDescriptor;

    invoke-direct {v1, p0}, Lo/isItemChanged$getInterfaceDescriptor;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 11000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 11088
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->updateVisuals:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$newSession;

    invoke-direct {v1, p0}, Lo/isItemChanged$newSession;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 12000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 12092
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->requestPostMessageChannel:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$updateVisuals;

    invoke-direct {v1, p0}, Lo/isItemChanged$updateVisuals;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 13000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 13100
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->mayLaunchUrl:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$mayLaunchUrl;

    invoke-direct {v1, p0}, Lo/isItemChanged$mayLaunchUrl;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 14000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 14104
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->IPostMessageService:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$requestPostMessageChannel;

    invoke-direct {v1, p0}, Lo/isItemChanged$requestPostMessageChannel;-><init>(Lo/isItemChanged;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 15000
    iget-object p2, p0, Lo/isItemChanged;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/RecyclerView$OnFlingListener;

    .line 15109
    iget-object p2, p2, Lo/RecyclerView$OnFlingListener;->validateRelationship:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    new-instance v1, Lo/isItemChanged$extraCommand;

    invoke-direct {v1, p0, p1}, Lo/isItemChanged$extraCommand;-><init>(Lo/isItemChanged;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 382
    iget-boolean p1, p0, Lo/isItemChanged;->onNavigationEvent:Z

    if-nez p1, :cond_3

    .line 383
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 16000
    sget-object p1, Lo/setSplitTrack;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object p2

    new-instance v0, Lo/isItemChanged$postMessage;

    invoke-direct {v0, p0}, Lo/isItemChanged$postMessage;-><init>(Lo/isItemChanged;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_3
    return-void
.end method
