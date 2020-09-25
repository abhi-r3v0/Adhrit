.class public abstract Lo/findLastVisibleItemPositions;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\u001dJ\u0014\u0010\"\u001a\u00020\u001d2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cJ\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020%H&J\u0006\u0010\'\u001a\u00020\u0016J&\u0010(\u001a\u0004\u0018\u00010\u00042\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010#\u001a\u00020\u001dH\u0016J\u0008\u0010/\u001a\u00020\u001dH\u0016J\u000e\u00100\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020\u0016J\u0006\u00101\u001a\u00020\u001dR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012\"\u0004\u0008 \u0010\u0014\u00a8\u00062"
    }
    d2 = {
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "backgroundView",
        "Landroid/view/View;",
        "getBackgroundView",
        "()Landroid/view/View;",
        "setBackgroundView",
        "(Landroid/view/View;)V",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroid/widget/FrameLayout;",
        "getBottomSheetBehavior",
        "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "setBottomSheetBehavior",
        "(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V",
        "headerContainer",
        "getHeaderContainer",
        "()Landroid/widget/FrameLayout;",
        "setHeaderContainer",
        "(Landroid/widget/FrameLayout;)V",
        "isFirstLoad",
        "",
        "isShown",
        "()Z",
        "setShown",
        "(Z)V",
        "onDismissListener",
        "Lkotlin/Function0;",
        "",
        "sheetView",
        "getSheetView",
        "setSheetView",
        "dismiss",
        "doOnDismiss",
        "onDismiss",
        "getHeaderLayoutResource",
        "",
        "getLayoutResource",
        "isCancelable",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onSheetShown",
        "setCancelable",
        "slideUp",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/widget/FrameLayout;

.field ICustomTabsCallback$Stub:Landroid/view/View;

.field asBinder:Z

.field public asInterface:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Z

.field private onMessageChannelReady:Ljava/util/HashMap;

.field public onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo/findLastVisibleItemPositions;->extraCallback:Z

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/findLastVisibleItemPositions;)Lo/getServerTime;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/findLastVisibleItemPositions;->asInterface:Lo/getServerTime;

    return-object p0
.end method


# virtual methods
.method public extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/findLastVisibleItemPositions;->onMessageChannelReady:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public g_()V
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "inflater"

    invoke-static {v8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Lo/preferLastSpan$ICustomTabsCallback$Stub;->fragment_bottom_sheet_container:I

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 38
    iput-boolean v10, v7, Lo/findLastVisibleItemPositions;->asBinder:Z

    const-string/jumbo v0, "view"

    .line 39
    invoke-static {v11, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->sheetContainer:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback:Landroid/widget/FrameLayout;

    .line 40
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->backgroundView:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 41
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->sheetContainer:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/FrameLayout;

    .line 42
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->headerContainer:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v7, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    .line 43
    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->coordinatorParent:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 44
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetView!!)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v7, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 46
    new-instance v14, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v14}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v14, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 47
    new-instance v15, Lo/toDebugString$onPostMessage;

    invoke-direct {v15}, Lo/toDebugString$onPostMessage;-><init>()V

    iput v10, v15, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 48
    new-instance v6, Lo/toDebugString$onPostMessage;

    invoke-direct {v6}, Lo/toDebugString$onPostMessage;-><init>()V

    iput v10, v6, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 50
    new-instance v5, Lo/findLastVisibleItemPositions$onNavigationEvent;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v11

    move-object v4, v15

    move-object v10, v5

    move-object v5, v13

    move-object/from16 v16, v6

    invoke-direct/range {v0 .. v6}, Lo/findLastVisibleItemPositions$onNavigationEvent;-><init>(Lo/findLastVisibleItemPositions;Lo/toDebugString$ICustomTabsCallback;Landroid/view/View;Lo/toDebugString$onPostMessage;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/toDebugString$onPostMessage;)V

    .line 74
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    new-instance v1, Lo/findLastVisibleItemPositions$onPostMessage;

    move-object/from16 v2, v16

    invoke-direct {v1, v2, v10}, Lo/findLastVisibleItemPositions$onPostMessage;-><init>(Lo/toDebugString$onPostMessage;Lo/findLastVisibleItemPositions$onNavigationEvent;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 79
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lo/findLastVisibleItemPositions$extraCallback;

    invoke-direct {v1, v15, v10}, Lo/findLastVisibleItemPositions$extraCallback;-><init>(Lo/toDebugString$onPostMessage;Lo/findLastVisibleItemPositions$onNavigationEvent;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 84
    :cond_2
    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lo/findLastVisibleItemPositions;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater.inflate(getLayo\u2026urce(), container, false)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflater.inflate(getHead\u2026urce(), container, false)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_4
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 90
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_6

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    .line 1838
    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 91
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_7

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 92
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback$Stub:Landroid/view/View;

    if-eqz v0, :cond_8

    new-instance v1, Lo/findLastVisibleItemPositions$ICustomTabsCallback;

    invoke-direct {v1, v7}, Lo/findLastVisibleItemPositions$ICustomTabsCallback;-><init>(Lo/findLastVisibleItemPositions;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 97
    :cond_8
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v1

    new-instance v2, Lo/findLastVisibleItemPositions$onMessageChannelReady;

    invoke-direct {v2, v14, v13, v10}, Lo/findLastVisibleItemPositions$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/findLastVisibleItemPositions$onNavigationEvent;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 2121
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    new-instance v1, Lo/findLastVisibleItemPositions$onTransact;

    invoke-direct {v1, v7}, Lo/findLastVisibleItemPositions$onTransact;-><init>(Lo/findLastVisibleItemPositions;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_9
    iget-boolean v0, v7, Lo/findLastVisibleItemPositions;->extraCallback:Z

    if-nez v0, :cond_c

    .line 106
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->ICustomTabsCallback$Stub:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 107
    :cond_a
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 108
    :cond_b
    iget-object v0, v7, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_c
    const/4 v0, 0x0

    .line 110
    iput-boolean v0, v7, Lo/findLastVisibleItemPositions;->extraCallback:Z

    return-object v11
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lo/findLastVisibleItemPositions;->extraCallback()V

    return-void
.end method

.method public onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/findLastVisibleItemPositions;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/findLastVisibleItemPositions;->onMessageChannelReady:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/findLastVisibleItemPositions;->onMessageChannelReady:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/findLastVisibleItemPositions;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public abstract onNavigationEvent()I
.end method

.method public onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onTransact()V
    .locals 3

    .line 170
    iget-object v0, p0, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 171
    iget-object v0, p0, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method
