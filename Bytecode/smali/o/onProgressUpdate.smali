.class public Lo/onProgressUpdate;
.super Landroid/widget/ListView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onProgressUpdate$extraCallback;,
        Lo/onProgressUpdate$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Lo/getLaunchPendingIntent;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

.field private mScrollHelper:Lo/removeQueueItem;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Lo/onProgressUpdate$ICustomTabsCallback;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 118
    sget v0, Lo/extraCallback$ICustomTabsCallback;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/onProgressUpdate;->mSelectorRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lo/onProgressUpdate;->mSelectionLeftPadding:I

    .line 52
    iput p1, p0, Lo/onProgressUpdate;->mSelectionTopPadding:I

    .line 53
    iput p1, p0, Lo/onProgressUpdate;->mSelectionRightPadding:I

    .line 54
    iput p1, p0, Lo/onProgressUpdate;->mSelectionBottomPadding:I

    .line 119
    iput-boolean p2, p0, Lo/onProgressUpdate;->mHijackFocus:Z

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 123
    :try_start_0
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lo/onProgressUpdate;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 p2, 0x1

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private clearPressedItem()V
    .locals 3

    const/4 v0, 0x0

    .line 627
    iput-boolean v0, p0, Lo/onProgressUpdate;->mDrawsInPressedState:Z

    .line 628
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 630
    invoke-virtual {p0}, Lo/onProgressUpdate;->drawableStateChanged()V

    .line 632
    iget v1, p0, Lo/onProgressUpdate;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 637
    :cond_0
    iget-object v0, p0, Lo/onProgressUpdate;->mClickAnimation:Lo/getLaunchPendingIntent;

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Lo/getLaunchPendingIntent;->onNavigationEvent()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lo/onProgressUpdate;->mClickAnimation:Lo/getLaunchPendingIntent;

    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2

    .line 540
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 541
    invoke-virtual {p0, p1, p2, v0, v1}, Lo/onProgressUpdate;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2

    .line 563
    iget-object v0, p0, Lo/onProgressUpdate;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lo/onProgressUpdate;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .locals 5

    .line 602
    iget-object v0, p0, Lo/onProgressUpdate;->mSelectorRect:Landroid/graphics/Rect;

    .line 603
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 606
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lo/onProgressUpdate;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 607
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lo/onProgressUpdate;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 608
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lo/onProgressUpdate;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 609
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lo/onProgressUpdate;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 614
    :try_start_0
    iget-object v0, p0, Lo/onProgressUpdate;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 615
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_1

    .line 616
    iget-object p2, p0, Lo/onProgressUpdate;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 618
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 622
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 4

    .line 584
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 590
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/onProgressUpdate;->positionSelectorCompat(ILandroid/view/View;)V

    if-eqz v3, :cond_3

    .line 593
    iget-object p1, p0, Lo/onProgressUpdate;->mSelectorRect:Landroid/graphics/Rect;

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 596
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 597
    invoke-static {v0, p2, p1}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;FF)V

    :cond_3
    return-void
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 1

    .line 573
    invoke-direct {p0, p1, p2}, Lo/onProgressUpdate;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 575
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 577
    invoke-static {p2, p3, p4}, Lo/MediaMetadataCompat$BitmapKey;->extraCallback(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6

    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lo/onProgressUpdate;->mDrawsInPressedState:Z

    .line 647
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 648
    invoke-virtual {p0, p3, p4}, Lo/onProgressUpdate;->drawableHotspotChanged(FF)V

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 655
    :cond_1
    invoke-virtual {p0}, Lo/onProgressUpdate;->layoutChildren()V

    .line 659
    iget v1, p0, Lo/onProgressUpdate;->mMotionPosition:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    .line 660
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    .line 661
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 665
    :cond_2
    iput p2, p0, Lo/onProgressUpdate;->mMotionPosition:I

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 670
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_3

    .line 671
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 673
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 674
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 678
    :cond_4
    invoke-direct {p0, p2, p1, p3, p4}, Lo/onProgressUpdate;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 683
    invoke-direct {p0, v4}, Lo/onProgressUpdate;->setSelectorEnabled(Z)V

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method private setSelectorEnabled(Z)V
    .locals 1

    .line 371
    iget-object v0, p0, Lo/onProgressUpdate;->mSelector:Lo/onProgressUpdate$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 2385
    iput-boolean p1, v0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    :cond_0
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lo/onProgressUpdate;->mDrawsInPressedState:Z

    return v0
.end method

.method private updateSelectorStateCompat()V
    .locals 2

    .line 556
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    invoke-direct {p0}, Lo/onProgressUpdate;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lo/onProgressUpdate;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 203
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 186
    iget-object v0, p0, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lo/onProgressUpdate;->setSelectorEnabled(Z)V

    .line 193
    invoke-direct {p0}, Lo/onProgressUpdate;->updateSelectorStateCompat()V

    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lo/onProgressUpdate;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lo/onProgressUpdate;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lo/onProgressUpdate;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lo/onProgressUpdate;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/onProgressUpdate;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4

    .line 229
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 234
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 235
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 237
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 238
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 242
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 243
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 10

    .line 290
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result p2

    .line 291
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p3

    .line 292
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 293
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/2addr p2, p3

    return p2

    :cond_0
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 312
    :goto_0
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    .line 314
    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_2

    move-object v6, v3

    move v5, v8

    .line 319
    :cond_2
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 323
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 326
    invoke-virtual {p0}, Lo/onProgressUpdate;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 327
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    :cond_3
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_4

    .line 331
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2

    .line 334
    :cond_4
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 336
    :goto_2
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 340
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v4, :cond_5

    add-int/2addr p2, v0

    .line 347
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_7

    if-ltz p5, :cond_6

    if-le v4, p5, :cond_6

    if-lez v7, :cond_6

    if-eq p2, p4, :cond_6

    return v7

    :cond_6
    return p4

    :cond_7
    if-ltz p5, :cond_8

    if-lt v4, p5, :cond_8

    move v7, p2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return p2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    .line 470
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 7

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    const/4 p2, 0x0

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    :goto_1
    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 492
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_4

    goto :goto_1

    .line 498
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 499
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 500
    invoke-virtual {p0, v4, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    .line 506
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    .line 507
    invoke-direct {p0, v3, v5, v4, p2}, Lo/onProgressUpdate;->setPressedItem(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_0

    .line 511
    invoke-direct {p0, v3, v5}, Lo/onProgressUpdate;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_6

    if-eqz p2, :cond_7

    .line 518
    :cond_6
    invoke-direct {p0}, Lo/onProgressUpdate;->clearPressedItem()V

    :cond_7
    if-eqz v3, :cond_9

    .line 523
    iget-object p2, p0, Lo/onProgressUpdate;->mScrollHelper:Lo/removeQueueItem;

    if-nez p2, :cond_8

    .line 524
    new-instance p2, Lo/removeQueueItem;

    invoke-direct {p2, p0}, Lo/removeQueueItem;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Lo/onProgressUpdate;->mScrollHelper:Lo/removeQueueItem;

    .line 526
    :cond_8
    iget-object p2, p0, Lo/onProgressUpdate;->mScrollHelper:Lo/removeQueueItem;

    .line 3240
    iput-boolean v2, p2, Lo/addQueueItem;->asBinder:Z

    .line 527
    iget-object p2, p0, Lo/onProgressUpdate;->mScrollHelper:Lo/removeQueueItem;

    invoke-virtual {p2, p0, p1}, Lo/addQueueItem;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 528
    :cond_9
    iget-object p1, p0, Lo/onProgressUpdate;->mScrollHelper:Lo/removeQueueItem;

    if-eqz p1, :cond_c

    .line 4236
    iget-boolean p2, p1, Lo/addQueueItem;->asBinder:Z

    if-eqz p2, :cond_b

    .line 4538
    iget-boolean p2, p1, Lo/addQueueItem;->onNavigationEvent:Z

    if-eqz p2, :cond_a

    .line 4541
    iput-boolean v1, p1, Lo/addQueueItem;->onPostMessage:Z

    goto :goto_4

    .line 4543
    :cond_a
    iget-object p2, p1, Lo/addQueueItem;->onMessageChannelReady:Lo/addQueueItem$onPostMessage;

    invoke-virtual {p2}, Lo/addQueueItem$onPostMessage;->extraCallback()V

    .line 4240
    :cond_b
    :goto_4
    iput-boolean v1, p1, Lo/addQueueItem;->asBinder:Z

    :cond_c
    :goto_5
    return v3
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 432
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 435
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 436
    iget-object v1, p0, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    if-nez v1, :cond_1

    .line 439
    new-instance v1, Lo/onProgressUpdate$extraCallback;

    invoke-direct {v1, p0}, Lo/onProgressUpdate$extraCallback;-><init>(Lo/onProgressUpdate;)V

    iput-object v1, p0, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    .line 2714
    iget-object v2, v1, Lo/onProgressUpdate$extraCallback;->onPostMessage:Lo/onProgressUpdate;

    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 444
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    .line 447
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 449
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 450
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lo/onProgressUpdate;->setSelectionFromTop(II)V

    .line 456
    :cond_4
    invoke-direct {p0}, Lo/onProgressUpdate;->updateSelectorStateCompat()V

    :cond_5
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lo/onProgressUpdate;->mMotionPosition:I

    .line 213
    :goto_0
    iget-object v0, p0, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    if-eqz v0, :cond_1

    .line 1709
    iget-object v1, v0, Lo/onProgressUpdate$extraCallback;->onPostMessage:Lo/onProgressUpdate;

    const/4 v2, 0x0

    iput-object v2, v1, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    .line 1710
    iget-object v1, v0, Lo/onProgressUpdate$extraCallback;->onPostMessage:Lo/onProgressUpdate;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListSelectionHidden(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lo/onProgressUpdate;->mListSelectionHidden:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Lo/onProgressUpdate$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/onProgressUpdate$ICustomTabsCallback;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/onProgressUpdate;->mSelector:Lo/onProgressUpdate$ICustomTabsCallback;

    .line 170
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 177
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lo/onProgressUpdate;->mSelectionLeftPadding:I

    .line 178
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lo/onProgressUpdate;->mSelectionTopPadding:I

    .line 179
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lo/onProgressUpdate;->mSelectionRightPadding:I

    .line 180
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lo/onProgressUpdate;->mSelectionBottomPadding:I

    return-void
.end method
