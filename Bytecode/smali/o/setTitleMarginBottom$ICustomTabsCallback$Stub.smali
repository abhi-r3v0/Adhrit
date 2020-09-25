.class final Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginBottom;->onCreateAnimator(IZI)Landroid/animation/Animator;
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
        "com/dreamplug/androidapp/gating/NewOnboardAddCardFragment$onCreateAnimator$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 283
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->ICustomTabsCallback$Stub(Lo/setTitleMarginBottom;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const-string v0, "animator"

    .line 286
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 287
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 1217
    iget-object v0, v0, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 287
    iget-object v3, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 2217
    iget-object v3, v3, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-float v3, v3

    mul-float v3, v3, p1

    mul-float v3, v3, v2

    .line 288
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 290
    :cond_1
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 3217
    iget-object v0, v0, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const/high16 v3, 0x40400000    # 3.0f

    if-eqz v0, :cond_2

    add-float v4, p1, v2

    div-float/2addr v4, v3

    .line 290
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 291
    :cond_2
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 4217
    iget-object v0, v0, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    if-eqz v0, :cond_3

    add-float v4, p1, v2

    div-float/2addr v4, v3

    .line 291
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 293
    :cond_3
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 5217
    iget-object v0, v0, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    sub-float v4, v3, p1

    .line 293
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 294
    :cond_4
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 5218
    iget-object v0, v0, Lo/setTitleMarginBottom;->onNavigationEvent:Landroid/view/View;

    if-eqz v0, :cond_5

    sub-float v4, v3, p1

    .line 294
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_a

    .line 296
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 5219
    iget-object v0, v0, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_6
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 6219
    iget-object v0, v0, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_7

    mul-float v4, p1, v2

    sub-float/2addr v3, v4

    .line 297
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 298
    :cond_7
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 7219
    iget-object v0, v0, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 298
    iget-object v3, p0, Lo/setTitleMarginBottom$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/setTitleMarginBottom;

    .line 8219
    iget-object v3, v3, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_8
    int-to-float v1, v1

    mul-float v1, v1, p1

    mul-float v1, v1, v2

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 286
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method
