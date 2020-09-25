.class public final Lo/scrollIfNecessary;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u00192\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/BankChargesDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "chargesAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$BankGeneralCharges;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$BankGeneralCharges;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "getTheme",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
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
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private extraCallback:Lo/repositionToWrapContentIfNecessary;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 31
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    .line 34
    new-instance v0, Lo/scrollIfNecessary$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/scrollIfNecessary$onMessageChannelReady;-><init>(Lo/scrollIfNecessary;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 34
    iput-object v1, p0, Lo/scrollIfNecessary;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method private ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/scrollIfNecessary;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/scrollIfNecessary;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/scrollIfNecessary;->ICustomTabsCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/scrollIfNecessary;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/createAbtInstance;

    .line 49
    new-instance v0, Lo/scrollIfNecessary$extraCallback;

    invoke-direct {v0, p1}, Lo/scrollIfNecessary$extraCallback;-><init>(Lo/createAbtInstance;)V

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 54
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final asBinder()I
    .locals 1

    const v0, 0x7f140105

    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "BankChargesDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 44
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const v0, 0x7f060031

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const p3, 0x7f0e01bd

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 13000
    iget-object v0, p0, Lo/scrollIfNecessary;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 66
    new-instance p2, Lo/computeVerticalScrollRange;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lo/computeVerticalScrollRange;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string v1, "adapter"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p2, Lo/performGetLayoutInflater;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Lo/performGetLayoutInflater;-><init>(B)V

    check-cast p2, Lo/checkForGaps;

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {p2, p1, v2}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 68
    iput-object p2, p0, Lo/scrollIfNecessary;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    .line 69
    sget-object p1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object p2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 69
    :goto_0
    check-cast p1, Landroid/view/WindowInsets;

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 71
    :goto_1
    new-instance p1, Lo/onCreateView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const-string v4, "bottom height"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 72
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->bankChargesList:I

    invoke-direct {p0, p2}, Lo/scrollIfNecessary;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iget-object v1, p0, Lo/scrollIfNecessary;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    const-string v2, "chargesAdapter"

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-direct {p0, p2}, Lo/scrollIfNecessary;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "title"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v1, p0, Lo/scrollIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$ICustomTabsCallback$Stub;

    if-eqz v1, :cond_3

    .line 3184
    iget-object v1, v1, Lo/onDetach$ICustomTabsCallback$Stub;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    if-eqz v1, :cond_3

    .line 3212
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 75
    :goto_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4000
    iget-object v1, p0, Lo/scrollIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$ICustomTabsCallback$Stub;

    if-eqz v1, :cond_5

    .line 4184
    iget-object v1, v1, Lo/onDetach$ICustomTabsCallback$Stub;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    if-eqz v1, :cond_5

    .line 4208
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;->extraCallback:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 78
    check-cast v1, Ljava/lang/Iterable;

    .line 90
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownDetails;

    .line 4221
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownDetails;->extraCallback:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 79
    check-cast v3, Ljava/lang/Iterable;

    .line 91
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;

    .line 80
    new-instance v12, Lo/computeHorizontalScrollOffset;

    .line 5194
    iget-object v5, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onMessageChannelReady:Ljava/lang/String;

    .line 80
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    .line 5196
    iget-object v5, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->ICustomTabsCallback:Ljava/lang/String;

    .line 80
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    .line 5197
    iget-object v5, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onNavigationEvent:Ljava/lang/String;

    .line 80
    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    .line 6195
    iget-object v9, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onPostMessage:Ljava/lang/String;

    .line 6199
    iget-object v10, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->extraCallback:Ljava/lang/String;

    .line 6201
    iget-object v11, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    move-object v5, v12

    .line 80
    invoke-direct/range {v5 .. v11}, Lo/computeHorizontalScrollOffset;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;)V

    invoke-virtual {p2, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    :cond_5
    new-instance v1, Lo/setUsingSpansToEstimateScrollbarDimensions;

    .line 7000
    iget-object v3, p0, Lo/scrollIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/onDetach$ICustomTabsCallback$Stub;

    if-eqz v3, :cond_6

    .line 7184
    iget-object v3, v3, Lo/onDetach$ICustomTabsCallback$Stub;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    if-eqz v3, :cond_6

    .line 7214
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;->onPostMessage:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v3, v0

    .line 8000
    :goto_4
    iget-object v4, p0, Lo/scrollIfNecessary;->onPostMessage:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/onDetach$ICustomTabsCallback$Stub;

    if-eqz v4, :cond_7

    .line 8184
    iget-object v4, v4, Lo/onDetach$ICustomTabsCallback$Stub;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    if-eqz v4, :cond_7

    .line 8210
    iget-object v0, v4, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;->onMessageChannelReady:Ljava/lang/String;

    .line 83
    :cond_7
    invoke-direct {v1, v3, v0}, Lo/setUsingSpansToEstimateScrollbarDimensions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lo/scrollIfNecessary;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    if-nez p1, :cond_8

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    check-cast p2, Ljava/util/List;

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 9038
    invoke-virtual {p1, p2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method
