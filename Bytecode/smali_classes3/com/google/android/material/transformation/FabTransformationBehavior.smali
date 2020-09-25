.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/RectF;

.field private asBinder:F

.field private final extraCallback:Landroid/graphics/RectF;

.field private final onNavigationEvent:Landroid/graphics/Rect;

.field private onRelationshipValidationResult:F

.field private final onTransact:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 78
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onTransact:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent:Landroid/graphics/Rect;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 78
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onTransact:[I

    return-void
.end method

.method private ICustomTabsCallback(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F
    .locals 2

    .line 557
    iget-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 558
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    .line 13622
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 13623
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->asBinder:F

    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onRelationshipValidationResult:F

    invoke-virtual {p3, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 561
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 569
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method private static extraCallback(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 747
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 751
    invoke-static {p0, p3, p4, p5, p5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    .line 753
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 754
    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 755
    invoke-interface {p6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private onMessageChannelReady(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F
    .locals 2

    .line 583
    iget-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 584
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    .line 14622
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 14623
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->asBinder:F

    iget v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onRelationshipValidationResult:F

    invoke-virtual {p3, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 587
    invoke-direct {p0, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 595
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method private static onMessageChannelReady(Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;Lo/replaceAllExperimentsWith;FF)F
    .locals 8

    .line 15061
    iget-wide v0, p1, Lo/replaceAllExperimentsWith;->extraCallback:J

    .line 15065
    iget-wide v2, p1, Lo/replaceAllExperimentsWith;->ICustomTabsCallback:J

    .line 690
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p3, "expansion"

    invoke-virtual {p0, p3}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p0

    .line 16061
    iget-wide v4, p0, Lo/replaceAllExperimentsWith;->extraCallback:J

    .line 16065
    iget-wide v6, p0, Lo/replaceAllExperimentsWith;->ICustomTabsCallback:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    long-to-float p0, v4

    long-to-float p3, v2

    div-float/2addr p0, p3

    .line 16070
    iget-object p3, p1, Lo/replaceAllExperimentsWith;->onPostMessage:Landroid/animation/TimeInterpolator;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lo/replaceAllExperimentsWith;->onPostMessage:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object p1, Lo/preferLastSpan$ICustomTabsCallback$Stub;->onPostMessage:Landroid/animation/TimeInterpolator;

    .line 698
    :goto_0
    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    const/4 p1, 0x0

    sub-float/2addr p1, p2

    mul-float p0, p0, p1

    add-float/2addr p2, p0

    return p2
.end method

.method private onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 611
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onTransact:[I

    .line 612
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 614
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private static onPostMessage(FFZLcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;",
            ")",
            "Landroid/util/Pair<",
            "Lo/replaceAllExperimentsWith;",
            "Lo/replaceAllExperimentsWith;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_3

    .line 544
    :cond_2
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p1, "translationXCurveUpwards"

    invoke-virtual {p0, p1}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p0

    .line 545
    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p2, "translationYCurveUpwards"

    invoke-virtual {p1, p2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p1

    goto :goto_1

    .line 548
    :cond_3
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p1, "translationXCurveDownwards"

    invoke-virtual {p0, p1}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p0

    .line 549
    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p2, "translationYCurveDownwards"

    invoke-virtual {p1, p2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p1

    goto :goto_1

    .line 540
    :cond_4
    :goto_0
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p1, "translationXLinear"

    invoke-virtual {p0, p1}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p0

    .line 541
    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string p2, "translationYLinear"

    invoke-virtual {p1, p2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object p1

    .line 552
    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method protected abstract extraCallback(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;
.end method

.method public final extraCallback(Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;)V
    .locals 1

    .line 111
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 114
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onTransact:I

    :cond_0
    return-void
.end method

.method protected final onNavigationEvent(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;

    move-result-object v11

    if-eqz v10, :cond_0

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->asBinder:F

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onRelationshipValidationResult:F

    .line 132
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    const/4 v15, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-lt v2, v14, :cond_3

    .line 2203
    invoke-static/range {p2 .. p2}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v2

    invoke-static/range {p1 .. p1}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v3

    sub-float/2addr v2, v3

    if-eqz v10, :cond_2

    if-nez p4, :cond_1

    neg-float v2, v2

    .line 2208
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 2210
    :cond_1
    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v8, [F

    aput v15, v3, v7

    invoke-static {v9, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0

    .line 2212
    :cond_2
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v8, [F

    neg-float v2, v2

    aput v2, v4, v7

    invoke-static {v9, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2215
    :goto_0
    iget-object v3, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string v4, "elevation"

    invoke-virtual {v3, v4}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v3

    .line 2216
    invoke-virtual {v3, v2}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 2217
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_3
    iget-object v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 2263
    iget-object v3, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onMessageChannelReady:Lo/getSpanSizeLookup$onPostMessage;

    invoke-direct {v0, v1, v9, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F

    move-result v3

    .line 2264
    iget-object v4, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onMessageChannelReady:Lo/getSpanSizeLookup$onPostMessage;

    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onMessageChannelReady(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F

    move-result v4

    .line 2270
    invoke-static {v3, v4, v10, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onPostMessage(FFZLcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;)Landroid/util/Pair;

    move-result-object v5

    .line 2271
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lo/replaceAllExperimentsWith;

    .line 2272
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lo/replaceAllExperimentsWith;

    if-eqz v10, :cond_5

    if-nez p4, :cond_4

    neg-float v14, v3

    .line 2276
    invoke-virtual {v9, v14}, Landroid/view/View;->setTranslationX(F)V

    neg-float v14, v4

    .line 2277
    invoke-virtual {v9, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 2279
    :cond_4
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v17, v13

    new-array v13, v8, [F

    aput v15, v13, v7

    invoke-static {v9, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2280
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v18, v13

    new-array v13, v8, [F

    aput v15, v13, v7

    invoke-static {v9, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    neg-float v3, v3

    neg-float v4, v4

    .line 2665
    invoke-static {v11, v6, v3, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onMessageChannelReady(Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;Lo/replaceAllExperimentsWith;FF)F

    move-result v3

    .line 2667
    invoke-static {v11, v5, v4, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onMessageChannelReady(Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;Lo/replaceAllExperimentsWith;FF)F

    move-result v4

    .line 2670
    iget-object v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent:Landroid/graphics/Rect;

    .line 2671
    invoke-virtual {v9, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2672
    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 2673
    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2676
    iget-object v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    .line 2677
    invoke-direct {v0, v9, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 2678
    invoke-virtual {v14, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 2679
    invoke-virtual {v14, v15}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 2681
    invoke-virtual {v2, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v3, v13

    move-object/from16 v13, v18

    goto :goto_1

    :cond_5
    move-object/from16 v17, v13

    .line 2293
    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v8, [F

    neg-float v3, v3

    aput v3, v14, v7

    invoke-static {v9, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2294
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v14, v8, [F

    neg-float v4, v4

    aput v4, v14, v7

    invoke-static {v9, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2297
    :goto_1
    invoke-virtual {v6, v13}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 2298
    invoke-virtual {v5, v3}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 2299
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2300
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 144
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 3226
    iget-object v4, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onMessageChannelReady:Lo/getSpanSizeLookup$onPostMessage;

    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F

    move-result v4

    .line 3227
    iget-object v5, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onMessageChannelReady:Lo/getSpanSizeLookup$onPostMessage;

    invoke-direct {v0, v1, v9, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onMessageChannelReady(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F

    move-result v5

    .line 3233
    invoke-static {v4, v5, v10, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onPostMessage(FFZLcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;)Landroid/util/Pair;

    move-result-object v6

    .line 3234
    iget-object v13, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lo/replaceAllExperimentsWith;

    .line 3235
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lo/replaceAllExperimentsWith;

    .line 3237
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v8, [F

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    iget v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->asBinder:F

    :goto_2
    aput v4, v15, v7

    .line 3238
    invoke-static {v1, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 3242
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v15, v8, [F

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    iget v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onRelationshipValidationResult:F

    :goto_3
    aput v5, v15, v7

    .line 3243
    invoke-static {v1, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 3248
    invoke-virtual {v13, v4}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 3249
    invoke-virtual {v6, v5}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 3250
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3251
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3311
    instance-of v13, v9, Lo/unregisterEventNames;

    if-eqz v13, :cond_b

    instance-of v4, v1, Landroid/widget/ImageView;

    if-nez v4, :cond_8

    goto :goto_5

    .line 3315
    :cond_8
    move-object v4, v9

    check-cast v4, Lo/unregisterEventNames;

    .line 3316
    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 3317
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 3322
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    if-eqz v10, :cond_a

    if-nez p4, :cond_9

    .line 3328
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3330
    :cond_9
    sget-object v6, Lo/fromConditionalUserProperty;->onNavigationEvent:Landroid/util/Property;

    new-array v14, v8, [I

    aput v7, v14, v7

    invoke-static {v5, v6, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    goto :goto_4

    .line 3332
    :cond_a
    sget-object v14, Lo/fromConditionalUserProperty;->onNavigationEvent:Landroid/util/Property;

    new-array v15, v8, [I

    aput v6, v15, v7

    invoke-static {v5, v14, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 3337
    :goto_4
    new-instance v14, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    invoke-direct {v14, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3345
    iget-object v14, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string v15, "iconFade"

    invoke-virtual {v14, v15}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v14

    .line 3346
    invoke-virtual {v14, v6}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 3347
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3348
    new-instance v6, Lcom/google/android/material/transformation/FabTransformationBehavior$5;

    invoke-direct {v6, v4, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior$5;-><init>(Lo/unregisterEventNames;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v14, v17

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v14, v17

    :goto_6
    if-eqz v13, :cond_11

    .line 3376
    move-object v15, v9

    check-cast v15, Lo/unregisterEventNames;

    .line 3378
    iget-object v4, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onMessageChannelReady:Lo/getSpanSizeLookup$onPostMessage;

    .line 3628
    iget-object v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 3629
    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    .line 4622
    invoke-direct {v0, v1, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4623
    iget v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->asBinder:F

    iget v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onRelationshipValidationResult:F

    invoke-virtual {v5, v8, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 3632
    invoke-direct {v0, v9, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 3634
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F

    move-result v4

    neg-float v4, v4

    const/4 v7, 0x0

    .line 3635
    invoke-virtual {v6, v4, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 3637
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    .line 3379
    iget-object v5, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onMessageChannelReady:Lo/getSpanSizeLookup$onPostMessage;

    .line 4642
    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 4643
    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback:Landroid/graphics/RectF;

    .line 5622
    invoke-direct {v0, v1, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 5623
    iget v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->asBinder:F

    move/from16 v19, v13

    iget v13, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onRelationshipValidationResult:F

    invoke-virtual {v6, v8, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 4646
    invoke-direct {v0, v9, v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4648
    invoke-direct {v0, v1, v9, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onMessageChannelReady(Landroid/view/View;Landroid/view/View;Lo/getSpanSizeLookup$onPostMessage;)F

    move-result v5

    neg-float v5, v5

    const/4 v8, 0x0

    .line 4649
    invoke-virtual {v7, v8, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4651
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v6, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    .line 3380
    move-object v6, v1

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent:Landroid/graphics/Rect;

    .line 5866
    invoke-static {v6}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 5867
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v1, v8, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 5868
    invoke-virtual {v6, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onNavigationEvent(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 3381
    :goto_7
    iget-object v6, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v13, v6, v7

    .line 3384
    iget-object v6, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string v7, "expansion"

    invoke-virtual {v6, v7}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v8

    if-eqz v10, :cond_f

    if-nez p4, :cond_d

    .line 3388
    new-instance v6, Lo/unregisterEventNames$onMessageChannelReady;

    invoke-direct {v6, v4, v5, v13}, Lo/unregisterEventNames$onMessageChannelReady;-><init>(FFF)V

    invoke-interface {v15, v6}, Lo/unregisterEventNames;->setRevealInfo(Lo/unregisterEventNames$onMessageChannelReady;)V

    :cond_d
    if-eqz p4, :cond_e

    .line 3392
    invoke-interface {v15}, Lo/unregisterEventNames;->ICustomTabsCallback()Lo/unregisterEventNames$onMessageChannelReady;

    move-result-object v6

    iget v6, v6, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    move v7, v6

    goto :goto_8

    :cond_e
    move v7, v13

    .line 3394
    :goto_8
    invoke-static {v4, v5, v3, v2}, Lo/extraCallback;->onMessageChannelReady(FFFF)F

    move-result v2

    .line 3398
    invoke-static {v15, v4, v5, v2}, Lo/registerEventNames;->extraCallback(Lo/unregisterEventNames;FFF)Landroid/animation/Animator;

    move-result-object v13

    .line 3400
    new-instance v2, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lo/unregisterEventNames;)V

    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6061
    iget-wide v2, v8, Lo/replaceAllExperimentsWith;->extraCallback:J

    float-to-int v6, v4

    float-to-int v5, v5

    move-wide v3, v2

    move-object/from16 v2, p2

    move/from16 v16, v5

    move v5, v6

    move/from16 v6, v16

    move-object v1, v8

    const/4 v0, 0x1

    move-object v8, v12

    .line 3412
    invoke-static/range {v2 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback(Landroid/view/View;JIIFLjava/util/List;)V

    move-object/from16 v21, v11

    goto :goto_9

    :cond_f
    move-object v1, v8

    const/4 v0, 0x1

    .line 3421
    invoke-interface {v15}, Lo/unregisterEventNames;->ICustomTabsCallback()Lo/unregisterEventNames$onMessageChannelReady;

    move-result-object v2

    iget v7, v2, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 3424
    invoke-static {v15, v4, v5, v13}, Lo/registerEventNames;->extraCallback(Lo/unregisterEventNames;FFF)Landroid/animation/Animator;

    move-result-object v17

    .line 7061
    iget-wide v2, v1, Lo/replaceAllExperimentsWith;->extraCallback:J

    float-to-int v8, v4

    float-to-int v6, v5

    move-wide v3, v2

    move-object/from16 v2, p2

    move v5, v8

    move/from16 v20, v6

    move v0, v8

    move-object v8, v12

    .line 3427
    invoke-static/range {v2 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->extraCallback(Landroid/view/View;JIIFLjava/util/List;)V

    .line 8061
    iget-wide v2, v1, Lo/replaceAllExperimentsWith;->extraCallback:J

    .line 8065
    iget-wide v4, v1, Lo/replaceAllExperimentsWith;->ICustomTabsCallback:J

    .line 3437
    iget-object v6, v11, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    .line 3438
    invoke-virtual {v6}, Lo/getExperimentsToRemove;->onPostMessage()J

    move-result-wide v6

    .line 8770
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v21, v11

    const/16 v11, 0x15

    if-lt v8, v11, :cond_10

    add-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-gez v4, :cond_10

    move/from16 v4, v20

    .line 8774
    invoke-static {v9, v0, v4, v13, v13}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 8776
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v6, v2

    .line 8777
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8778
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v13, v17

    .line 3445
    :goto_9
    invoke-virtual {v1, v13}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 3446
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9123
    new-instance v0, Lo/registerEventNames$2;

    invoke-direct {v0, v15}, Lo/registerEventNames$2;-><init>(Lo/unregisterEventNames;)V

    .line 3447
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    move-object/from16 v21, v11

    move/from16 v19, v13

    :goto_a
    if-eqz v19, :cond_15

    .line 9461
    move-object v0, v9

    check-cast v0, Lo/unregisterEventNames;

    .line 9731
    invoke-static/range {p1 .. p1}, Lo/unregisterCallbackListener;->ICustomTabsService$Stub$Proxy(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 9733
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    :goto_b
    const v1, 0xffffff

    and-int/2addr v1, v7

    if-eqz v10, :cond_14

    if-nez p4, :cond_13

    .line 9469
    invoke-interface {v0, v7}, Lo/unregisterEventNames;->setCircularRevealScrimColor(I)V

    .line 9471
    :cond_13
    sget-object v2, Lo/unregisterEventNames$extraCallback;->onPostMessage:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    .line 9472
    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_c

    :cond_14
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 9477
    sget-object v1, Lo/unregisterEventNames$extraCallback;->onPostMessage:Landroid/util/Property;

    new-array v2, v3, [I

    aput v7, v2, v5

    .line 9478
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10040
    :goto_c
    sget-object v1, Lo/removeAllExperiments;->onNavigationEvent:Lo/removeAllExperiments;

    .line 9484
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    move-object/from16 v1, v21

    .line 9485
    iget-object v2, v1, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string v3, "color"

    invoke-virtual {v2, v3}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v2

    .line 9486
    invoke-virtual {v2, v0}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 9487
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    move-object/from16 v1, v21

    .line 10498
    :goto_d
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    if-eqz v19, :cond_16

    .line 10501
    sget v2, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    if-eqz v2, :cond_1d

    .line 10706
    :cond_16
    sget v2, Lo/toStringMap$asInterface;->mtrl_child_content_container:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    .line 10723
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 10724
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_f

    .line 10712
    :cond_17
    instance-of v2, v9, Lo/reauthenticateAndRetrieveData;

    if-nez v2, :cond_19

    instance-of v2, v9, Lo/startActivityForReauthenticateWithProvider;

    if-eqz v2, :cond_18

    goto :goto_e

    :cond_18
    if-eqz v0, :cond_1a

    .line 12724
    move-object v3, v9

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_f

    .line 10713
    :cond_19
    :goto_e
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 11723
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1a

    .line 11724
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    :cond_1a
    :goto_f
    if-eqz v3, :cond_1d

    if-eqz v10, :cond_1c

    if-nez p4, :cond_1b

    .line 10516
    sget-object v0, Lo/toConditionalUserProperty;->onNavigationEvent:Landroid/util/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10518
    :cond_1b
    sget-object v0, Lo/toConditionalUserProperty;->onNavigationEvent:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 10519
    invoke-static {v3, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_10

    :cond_1c
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 10521
    sget-object v0, Lo/toConditionalUserProperty;->onNavigationEvent:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v5

    .line 10522
    invoke-static {v3, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10525
    :goto_10
    iget-object v1, v1, Lcom/google/android/material/transformation/FabTransformationBehavior$onPostMessage;->onPostMessage:Lo/getExperimentsToRemove;

    const-string v2, "contentFade"

    invoke-virtual {v1, v2}, Lo/getExperimentsToRemove;->onMessageChannelReady(Ljava/lang/String;)Lo/replaceAllExperimentsWith;

    move-result-object v1

    .line 10526
    invoke-virtual {v1, v0}, Lo/replaceAllExperimentsWith;->onNavigationEvent(Landroid/animation/Animator;)V

    .line 10527
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    .line 162
    :goto_11
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 163
    invoke-static {v0, v12}, Lo/preferLastSpan$asBinder;->onPostMessage(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 164
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    move-object/from16 v2, p1

    invoke-direct {v1, v10, v9, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v1, :cond_1e

    .line 187
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1e
    return-object v0
.end method

.method public final onNavigationEvent(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 100
    instance-of v0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 101
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1644
    iget-object p2, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback:Lo/scrollVerticallyBy$ICustomTabsCallback;

    .line 2087
    iget p2, p2, Lo/scrollVerticallyBy$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
