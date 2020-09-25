.class public final Lo/ItemTouchHelper$Callback;
.super Lo/updateRemainingSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ItemTouchHelper$Callback$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001bH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020\u001bH\u0016J\u001a\u0010&\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u001e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010(\u001a\u00020\u001bH\u0002J\u0008\u0010)\u001a\u00020\u001bH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000b\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000b\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/StashNameDialog;",
        "Lcom/dreamplug/widget/FullScreenDialogFragment;",
        "()V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashNameExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashNameExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "nameEt",
        "Landroid/widget/EditText;",
        "parentViewModel",
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashSharedViewModel;",
        "getParentViewModel",
        "()Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashSharedViewModel;",
        "parentViewModel$delegate",
        "proceed",
        "Lcom/dreamplug/widget/ProgressButton;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashNameViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/lending/viewmodels/StashNameViewModel;",
        "viewModel$delegate",
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
        "sendIntentData",
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
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private asBinder:Ljava/util/HashMap;

.field private final asInterface:Lo/isSameListener;

.field private extraCallback:Lo/recycleFromEnd;

.field private onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lo/onChildrenLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Landroid/widget/EditText;

.field private final onPostMessage:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lo/updateRemainingSpans;-><init>()V

    .line 40
    new-instance v0, Lo/ItemTouchHelper$Callback$getInterfaceDescriptor;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$Callback$getInterfaceDescriptor;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 40
    iput-object v2, p0, Lo/ItemTouchHelper$Callback;->ICustomTabsCallback:Lo/isSameListener;

    .line 187
    new-instance v0, Lo/ItemTouchHelper$Callback$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$Callback$onMessageChannelReady;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 187
    iput-object v2, p0, Lo/ItemTouchHelper$Callback;->onPostMessage:Lo/isSameListener;

    .line 48
    new-instance v0, Lo/ItemTouchHelper$Callback$extraCallback;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$Callback$extraCallback;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 48
    iput-object v1, p0, Lo/ItemTouchHelper$Callback;->asInterface:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ItemTouchHelper$Callback;)Landroid/widget/EditText;
    .locals 1

    .line 38
    iget-object p0, p0, Lo/ItemTouchHelper$Callback;->onNavigationEvent:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "nameEt"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback$Stub(Lo/ItemTouchHelper$Callback;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 38
    iget-object p0, p0, Lo/ItemTouchHelper$Callback;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/ItemTouchHelper$Callback;)Lo/recycleFromEnd;
    .locals 1

    .line 38
    iget-object p0, p0, Lo/ItemTouchHelper$Callback;->extraCallback:Lo/recycleFromEnd;

    if-nez p0, :cond_0

    const-string v0, "proceed"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/ItemTouchHelper$Callback;)V
    .locals 4

    .line 6167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6168
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void

    .line 6170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 6172
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/ItemTouchHelper$Callback;)Lo/prepareForDrop;
    .locals 0

    .line 8000
    iget-object p0, p0, Lo/ItemTouchHelper$Callback;->onPostMessage:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/prepareForDrop;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/ItemTouchHelper$Callback;)Lo/onDetach$INotificationSideChannel$Default;
    .locals 0

    .line 7000
    iget-object p0, p0, Lo/ItemTouchHelper$Callback;->asInterface:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onDetach$INotificationSideChannel$Default;

    return-object p0
.end method

.method public static final synthetic onRelationshipValidationResult(Lo/ItemTouchHelper$Callback;)V
    .locals 2

    .line 9000
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setRecycleChildrenOnDetach;

    if-eqz v0, :cond_0

    .line 9045
    iget-object v0, v0, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub:Lo/setActive;

    if-eqz v0, :cond_0

    .line 8161
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 8162
    :cond_0
    invoke-super {p0}, Lo/updateRemainingSpans;->m_()V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 177
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string v1, "bottomSheetBehavior"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e028a

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 55
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 56
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 57
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->done:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/recycleFromEnd;

    const-string/jumbo v1, "view.done"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ItemTouchHelper$Callback;->extraCallback:Lo/recycleFromEnd;

    .line 58
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    .line 59
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string/jumbo v2, "view.name"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/ItemTouchHelper$Callback;->onNavigationEvent:Landroid/widget/EditText;

    .line 60
    move-object v1, p2

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const-string v2, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/ItemTouchHelper$Callback;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v2, "bottomSheetBehavior"

    if-nez v1, :cond_0

    .line 61
    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 62
    iget-object v1, p0, Lo/ItemTouchHelper$Callback;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1838
    :cond_1
    iput-boolean v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 63
    iget-object v1, p0, Lo/ItemTouchHelper$Callback;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 2000
    iget-object v1, p0, Lo/ItemTouchHelper$Callback;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/prepareForDrop;

    .line 2015
    iget-object v1, v1, Lo/prepareForDrop;->onPostMessage:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 64
    move-object v2, p0

    check-cast v2, Lo/toLegacyStreamType;

    new-instance v3, Lo/ItemTouchHelper$Callback$onNavigationEvent;

    invoke-direct {v3, p0}, Lo/ItemTouchHelper$Callback$onNavigationEvent;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v3, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    const-string/jumbo v1, "skip"

    .line 72
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/ItemTouchHelper$Callback$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/ItemTouchHelper$Callback$ICustomTabsCallback;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 77
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->extraCallback:Lo/recycleFromEnd;

    const-string v1, "proceed"

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroid/view/View;

    new-instance v2, Lo/ItemTouchHelper$Callback$asInterface;

    invoke-direct {v2, p0}, Lo/ItemTouchHelper$Callback$asInterface;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v0, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    const-string v0, "backgroundView"

    .line 85
    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/ItemTouchHelper$Callback$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$Callback$onRelationshipValidationResult;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 3000
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onDetach$INotificationSideChannel$Default;

    const-string v2, "nameEt"

    if-eqz v0, :cond_7

    .line 3162
    iget-object v0, v0, Lo/onDetach$INotificationSideChannel$Default;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 91
    iget-object v3, p0, Lo/ItemTouchHelper$Callback;->extraCallback:Lo/recycleFromEnd;

    if-nez v3, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    sget-object v4, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v3, v4}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 92
    iget-object v3, p0, Lo/ItemTouchHelper$Callback;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v3, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lo/ItemTouchHelper$Callback;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v3, :cond_6

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 95
    :cond_7
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->extraCallback:Lo/recycleFromEnd;

    if-nez v0, :cond_8

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_8
    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 97
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v0, :cond_9

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_9
    new-instance v1, Lo/ItemTouchHelper$Callback$ICustomTabsCallback$Stub;

    invoke-direct {v1, p0}, Lo/ItemTouchHelper$Callback$ICustomTabsCallback$Stub;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    new-instance v0, Lo/ItemTouchHelper$Callback$asBinder;

    invoke-direct {v0, p0, p3}, Lo/ItemTouchHelper$Callback$asBinder;-><init>(Lo/ItemTouchHelper$Callback;Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/updateRemainingSpans;->onDestroyView()V

    .line 10000
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->asBinder:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ItemTouchHelper$Callback;->asBinder:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->asBinder:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/ItemTouchHelper$Callback;->asBinder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onPostMessage()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/ItemTouchHelper$Callback;->asBinder:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 151
    invoke-super {p0}, Lo/updateRemainingSpans;->onStart()V

    .line 152
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

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 141
    :cond_0
    new-instance v0, Lo/ItemTouchHelper$Callback$onTransact;

    invoke-direct {v0, p0}, Lo/ItemTouchHelper$Callback$onTransact;-><init>(Lo/ItemTouchHelper$Callback;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    invoke-super {p0, p1, p2}, Lo/updateRemainingSpans;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
