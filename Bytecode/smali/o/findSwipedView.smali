.class public final Lo/findSwipedView;
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u00192\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/LoanPaymentConfirmationDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashPayExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashPayExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "payAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
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
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

.field final onNavigationEvent:Lo/isSameListener;

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 30
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 30
    iput-object v2, p0, Lo/findSwipedView;->onNavigationEvent:Lo/isSameListener;

    .line 34
    new-instance v0, Lo/findSwipedView$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/findSwipedView$onMessageChannelReady;-><init>(Lo/findSwipedView;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 34
    iput-object v1, p0, Lo/findSwipedView;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method private onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findSwipedView;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findSwipedView;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findSwipedView;->onPostMessage:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/findSwipedView;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static final synthetic onNavigationEvent(Lo/findSwipedView;)Lo/onDetach$AudioAttributesCompatParcelizer;
    .locals 0

    .line 14000
    iget-object p0, p0, Lo/findSwipedView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$AudioAttributesCompatParcelizer;

    return-object p0
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
    new-instance v0, Lo/findSwipedView$extraCallback;

    invoke-direct {v0, p1}, Lo/findSwipedView$extraCallback;-><init>(Lo/createAbtInstance;)V

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

    const-string v2, "LoanPaymentConfirmationDialog"

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
    const p3, 0x7f0e022f

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 15000
    iget-object v0, p0, Lo/findSwipedView;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 66
    new-instance p2, Lo/invalidateSpanGroupIndexCache;

    invoke-direct {p2}, Lo/invalidateSpanGroupIndexCache;-><init>()V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v0, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 67
    iput-object p2, p0, Lo/findSwipedView;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    .line 69
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->tvAmountTitle:I

    invoke-direct {p0, p1}, Lo/findSwipedView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "tvAmountTitle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object p2, p0, Lo/findSwipedView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onDetach$AudioAttributesCompatParcelizer;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2165
    iget-object p2, p2, Lo/onDetach$AudioAttributesCompatParcelizer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    if-eqz p2, :cond_0

    .line 3078
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Header;

    if-eqz p2, :cond_0

    .line 3141
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/Header;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_0

    .line 4000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 69
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->tvAmount:I

    invoke-direct {p0, p1}, Lo/findSwipedView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "tvAmount"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object p2, p0, Lo/findSwipedView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onDetach$AudioAttributesCompatParcelizer;

    if-eqz p2, :cond_1

    .line 5165
    iget-object p2, p2, Lo/onDetach$AudioAttributesCompatParcelizer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    if-eqz p2, :cond_1

    .line 6078
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/Header;

    if-eqz p2, :cond_1

    .line 6142
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/Header;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_1

    .line 7000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    .line 70
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->list:I

    invoke-direct {p0, p1}, Lo/findSwipedView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    new-instance p2, Lo/setGapStrategy;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v4, Lo/getGapStrategy;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "Resources.getSystem()"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v5, 0x1

    const/high16 v6, 0x41c00000    # 24.0f

    .line 7010
    invoke-static {v5, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 76
    invoke-direct {v4, v0, v1, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    .line 77
    new-instance v5, Lo/getGapStrategy;

    invoke-direct {v5, v0, v0, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v6, 0x2

    move-object v1, p2

    .line 74
    invoke-direct/range {v1 .. v6}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 73
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 80
    iget-object p2, p0, Lo/findSwipedView;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    const-string v0, "payAdapter"

    if-nez p2, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8000
    iget-object p2, p0, Lo/findSwipedView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onDetach$AudioAttributesCompatParcelizer;

    if-eqz p2, :cond_3

    .line 8165
    iget-object p2, p2, Lo/onDetach$AudioAttributesCompatParcelizer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;

    if-eqz p2, :cond_3

    .line 9077
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Details;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Body;

    if-eqz p2, :cond_3

    .line 9085
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Body;->onMessageChannelReady:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 84
    check-cast p2, Ljava/lang/Iterable;

    .line 102
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummary$Info;

    .line 85
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_3
    iget-object p2, p0, Lo/findSwipedView;->onMessageChannelReady:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_4

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Ljava/util/List;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 10038
    invoke-virtual {p2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 90
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-direct {p0, p1}, Lo/findSwipedView;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/findSwipedView$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/findSwipedView$onNavigationEvent;-><init>(Lo/findSwipedView;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_5
    return-void
.end method
