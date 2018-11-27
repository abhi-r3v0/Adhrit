.class Landroid/support/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 53
    iget-object v8, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v9, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    .line 55
    aget v11, v8, v10

    sub-int v11, v11, p2

    int-to-float v11, v11

    add-float/2addr v11, v6

    .line 56
    aget v8, v8, v9

    sub-int v8, v8, p3

    int-to-float v8, v8

    add-float/2addr v8, v7

    goto :goto_0

    :cond_0
    move/from16 v11, p4

    move/from16 v8, p5

    :goto_0
    sub-float v12, v11, v6

    .line 59
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int v12, p2, v12

    sub-float v2, v8, v7

    .line 60
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v13, p3, v2

    .line 62
    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v2, v11, p6

    if-nez v2, :cond_1

    cmpl-float v2, v8, p7

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v2, 0x2

    .line 67
    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v2, [F

    aput v11, v15, v10

    aput p6, v15, v9

    .line 68
    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v8, v2, v10

    aput p7, v2, v9

    .line 69
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v9

    .line 67
    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 71
    new-instance v9, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v10, 0x0

    move-object v0, v9

    move v3, v12

    move v4, v13

    move v5, v6

    move v6, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/support/transition/TranslationAnimationCreator$1;)V

    .line 73
    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-static {v8, v9}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 v0, p8

    .line 75
    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v8
.end method
