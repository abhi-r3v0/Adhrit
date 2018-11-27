.class Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 0

    .line 1285
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .line 1352
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1355
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1356
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result p3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 1357
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v0

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr p3, v0

    .line 1358
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int p1, p3, p1

    .line 1359
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 1361
    :cond_0
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result p3

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, p1

    .line 1362
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p1, p3

    .line 1363
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1347
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return p1
.end method

.method public onEdgeDragStarted(II)V
    .locals 1

    .line 1377
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 1314
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 1299
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_1

    .line 1300
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p1, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 1301
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 1302
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    .line 1303
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0

    .line 1305
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    .line 1306
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1319
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 1320
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    .line 1325
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1328
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1329
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v0

    iget p3, p3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, p3

    cmpg-float p3, p2, v2

    if-ltz p3, :cond_0

    cmpl-float p2, p2, v2

    if-nez p2, :cond_1

    .line 1330
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    .line 1331
    :cond_0
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr v0, p2

    .line 1333
    :cond_1
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 1334
    iget-object p3, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p3}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result p3

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v0

    iget p3, p3, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_3

    cmpl-float p2, p2, v2

    if-nez p2, :cond_4

    .line 1337
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_4

    .line 1338
    :cond_3
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p3, p2

    .line 1341
    :cond_4
    :goto_0
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1342
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 1290
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-boolean p2, p2, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1294
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    return p1
.end method
