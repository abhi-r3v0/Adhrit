.class public final Lo/startDrag;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/startDrag$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0012\u0010\u0016\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u001f\u001a\u00020\u0014H\u0016J\u001a\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u001a2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\"\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/RepaymentSummaryDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "amountBreakupAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RepaymentSummaryDialogExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RepaymentSummaryDialogExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "dismiss",
        "",
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
.field public static final onNavigationEvent:Lo/startDrag$onPostMessage;


# instance fields
.field private ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

.field private extraCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/isSameListener;

.field private final onPostMessage:Lo/isSameListener;

.field private onTransact:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/startDrag$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/startDrag$onPostMessage;-><init>(B)V

    sput-object v0, Lo/startDrag;->onNavigationEvent:Lo/startDrag$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    const-string v0, "$this$lazyNavigator"

    .line 40
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17072
    new-instance v0, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 40
    iput-object v2, p0, Lo/startDrag;->onMessageChannelReady:Lo/isSameListener;

    .line 42
    new-instance v0, Lo/startDrag$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/startDrag$onNavigationEvent;-><init>(Lo/startDrag;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 42
    iput-object v1, p0, Lo/startDrag;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/startDrag;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 36
    iget-object p0, p0, Lo/startDrag;->extraCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/startDrag;)V
    .locals 0

    .line 19154
    invoke-super {p0}, Lo/updateRemainingSpans;->m_()V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 158
    iget-object v0, p0, Lo/startDrag;->extraCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "bottomSheetBehavior"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lo/updateRemainingSpans;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RepaymentSummaryDialog"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0270

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 53
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 54
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 56
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/startDrag;->extraCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_0

    .line 57
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 58
    iget-object v0, p0, Lo/startDrag;->extraCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1838
    :cond_1
    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 59
    iget-object v0, p0, Lo/startDrag;->extraCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const-string/jumbo v0, "stash_repayment_schedule_details_screen_load"

    .line 61
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    const-string v0, "backgroundView"

    .line 63
    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/startDrag$extraCallback;

    invoke-direct {v0, p0}, Lo/startDrag$extraCallback;-><init>(Lo/startDrag;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 67
    new-instance v0, Lo/startDrag$onMessageChannelReady;

    invoke-direct {v0, p0, p3}, Lo/startDrag$onMessageChannelReady;-><init>(Lo/startDrag;Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 20000
    iget-object v0, p0, Lo/startDrag;->onTransact:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/startDrag;->onTransact:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/startDrag;->onTransact:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/startDrag;->onTransact:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/startDrag;->onTransact:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/startDrag;->onTransact:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 144
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 145
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

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super/range {p0 .. p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    new-instance v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 96
    new-instance v2, Lo/computeVerticalScrollRange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/computeVerticalScrollRange;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v2, Lo/checkForGaps;

    const-string v4, "adapter"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance v2, Lo/repositionToWrapContentIfNecessary;

    iget-object v1, v1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 97
    iput-object v2, v0, Lo/startDrag;->ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

    .line 98
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->list:I

    invoke-virtual {v0, v1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    new-instance v2, Lo/setGapStrategy;

    .line 102
    new-instance v8, Lo/getGapStrategy;

    invoke-direct {v8, v4, v4, v4, v4}, Lo/getGapStrategy;-><init>(IIII)V

    .line 103
    new-instance v9, Lo/getGapStrategy;

    invoke-direct {v9, v4, v4, v4, v4}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x2

    move-object v5, v2

    .line 100
    invoke-direct/range {v5 .. v10}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 99
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 106
    iget-object v2, v0, Lo/startDrag;->ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

    const-string v5, "amountBreakupAdapter"

    if-nez v2, :cond_0

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3000
    iget-object v1, v0, Lo/startDrag;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$notify;

    if-eqz v1, :cond_f

    .line 3150
    iget-object v1, v1, Lo/onDetach$notify;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;

    if-eqz v1, :cond_f

    .line 110
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "title"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 3272
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->warmup:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_1

    .line 4000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v6, v3

    .line 110
    :goto_0
    invoke-static {v2, v6}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 111
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->subtitle:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "subtitle"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 4264
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_2

    .line 5000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    move-object v6, v3

    .line 111
    :goto_1
    invoke-static {v2, v6}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 112
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->statusLabel:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "statusLabel"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 5268
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v7, :cond_3

    .line 6000
    iget-object v7, v7, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    move-object v7, v3

    .line 112
    :goto_2
    invoke-static {v2, v7}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "Resources.getSystem()"

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v8, 0x41480000    # 12.5f

    const/4 v9, 0x1

    .line 6010
    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    .line 114
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->statusLabel:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    check-cast v10, Landroid/view/View;

    .line 6269
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "0d11141c"

    :cond_4
    move-object v11, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7c

    .line 114
    invoke-static/range {v10 .. v17}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 117
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->totalAmountTitle:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "totalAmountTitle"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 7266
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->onTransact:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_5

    .line 8000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    move-object v6, v3

    .line 117
    :goto_3
    invoke-static {v2, v6}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 118
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->totalAmountValue:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v6, "totalAmountValue"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 8265
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_6

    .line 9000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_6
    move-object v6, v3

    .line 118
    :goto_4
    invoke-static {v2, v6}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 119
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v6, "description"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 9262
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_7

    .line 10000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_7
    move-object v6, v3

    .line 119
    :goto_5
    invoke-static {v2, v6}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 10271
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->ICustomTabsService:Ljava/lang/Boolean;

    .line 120
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "proceed"

    if-eqz v2, :cond_9

    .line 121
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v8, "$this$visible"

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11261
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v2, :cond_a

    .line 123
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v0, v4}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    .line 12015
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v8, :cond_8

    .line 13000
    iget-object v8, v8, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v8}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_8
    move-object v8, v3

    .line 123
    :goto_6
    invoke-static {v4, v8}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 124
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v0, v4}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v4

    check-cast v10, Landroid/view/View;

    .line 13014
    iget-object v11, v2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;->onPostMessage:Ljava/lang/String;

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v6, 0x41800000    # 16.0f

    .line 14010
    invoke-static {v9, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7c

    .line 124
    invoke-static/range {v10 .. v17}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 125
    sget v4, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v0, v4}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    new-instance v6, Lo/startDrag$ICustomTabsCallback;

    invoke-direct {v6, v2, v0}, Lo/startDrag$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/startDrag;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 131
    :cond_9
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v4, "$this$gone"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 14017
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_a
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14263
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 134
    check-cast v1, Ljava/lang/Iterable;

    .line 172
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/fabrik/ui/lending/model/DetailX;

    .line 135
    new-instance v13, Lo/computeHorizontalScrollOffset;

    if-eqz v4, :cond_b

    .line 14279
    iget-object v6, v4, Lcom/dreamplug/fabrik/ui/lending/model/DetailX;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v6, :cond_b

    .line 15000
    iget-object v6, v6, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v6

    goto :goto_9

    :cond_b
    move-object v7, v3

    :goto_9
    if-eqz v4, :cond_c

    .line 15278
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lending/model/DetailX;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_c

    .line 16000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object v8, v4

    goto :goto_a

    :cond_c
    move-object v8, v3

    :goto_a
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x34

    const-string v10, ""

    move-object v6, v13

    .line 135
    invoke-direct/range {v6 .. v12}, Lo/computeHorizontalScrollOffset;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 137
    :cond_d
    iget-object v1, v0, Lo/startDrag;->ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

    if-nez v1, :cond_e

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_e
    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 16038
    invoke-virtual {v1, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_f
    return-void
.end method
