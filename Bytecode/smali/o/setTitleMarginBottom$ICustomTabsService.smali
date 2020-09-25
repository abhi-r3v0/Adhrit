.class final Lo/setTitleMarginBottom$ICustomTabsService;
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
        "com/dreamplug/androidapp/gating/NewOnboardAddCardFragment$onCreateAnimator$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 335
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    invoke-static {v0}, Lo/setTitleMarginBottom;->ICustomTabsCallback$Stub(Lo/setTitleMarginBottom;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const-string v0, "animator"

    .line 338
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 339
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    .line 1217
    iget-object v0, v0, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 339
    iget-object v2, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    .line 2217
    iget-object v2, v2, Lo/setTitleMarginBottom;->onPostMessage:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    .line 340
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 342
    :cond_1
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    .line 2218
    iget-object v0, v0, Lo/setTitleMarginBottom;->onNavigationEvent:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    sub-float v3, v2, p1

    .line 342
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 343
    :cond_2
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    .line 2219
    iget-object v0, v0, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_3

    sub-float/2addr v2, p1

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 344
    :cond_3
    iget-object v0, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    .line 3219
    iget-object v0, v0, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 344
    iget-object v2, p0, Lo/setTitleMarginBottom$ICustomTabsService;->onPostMessage:Lo/setTitleMarginBottom;

    .line 4219
    iget-object v2, v2, Lo/setTitleMarginBottom;->onMessageChannelReady:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_4
    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 338
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method
