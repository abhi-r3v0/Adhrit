.class public final Lo/recycleChildren;
.super Lo/zzc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/recycleChildren$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/assetviewer/AssetViewerDialogFragment;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenDialogFragment;",
        "()V",
        "adapter",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
        "getAdapter",
        "()Lcom/dreamplug/utils/list/VerticalAdapter;",
        "assetListIem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/AssetListIem;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
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
.field public static final onMessageChannelReady:Lo/recycleChildren$onPostMessage;


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field final extraCallback:Lo/repositionToWrapContentIfNecessary;

.field private onNavigationEvent:Lo/setOnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/recycleChildren$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/recycleChildren$onPostMessage;-><init>(B)V

    sput-object v0, Lo/recycleChildren;->onMessageChannelReady:Lo/recycleChildren$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Lo/zzc;-><init>()V

    .line 22
    new-instance v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v0}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 23
    new-instance v1, Lo/getInitialPrefetchItemCount;

    invoke-direct {v1}, Lo/getInitialPrefetchItemCount;-><init>()V

    check-cast v1, Lo/checkForGaps;

    const-string v2, "adapter"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4036
    check-cast v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4043
    new-instance v1, Lo/repositionToWrapContentIfNecessary;

    iget-object v0, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    .line 24
    iput-object v1, p0, Lo/recycleChildren;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lo/zzc;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/setOnScrollListener;

    iput-object p1, p0, Lo/recycleChildren;->onNavigationEvent:Lo/setOnScrollListener;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e008e

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/zzc;->onDestroyView()V

    .line 5000
    iget-object v0, p0, Lo/recycleChildren;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/recycleChildren;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/recycleChildren;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/recycleChildren;->ICustomTabsCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/recycleChildren;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/recycleChildren;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1, p2}, Lo/zzc;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    new-instance p1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->assetRecyclerView:I

    invoke-virtual {p0, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 39
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->assetRecyclerView:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "assetRecyclerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/recycleChildren;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    iget-object p1, p0, Lo/recycleChildren;->onNavigationEvent:Lo/setOnScrollListener;

    const-string v0, "assetListIem"

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1024
    :cond_0
    iget-object p1, p1, Lo/setOnScrollListener;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 42
    iget-object v1, p0, Lo/recycleChildren;->onNavigationEvent:Lo/setOnScrollListener;

    if-nez v1, :cond_1

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2023
    :cond_1
    iget v0, v1, Lo/setOnScrollListener;->onMessageChannelReady:I

    if-ltz v0, :cond_2

    const-string v1, "$this$lastIndex"

    .line 42
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleComponentAsset;

    :goto_0
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleComponentAsset;

    .line 43
    iget-object v1, p0, Lo/recycleChildren;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    .line 3019
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "java.util.Collections.singletonList(element)"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    .line 43
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v1, v0}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 44
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->assetRecyclerView:I

    invoke-virtual {p0, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 63
    new-instance p2, Lo/recycleChildren$extraCallback;

    invoke-direct {p2, p1, p0}, Lo/recycleChildren$extraCallback;-><init>(Ljava/util/List;Lo/recycleChildren;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    .line 64
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    :cond_3
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->backButton:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "backButton"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/recycleChildren$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/recycleChildren$onNavigationEvent;-><init>(Lo/recycleChildren;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
