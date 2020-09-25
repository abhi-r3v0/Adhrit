.class Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/widget/OverScroller;

.field ICustomTabsCallback$Stub:Z

.field extraCallback:Landroid/view/animation/Interpolator;

.field onMessageChannelReady:I

.field onNavigationEvent:Z

.field onPostMessage:I

.field final synthetic onTransact:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 5246
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5238
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->extraCallback:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 5241
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onNavigationEvent:Z

    .line 5244
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    .line 5247
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/OverScroller;

    return-void
.end method

.method private onMessageChannelReady(II)I
    .locals 8

    .line 5483
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5484
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    .line 5486
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 5487
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 5488
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 5489
    :goto_1
    div-int/lit8 v4, p2, 0x2

    int-to-float p1, p1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float p1, p1, v5

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 5490
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr p1, v6

    const v6, 0x3ef1463b

    mul-float p1, p1, v6

    float-to-double v6, p1

    .line 9479
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v4

    add-float/2addr v4, p1

    if-lez v3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, v3

    div-float/2addr v4, p2

    .line 5496
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v5

    const/high16 p2, 0x43960000    # 300.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    .line 5501
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private onNavigationEvent()V
    .locals 1

    .line 5403
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5404
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    return-void

    .line 9411
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9412
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 5446
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onMessageChannelReady(II)I

    move-result p3

    :cond_0
    move v5, p3

    if-nez p4, :cond_1

    .line 5449
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 5454
    :cond_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->extraCallback:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_2

    .line 5455
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->extraCallback:Landroid/view/animation/Interpolator;

    .line 5456
    new-instance p3, Landroid/widget/OverScroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/OverScroller;

    :cond_2
    const/4 p3, 0x0

    .line 5460
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onPostMessage:I

    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onMessageChannelReady:I

    .line 5463
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5464
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5466
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_3

    .line 5470
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5473
    :cond_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onNavigationEvent()V

    return-void
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    .line 5252
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 6505
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6506
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5257
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    const/4 v2, 0x1

    .line 5258
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onNavigationEvent:Z

    .line 5260
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5272
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback:Landroid/widget/OverScroller;

    .line 5273
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 5274
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    .line 5275
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    .line 5276
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onMessageChannelReady:I

    sub-int v6, v4, v6

    .line 5277
    iget v7, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onPostMessage:I

    sub-int v13, v5, v7

    .line 5278
    iput v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onMessageChannelReady:I

    .line 5279
    iput v5, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onPostMessage:I

    .line 5284
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v4, v1

    .line 5285
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v4, v2

    .line 5286
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5288
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    sub-int/2addr v6, v4

    .line 5289
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v4, v4, v2

    sub-int/2addr v13, v4

    .line 5294
    :cond_1
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 5295
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5299
    :cond_2
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_5

    .line 5300
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v4, v1

    .line 5301
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v4, v2

    .line 5302
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5303
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v4, v4, v1

    .line 5304
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v7, v7, v2

    sub-int/2addr v6, v4

    sub-int/2addr v13, v7

    .line 5310
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v8, :cond_6

    .line 5311
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_6

    .line 5312
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5313
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-nez v9, :cond_3

    .line 5315
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 5316
    :cond_3
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_4

    sub-int/2addr v9, v2

    .line 5317
    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5320
    :cond_4
    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 5325
    :cond_6
    :goto_0
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 5326
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 5330
    :cond_7
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v8, v1

    .line 5331
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v1, v8, v2

    .line 5332
    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v19, 0x0

    const/16 v20, 0x1

    iget-object v8, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v8

    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 5334
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v8, v1

    sub-int/2addr v6, v8

    .line 5335
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v8, v2

    sub-int/2addr v13, v8

    if-nez v4, :cond_8

    if-eqz v7, :cond_9

    .line 5338
    :cond_8
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5341
    :cond_9
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 5342
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 5350
    :cond_a
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v8

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v9

    if-ne v8, v9, :cond_b

    const/4 v8, 0x1

    goto :goto_1

    :cond_b
    const/4 v8, 0x0

    .line 5351
    :goto_1
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v10

    if-ne v9, v10, :cond_c

    const/4 v9, 0x1

    goto :goto_2

    :cond_c
    const/4 v9, 0x0

    .line 5352
    :goto_2
    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_f

    if-nez v8, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    if-nez v9, :cond_f

    if-eqz v13, :cond_e

    goto :goto_3

    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    :cond_f
    :goto_3
    const/4 v8, 0x1

    .line 5359
    :goto_4
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v9, :cond_10

    .line 5361
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    goto :goto_5

    :cond_10
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_17

    if-eqz v8, :cond_17

    .line 5367
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_15

    .line 5368
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    if-gez v6, :cond_11

    neg-int v4, v3

    goto :goto_6

    :cond_11
    if-lez v6, :cond_12

    move v4, v3

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    :goto_6
    if-gez v13, :cond_13

    neg-int v3, v3

    goto :goto_7

    :cond_13
    if-lez v13, :cond_14

    goto :goto_7

    :cond_14
    const/4 v3, 0x0

    .line 5371
    :goto_7
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5374
    :cond_15
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_19

    .line 5375
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lo/onSetCaptioningEnabled$ICustomTabsCallback;

    .line 7152
    iget-object v4, v3, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    if-eqz v4, :cond_16

    .line 7153
    iget-object v4, v3, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 7155
    :cond_16
    iput v1, v3, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    goto :goto_9

    .line 7403
    :cond_17
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v3, :cond_18

    .line 7404
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    goto :goto_8

    .line 7411
    :cond_18
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7412
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3, v0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5381
    :goto_8
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Lo/onSetCaptioningEnabled;

    if-eqz v3, :cond_19

    .line 5382
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Lo/onSetCaptioningEnabled;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v5, v4, v7}, Lo/onSetCaptioningEnabled;->extraCallback(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 5387
    :cond_19
    :goto_9
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_1a

    .line 5389
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5390
    invoke-virtual {v3, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 5393
    :cond_1a
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onNavigationEvent:Z

    .line 5394
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_1b

    .line 8411
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8412
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 5397
    :cond_1b
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5398
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$onNavigationEvent;->onTransact:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method
