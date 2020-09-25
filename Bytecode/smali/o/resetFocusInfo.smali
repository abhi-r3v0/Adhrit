.class public final Lo/resetFocusInfo;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/resetFocusInfo$onNavigationEvent;,
        Lo/resetFocusInfo$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\n\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsTncDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "dummyLoaderView",
        "Landroid/widget/FrameLayout;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsTncDialog$WinTncExtraData;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsTncDialog$WinTncExtraData;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "loader",
        "Lcom/dreamplug/fabrik/helper/ui/widget/FabrikLoaderView;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncViewModel;",
        "viewModel$delegate",
        "winTncRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onStart",
        "Companion",
        "WinTncExtraData",
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
.field public static final ICustomTabsCallback:Lo/resetFocusInfo$onPostMessage;


# instance fields
.field private final asBinder:Lo/isSameListener;

.field private final extraCallback:Lo/isSameListener;

.field private onMessageChannelReady:Lo/onDestroyView;

.field private onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

.field private onPostMessage:Landroid/widget/FrameLayout;

.field private final onRelationshipValidationResult:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/resetFocusInfo$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/resetFocusInfo$onPostMessage;-><init>(B)V

    sput-object v0, Lo/resetFocusInfo;->ICustomTabsCallback:Lo/resetFocusInfo$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 154
    new-instance v0, Lo/resetFocusInfo$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/resetFocusInfo$onMessageChannelReady;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 154
    iput-object v2, p0, Lo/resetFocusInfo;->extraCallback:Lo/isSameListener;

    .line 49
    new-instance v0, Lo/resetFocusInfo$extraCallback;

    invoke-direct {v0, p0}, Lo/resetFocusInfo$extraCallback;-><init>(Lo/resetFocusInfo;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 49
    iput-object v1, p0, Lo/resetFocusInfo;->asBinder:Lo/isSameListener;

    .line 125
    new-instance v0, Lo/resetFocusInfo$onTransact;

    invoke-direct {v0, p0}, Lo/resetFocusInfo$onTransact;-><init>(Lo/resetFocusInfo;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/resetFocusInfo;->onRelationshipValidationResult:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/resetFocusInfo;)Landroid/widget/FrameLayout;
    .locals 1

    .line 42
    iget-object p0, p0, Lo/resetFocusInfo;->onPostMessage:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const-string v0, "dummyLoaderView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/resetFocusInfo;)Lo/onDestroyView;
    .locals 1

    .line 42
    iget-object p0, p0, Lo/resetFocusInfo;->onMessageChannelReady:Lo/onDestroyView;

    if-nez p0, :cond_0

    const-string v0, "loader"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 68
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lo/createAbtInstance;

    .line 69
    sget-object v0, Lo/resetFocusInfo$ICustomTabsCallback;->onMessageChannelReady:Lo/resetFocusInfo$ICustomTabsCallback;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e029d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v1, "contentView"

    .line 77
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const v4, 0x7f060209

    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->dummyLoaderView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const-string v3, "contentView.dummyLoaderView"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/resetFocusInfo;->onPostMessage:Landroid/widget/FrameLayout;

    .line 79
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    const-string v3, "contentView.loaderView"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/resetFocusInfo;->onMessageChannelReady:Lo/onDestroyView;

    .line 80
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->winTncRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "contentView.winTncRecyclerView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/resetFocusInfo;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    new-instance v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v0}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 82
    new-instance v1, Lo/dispatchLayoutStep2;

    iget-object v3, p0, Lo/resetFocusInfo;->onRelationshipValidationResult:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v1, v3}, Lo/dispatchLayoutStep2;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v1, Lo/checkForGaps;

    const-string v3, "adapter"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lo/performGetLayoutInflater;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lo/performGetLayoutInflater;-><init>(C)V

    check-cast v1, Lo/checkForGaps;

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v3, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance v1, Lo/repositionToWrapContentIfNecessary;

    iget-object v0, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v1, v0, v4}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 85
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    move-object v2, v0

    .line 85
    :cond_1
    check-cast v2, Landroid/view/WindowInsets;

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 87
    :goto_0
    new-instance v0, Lo/onCreateView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const-string v6, "bottom height"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    .line 88
    iget-object v2, p0, Lo/resetFocusInfo;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_3

    const-string/jumbo v3, "winTncRecyclerView"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 90
    :cond_3
    new-instance v3, Lo/setGapStrategy;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 92
    new-instance v8, Lo/getGapStrategy;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v9, "Resources.getSystem()"

    invoke-static {v5, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v9, 0x1

    const/high16 v10, 0x41f00000    # 30.0f

    .line 3010
    invoke-static {v9, v10, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 92
    invoke-direct {v8, v4, v5, v4, v4}, Lo/getGapStrategy;-><init>(IIII)V

    .line 93
    new-instance v9, Lo/getGapStrategy;

    invoke-direct {v9, v4, v4, v4, v4}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v10, 0x2

    move-object v5, v3

    .line 90
    invoke-direct/range {v5 .. v10}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 89
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 96
    move-object v3, v1

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4000
    iget-object v2, p0, Lo/resetFocusInfo;->asBinder:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/resetFocusInfo$onNavigationEvent;

    if-eqz v2, :cond_5

    .line 4150
    iget-object v2, v2, Lo/resetFocusInfo$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 5000
    iget-object v3, p0, Lo/resetFocusInfo;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/handleMissingPreInfoForChangeError;

    const-string v4, "id"

    .line 99
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v4, v3, Lo/handleMissingPreInfoForChangeError;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/findViewHolderForPosition;

    .line 5024
    invoke-interface {v4, v2}, Lo/findViewHolderForPosition;->asInterface(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v2

    .line 5025
    new-instance v4, Lo/handleMissingPreInfoForChangeError$onPostMessage;

    invoke-direct {v4, v3}, Lo/handleMissingPreInfoForChangeError$onPostMessage;-><init>(Lo/handleMissingPreInfoForChangeError;)V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    invoke-interface {v2, v4}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 100
    iget-object v2, p0, Lo/resetFocusInfo;->onMessageChannelReady:Lo/onDestroyView;

    if-nez v2, :cond_4

    const-string v3, "loader"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 7000
    :cond_5
    iget-object v2, p0, Lo/resetFocusInfo;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/handleMissingPreInfoForChangeError;

    .line 7015
    iget-object v2, v2, Lo/handleMissingPreInfoForChangeError;->ICustomTabsCallback:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 102
    move-object v3, p0

    check-cast v3, Lo/toLegacyStreamType;

    new-instance v4, Lo/resetFocusInfo$onRelationshipValidationResult;

    invoke-direct {v4, p0, v0, v1}, Lo/resetFocusInfo$onRelationshipValidationResult;-><init>(Lo/resetFocusInfo;Lo/onCreateView;Lo/repositionToWrapContentIfNecessary;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 119
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 68
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "WinDetailsTncDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 56
    invoke-virtual {p0, v1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 60
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onStart()V

    .line 61
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    new-instance v5, Lo/resetFocusInfo$asBinder;

    invoke-direct {v5, v0}, Lo/resetFocusInfo$asBinder;-><init>(Landroid/view/Window;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {v1, v2, v3, v4, v5}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
