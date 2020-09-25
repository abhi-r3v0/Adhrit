.class public final Lo/checkHorizontalSwipe;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/checkHorizontalSwipe$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J\u001a\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/SeeCalculationDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "amountBreakupAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "dp24",
        "",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SeeCalculationDialogExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SeeCalculationDialogExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "dismiss",
        "",
        "onBackPressed",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onViewCreated",
        "view",
        "realDismiss",
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
.field public static final onPostMessage:Lo/checkHorizontalSwipe$onNavigationEvent;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private asBinder:Ljava/util/HashMap;

.field private extraCallback:I

.field private onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/repositionToWrapContentIfNecessary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/checkHorizontalSwipe$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/checkHorizontalSwipe$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/checkHorizontalSwipe;->onPostMessage:Lo/checkHorizontalSwipe$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 12010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 36
    iput v0, p0, Lo/checkHorizontalSwipe;->extraCallback:I

    .line 38
    new-instance v0, Lo/checkHorizontalSwipe$extraCallback;

    invoke-direct {v0, p0}, Lo/checkHorizontalSwipe$extraCallback;-><init>(Lo/checkHorizontalSwipe;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 38
    iput-object v1, p0, Lo/checkHorizontalSwipe;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/checkHorizontalSwipe;)V
    .locals 0

    .line 12130
    invoke-super {p0}, Lo/updateRemainingSpans;->m_()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/checkHorizontalSwipe;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 32
    iget-object p0, p0, Lo/checkHorizontalSwipe;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 134
    iget-object v0, p0, Lo/checkHorizontalSwipe;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "bottomSheetBehavior"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e027a

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 45
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 46
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 47
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/checkHorizontalSwipe;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_0

    .line 48
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 49
    iget-object v0, p0, Lo/checkHorizontalSwipe;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1838
    :cond_1
    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 50
    iget-object v0, p0, Lo/checkHorizontalSwipe;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const-string v0, "backgroundView"

    .line 53
    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/checkHorizontalSwipe$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/checkHorizontalSwipe$ICustomTabsCallback;-><init>(Lo/checkHorizontalSwipe;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 57
    new-instance v0, Lo/checkHorizontalSwipe$onPostMessage;

    invoke-direct {v0, p0, p3}, Lo/checkHorizontalSwipe$onPostMessage;-><init>(Lo/checkHorizontalSwipe;Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 13000
    iget-object v0, p0, Lo/checkHorizontalSwipe;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/checkHorizontalSwipe;->asBinder:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/checkHorizontalSwipe;->asBinder:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/checkHorizontalSwipe;->asBinder:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/checkHorizontalSwipe;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/checkHorizontalSwipe;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 120
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 121
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x106000d

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    const-string/jumbo v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-super/range {p0 .. p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    new-instance v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 86
    new-instance v2, Lo/performGetLayoutInflater;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/performGetLayoutInflater;-><init>(B)V

    check-cast v2, Lo/checkForGaps;

    const-string v4, "adapter"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v5, v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v2, Lo/computeVerticalScrollRange;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lo/computeVerticalScrollRange;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v2, Lo/checkForGaps;

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3036
    check-cast v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3043
    new-instance v2, Lo/repositionToWrapContentIfNecessary;

    iget-object v1, v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v2, v1, v3}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 88
    iput-object v2, v0, Lo/checkHorizontalSwipe;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 89
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->list:I

    invoke-virtual {v0, v1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    new-instance v2, Lo/setGapStrategy;

    .line 93
    new-instance v7, Lo/getGapStrategy;

    invoke-direct {v7, v3, v3, v3, v3}, Lo/getGapStrategy;-><init>(IIII)V

    .line 94
    new-instance v8, Lo/getGapStrategy;

    iget v4, v0, Lo/checkHorizontalSwipe;->extraCallback:I

    invoke-direct {v8, v3, v4, v3, v3}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x2

    move-object v4, v2

    .line 91
    invoke-direct/range {v4 .. v9}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 90
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 97
    iget-object v2, v0, Lo/checkHorizontalSwipe;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    const-string v3, "amountBreakupAdapter"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4000
    iget-object v1, v0, Lo/checkHorizontalSwipe;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$INotificationSideChannel;

    if-eqz v1, :cond_5

    .line 4144
    iget-object v1, v1, Lo/onDetach$INotificationSideChannel;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;

    if-eqz v1, :cond_5

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 5080
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;->asInterface:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 102
    check-cast v4, Ljava/lang/Iterable;

    .line 148
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;

    .line 103
    new-instance v13, Lo/computeHorizontalScrollOffset;

    .line 5194
    iget-object v6, v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onMessageChannelReady:Ljava/lang/String;

    .line 103
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    .line 5196
    iget-object v6, v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->ICustomTabsCallback:Ljava/lang/String;

    .line 103
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    .line 5197
    iget-object v6, v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onNavigationEvent:Ljava/lang/String;

    .line 103
    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    .line 6195
    iget-object v10, v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->onPostMessage:Ljava/lang/String;

    .line 6199
    iget-object v11, v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Body;->extraCallback:Ljava/lang/String;

    const/16 v12, 0x20

    move-object v6, v13

    .line 103
    invoke-direct/range {v6 .. v12}, Lo/computeHorizontalScrollOffset;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_1
    new-instance v4, Lo/onCreateView;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "Resources.getSystem()"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, 0x1

    .line 7010
    invoke-static {v8, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 8010
    invoke-static {v8, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    const/16 v18, 0x0

    const/16 v19, 0x8

    const-string/jumbo v15, "top"

    move-object v14, v4

    move/from16 v16, v6

    move/from16 v17, v5

    .line 105
    invoke-direct/range {v14 .. v19}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8078
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$BottomBanner;

    if-eqz v4, :cond_2

    .line 107
    new-instance v5, Lo/isUsingSpansToEstimateScrollbarDimensions;

    .line 8086
    iget-object v6, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$BottomBanner;->onNavigationEvent:Ljava/lang/String;

    .line 8087
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$BottomBanner;->onPostMessage:Ljava/lang/String;

    .line 107
    invoke-direct {v5, v6, v4}, Lo/isUsingSpansToEstimateScrollbarDimensions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9076
    :cond_2
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;->asBinder:Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;

    if-eqz v4, :cond_3

    .line 110
    new-instance v5, Lo/hitTest;

    .line 10010
    iget-object v6, v4, Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;->ICustomTabsCallback:Ljava/lang/String;

    .line 10011
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;->onNavigationEvent:Ljava/lang/String;

    .line 110
    invoke-direct {v5, v6, v4}, Lo/hitTest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    iget-object v4, v0, Lo/checkHorizontalSwipe;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez v4, :cond_4

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11000
    iget-object v3, v4, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/checkSpanForGap;

    .line 10038
    invoke-virtual {v3, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 113
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loanDetailsTitle:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v3, "loanDetailsTitle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11070
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ChildCard;->onNavigationEvent:Ljava/lang/String;

    .line 113
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
