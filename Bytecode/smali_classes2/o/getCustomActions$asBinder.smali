.class final Lo/getCustomActions$asBinder;
.super Lo/getCustomActions$onMessageChannelReady;
.source ""

# interfaces
.implements Lo/getRatingType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "asBinder"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getCustomActions;

.field private final onMessageChannelReady:Lo/getRatingType;

.field private final onNavigationEvent:Lo/getRatingType;

.field private onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 1

    .line 1328
    iput-object p1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/getCustomActions$onMessageChannelReady;-><init>(Lo/getCustomActions;B)V

    .line 1329
    iput-object p0, p0, Lo/getCustomActions$asBinder;->onNavigationEvent:Lo/getRatingType;

    .line 1340
    new-instance p1, Lo/getCustomActions$asBinder$4;

    invoke-direct {p1, p0}, Lo/getCustomActions$asBinder$4;-><init>(Lo/getCustomActions$asBinder;)V

    iput-object p1, p0, Lo/getCustomActions$asBinder;->onMessageChannelReady:Lo/getRatingType;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    .line 1408
    invoke-virtual {p0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 2539
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 3482
    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 3573
    iget-object v0, v0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2541
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 4482
    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 2541
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    .line 2543
    :cond_0
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 5482
    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 2543
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    move v3, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 2546
    :goto_1
    invoke-static {p1}, Lo/getPlaybackState;->onPostMessage(Landroid/view/accessibility/AccessibilityNodeInfo;)Lo/getPlaybackState;

    move-result-object v4

    .line 2548
    invoke-static {v0, v3, v2, v2}, Lo/getPlaybackState$onPostMessage;->onPostMessage(IIZI)Lo/getPlaybackState$onPostMessage;

    move-result-object v0

    .line 2551
    invoke-virtual {v4, v0}, Lo/getPlaybackState;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 1432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_5

    .line 5555
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 6482
    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5559
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 5560
    iget-object v2, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 6803
    iget-boolean v2, v2, Lo/getCustomActions;->asInterface:Z

    if-nez v2, :cond_2

    goto :goto_2

    .line 5563
    :cond_2
    iget-object v2, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    iget v2, v2, Lo/getCustomActions;->extraCallback:I

    if-lez v2, :cond_3

    const/16 v2, 0x2000

    .line 5564
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5566
    :cond_3
    iget-object v2, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    iget v2, v2, Lo/getCustomActions;->extraCallback:I

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_4

    const/16 v0, 0x1000

    .line 5567
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5569
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public final ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1402
    iget-object v0, p0, Lo/getCustomActions$asBinder;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(I)Z
    .locals 3

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v2, 0x1000

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    if-ne p1, v0, :cond_2

    .line 1449
    iget-object p1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 7675
    iget p1, p1, Lo/getCustomActions;->extraCallback:I

    sub-int/2addr p1, v1

    goto :goto_2

    .line 1450
    :cond_2
    iget-object p1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 8675
    iget p1, p1, Lo/getCustomActions;->extraCallback:I

    add-int/2addr p1, v1

    .line 9468
    :goto_2
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 9803
    iget-boolean v0, v0, Lo/getCustomActions;->asInterface:Z

    if-eqz v0, :cond_3

    .line 9469
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    invoke-virtual {v0, p1, v1}, Lo/getCustomActions;->onMessageChannelReady(IZ)V

    :cond_3
    return v1

    .line 1446
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method final ICustomTabsCallback$Stub()V
    .locals 9

    .line 1478
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    const v1, 0x1020048

    .line 1489
    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    const v2, 0x1020049

    .line 1490
    invoke-static {v0, v2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    const v3, 0x1020046

    .line 1491
    invoke-static {v0, v3}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    const v4, 0x1020047

    .line 1492
    invoke-static {v0, v4}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    .line 1494
    iget-object v5, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 11482
    iget-object v5, v5, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1498
    :cond_0
    iget-object v5, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 12482
    iget-object v5, v5, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    .line 1498
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1503
    :cond_1
    iget-object v6, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 12803
    iget-boolean v6, v6, Lo/getCustomActions;->asInterface:Z

    if-nez v6, :cond_2

    return-void

    .line 1507
    :cond_2
    iget-object v6, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 13573
    iget-object v6, v6, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_8

    .line 1508
    iget-object v3, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 13577
    iget-object v3, v3, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v7, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    const v4, 0x1020048

    goto :goto_1

    :cond_4
    const v4, 0x1020049

    :goto_1
    if-eqz v3, :cond_5

    const v1, 0x1020049

    .line 1512
    :cond_5
    iget-object v2, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    iget v2, v2, Lo/getCustomActions;->extraCallback:I

    sub-int/2addr v5, v7

    if-ge v2, v5, :cond_6

    .line 1513
    new-instance v2, Lo/getPlaybackState$extraCallback;

    invoke-direct {v2, v4, v8}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lo/getCustomActions$asBinder;->onNavigationEvent:Lo/getRatingType;

    invoke-static {v0, v2, v8, v3}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    .line 1517
    :cond_6
    iget-object v2, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    iget v2, v2, Lo/getCustomActions;->extraCallback:I

    if-lez v2, :cond_7

    .line 1518
    new-instance v2, Lo/getPlaybackState$extraCallback;

    invoke-direct {v2, v1, v8}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lo/getCustomActions$asBinder;->onMessageChannelReady:Lo/getRatingType;

    invoke-static {v0, v2, v8, v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    :cond_7
    return-void

    .line 1523
    :cond_8
    iget-object v1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    iget v1, v1, Lo/getCustomActions;->extraCallback:I

    sub-int/2addr v5, v7

    if-ge v1, v5, :cond_9

    .line 1524
    new-instance v1, Lo/getPlaybackState$extraCallback;

    invoke-direct {v1, v4, v8}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lo/getCustomActions$asBinder;->onNavigationEvent:Lo/getRatingType;

    invoke-static {v0, v1, v8, v2}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    .line 1528
    :cond_9
    iget-object v1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    iget v1, v1, Lo/getCustomActions;->extraCallback:I

    if-lez v1, :cond_a

    .line 1529
    new-instance v1, Lo/getPlaybackState$extraCallback;

    invoke-direct {v1, v3, v8}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lo/getCustomActions$asBinder;->onMessageChannelReady:Lo/getRatingType;

    invoke-static {v0, v1, v8, v2}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V

    :cond_a
    return-void
.end method

.method public final asBinder()V
    .locals 2

    .line 1418
    invoke-virtual {p0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    .line 1419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1420
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1458
    iget-object v0, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 1459
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 0

    .line 1413
    invoke-virtual {p0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 0

    .line 1388
    invoke-virtual {p0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method

.method public final onPostMessage(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1393
    invoke-virtual {p0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    if-eqz p1, :cond_0

    .line 1395
    iget-object v0, p0, Lo/getCustomActions$asBinder;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x2

    .line 1356
    invoke-static {p1, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    .line 1359
    new-instance p1, Lo/getCustomActions$asBinder$5;

    invoke-direct {p1, p0}, Lo/getCustomActions$asBinder$5;-><init>(Lo/getCustomActions$asBinder;)V

    iput-object p1, p0, Lo/getCustomActions$asBinder;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 1366
    iget-object p1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    invoke-static {p1}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    .line 1368
    iget-object p1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage(Landroid/view/View;)Z
    .locals 2

    .line 14334
    check-cast p1, Lo/getCustomActions;

    .line 14675
    iget p1, p1, Lo/getCustomActions;->extraCallback:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 15468
    iget-object v1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    .line 15803
    iget-boolean v1, v1, Lo/getCustomActions;->asInterface:Z

    if-eqz v1, :cond_0

    .line 15469
    iget-object v1, p0, Lo/getCustomActions$asBinder;->extraCallback:Lo/getCustomActions;

    invoke-virtual {v1, p1, v0}, Lo/getCustomActions;->onMessageChannelReady(IZ)V

    :cond_0
    return v0
.end method

.method public final onTransact()V
    .locals 0

    .line 1426
    invoke-virtual {p0}, Lo/getCustomActions$asBinder;->ICustomTabsCallback$Stub()V

    return-void
.end method
