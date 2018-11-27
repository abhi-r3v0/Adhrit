.class public Landroid/support/transition/SidePropagation;
.super Landroid/support/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/support/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 35
    iput v0, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    .line 36
    iput v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6

    .line 124
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_3

    .line 125
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    :cond_1
    move p1, v2

    goto :goto_3

    :cond_2
    :goto_1
    move p1, v1

    goto :goto_3

    .line 128
    :cond_3
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const v5, 0x800005

    if-ne v0, v5, :cond_5

    .line 129
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_1

    goto :goto_1

    .line 133
    :cond_5
    iget p1, p0, Landroid/support/transition/SidePropagation;->mSide:I

    :goto_3
    if-eq p1, v1, :cond_9

    if-eq p1, v2, :cond_8

    const/16 p5, 0x30

    if-eq p1, p5, :cond_7

    const/16 p5, 0x50

    if-eq p1, p5, :cond_6

    goto :goto_4

    :cond_6
    sub-int/2addr p3, p7

    sub-int/2addr p4, p2

    .line 147
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v3, p3, p1

    goto :goto_4

    :cond_7
    sub-int/2addr p9, p3

    sub-int/2addr p4, p2

    .line 141
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v3, p9, p1

    goto :goto_4

    :cond_8
    sub-int/2addr p2, p6

    sub-int/2addr p5, p3

    .line 144
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v3, p2, p1

    goto :goto_4

    :cond_9
    sub-int/2addr p8, p2

    sub-int/2addr p5, p3

    .line 138
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v3, p8, p1

    :goto_4
    return v3
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 2

    .line 154
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800003

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    return p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    const-wide/16 v11, 0x0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    return-wide v11

    .line 79
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    .line 81
    invoke-virtual {v10, v0}, Landroid/support/transition/SidePropagation;->getViewVisibility(Landroid/support/transition/TransitionValues;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    move v13, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    move v13, v1

    .line 88
    :goto_1
    invoke-virtual {v10, v0}, Landroid/support/transition/SidePropagation;->getViewX(Landroid/support/transition/TransitionValues;)I

    move-result v4

    .line 89
    invoke-virtual {v10, v0}, Landroid/support/transition/SidePropagation;->getViewY(Landroid/support/transition/TransitionValues;)I

    move-result v5

    const/4 v0, 0x2

    .line 91
    new-array v1, v0, [I

    move-object/from16 v14, p1

    .line 92
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 93
    aget v6, v1, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 94
    aget v1, v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v7, v1, v3

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v8, v6, v1

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v9, v7, v1

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 102
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move v15, v0

    move/from16 v16, v1

    goto :goto_2

    :cond_3
    add-int v1, v6, v8

    .line 104
    div-int/2addr v1, v0

    add-int v2, v7, v9

    .line 105
    div-int/2addr v2, v0

    move v15, v1

    move/from16 v16, v2

    :goto_2
    move-object v0, v10

    move-object v1, v14

    move v2, v4

    move v3, v5

    move v4, v15

    move/from16 v5, v16

    .line 108
    invoke-direct/range {v0 .. v9}, Landroid/support/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    .line 110
    invoke-direct/range {p0 .. p1}, Landroid/support/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v1

    cmp-long v3, v1, v11

    if-gez v3, :cond_4

    const-wide/16 v1, 0x12c

    :cond_4
    int-to-long v3, v13

    mul-long/2addr v1, v3

    long-to-float v1, v1

    .line 118
    iget v2, v10, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPropagationSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "propagationSpeed may not be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_0
    iput p1, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    return-void
.end method

.method public setSide(I)V
    .locals 0

    .line 50
    iput p1, p0, Landroid/support/transition/SidePropagation;->mSide:I

    return-void
.end method
