.class public abstract Lo/setExpandedActionViewsExclusive;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setMenuCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setExpandedActionViewsExclusive$onNavigationEvent;
    }
.end annotation


# instance fields
.field private extraCallback:Lo/ActivityChooserView$InnerLayout;

.field private onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field onNavigationEvent:Lo/setExpandActivityOverflowButtonDrawable;

.field private onPostMessage:Lo/setExpandedActionViewsExclusive$onNavigationEvent;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/ActivityChooserView$InnerLayout;Lo/setExpandedActionViewsExclusive$onNavigationEvent;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 23
    iput-object p3, p0, Lo/setExpandedActionViewsExclusive;->onPostMessage:Lo/setExpandedActionViewsExclusive$onNavigationEvent;

    .line 24
    iput-object p2, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    .line 1280
    iget-object p1, p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 25
    iput-object p1, p0, Lo/setExpandedActionViewsExclusive;->onNavigationEvent:Lo/setExpandActivityOverflowButtonDrawable;

    return-void
.end method

.method private asInterface(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 195
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 199
    :cond_0
    iget-object p1, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 9538
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    .line 9540
    :cond_1
    iget-object p1, p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {p1}, Lo/setExpandActivityOverflowButtonDrawable;->asBinder()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 200
    :goto_0
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 9580
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 9582
    :cond_2
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->getInterfaceDescriptor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_1
    sub-int/2addr v1, p1

    .line 203
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(I)I
    .locals 3

    .line 70
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_4

    .line 5094
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 5286
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback$Stub:Lo/dispatchPopulateAccessibilityEvent;

    .line 6043
    iget-object v2, v0, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    goto :goto_1

    .line 7035
    :cond_1
    iget-object v1, v0, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 5099
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5102
    :cond_2
    iget-object v1, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v1}, Lo/ActivityChooserView$InnerLayout;->asInterface()I

    move-result v1

    .line 5103
    iget-object v2, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v2, v0}, Lo/ActivityChooserView$InnerLayout;->extraCallback(Lo/dispatchPopulateAccessibilityEvent;)I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3

    move p1, v0

    goto :goto_0

    .line 5112
    :cond_3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_4
    if-lez p1, :cond_6

    .line 7126
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7127
    iget-object v1, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 7130
    iget-object v2, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7131
    iget-object v2, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    goto :goto_0

    .line 7135
    :cond_5
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v0}, Lo/ActivityChooserView$InnerLayout;->ICustomTabsCallback$Stub()I

    move-result v0

    .line 7136
    iget-object v1, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v1}, Lo/ActivityChooserView$InnerLayout;->asBinder()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7137
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    move v1, p1

    :cond_6
    :goto_1
    return v1
.end method

.method private onRelationshipValidationResult(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 172
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object p1, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 8538
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    .line 8540
    :cond_1
    iget-object p1, p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {p1}, Lo/setExpandActivityOverflowButtonDrawable;->asBinder()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 177
    :goto_0
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 8580
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 8582
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->getInterfaceDescriptor()Ljava/lang/Integer;

    .line 178
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7156
    invoke-direct {p0, p1}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady(I)I

    move-result p1

    neg-int p3, p1

    .line 7157
    invoke-virtual {p0, p3}, Lo/setExpandedActionViewsExclusive;->onPostMessage(I)V

    .line 7159
    iget-object p3, p0, Lo/setExpandedActionViewsExclusive;->onPostMessage:Lo/setExpandedActionViewsExclusive$onNavigationEvent;

    invoke-interface {p3, p2}, Lo/setExpandedActionViewsExclusive$onNavigationEvent;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/setExpandedActionViewsExclusive;->onRelationshipValidationResult(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ICustomTabsCallback$Stub(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 245
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12210
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12215
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final extraCallback(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 230
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/setExpandedActionViewsExclusive;->asInterface(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 255
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/setExpandedActionViewsExclusive;->asInterface(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Z
    .locals 7

    .line 2043
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2044
    :cond_0
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v0}, Lo/ActivityChooserView$InnerLayout;->onTransact()I

    move-result v0

    .line 2045
    iget-object v2, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v2}, Lo/ActivityChooserView$InnerLayout;->asInterface()I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-lez v0, :cond_2

    neg-int p1, v0

    .line 55
    invoke-virtual {p0, p1}, Lo/setExpandedActionViewsExclusive;->onPostMessage(I)V

    return v2

    .line 3029
    :cond_2
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const/4 v3, 0x0

    goto :goto_4

    .line 3031
    :cond_3
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3510
    iget-object v3, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    invoke-virtual {v3}, Lo/generateOverflowButtonLayoutParams;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3511
    iget-object v6, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    invoke-interface {v6, v5}, Lo/setExpandActivityOverflowButtonDrawable;->ICustomTabsCallback(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3033
    :cond_5
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-ne v4, v0, :cond_6

    goto :goto_2

    .line 3034
    :cond_6
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v0}, Lo/ActivityChooserView$InnerLayout;->ICustomTabsCallback$Stub()I

    move-result v0

    .line 3035
    iget-object v3, p0, Lo/setExpandedActionViewsExclusive;->extraCallback:Lo/ActivityChooserView$InnerLayout;

    invoke-interface {v3}, Lo/ActivityChooserView$InnerLayout;->asBinder()I

    move-result v3

    sub-int/2addr v3, v0

    if-gez v3, :cond_7

    goto :goto_2

    :cond_7
    :goto_4
    if-lez v3, :cond_8

    neg-int v0, v3

    .line 4156
    invoke-direct {p0, v0}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady(I)I

    move-result v0

    neg-int v0, v0

    .line 4157
    invoke-virtual {p0, v0}, Lo/setExpandedActionViewsExclusive;->onPostMessage(I)V

    .line 4159
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onPostMessage:Lo/setExpandedActionViewsExclusive$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/setExpandedActionViewsExclusive$onNavigationEvent;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return v2

    :cond_8
    return v1
.end method

.method public final onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 235
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10210
    iget-object v0, p0, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10215
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final onPostMessage(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 152
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->extraCallback()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8156
    invoke-direct {p0, p1}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady(I)I

    move-result p1

    neg-int p3, p1

    .line 8157
    invoke-virtual {p0, p3}, Lo/setExpandedActionViewsExclusive;->onPostMessage(I)V

    .line 8159
    iget-object p3, p0, Lo/setExpandedActionViewsExclusive;->onPostMessage:Lo/setExpandedActionViewsExclusive$onNavigationEvent;

    invoke-interface {p3, p2}, Lo/setExpandedActionViewsExclusive$onNavigationEvent;->onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 250
    invoke-virtual {p0}, Lo/setExpandedActionViewsExclusive;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lo/setExpandedActionViewsExclusive;->onRelationshipValidationResult(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method abstract onPostMessage(I)V
.end method
