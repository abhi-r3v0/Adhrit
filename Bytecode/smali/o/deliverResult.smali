.class public final Lo/deliverResult;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/deliverResult$onPostMessage;,
        Lo/deliverResult$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u001a\u001a\u00020\u0015H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000c\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/DomainSelectorDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "domainListAdapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "domainListView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/control/DomainSelectorDialog$DomainSelectorExtra;",
        "getExtra",
        "()Lcom/dreamplug/fabrik/ui/control/DomainSelectorDialog$DomainSelectorExtra;",
        "extra$delegate",
        "Lkotlin/Lazy;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "parentViewModel",
        "Lcom/dreamplug/fabrik/ui/control/CredProtectViewModel;",
        "getParentViewModel",
        "()Lcom/dreamplug/fabrik/ui/control/CredProtectViewModel;",
        "parentViewModel$delegate",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onStart",
        "Companion",
        "DomainSelectorExtra",
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
.field public static final onNavigationEvent:Lo/deliverResult$extraCallback;


# instance fields
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private final extraCallback:Lo/isSameListener;

.field private onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

.field private onPostMessage:Lo/repositionToWrapContentIfNecessary;

.field private final onRelationshipValidationResult:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/deliverResult$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/deliverResult$extraCallback;-><init>(B)V

    sput-object v0, Lo/deliverResult;->onNavigationEvent:Lo/deliverResult$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 37
    new-instance v0, Lo/deliverResult$onRelationshipValidationResult;

    invoke-direct {v0, p0}, Lo/deliverResult$onRelationshipValidationResult;-><init>(Lo/deliverResult;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 37
    iput-object v2, p0, Lo/deliverResult;->extraCallback:Lo/isSameListener;

    .line 38
    new-instance v0, Lo/deliverResult$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/deliverResult$ICustomTabsCallback;-><init>(Lo/deliverResult;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 38
    iput-object v1, p0, Lo/deliverResult;->ICustomTabsCallback:Lo/isSameListener;

    .line 95
    new-instance v0, Lo/deliverResult$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/deliverResult$onNavigationEvent;-><init>(Lo/deliverResult;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/deliverResult;->onRelationshipValidationResult:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/deliverResult;)Lo/deliverResult$onPostMessage;
    .locals 0

    .line 13000
    iget-object p0, p0, Lo/deliverResult;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/deliverResult$onPostMessage;

    return-object p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/deliverResult;)Lo/dispatchOnLoadComplete;
    .locals 0

    .line 14000
    iget-object p0, p0, Lo/deliverResult;->extraCallback:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/dispatchOnLoadComplete;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/deliverResult;)Lo/repositionToWrapContentIfNecessary;
    .locals 1

    .line 33
    iget-object p0, p0, Lo/deliverResult;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez p0, :cond_0

    const-string v0, "domainListAdapter"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 57
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Lo/createAbtInstance;

    .line 58
    sget-object v0, Lo/deliverResult$onMessageChannelReady;->onMessageChannelReady:Lo/deliverResult$onMessageChannelReady;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0077

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v1, "contentView"

    .line 65
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060209

    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->domainList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "contentView.domainList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/deliverResult;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    new-instance v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v0}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 68
    new-instance v1, Lo/unregisterListener;

    iget-object v3, p0, Lo/deliverResult;->onRelationshipValidationResult:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v1, v3}, Lo/unregisterListener;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast v1, Lo/checkForGaps;

    const-string v3, "adapter"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    check-cast v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v4, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
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

    .line 70
    iput-object v1, p0, Lo/deliverResult;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    .line 71
    iget-object v0, p0, Lo/deliverResult;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "domainListView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lo/deliverResult;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    const-string v3, "domainListAdapter"

    if-nez v1, :cond_1

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3000
    iget-object v5, p0, Lo/deliverResult;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/deliverResult$onPostMessage;

    if-eqz v5, :cond_3

    .line 3129
    iget-object v5, v5, Lo/deliverResult$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 77
    check-cast v5, Ljava/lang/Iterable;

    .line 132
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/unregisterListener$onPostMessage;

    .line 4067
    iget-boolean v7, v6, Lo/unregisterListener$onPostMessage;->onPostMessage:Z

    if-eqz v7, :cond_2

    .line 79
    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 5067
    :cond_2
    iget-object v6, v6, Lo/unregisterListener$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6000
    :cond_3
    iget-object v5, p0, Lo/deliverResult;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/deliverResult$onPostMessage;

    if-eqz v5, :cond_4

    .line 6129
    iget-object v5, v5, Lo/deliverResult$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 84
    :cond_4
    new-instance v5, Lo/unregisterListener$onMessageChannelReady;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f130342

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lo/unregisterListener$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v5, 0x2

    new-array v6, v5, [Lo/addWrite;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7043
    new-instance v7, Lo/addWrite;

    const-string v8, "domain_list"

    invoke-direct {v7, v8, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    const/4 v0, 0x1

    .line 8000
    iget-object v4, p0, Lo/deliverResult;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/deliverResult$onPostMessage;

    if-eqz v4, :cond_6

    .line 8130
    iget-object v2, v4, Lo/deliverResult$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 9043
    :cond_6
    new-instance v4, Lo/addWrite;

    const-string/jumbo v7, "source"

    invoke-direct {v4, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v6, v0

    const-string v0, "pairs"

    .line 86
    invoke-static {v6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "link_email_domain_load"

    .line 86
    invoke-static {v2, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 89
    iget-object v0, p0, Lo/deliverResult;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_7

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    check-cast v1, Ljava/util/List;

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 10038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 91
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 57
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "DomainSelectorDialog"

    .line 1029
    invoke-interface {p1, v2, v0, v1}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f140105

    .line 45
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

    .line 49
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onStart()V

    .line 50
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    new-instance v5, Lo/deliverResult$asInterface;

    invoke-direct {v5, v0}, Lo/deliverResult$asInterface;-><init>(Landroid/view/Window;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {v1, v2, v3, v4, v5}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
