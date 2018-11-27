.class public Landroid/support/transition/Explode;
.super Landroid/support/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 44
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    .line 50
    new-instance v0, Landroid/support/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/support/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/transition/Explode;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 47
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    .line 55
    new-instance p1, Landroid/support/transition/CircularPropagation;

    invoke-direct {p1}, Landroid/support/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/transition/Explode;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    return-void
.end method

.method private static calculateDistance(FF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 172
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)F
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    .line 168
    invoke-static {p1, p0}, Landroid/support/transition/Explode;->calculateDistance(FF)F

    move-result p0

    return p0
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 127
    iget-object v2, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 128
    iget-object v2, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 129
    iget-object v4, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 133
    invoke-virtual {v0}, Landroid/support/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 141
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    move v14, v7

    move v7, v6

    move v6, v14

    .line 144
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v8, v6

    int-to-float v8, v8

    sub-int/2addr v9, v7

    int-to-float v9, v9

    const/4 v10, 0x0

    cmpl-float v11, v8, v10

    if-nez v11, :cond_1

    cmpl-float v10, v9, v10

    if-nez v10, :cond_1

    .line 151
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    double-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    mul-double/2addr v12, v10

    double-to-float v10, v12

    sub-float v9, v10, v9

    .line 154
    :cond_1
    invoke-static {v8, v9}, Landroid/support/transition/Explode;->calculateDistance(FF)F

    move-result v10

    div-float/2addr v8, v10

    div-float/2addr v9, v10

    sub-int/2addr v6, v2

    sub-int/2addr v7, v4

    .line 159
    invoke-static {v1, v6, v7}, Landroid/support/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)F

    move-result v1

    mul-float/2addr v8, v1

    .line 161
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p3, v3

    mul-float/2addr v1, v9

    .line 162
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p3, v5

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 6

    .line 59
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 60
    iget-object v1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 61
    iget-object v1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 62
    iget-object v2, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 65
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:explode:screenBounds"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 77
    invoke-direct {p0, p1}, Landroid/support/transition/Explode;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 71
    invoke-direct {p0, p1}, Landroid/support/transition/Explode;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 89
    iget-object v0, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, p3, v0}, Landroid/support/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 90
    iget-object p1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    int-to-float p1, p1

    add-float v4, v6, p1

    .line 91
    iget-object p1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    int-to-float p1, p1

    add-float v5, v7, p1

    .line 93
    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sget-object v8, Landroid/support/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    invoke-static/range {v0 .. v8}, Landroid/support/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    iget-object p4, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:explode:screenBounds"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 104
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 105
    iget v3, p4, Landroid/graphics/Rect;->top:I

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 110
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 114
    aget v7, v0, v6

    iget v8, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 115
    aget v8, v0, v1

    iget v9, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 116
    aget v9, v0, v6

    aget v0, v0, v1

    invoke-virtual {p4, v9, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    move v7, v4

    move v8, v5

    .line 118
    :goto_0
    iget-object v0, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    invoke-direct {p0, p1, p4, v0}, Landroid/support/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 119
    iget-object p1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    aget p1, p1, v6

    int-to-float p1, p1

    add-float v6, v7, p1

    .line 120
    iget-object p1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    aget p1, p1, v1

    int-to-float p1, p1

    add-float v7, v8, p1

    .line 122
    sget-object v8, Landroid/support/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v8}, Landroid/support/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
