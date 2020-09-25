.class public final Lo/setUpdateThrottle;
.super Lo/zzc;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0012H\u0016J\u001a\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u0012H\u0002J\u0008\u0010 \u001a\u00020\u0012H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000c\u001a\u0004\u0018\u00010\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0008\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/BankRewardPointDialog;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenDialogFragment;",
        "()V",
        "adapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$BankRewardsPoint;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$BankRewardsPoint;",
        "extra$delegate",
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
        "updateList",
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

.field private extraCallback:Ljava/util/HashMap;

.field private final onMessageChannelReady:Lo/isSameListener;

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

    .line 24
    invoke-direct {p0}, Lo/zzc;-><init>()V

    .line 27
    sget-object v0, Lo/setUpdateThrottle$onNavigationEvent;->onMessageChannelReady:Lo/setUpdateThrottle$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 27
    iput-object v2, p0, Lo/setUpdateThrottle;->ICustomTabsCallback:Lo/isSameListener;

    .line 35
    new-instance v0, Lo/setUpdateThrottle$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setUpdateThrottle$onMessageChannelReady;-><init>(Lo/setUpdateThrottle;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 35
    iput-object v1, p0, Lo/setUpdateThrottle;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/setUpdateThrottle;)V
    .locals 0

    .line 24
    invoke-super {p0}, Lo/zzc;->m_()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/setUpdateThrottle;)V
    .locals 6

    .line 11094
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11119
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 11120
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 11121
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 11212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 12024
    invoke-super {p0}, Lo/zzc;->m_()V

    .line 11123
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 11124
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 11125
    new-instance v2, Lcom/dreamplug/fabrik/ui/control/BankRewardPointDialog$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/fabrik/ui/control/BankRewardPointDialog$realDismiss$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/setUpdateThrottle;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 11126
    iget-object p0, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p0, Lo/createCallback;

    check-cast p0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 11128
    :cond_2
    :goto_0
    new-instance p0, Lo/setUpdateThrottle$ICustomTabsCallback;

    invoke-direct {p0, v3, v0}, Lo/setUpdateThrottle$ICustomTabsCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setUpdateThrottle;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    .line 24
    iget-object p0, p0, Lo/setUpdateThrottle;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p0, :cond_0

    const-string v0, "bottomSheetBehavior"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 100
    iget-object v0, p0, Lo/setUpdateThrottle;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

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

    const p3, 0x7f0e00d3

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 42
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string/jumbo p3, "view.recyclerView"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object p3, p0, Lo/setUpdateThrottle;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/repositionToWrapContentIfNecessary;

    .line 42
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    .line 44
    sget p3, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 45
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->titleText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    .line 46
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v1, p0, Lo/setUpdateThrottle;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onDetach$ICustomTabsCallback$Stub$Proxy;

    if-eqz v1, :cond_0

    .line 2038
    iget-object v1, v1, Lo/onDetach$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/Instructions;

    if-eqz v1, :cond_0

    .line 2068
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/control/Instructions;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(sheetView)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/setUpdateThrottle;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_1

    .line 48
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 49
    iget-object v0, p0, Lo/setUpdateThrottle;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2838
    :cond_2
    iput-boolean v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 50
    iget-object v0, p0, Lo/setUpdateThrottle;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const-string v0, "backgroundView"

    .line 51
    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/setUpdateThrottle$extraCallback;

    invoke-direct {v0, p0}, Lo/setUpdateThrottle$extraCallback;-><init>(Lo/setUpdateThrottle;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p3, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 54
    new-instance v0, Lo/setUpdateThrottle$onPostMessage;

    invoke-direct {v0, p0, p3}, Lo/setUpdateThrottle$onPostMessage;-><init>(Lo/setUpdateThrottle;Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/zzc;->onDestroyView()V

    .line 13000
    iget-object v0, p0, Lo/setUpdateThrottle;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setUpdateThrottle;->extraCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setUpdateThrottle;->extraCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/setUpdateThrottle;->extraCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/setUpdateThrottle;->extraCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final synthetic onRelationshipValidationResult()Lo/addWrites;
    .locals 1

    .line 3085
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->m_()V

    .line 24
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

.method public final onStart()V
    .locals 2

    .line 79
    invoke-super {p0}, Lo/zzc;->onStart()V

    .line 80
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

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/setUpdateThrottle;->extraCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2}, Lo/zzc;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4000
    iget-object p1, p0, Lo/setUpdateThrottle;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onDetach$ICustomTabsCallback$Stub$Proxy;

    if-eqz p1, :cond_0

    .line 4038
    iget-object p1, p1, Lo/onDetach$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/control/Instructions;

    if-eqz p1, :cond_0

    .line 4067
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/Instructions;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 3107
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3108
    new-instance v6, Lo/onCreateView;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v7, "Resources.getSystem()"

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v9, 0x1

    .line 5010
    invoke-static {v9, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 6010
    invoke-static {v9, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string/jumbo v1, "start_space"

    move-object v0, v6

    .line 3108
    invoke-direct/range {v0 .. v5}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3109
    check-cast p1, Ljava/lang/Iterable;

    .line 3129
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    .line 3129
    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 3130
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3131
    check-cast v1, Ljava/lang/String;

    .line 3110
    new-instance v2, Lo/SingleGeneratedAdapterObserver;

    invoke-direct {v2, v1}, Lo/SingleGeneratedAdapterObserver;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3132
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    .line 3109
    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3112
    new-instance p1, Lo/onCreateView;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7010
    invoke-static {v9, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 8010
    invoke-static {v9, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v2, "end_space"

    move-object v1, p1

    .line 3112
    invoke-direct/range {v1 .. v6}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9000
    iget-object p1, p0, Lo/setUpdateThrottle;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/repositionToWrapContentIfNecessary;

    .line 3113
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

    :cond_3
    return-void
.end method
