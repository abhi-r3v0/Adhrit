.class public final Lo/AppsFlyerLibCore$a;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppsFlyerLibCore$a$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

.field private ICustomTabsCallback$Stub$Proxy:Lo/AppsFlyerLibCore$a$onMessageChannelReady;

.field private ICustomTabsService:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private asBinder:I

.field private asInterface:Z

.field public extraCallback:F

.field private getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

.field public onMessageChannelReady:F

.field private onNavigationEvent:I

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    .line 77
    invoke-direct {p0, v0}, Lo/AppsFlyerLibCore$a;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lo/AppsFlyerLibCore$a;->onTransact:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 61
    iput v0, p0, Lo/AppsFlyerLibCore$a;->extraCallback:F

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 63
    iput v0, p0, Lo/AppsFlyerLibCore$a;->onMessageChannelReady:F

    .line 68
    new-instance v0, Lo/AppsFlyerLibCore$a$3;

    invoke-direct {v0, p0}, Lo/AppsFlyerLibCore$a$3;-><init>(Lo/AppsFlyerLibCore$a;)V

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsService:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 98
    iput-boolean p1, p0, Lo/AppsFlyerLibCore$a;->asInterface:Z

    const/16 p1, 0x11

    .line 99
    iput p1, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub$Proxy:Lo/AppsFlyerLibCore$a$onMessageChannelReady;

    return-void
.end method

.method static synthetic extraCallback(Lo/AppsFlyerLibCore$a;I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9645
    :goto_0
    iput-boolean p1, p0, Lo/AppsFlyerLibCore$a;->onTransact:Z

    return-void
.end method

.method private extraCallback(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 4

    .line 613
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const v3, 0x800003

    if-eq v0, v3, :cond_3

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const v3, 0x800005

    if-eq v0, v3, :cond_3

    .line 615
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/16 v3, 0x30

    if-eq v0, v3, :cond_3

    .line 616
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/16 v3, 0x50

    if-ne v0, v3, :cond_5

    .line 617
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    return v1

    .line 618
    :cond_5
    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_8

    .line 619
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_7

    .line 620
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2

    .line 622
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method static synthetic onMessageChannelReady(Lo/AppsFlyerLibCore$a;)F
    .locals 0

    .line 51
    iget p0, p0, Lo/AppsFlyerLibCore$a;->extraCallback:F

    return p0
.end method

.method private static onMessageChannelReady(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 4

    .line 528
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 529
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 530
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method private onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;
    .locals 7

    .line 555
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 559
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p4, :cond_1

    .line 563
    invoke-direct {p0, v0}, Lo/AppsFlyerLibCore$a;->extraCallback(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-object v1

    :cond_1
    const p4, 0x7fffffff

    .line 570
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 571
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_0
    const v2, 0x800005

    const v3, 0x800003

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p3, v3, :cond_3

    .line 576
    iget-boolean v6, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    if-eqz v6, :cond_4

    :cond_3
    if-ne p3, v2, :cond_5

    iget-boolean v6, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    if-eqz v6, :cond_5

    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-ne p3, v3, :cond_6

    .line 579
    iget-boolean v3, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    if-nez v3, :cond_8

    :cond_6
    if-ne p3, v2, :cond_7

    iget-boolean p3, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 582
    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    if-ge v5, p3, :cond_c

    .line 583
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz v6, :cond_9

    .line 587
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    .line 594
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 595
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    .line 594
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    .line 601
    :cond_a
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 602
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 601
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :goto_3
    if-ge v2, p4, :cond_b

    move-object v1, p3

    move p4, v2

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    :goto_4
    return-object v1
.end method

.method static synthetic onPostMessage(Lo/AppsFlyerLibCore$a;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsService:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 110
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 111
    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const v1, 0x800003

    if-eq v0, v1, :cond_1

    const v1, 0x800005

    if-ne v0, v1, :cond_3

    .line 112
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lo/fromRating;->onPostMessage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    .line 115
    :cond_3
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsService:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    iput-object p1, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    .line 118
    :cond_4
    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 5

    .line 168
    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 170
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 175
    instance-of v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v2, :cond_1

    return-object v1

    .line 179
    :cond_1
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 181
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 182
    iget-boolean v2, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const v4, 0x800005

    if-eq v2, v4, :cond_3

    :cond_2
    iget-boolean v2, p0, Lo/AppsFlyerLibCore$a;->onPostMessage:Z

    if-nez v2, :cond_7

    iget v2, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const v4, 0x800003

    if-ne v2, v4, :cond_7

    .line 5677
    :cond_3
    iget-object v2, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eq v2, p1, :cond_5

    .line 5678
    :cond_4
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 5680
    :cond_5
    iget-object p1, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 6512
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    .line 6513
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    div-int/2addr v2, v0

    if-lt p2, v2, :cond_6

    .line 6514
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    sub-int/2addr p2, p1

    :cond_6
    aput p2, v1, v3

    goto :goto_0

    .line 6677
    :cond_7
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_9

    .line 6678
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 6680
    :cond_9
    iget-object p1, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 185
    invoke-static {p2, p1}, Lo/AppsFlyerLibCore$a;->onMessageChannelReady(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p1

    aput p1, v1, v3

    goto :goto_0

    .line 187
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 188
    iget v2, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-ne v2, v3, :cond_e

    .line 7670
    iget-object v2, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eq v2, p1, :cond_c

    .line 7671
    :cond_b
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 7673
    :cond_c
    iget-object p1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 8512
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    .line 8513
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    div-int/2addr v2, v0

    if-lt p2, v2, :cond_d

    .line 8514
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    sub-int/2addr p2, p1

    :cond_d
    aput p2, v1, v4

    goto :goto_0

    .line 8670
    :cond_e
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_10

    .line 8671
    :cond_f
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 8673
    :cond_10
    iget-object p1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 191
    invoke-static {p2, p1}, Lo/AppsFlyerLibCore$a;->onMessageChannelReady(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result p1

    aput p1, v1, v4

    :cond_11
    :goto_0
    return-object v1
.end method

.method public final calculateScrollDistance(II)[I
    .locals 13

    .line 200
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_5

    :cond_0
    iget v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lo/AppsFlyerLibCore$a;->onMessageChannelReady:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 207
    new-instance v12, Landroid/widget/Scroller;

    iget-object v3, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v12, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 9466
    iget v3, p0, Lo/AppsFlyerLibCore$a;->onMessageChannelReady:F

    const v4, 0x7fffffff

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    .line 9467
    iget-object v1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v1, :cond_2

    .line 9468
    iget-object v1, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lo/AppsFlyerLibCore$a;->onMessageChannelReady:F

    :goto_0
    mul-float v1, v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 9469
    :cond_2
    iget-object v1, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v1, :cond_4

    .line 9470
    iget-object v1, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lo/AppsFlyerLibCore$a;->onMessageChannelReady:F

    goto :goto_0

    .line 9474
    :cond_3
    iget v1, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback:I

    if-eq v1, v2, :cond_4

    :goto_1
    move v11, v1

    goto :goto_2

    :cond_4
    const v11, 0x7fffffff

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v10, v11

    move-object v3, v12

    move v6, p1

    move v7, p2

    move v8, v10

    move v9, v11

    .line 210
    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 p1, 0x0

    .line 213
    invoke-virtual {v12}, Landroid/widget/Scroller;->getFinalX()I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x1

    .line 214
    invoke-virtual {v12}, Landroid/widget/Scroller;->getFinalY()I

    move-result p2

    aput p2, v0, p1

    return-object v0

    .line 204
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object p1

    return-object p1
.end method

.method public final createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 1

    .line 221
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lo/AppsFlyerLibCore$a$4;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lo/AppsFlyerLibCore$a$4;-><init>(Lo/AppsFlyerLibCore$a;Landroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 5

    .line 1133
    iget v0, p0, Lo/AppsFlyerLibCore$a;->onNavigationEvent:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x30

    const v3, 0x800003

    if-eq v0, v1, :cond_9

    const/16 v1, 0x50

    const v4, 0x800005

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 2677
    :cond_0
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2678
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2680
    :cond_2
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1138
    invoke-direct {p0, p1, v0, v4, v2}, Lo/AppsFlyerLibCore$a;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 1677
    :cond_3
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_5

    .line 1678
    :cond_4
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1680
    :cond_5
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1135
    invoke-direct {p0, p1, v0, v3, v2}, Lo/AppsFlyerLibCore$a;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4670
    :cond_6
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_8

    .line 4671
    :cond_7
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 4673
    :cond_8
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1144
    invoke-direct {p0, p1, v0, v4, v2}, Lo/AppsFlyerLibCore$a;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 3670
    :cond_9
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_b

    .line 3671
    :cond_a
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 3673
    :cond_b
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1141
    invoke-direct {p0, p1, v0, v3, v2}, Lo/AppsFlyerLibCore$a;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1147
    :cond_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4677
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_e

    .line 4678
    :cond_d
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 4680
    :cond_e
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->onRelationshipValidationResult:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1148
    invoke-direct {p0, p1, v0, v1, v2}, Lo/AppsFlyerLibCore$a;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 5670
    :cond_f
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_11

    .line 5671
    :cond_10
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 5673
    :cond_11
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1151
    invoke-direct {p0, p1, v0, v1, v2}, Lo/AppsFlyerLibCore$a;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;IZ)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_12

    .line 1157
    iget-object v0, p0, Lo/AppsFlyerLibCore$a;->getInterfaceDescriptor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/AppsFlyerLibCore$a;->asBinder:I

    goto :goto_1

    :cond_12
    const/4 v0, -0x1

    .line 1159
    iput v0, p0, Lo/AppsFlyerLibCore$a;->asBinder:I

    :goto_1
    return-object p1
.end method
