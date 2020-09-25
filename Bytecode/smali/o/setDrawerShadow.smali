.class final Lo/setDrawerShadow;
.super Landroid/view/animation/Animation;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final ICustomTabsCallback:[F

.field private final ICustomTabsCallback$Stub:Landroid/graphics/RectF;

.field private final asBinder:Landroid/graphics/RectF;

.field private final asInterface:[F

.field private final extraCallback:Lo/setDrawerLockMode;

.field private final getInterfaceDescriptor:[F

.field private final onMessageChannelReady:Landroid/widget/ImageView;

.field private final onNavigationEvent:Landroid/graphics/RectF;

.field private final onPostMessage:[F

.field private final onRelationshipValidationResult:[F

.field private final onTransact:[F


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lo/setDrawerLockMode;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 24
    iput-object v1, p0, Lo/setDrawerShadow;->onPostMessage:[F

    new-array v1, v0, [F

    .line 26
    iput-object v1, p0, Lo/setDrawerShadow;->ICustomTabsCallback:[F

    .line 28
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lo/setDrawerShadow;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 32
    iput-object v2, p0, Lo/setDrawerShadow;->onTransact:[F

    new-array v2, v1, [F

    .line 34
    iput-object v2, p0, Lo/setDrawerShadow;->asInterface:[F

    .line 36
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lo/setDrawerShadow;->asBinder:Landroid/graphics/RectF;

    new-array v0, v0, [F

    .line 38
    iput-object v0, p0, Lo/setDrawerShadow;->onRelationshipValidationResult:[F

    new-array v0, v1, [F

    .line 40
    iput-object v0, p0, Lo/setDrawerShadow;->getInterfaceDescriptor:[F

    .line 44
    iput-object p1, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    .line 45
    iput-object p2, p0, Lo/setDrawerShadow;->extraCallback:Lo/setDrawerLockMode;

    const-wide/16 p1, 0x12c

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 49
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    invoke-virtual {p0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback([FLandroid/graphics/Matrix;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lo/setDrawerShadow;->ICustomTabsCallback:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object p1, p0, Lo/setDrawerShadow;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/setDrawerShadow;->extraCallback:Lo/setDrawerLockMode;

    .line 2195
    iget-object v0, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 3146
    iget-object v1, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v2, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3147
    iget-object v0, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 63
    iget-object p1, p0, Lo/setDrawerShadow;->asInterface:[F

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 69
    iget-object p2, p0, Lo/setDrawerShadow;->asBinder:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lo/setDrawerShadow;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 72
    iget-object p2, p0, Lo/setDrawerShadow;->asBinder:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lo/setDrawerShadow;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 75
    iget-object p2, p0, Lo/setDrawerShadow;->asBinder:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lo/setDrawerShadow;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 78
    iget-object p2, p0, Lo/setDrawerShadow;->asBinder:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lo/setDrawerShadow;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 81
    iget-object p2, p0, Lo/setDrawerShadow;->extraCallback:Lo/setDrawerLockMode;

    iget-object v0, p0, Lo/setDrawerShadow;->asBinder:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Lo/setDrawerShadow;->onRelationshipValidationResult:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lo/setDrawerShadow;->onPostMessage:[F

    aget v3, v2, v0

    iget-object v4, p0, Lo/setDrawerShadow;->ICustomTabsCallback:[F

    aget v4, v4, v0

    aget v2, v2, v0

    sub-float/2addr v4, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lo/setDrawerShadow;->extraCallback:Lo/setDrawerLockMode;

    iget-object v2, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lo/setDrawerLockMode;->setBounds([FII)V

    .line 89
    :goto_1
    iget-object v0, p0, Lo/setDrawerShadow;->getInterfaceDescriptor:[F

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 90
    iget-object v1, p0, Lo/setDrawerShadow;->onTransact:[F

    aget v2, v1, p2

    iget-object v3, p0, Lo/setDrawerShadow;->asInterface:[F

    aget v3, v3, p2

    aget v1, v1, p2

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    aput v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 93
    :cond_1
    iget-object p1, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lo/setDrawerShadow;->getInterfaceDescriptor:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 95
    iget-object p2, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 97
    iget-object p1, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 98
    iget-object p1, p0, Lo/setDrawerShadow;->extraCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lo/setDrawerShadow;->onMessageChannelReady:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage([FLandroid/graphics/Matrix;)V
    .locals 3

    .line 54
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 55
    iget-object v0, p0, Lo/setDrawerShadow;->onPostMessage:[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object p1, p0, Lo/setDrawerShadow;->onNavigationEvent:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/setDrawerShadow;->extraCallback:Lo/setDrawerLockMode;

    .line 1195
    iget-object v0, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 2146
    iget-object v1, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v2, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2147
    iget-object v0, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 56
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 57
    iget-object p1, p0, Lo/setDrawerShadow;->onTransact:[F

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method
