.class public final Lo/startSwipe;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/startSwipe$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0012\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u001a\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001f\u001a\u00020\u0011H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/SeeScheduleDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "dp24",
        "",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SeeScheduleDialogExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SeeScheduleDialogExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "seeScheduleListAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
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
.field public static final extraCallback:Lo/startSwipe$ICustomTabsCallback;


# instance fields
.field private ICustomTabsCallback:I

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

.field private onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/startSwipe$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/startSwipe$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/startSwipe;->extraCallback:Lo/startSwipe$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 8010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 30
    iput v0, p0, Lo/startSwipe;->ICustomTabsCallback:I

    .line 32
    new-instance v0, Lo/startSwipe$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/startSwipe$onMessageChannelReady;-><init>(Lo/startSwipe;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 32
    iput-object v1, p0, Lo/startSwipe;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/startSwipe;)V
    .locals 0

    .line 8123
    invoke-super {p0}, Lo/updateRemainingSpans;->m_()V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/startSwipe;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 25
    iget-object p0, p0, Lo/startSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 127
    iget-object v0, p0, Lo/startSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

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

    .line 37
    invoke-super {p0, p1}, Lo/updateRemainingSpans;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SeeScheduleDialog"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e027b

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 44
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 45
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 46
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/startSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_0

    .line 47
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 48
    iget-object v0, p0, Lo/startSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1838
    :cond_1
    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 49
    iget-object v0, p0, Lo/startSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const-string v0, "backgroundView"

    .line 52
    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/startSwipe$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/startSwipe$onNavigationEvent;-><init>(Lo/startSwipe;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 56
    new-instance p3, Lo/startSwipe$extraCallback;

    invoke-direct {p3, p0}, Lo/startSwipe$extraCallback;-><init>(Lo/startSwipe;)V

    check-cast p3, Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 9000
    iget-object v0, p0, Lo/startSwipe;->onTransact:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/startSwipe;->onTransact:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/startSwipe;->onTransact:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/startSwipe;->onTransact:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/startSwipe;->onTransact:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/startSwipe;->onTransact:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 113
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 114
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

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 79
    new-instance p2, Lo/onDrawOver;

    invoke-direct {p2}, Lo/onDrawOver;-><init>()V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v0, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 80
    iput-object p2, p0, Lo/startSwipe;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    .line 82
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    new-instance p2, Lo/setGapStrategy;

    .line 86
    new-instance v4, Lo/getGapStrategy;

    invoke-direct {v4, v0, v0, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    .line 87
    new-instance v5, Lo/getGapStrategy;

    iget v1, p0, Lo/startSwipe;->ICustomTabsCallback:I

    invoke-direct {v5, v0, v1, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v1, p2

    .line 84
    invoke-direct/range {v1 .. v6}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 83
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 90
    iget-object p2, p0, Lo/startSwipe;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v1, "seeScheduleListAdapter"

    if-nez p2, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3000
    iget-object p1, p0, Lo/startSwipe;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$cancelAll;

    if-eqz p1, :cond_4

    .line 3153
    iget-object p1, p1, Lo/onDetach$cancelAll;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;

    if-eqz p1, :cond_4

    .line 92
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "title"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3228
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->extraCallback:Ljava/lang/String;

    .line 92
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p0, p2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "subTitle"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3229
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->onMessageChannelReady:Ljava/lang/String;

    .line 93
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4227
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 95
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->countTitle:I

    invoke-virtual {p0, v2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    const-string v3, "countTitle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->monthTitle:I

    invoke-virtual {p0, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v2, "monthTitle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->emiTitle:I

    invoke-virtual {p0, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v2, "emiTitle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->outstandingTitle:I

    invoke-virtual {p0, v0}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v2, "outstandingTitle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5226
    :cond_1
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->onNavigationEvent:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 101
    iget-object v0, p0, Lo/startSwipe;->onNavigationEvent:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "value"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 6038
    invoke-virtual {v0, p2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 7230
    :cond_3
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;

    if-eqz p1, :cond_4

    .line 104
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->totalStashLabel:I

    invoke-virtual {p0, p2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "totalStashLabel"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7249
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;->onPostMessage:Ljava/lang/String;

    .line 104
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->totalStashValue:I

    invoke-virtual {p0, p2}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "totalStashValue"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7250
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;->extraCallback:Ljava/lang/String;

    .line 105
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
