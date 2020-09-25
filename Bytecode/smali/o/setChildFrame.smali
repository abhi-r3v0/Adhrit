.class final Lo/setChildFrame;
.super Lo/ActivityChooserView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setChildFrame$onPostMessage;
    }
.end annotation


# instance fields
.field private getInterfaceDescriptor:Z


# direct methods
.method private constructor <init>(Lo/setChildFrame$onPostMessage;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/ActivityChooserView;-><init>(Lo/ActivityChooserView$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setChildFrame$onPostMessage;B)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lo/setChildFrame;-><init>(Lo/setChildFrame$onPostMessage;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/view/View;)Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    .line 45
    iget v1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    if-gt v1, v0, :cond_0

    iget v0, p0, Lo/ActivityChooserView;->onTransact:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final ICustomTabsCallback$Stub()Landroid/graphics/Rect;
    .locals 6

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lo/ActivityChooserView;->onTransact:I

    .line 2323
    iget v2, p0, Lo/ActivityChooserView;->onNavigationEvent:I

    sub-int/2addr v1, v2

    .line 51
    iget v2, p0, Lo/ActivityChooserView;->asBinder:I

    iget v3, p0, Lo/ActivityChooserView;->onTransact:I

    iget v4, p0, Lo/ActivityChooserView;->asBinder:I

    .line 2327
    iget v5, p0, Lo/ActivityChooserView;->onMessageChannelReady:I

    add-int/2addr v4, v5

    .line 51
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lo/ActivityChooserView;->onTransact:I

    .line 53
    iget v1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    return-object v0
.end method

.method final asBinder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final asInterface()V
    .locals 4

    .line 21
    iget-object v0, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    iget-boolean v0, p0, Lo/setChildFrame;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lo/setChildFrame;->getInterfaceDescriptor:Z

    .line 25
    invoke-virtual {p0}, Lo/setChildFrame;->onTransact()Lo/needsDividerBefore;

    move-result-object v0

    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    iget-object v2, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lo/needsDividerBefore;->onNavigationEvent(I)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lo/setChildFrame;->onTransact()Lo/needsDividerBefore;

    move-result-object v0

    iget-object v1, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v1}, Lo/needsDividerBefore;->onPostMessage(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final getInterfaceDescriptor()I
    .locals 2

    .line 3477
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v0

    .line 82
    iget v1, p0, Lo/ActivityChooserView;->onTransact:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final newSession()I
    .locals 1

    .line 3292
    iget v0, p0, Lo/ActivityChooserView;->asBinder:I

    return v0
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/ActivityChooserView;->asBinder:I

    .line 65
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/ActivityChooserView;->onTransact:I

    .line 67
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    return-void
.end method

.method final onRelationshipValidationResult()V
    .locals 1

    .line 1477
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v0

    .line 35
    iput v0, p0, Lo/ActivityChooserView;->onTransact:I

    .line 36
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    iput v0, p0, Lo/ActivityChooserView;->asBinder:I

    return-void
.end method

.method public final warmup()I
    .locals 1

    .line 3307
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    return v0
.end method
