.class public Landroid/support/transition/ArcMotion;
.super Landroid/support/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4041800000000000L    # 35.0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 57
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    .line 58
    iput v1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    .line 59
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 60
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 61
    sget v0, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/support/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 57
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    .line 58
    iput v1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    .line 59
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 60
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 61
    sget v2, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    .line 68
    sget-object v2, Landroid/support/transition/Styleable;->ARC_MOTION:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "minimumVerticalAngle"

    const/4 v3, 0x1

    .line 70
    invoke-static {p1, p2, v2, v3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 73
    invoke-virtual {p0, v2}, Landroid/support/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    const-string v2, "minimumHorizontalAngle"

    const/4 v3, 0x0

    .line 74
    invoke-static {p1, p2, v2, v3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 77
    invoke-virtual {p0, v0}, Landroid/support/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    const-string v0, "maximumAngle"

    const/4 v2, 0x2

    .line 78
    invoke-static {p1, p2, v0, v2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    .line 80
    invoke-virtual {p0, p2}, Landroid/support/transition/ArcMotion;->setMaximumAngle(F)V

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static toTangent(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    .line 174
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arc must be between 0 and 90 degrees"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMaximumAngle()F
    .locals 1

    .line 169
    iget v0, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .locals 1

    .line 111
    iget v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public getMinimumVerticalAngle()F
    .locals 1

    .line 142
    iget v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 11

    .line 197
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 198
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v0, p3, p1

    sub-float v1, p4, p2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    add-float v3, p1, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v5, p2, p4

    div-float/2addr v5, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v6, v2

    cmpl-float v8, p2, p4

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 219
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    mul-float/2addr v1, v4

    div-float/2addr v2, v1

    .line 225
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-eqz v8, :cond_1

    add-float/2addr v0, p4

    move v1, v0

    move v0, p3

    goto :goto_1

    :cond_1
    add-float/2addr v0, p2

    move v1, v0

    move v0, p1

    .line 234
    :goto_1
    iget v2, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v2, v6

    iget v8, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v2, v8

    goto :goto_3

    :cond_2
    mul-float/2addr v0, v4

    div-float/2addr v2, v0

    if-eqz v8, :cond_3

    add-float/2addr v2, p1

    move v1, p2

    move v0, v2

    goto :goto_2

    :cond_3
    sub-float v0, p3, v2

    move v1, p4

    .line 247
    :goto_2
    iget v2, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v2, v6

    iget v8, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v2, v8

    :goto_3
    sub-float v8, v3, v0

    sub-float v9, v5, v1

    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    .line 254
    iget v9, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v6, v9

    iget v9, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v6, v9

    cmpg-float v9, v8, v2

    const/4 v10, 0x0

    if-gez v9, :cond_4

    goto :goto_4

    :cond_4
    cmpl-float v2, v8, v6

    if-lez v2, :cond_5

    move v2, v6

    goto :goto_4

    :cond_5
    move v2, v10

    :goto_4
    cmpl-float v6, v2, v10

    if-eqz v6, :cond_6

    div-float/2addr v2, v8

    float-to-double v8, v2

    .line 264
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    sub-float/2addr v1, v5

    mul-float/2addr v2, v1

    add-float v1, v5, v2

    :cond_6
    add-float/2addr p1, v0

    div-float/2addr p1, v4

    add-float/2addr p2, v1

    div-float v2, p2, v4

    add-float/2addr v0, p3

    div-float v3, v0, v4

    add-float/2addr v1, p4

    div-float v4, v1, v4

    move-object v0, v7

    move v1, p1

    move v5, p3

    move v6, p4

    .line 272
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v7
.end method

.method public setMaximumAngle(F)V
    .locals 0

    .line 155
    iput p1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    .line 156
    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 0

    .line 96
    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 97
    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 0

    .line 126
    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 127
    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    return-void
.end method
