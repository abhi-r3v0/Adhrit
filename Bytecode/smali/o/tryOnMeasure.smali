.class final Lo/tryOnMeasure;
.super Lo/ActivityChooserView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tryOnMeasure$extraCallback;
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/tryOnMeasure$extraCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/ActivityChooserView;-><init>(Lo/ActivityChooserView$onMessageChannelReady;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/tryOnMeasure$extraCallback;B)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lo/tryOnMeasure;-><init>(Lo/tryOnMeasure$extraCallback;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/view/View;)Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    .line 66
    iget v1, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    if-lt v1, p1, :cond_0

    iget p1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final ICustomTabsCallback$Stub()Landroid/graphics/Rect;
    .locals 5

    .line 23
    iget v0, p0, Lo/ActivityChooserView;->onTransact:I

    .line 1323
    iget v1, p0, Lo/ActivityChooserView;->onNavigationEvent:I

    sub-int/2addr v0, v1

    .line 24
    iget v1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 1327
    iget v2, p0, Lo/ActivityChooserView;->onMessageChannelReady:I

    sub-int/2addr v1, v2

    .line 26
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lo/ActivityChooserView;->onTransact:I

    iget v4, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    return-object v2
.end method

.method final asBinder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final asInterface()V
    .locals 5

    .line 40
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 1489
    iget-object v1, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 43
    iget-object v1, p0, Lo/ActivityChooserView;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 44
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 46
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 47
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 49
    iget v3, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 50
    iget v3, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    .line 51
    iget v3, p0, Lo/ActivityChooserView;->onTransact:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lo/ActivityChooserView;->onTransact:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getInterfaceDescriptor()I
    .locals 2

    .line 95
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 6489
    iget-object v1, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final newSession()I
    .locals 1

    .line 6315
    iget v0, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    return v0
.end method

.method final onPostMessage(Landroid/view/View;)V
    .locals 2

    .line 72
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 3481
    iget-object v1, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 72
    iget v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 4327
    iget v1, p0, Lo/ActivityChooserView;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    .line 4489
    iget-object v1, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5481
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v0

    .line 74
    iput v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 75
    iget v0, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    iput v0, p0, Lo/ActivityChooserView;->onTransact:I

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 80
    :goto_0
    iget v0, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    invoke-virtual {p0}, Lo/ActivityChooserView;->ICustomTabsCallback$Stub$Proxy()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    return-void
.end method

.method final onRelationshipValidationResult()V
    .locals 1

    .line 2481
    iget-object v0, p0, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v0

    .line 57
    iput v0, p0, Lo/ActivityChooserView;->ICustomTabsCallback:I

    .line 58
    iget v0, p0, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    iput v0, p0, Lo/ActivityChooserView;->onTransact:I

    return-void
.end method

.method public final warmup()I
    .locals 1

    .line 6319
    iget v0, p0, Lo/ActivityChooserView;->onTransact:I

    return v0
.end method
