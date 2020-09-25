.class public final Lo/setExpandActivityOverflowButtonContentDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ActivityChooserView$InnerLayout;


# instance fields
.field private extraCallback:Lo/sort;

.field private onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 30
    new-instance p1, Lo/getSessionToken2Bundle$onMessageChannelReady;

    invoke-direct {p1}, Lo/getSessionToken2Bundle$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->extraCallback:Lo/sort;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)I
    .locals 1

    .line 82
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback()Lo/setExpandActivityOverflowButtonDrawable;
    .locals 2

    .line 67
    new-instance v0, Lo/setProvider;

    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lo/setProvider;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 2

    .line 132
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 7280
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 132
    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->asInterface()Landroid/view/View;

    move-result-object v0

    .line 8097
    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final asBinder()I
    .locals 2

    .line 122
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final asInterface()I
    .locals 1

    .line 112
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 72
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public final extraCallback(Lo/dispatchPopulateAccessibilityEvent;)I
    .locals 0

    .line 6043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 87
    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public final onMessageChannelReady()Lo/onMenuItemClick;
    .locals 3

    .line 57
    new-instance v0, Lo/ActionMenuView$ActionMenuChildView;

    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 4280
    iget-object v2, v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 57
    invoke-direct {v0, v1, v2}, Lo/ActionMenuView$ActionMenuChildView;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lo/setExpandActivityOverflowButtonDrawable;)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/setMenuCallbacks;
    .locals 3

    .line 62
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 5152
    new-instance v1, Lo/getMenu;

    iget-object v2, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onRelationshipValidationResult:Lo/ActivityChooserView$InnerLayout;

    invoke-direct {v1, v0, v2, v0}, Lo/getMenu;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lo/ActivityChooserView$InnerLayout;Lo/setExpandedActionViewsExclusive$onNavigationEvent;)V

    return-object v1
.end method

.method public final onPostMessage(Landroid/view/View;)I
    .locals 1

    .line 97
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final onPostMessage(Lo/setSupportCompoundDrawablesTintList;Lo/getSupportButtonTintMode;)Lo/AlertDialogLayout;
    .locals 10

    .line 35
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 1275
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asInterface:Lo/needsDividerBefore;

    .line 2041
    new-instance v9, Lo/AlertDialogLayout;

    iget-object v2, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    new-instance v3, Lo/showPopup;

    invoke-direct {v3, v2}, Lo/showPopup;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Lo/getTransportControls;

    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 2255
    iget-object v1, v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 2043
    new-instance v5, Lo/onPause$onPostMessage;

    invoke-direct {v5}, Lo/onPause$onPostMessage;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v4, v0, v1, v6, v5}, Lo/getTransportControls;-><init>(Lo/needsDividerBefore;Lo/MediaSessionCompat$1$onMessageChannelReady;Ljava/lang/Integer;Lo/setTextSize;)V

    new-instance v7, Lo/getSessionToken2Bundle;

    invoke-direct {v7}, Lo/getSessionToken2Bundle;-><init>()V

    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->extraCallback:Lo/sort;

    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3261
    iget v1, v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->asBinder:I

    .line 2047
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

    .line 4009
    invoke-interface {p0}, Lo/ActivityChooserView$InnerLayout;->extraCallback()I

    move-result v0

    if-nez v0, :cond_0

    .line 4010
    invoke-interface {p0}, Lo/ActivityChooserView$InnerLayout;->onRelationshipValidationResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lo/getAutoSizeMaxTextSize;

    invoke-direct {v0}, Lo/getAutoSizeMaxTextSize;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lo/onInitializeAccessibilityNodeInfo;

    invoke-direct {v0}, Lo/onInitializeAccessibilityNodeInfo;-><init>()V

    return-object v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 92
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public final onTransact()I
    .locals 2

    .line 127
    iget-object v0, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 6280
    iget-object v0, v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->ICustomTabsCallback:Lo/setExpandActivityOverflowButtonDrawable;

    .line 127
    invoke-interface {v0}, Lo/setExpandActivityOverflowButtonDrawable;->ICustomTabsCallback$Stub()Landroid/view/View;

    move-result-object v0

    .line 7082
    iget-object v1, p0, Lo/setExpandActivityOverflowButtonContentDescription;->onPostMessage:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method
