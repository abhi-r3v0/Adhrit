.class Landroidx/recyclerview/widget/RecyclerView$onPostMessage;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 5531
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private onPostMessage()V
    .locals 2

    .line 5578
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5579
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 5581
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5582
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 5536
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5537
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5539
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 5540
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/onSkipToNext;

    .line 6460
    iget-object v0, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 5541
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4

    .line 5547
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5548
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/onSkipToNext;

    const/4 v1, 0x1

    if-lez p2, :cond_0

    .line 6507
    iget-object v2, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, p2, p3}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6508
    iget p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    or-int/2addr p1, v3

    iput p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    .line 6509
    iget-object p1, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5549
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->onPostMessage()V

    :cond_1
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 4

    .line 5555
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5556
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/onSkipToNext;

    const/4 v2, 0x1

    if-lez p2, :cond_0

    .line 6519
    iget-object v3, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1, p2, v1}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6520
    iget p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    or-int/2addr p1, v2

    iput p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    .line 6521
    iget-object p1, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5557
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->onPostMessage()V

    :cond_1
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 4

    .line 5571
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5572
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/onSkipToNext;

    const/4 v2, 0x1

    if-eq p1, p2, :cond_1

    if-ne p3, v2, :cond_0

    .line 6546
    iget-object p3, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, p1, p2, v1}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6547
    iget p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    or-int/2addr p1, v3

    iput p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    .line 6548
    iget-object p1, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 6544
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 5573
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->onPostMessage()V

    :cond_2
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 5

    .line 5563
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5564
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->extraCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/onSkipToNext;

    const/4 v2, 0x1

    if-lez p2, :cond_0

    .line 6531
    iget-object v3, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1, p2, v1}, Lo/onSkipToNext;->onNavigationEvent(IIILjava/lang/Object;)Lo/onSkipToNext$extraCallback;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6532
    iget p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    or-int/2addr p1, v4

    iput p1, v0, Lo/onSkipToNext;->onRelationshipValidationResult:I

    .line 6533
    iget-object p1, v0, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5565
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$onPostMessage;->onPostMessage()V

    :cond_1
    return-void
.end method
