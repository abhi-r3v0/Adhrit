.class final Lo/findFirstReferenceChild$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstReferenceChild;->onCreateAnimator(IZI)Landroid/animation/Animator;
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
        "com/dreamplug/fabrik/ui/lifestyle/compass/collection/LifestyleCollectionFragment$onCreateAnimator$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstReferenceChild$onTransact;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animator"

    .line 329
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 330
    iget-object v0, p0, Lo/findFirstReferenceChild$onTransact;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->extraCallback(Lo/findFirstReferenceChild;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/findFirstReferenceChild$onTransact;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v1}, Lo/findFirstReferenceChild;->onMessageChannelReady(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 331
    iget-object v0, p0, Lo/findFirstReferenceChild$onTransact;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->onNavigationEvent(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lo/findFirstReferenceChild$onTransact;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v1}, Lo/findFirstReferenceChild;->onNavigationEvent(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationX(F)V

    .line 332
    iget-object v0, p0, Lo/findFirstReferenceChild$onTransact;->onPostMessage:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->ICustomTabsCallback(Lo/findFirstReferenceChild;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 329
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
