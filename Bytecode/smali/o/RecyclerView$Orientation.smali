.class public final Lo/RecyclerView$Orientation;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecyclerView$Orientation$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\r\u001a\u0004\u0018\u00010\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/manage/ManageBottomSheetFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "cta",
        "Lcom/dreamplug/fabrik/ui/track/network/response/Cta;",
        "getCta",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/Cta;",
        "cta$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/track/TrackViewModel;",
        "getViewModel",
        "()Lcom/dreamplug/fabrik/ui/track/TrackViewModel;",
        "viewModel$delegate",
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
.field public static final onPostMessage:Lo/RecyclerView$Orientation$onNavigationEvent;


# instance fields
.field private final extraCallback:Lo/isSameListener;

.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onNavigationEvent:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/RecyclerView$Orientation$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RecyclerView$Orientation$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/RecyclerView$Orientation;->onPostMessage:Lo/RecyclerView$Orientation$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    .line 29
    new-instance v0, Lo/RecyclerView$Orientation$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/RecyclerView$Orientation$ICustomTabsCallback;-><init>(Lo/RecyclerView$Orientation;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 29
    iput-object v2, p0, Lo/RecyclerView$Orientation;->extraCallback:Lo/isSameListener;

    .line 31
    new-instance v0, Lo/RecyclerView$Orientation$extraCallback;

    invoke-direct {v0, p0}, Lo/RecyclerView$Orientation$extraCallback;-><init>(Lo/RecyclerView$Orientation;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 31
    iput-object v1, p0, Lo/RecyclerView$Orientation;->onNavigationEvent:Lo/isSameListener;

    .line 59
    new-instance v0, Lo/RecyclerView$Orientation$onPostMessage;

    invoke-direct {v0, p0}, Lo/RecyclerView$Orientation$onPostMessage;-><init>(Lo/RecyclerView$Orientation;)V

    check-cast v0, Lo/hasGapsToFix$onMessageChannelReady;

    iput-object v0, p0, Lo/RecyclerView$Orientation;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/RecyclerView$Orientation;)Lo/RecyclerView$OnFlingListener;
    .locals 0

    .line 7000
    iget-object p0, p0, Lo/RecyclerView$Orientation;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/RecyclerView$OnFlingListener;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 39
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lo/createAbtInstance;

    .line 40
    sget-object v0, Lo/RecyclerView$Orientation$onMessageChannelReady;->onNavigationEvent:Lo/RecyclerView$Orientation$onMessageChannelReady;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0232

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v1, "contentView"

    .line 47
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060209

    invoke-static {v4, v5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "contentView.recyclerView"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    const-string v4, "contentView.title"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v4, p0, Lo/RecyclerView$Orientation;->extraCallback:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    if-eqz v4, :cond_0

    .line 1082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 51
    :goto_0
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/onRequestDisallowInterceptTouchEvent;

    iget-object v3, p0, Lo/RecyclerView$Orientation;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {v1, v3}, Lo/onRequestDisallowInterceptTouchEvent;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 2000
    iget-object v3, p0, Lo/RecyclerView$Orientation;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    if-eqz v3, :cond_3

    .line 2080
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 53
    check-cast v3, Ljava/lang/Iterable;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "$this$collectionSizeOrDefault"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    .line 81
    :goto_1
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 82
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 83
    check-cast v4, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    .line 53
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_2
    check-cast v2, Ljava/util/List;

    :cond_3
    if-nez v2, :cond_4

    .line 3070
    sget-object v2, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v2, Ljava/util/List;

    :cond_4
    const-string/jumbo v3, "value"

    .line 53
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v3, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v3, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 52
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 56
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 47
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f140105

    .line 35
    invoke-virtual {p0, p1, v0}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Lo/getAllExperimentsInAnalytics;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    return-void
.end method
