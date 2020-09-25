.class final Lo/addTab$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addTab;
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
        "com/cred/pay/ui/instrumentlisting/farm/InstrumentListingFragment$animateBack$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/addTab;


# direct methods
.method constructor <init>(Lo/addTab;)V
    .locals 0

    iput-object p1, p0, Lo/addTab$extraCallback;->ICustomTabsCallback:Lo/addTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "animator"

    .line 241
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 242
    iget-object v0, p0, Lo/addTab$extraCallback;->ICustomTabsCallback:Lo/addTab;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->container:I

    invoke-virtual {v0, v1}, Lo/addTab;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/addTab$extraCallback;->ICustomTabsCallback:Lo/addTab;

    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->container:I

    invoke-virtual {v1, v2}, Lo/addTab;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 243
    invoke-virtual {v0, v1}, Lo/onChildrenLoaded;->setTranslationY(F)V

    .line 244
    :cond_1
    iget-object v0, p0, Lo/addTab$extraCallback;->ICustomTabsCallback:Lo/addTab;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->container:I

    invoke-virtual {v0, v1}, Lo/addTab;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lo/onChildrenLoaded;->setAlpha(F)V

    :cond_2
    return-void

    .line 241
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
