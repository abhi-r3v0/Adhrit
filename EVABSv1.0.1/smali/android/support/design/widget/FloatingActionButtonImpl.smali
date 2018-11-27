.class Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;,
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ANIM_DELAY:J = 0x64L

.field static final PRESSED_ANIM_DURATION:J = 0x64L

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field mAnimState:I

.field mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field mContentBackground:Landroid/graphics/drawable/Drawable;

.field mElevation:F

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mPressedTranslationZ:F

.field mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotation:F

.field mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field final mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mView:Landroid/support/design/widget/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    .line 75
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 80
    new-array v0, v1, [I

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 90
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 91
    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 93
    new-instance p1, Landroid/support/design/widget/StateListAnimator;

    invoke-direct {p1}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 96
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object p2, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToTranslationZAnimation;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 97
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 98
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object p2, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToTranslationZAnimation;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 99
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 98
    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 101
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object p2, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 102
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 101
    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 104
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object p2, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$DisabledElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    .line 105
    invoke-direct {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/animation/ValueAnimator;)V

    .line 107
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRotation:F

    return-void
.end method

.method private createAnimator(Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$ShadowAnimatorImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 414
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 415
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImpl;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    .line 419
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x3

    .line 484
    new-array v1, v0, [[I

    .line 485
    new-array v0, v0, [I

    .line 488
    sget-object v2, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p0, v0, v3

    .line 492
    sget-object v2, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    const/4 v4, 0x1

    aput-object v2, v1, v4

    aput p0, v0, v4

    .line 497
    new-array p0, v3, [I

    const/4 v2, 0x2

    aput-object p0, v1, v2

    aput v3, v0, v2

    .line 501
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private ensurePreDrawListener()V
    .locals 1

    .line 371
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$3;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method private shouldAnimateVisibilityChange()Z
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateFromViewRotation()V
    .locals 3

    .line 509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 512
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 514
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 524
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setRotation(F)V

    .line 527
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRotation:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CircularBorderDrawable;->setRotation(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;
    .locals 6

    .line 346
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    .line 348
    sget v2, Landroid/support/design/R$color;->design_fab_stroke_top_outer_color:I

    .line 349
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/R$color;->design_fab_stroke_top_inner_color:I

    .line 350
    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/R$color;->design_fab_stroke_end_inner_color:I

    .line 351
    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/R$color;->design_fab_stroke_end_outer_color:I

    .line 352
    invoke-static {v0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 348
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    int-to-float p1, p1

    .line 353
    invoke-virtual {v1, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 354
    invoke-virtual {v1, p2}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 383
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    .line 384
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    .line 385
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getElevation()F
    .locals 1

    .line 179
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .locals 1

    .line 322
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 205
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 212
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 213
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 215
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    if-eqz p2, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    if-eqz p1, :cond_3

    .line 252
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    :cond_3
    :goto_1
    return-void
.end method

.method isOrWillBeHidden()Z
    .locals 4

    .line 404
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 406
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 409
    :cond_1
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method isOrWillBeShown()Z
    .locals 4

    .line 394
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 396
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 399
    :cond_1
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    if-eq v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method jumpDrawableToCurrentState()V
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 1

    .line 359
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 390
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 2

    .line 328
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 330
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    .line 335
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    return-void
.end method

.method onElevationsChanged(FF)V
    .locals 1

    .line 190
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    if-eqz p2, :cond_0

    .line 191
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    add-float/2addr v0, p1

    invoke-virtual {p2, p1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 192
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updatePadding()V

    :cond_0
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method onPreDraw()V
    .locals 2

    .line 363
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getRotation()F

    move-result v0

    .line 364
    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRotation:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 365
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRotation:F

    .line 366
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->updateFromViewRotation()V

    :cond_0
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 7

    .line 114
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    .line 125
    invoke-static {p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/design/widget/FloatingActionButtonImpl;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-lez p4, :cond_1

    .line 130
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    const/4 p1, 0x3

    .line 131
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object p4, p1, v0

    iget-object p4, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p4, p1, p3

    iget-object p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p3, p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 134
    new-array p1, p2, [Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p2, p1, v0

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    aput-object p2, p1, p3

    .line 137
    :goto_0
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 139
    new-instance p1, Landroid/support/design/widget/ShadowDrawableWrapper;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 140
    invoke-virtual {p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 142
    invoke-interface {p2}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v4

    iget v5, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    iget p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    iget p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    add-float v6, p2, p3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/ShadowDrawableWrapper;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    .line 145
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->setAddPaddingForCorners(Z)V

    .line 146
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-interface {p1, p2}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method final setElevation(F)V
    .locals 1

    .line 172
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 173
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    .line 174
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FF)V

    :cond_0
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 1

    .line 183
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 184
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    .line 185
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FF)V

    :cond_0
    return-void
.end method

.method setRippleColor(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 3
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 265
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->shouldAnimateVisibilityChange()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 266
    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 268
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 272
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    .line 275
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/FloatingActionButtonImpl$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonImpl$2;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 297
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setAlpha(F)V

    .line 298
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleY(F)V

    .line 299
    iget-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setScaleX(F)V

    if-eqz p1, :cond_3

    .line 301
    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    :cond_3
    :goto_0
    return-void
.end method

.method final updatePadding()V
    .locals 5

    .line 315
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 316
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 317
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 318
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
