.class final Lo/getTransformedBoundingBox$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/onboardAddCard/MCFVerifyCardFragment$enterAnimator$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "animator"

    .line 413
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 415
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 1315
    iget-object v0, v0, Lo/getTransformedBoundingBox;->onTransact:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sub-float v2, v1, p1

    .line 415
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 416
    :cond_0
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 2313
    iget-object v0, v0, Lo/getTransformedBoundingBox;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_1

    sub-float v2, v1, p1

    .line 416
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 417
    :cond_1
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 2317
    iget-object v0, v0, Lo/getTransformedBoundingBox;->ICustomTabsCallback$Stub:Landroid/view/View;

    if-eqz v0, :cond_2

    sub-float v2, v1, p1

    .line 417
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 420
    :cond_2
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 3315
    iget-object v0, v0, Lo/getTransformedBoundingBox;->onTransact:Landroid/view/View;

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 420
    iget-object v4, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 4313
    iget-object v4, v4, Lo/getTransformedBoundingBox;->onMessageChannelReady:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 420
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    int-to-float v4, v4

    mul-float v4, v4, p1

    mul-float v4, v4, v2

    .line 421
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 423
    :cond_4
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 4317
    iget-object v0, v0, Lo/getTransformedBoundingBox;->ICustomTabsCallback$Stub:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 423
    iget-object v4, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 5317
    iget-object v4, v4, Lo/getTransformedBoundingBox;->ICustomTabsCallback$Stub:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 423
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    int-to-float v4, v4

    mul-float v4, v4, p1

    mul-float v4, v4, v2

    .line 424
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 425
    :cond_6
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 6313
    iget-object v0, v0, Lo/getTransformedBoundingBox;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 425
    iget-object v4, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 7313
    iget-object v4, v4, Lo/getTransformedBoundingBox;->onMessageChannelReady:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 425
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    int-to-float v4, v4

    mul-float v4, v4, p1

    mul-float v4, v4, v2

    .line 426
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 428
    :cond_8
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 7314
    iget-object v0, v0, Lo/getTransformedBoundingBox;->onRelationshipValidationResult:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 428
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :cond_9
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 8314
    iget-object v0, v0, Lo/getTransformedBoundingBox;->onRelationshipValidationResult:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 429
    iget-object v2, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 9314
    iget-object v2, v2, Lo/getTransformedBoundingBox;->onRelationshipValidationResult:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    int-to-float v2, v2

    mul-float v2, v2, p1

    .line 430
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 432
    :cond_b
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 9316
    iget-object v0, v0, Lo/getTransformedBoundingBox;->asInterface:Landroid/view/View;

    if-eqz v0, :cond_c

    sub-float/2addr v1, p1

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 433
    :cond_c
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 10316
    iget-object v0, v0, Lo/getTransformedBoundingBox;->asInterface:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 433
    iget-object v1, p0, Lo/getTransformedBoundingBox$ICustomTabsCallback;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 11316
    iget-object v1, v1, Lo/getTransformedBoundingBox;->asInterface:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 433
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    :cond_d
    int-to-float v1, v3

    mul-float v1, v1, p1

    const/high16 p1, -0x40000000    # -2.0f

    mul-float v1, v1, p1

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    return-void

    .line 413
    :cond_f
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
