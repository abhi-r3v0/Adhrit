.class public final Lo/setTextAppearance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ActivityChooserView$InnerLayout;


# instance fields
.field private ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback()Lo/setExpandActivityOverflowButtonDrawable;
    .locals 2

    .line 65
    new-instance v0, Lo/getSupportBackgroundTintList;

    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lo/getSupportBackgroundTintList;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 2

    .line 130
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 9280
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 130
    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->onTransact()Landroid/view/View;

    move-result-object v0

    .line 10095
    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final asBinder()I
    .locals 2

    .line 120
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final asInterface()I
    .locals 1

    .line 110
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 70
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)I
    .locals 0

    .line 8043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 85
    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public final onMessageChannelReady()Lo/onMenuItemClick;
    .locals 3

    .line 55
    new-instance v0, Lo/needsDividerAfter;

    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 6280
    iget-object v2, v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 55
    invoke-direct {v0, v1, v2}, Lo/needsDividerAfter;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/setMenuCallbacks;
    .locals 3

    .line 60
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 7148
    new-instance v1, Lo/peekMenu;

    iget-object v2, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    invoke-direct {v1, v0, v2, v0}, Lo/peekMenu;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/ActivityChooserView$InnerLayout;Lo/setExpandedActionViewsExclusive$onNavigationEvent;)V

    return-object v1
.end method

.method public final onPostMessage(Landroid/view/View;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final onPostMessage(Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;)Lo/AlertDialogLayout;
    .locals 10

    .line 2028
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2623
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2028
    new-instance v0, Lo/AppCompatAutoCompleteTextView;

    invoke-direct {v0}, Lo/AppCompatAutoCompleteTextView;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lo/updateAppearance;

    invoke-direct {v0}, Lo/updateAppearance;-><init>()V

    .line 35
    :goto_1
    new-instance v9, Lo/AlertDialogLayout;

    iget-object v2, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 36
    invoke-interface {v0, v2}, Lo/onAttachedToWindow;->extraCallback(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lo/setOnDismissListener;

    move-result-object v3

    new-instance v4, Lo/getTransportControls;

    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3275
    iget-object v1, v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    .line 38
    iget-object v5, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 4255
    iget-object v5, v5, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    const/4 v6, 0x0

    .line 41
    invoke-interface {v0}, Lo/onAttachedToWindow;->onMessageChannelReady()Lo/setTextSize;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lo/getTransportControls;-><init>(Lo/needsDividerBefore;Lo/MediaSessionCompat$1$onMessageChannelReady;Ljava/lang/Integer;Lo/setTextSize;)V

    new-instance v7, Lo/onPause;

    invoke-direct {v7}, Lo/onPause;-><init>()V

    .line 45
    invoke-interface {v0}, Lo/onAttachedToWindow;->onNavigationEvent()Lo/sort;

    move-result-object v0

    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 5261
    iget v1, v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asBinder:I

    .line 45
    invoke-interface {v0, v1}, Lo/sort;->onMessageChannelReady(I)Lo/onChooseActivity;

    move-result-object v8

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lo/AlertDialogLayout;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/setOnDismissListener;Lo/setTextSize;Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;Lo/ActivityChooserModel$ActivityChooserModelClient;Lo/onChooseActivity;)V

    return-object v9
.end method

.method public final onPostMessage()Lo/onTextChanged;
    .locals 1

    .line 6009
    invoke-interface {p0}, Lo/ActivityChooserView$InnerLayout;->extraCallback()I

    move-result v0

    if-nez v0, :cond_0

    .line 6010
    invoke-interface {p0}, Lo/ActivityChooserView$InnerLayout;->onRelationshipValidationResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lo/getAutoSizeMaxTextSize;

    invoke-direct {v0}, Lo/getAutoSizeMaxTextSize;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lo/setSupportAllCaps;

    invoke-direct {v0}, Lo/setSupportAllCaps;-><init>()V

    return-object v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 90
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public final onTransact()I
    .locals 2

    .line 125
    iget-object v0, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 8280
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 125
    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->onRelationshipValidationResult()Landroid/view/View;

    move-result-object v0

    .line 9080
    iget-object v1, p0, Lo/setTextAppearance;->ICustomTabsCallback:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    return v0
.end method
