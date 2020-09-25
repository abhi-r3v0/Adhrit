.class public final Lo/getDiffCallback;
.super Lo/getAllExperimentsInAnalytics;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDiffCallback$onPostMessage;,
        Lo/getDiffCallback$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u001a\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"2\u0016\u0008\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u00010%0$J\u0008\u0010&\u001a\u00020\u001dH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkPitchDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "()V",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "response",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "shouldTriggerEmailLinking",
        "",
        "Ljava/lang/Boolean;",
        "getTheme",
        "",
        "onBackPressed",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onStart",
        "",
        "onViewCreated",
        "view",
        "tagEvent",
        "event",
        "",
        "attributes",
        "",
        "",
        "triggerEmailLinkingOrSuccess",
        "Companion",
        "Data",
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
.field public static final ICustomTabsCallback:Lo/getDiffCallback$extraCallback;


# instance fields
.field private extraCallback:Ljava/util/HashMap;

.field final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

.field private onPostMessage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getDiffCallback$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getDiffCallback$extraCallback;-><init>(B)V

    sput-object v0, Lo/getDiffCallback;->ICustomTabsCallback:Lo/getDiffCallback$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 31
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    iput-object v1, p0, Lo/getDiffCallback;->onMessageChannelReady:Lo/isSameListener;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/getDiffCallback;->onPostMessage:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getDiffCallback;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/getDiffCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    return-object p0
.end method

.method private onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getDiffCallback;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getDiffCallback;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getDiffCallback;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getDiffCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static final synthetic onMessageChannelReady(Lo/getDiffCallback;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/getDiffCallback;->onPostMessage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/getDiffCallback;)V
    .locals 5

    .line 5116
    iget-object v0, p0, Lo/getDiffCallback;->onPostMessage:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 6000
    iget-object v0, p0, Lo/getDiffCallback;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 5117
    new-instance v2, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;

    iget-object v3, p0, Lo/getDiffCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object p0, p0, Lo/getDiffCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :cond_2
    :goto_1
    const-string p0, "card_link_pitch"

    invoke-direct {v2, v3, v1, p0}, Lo/registerOnLoadCanceledListener$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6401
    new-instance p0, Lo/onGetChildDrawingOrder$INotificationSideChannel;

    invoke-direct {p0, v2}, Lo/onGetChildDrawingOrder$INotificationSideChannel;-><init>(Lo/registerOnLoadCanceledListener$ICustomTabsCallback;)V

    check-cast p0, Lo/getRemoveDuration;

    invoke-virtual {v0, p0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 5120
    :cond_3
    iget-object v0, p0, Lo/getDiffCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7000
    iget-object p0, p0, Lo/getDiffCallback;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 5121
    new-instance v2, Lo/cancelLoad$onMessageChannelReady;

    .line 5122
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 5125
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    const-string v0, "link_card"

    .line 5121
    invoke-direct {v2, v3, v0, v4, v1}, Lo/cancelLoad$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "data"

    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7405
    new-instance v0, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0, v2}, Lo/onGetChildDrawingOrder$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/cancelLoad$onMessageChannelReady;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p0, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 86
    new-instance v0, Lo/getDiffCallback$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/getDiffCallback$onMessageChannelReady;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 95
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 84
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()I
    .locals 1

    const v0, 0x7f140105

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e01d1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 8000
    iget-object v0, p0, Lo/getDiffCallback;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 99
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onStart()V

    .line 100
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    new-instance v1, Lo/getDiffCallback$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/getDiffCallback$ICustomTabsCallback;-><init>(Lo/getDiffCallback;)V

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "SOURCE"

    const-string v1, "NA"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "show_email_linking"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lo/getDiffCallback;->onPostMessage:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "card_link_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p2

    :goto_2
    invoke-static {v0}, Lo/getMaxName;->extraCallback(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    iput-object v0, p0, Lo/getDiffCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getLinkingData()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, p2

    :goto_3
    if-nez v0, :cond_4

    .line 46
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    :cond_4
    const-string v0, "link_card_init_screen_load"

    const/4 v2, 0x1

    new-array v3, v2, [Lo/addWrite;

    .line 1043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    const-string v4, "pairs"

    .line 49
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "event"

    .line 49
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "attributes"

    invoke-static {v4, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    invoke-static {v0, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 53
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 54
    new-instance v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v2}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 55
    new-instance v3, Lo/onRemoved;

    invoke-direct {v3}, Lo/onRemoved;-><init>()V

    check-cast v3, Lo/checkForGaps;

    const-string v4, "adapter"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance v3, Lo/repositionToWrapContentIfNecessary;

    iget-object v2, v2, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v3, v2, v1}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 58
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->featureList:I

    invoke-direct {p0, v1}, Lo/getDiffCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    move-object v2, v3

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object v0, p0, Lo/getDiffCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;->getLinkingData()Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;

    move-result-object p2

    :cond_5
    if-nez p2, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/control/helper/LinkingData;->getFeaturePitch()Ljava/util/List;

    move-result-object p2

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v3, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, p2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 66
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->skipButton:I

    invoke-direct {p0, p2}, Lo/getDiffCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string/jumbo v0, "skipButton"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/getDiffCallback$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/getDiffCallback$onNavigationEvent;-><init>(Lo/getDiffCallback;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 74
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-direct {p0, p2}, Lo/getDiffCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v0, "ctaButton"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/getDiffCallback$onRelationshipValidationResult;

    invoke-direct {v0, p0, p1}, Lo/getDiffCallback$onRelationshipValidationResult;-><init>(Lo/getDiffCallback;Ljava/lang/String;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
