.class public final Lo/checkSelectForSwipe;
.super Lo/updateRemainingSpans;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/checkSelectForSwipe$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\"\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J&\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010$\u001a\u00020\u0012H\u0016J\u001a\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u001f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\'\u001a\u00020\u0012H\u0002J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/RepaymentScheduleDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "()V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "dp10",
        "",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RepaymentScheduleDialogExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RepaymentScheduleDialogExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "repaymentScheduleListAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "dismiss",
        "",
        "onBackPressed",
        "onClick",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
        "repaymentSummary",
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


# instance fields
.field private ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

.field private extraCallback:Ljava/util/HashMap;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:Lo/isSameListener;

.field private onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 16009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    .line 16010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 41
    iput v0, p0, Lo/checkSelectForSwipe;->onMessageChannelReady:I

    .line 43
    new-instance v0, Lo/checkSelectForSwipe$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/checkSelectForSwipe$onNavigationEvent;-><init>(Lo/checkSelectForSwipe;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 43
    iput-object v1, p0, Lo/checkSelectForSwipe;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/checkSelectForSwipe;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 36
    iget-object p0, p0, Lo/checkSelectForSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/checkSelectForSwipe;)V
    .locals 0

    .line 16132
    invoke-super {p0}, Lo/updateRemainingSpans;->m_()V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 136
    iget-object v0, p0, Lo/checkSelectForSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

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

    .line 48
    invoke-super {p0, p1}, Lo/updateRemainingSpans;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "RepaymentScheduleDialog"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0e026f

    .line 53
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 54
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 55
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    move-object v1, p2

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v2, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/checkSelectForSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v2, "bottomSheetBehavior"

    if-nez v1, :cond_0

    .line 57
    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 58
    iget-object v1, p0, Lo/checkSelectForSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1838
    :cond_1
    iput-boolean v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 59
    iget-object v1, p0, Lo/checkSelectForSwipe;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 2000
    iget-object v1, p0, Lo/checkSelectForSwipe;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$IPostMessageService$Stub$Proxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2156
    iget-object v1, v1, Lo/onDetach$IPostMessageService$Stub$Proxy;->extraCallback:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 61
    check-cast v1, Ljava/lang/Iterable;

    .line 165
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 167
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/destroyCallbacks;

    .line 3036
    iget-boolean v5, v5, Lo/destroyCallbacks;->onPostMessage:Z

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_5

    goto :goto_0

    .line 3445
    :cond_5
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Count overflow has happened."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 168
    :cond_6
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v2

    :goto_2
    const/4 v4, 0x2

    new-array v5, v4, [Lo/addWrite;

    .line 4043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "upcoming_emi_count"

    invoke-direct {v6, v7, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, p3

    .line 5000
    iget-object p3, p0, Lo/checkSelectForSwipe;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/onDetach$IPostMessageService$Stub$Proxy;

    if-eqz p3, :cond_8

    .line 5156
    iget-object p3, p3, Lo/onDetach$IPostMessageService$Stub$Proxy;->extraCallback:Ljava/util/List;

    if-eqz p3, :cond_8

    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6043
    :cond_8
    new-instance p3, Lo/addWrite;

    const-string/jumbo v1, "total_emi_count"

    invoke-direct {p3, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, v5, v3

    const-string p3, "pairs"

    .line 65
    invoke-static {v5, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p3, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast p3, Ljava/util/Map;

    invoke-static {p3, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "stash_repayment_schedule_screen_load"

    .line 65
    invoke-static {v1, p3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    const-string p3, "backgroundView"

    .line 67
    invoke-static {v0, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lo/checkSelectForSwipe$onPostMessage;

    invoke-direct {p3, p0}, Lo/checkSelectForSwipe$onPostMessage;-><init>(Lo/checkSelectForSwipe;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {v0, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 71
    new-instance p3, Lo/checkSelectForSwipe$extraCallback;

    invoke-direct {p3, p0, v0}, Lo/checkSelectForSwipe$extraCallback;-><init>(Lo/checkSelectForSwipe;Landroid/view/View;)V

    check-cast p3, Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 17000
    iget-object v0, p0, Lo/checkSelectForSwipe;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/checkSelectForSwipe;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/checkSelectForSwipe;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/checkSelectForSwipe;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/checkSelectForSwipe;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 2

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x6eb9585a

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "summary"

    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14146
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;

    if-eqz p1, :cond_1

    .line 14147
    sget-object p1, Lo/startDrag;->onNavigationEvent:Lo/startDrag$onPostMessage;

    .line 14148
    new-instance p1, Lo/onDetach$notify;

    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;

    invoke-direct {p1, p2}, Lo/onDetach$notify;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;)V

    const-string p2, "extra"

    .line 14147
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14163
    new-instance v0, Lo/startDrag;

    invoke-direct {v0}, Lo/startDrag;-><init>()V

    .line 14164
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 15016
    invoke-static {v1, p1, p2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 14149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 15464
    new-instance p2, Lo/binderDied;

    invoke-direct {p2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 14149
    invoke-virtual {v0, p2, p3}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/checkSelectForSwipe;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 122
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 123
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

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1, p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {p1}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 100
    new-instance p2, Lo/attachToRecyclerView;

    move-object v0, p0

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, v0}, Lo/attachToRecyclerView;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/checkForGaps;

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7036
    check-cast p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v0, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7043
    new-instance p2, Lo/repositionToWrapContentIfNecessary;

    iget-object p1, p1, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 101
    iput-object p2, p0, Lo/checkSelectForSwipe;->ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

    .line 103
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p0, p1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    new-instance p2, Lo/setGapStrategy;

    .line 107
    new-instance v4, Lo/getGapStrategy;

    invoke-direct {v4, v0, v0, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    .line 108
    new-instance v5, Lo/getGapStrategy;

    iget v1, p0, Lo/checkSelectForSwipe;->onMessageChannelReady:I

    invoke-direct {v5, v0, v1, v0, v0}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v1, p2

    .line 105
    invoke-direct/range {v1 .. v6}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 104
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    iget-object p2, p0, Lo/checkSelectForSwipe;->ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

    const-string v0, "repaymentScheduleListAdapter"

    if-nez p2, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8000
    iget-object p1, p0, Lo/checkSelectForSwipe;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$IPostMessageService$Stub$Proxy;

    if-eqz p1, :cond_2

    .line 8156
    iget-object p1, p1, Lo/onDetach$IPostMessageService$Stub$Proxy;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 113
    iget-object p2, p0, Lo/checkSelectForSwipe;->ICustomTabsCallback:Lo/repositionToWrapContentIfNecessary;

    if-nez p2, :cond_1

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    iget-object p2, p2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/checkSpanForGap;

    .line 9038
    invoke-virtual {p2, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 115
    :cond_2
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 11000
    iget-object p2, p0, Lo/checkSelectForSwipe;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onDetach$IPostMessageService$Stub$Proxy;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 11156
    iget-object p2, p2, Lo/onDetach$IPostMessageService$Stub$Proxy;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_3

    .line 12000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    move-object p2, v0

    .line 115
    :goto_0
    invoke-static {p1, p2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 116
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p0, p1}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "subTitle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 13000
    iget-object p2, p0, Lo/checkSelectForSwipe;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onDetach$IPostMessageService$Stub$Proxy;

    if-eqz p2, :cond_4

    .line 13156
    iget-object p2, p2, Lo/onDetach$IPostMessageService$Stub$Proxy;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_4

    .line 14000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    .line 116
    :cond_4
    invoke-static {p1, v0}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method
