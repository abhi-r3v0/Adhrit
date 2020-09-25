.class public final Lo/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
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
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/main/menu/NavigationMenu$nudge$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setThreshold$onPostMessage;


# direct methods
.method public constructor <init>(Lo/setThreshold$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator;->onMessageChannelReady:Lo/setThreshold$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator;->onMessageChannelReady:Lo/setThreshold$onPostMessage;

    .line 1018
    iget-object v0, v0, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    .line 56
    iget-object v1, p0, Lo/RecyclerView$ItemAnimator;->onMessageChannelReady:Lo/setThreshold$onPostMessage;

    .line 2018
    iget-object v1, v1, Lo/setThreshold$onPostMessage;->extraCallback:Landroid/view/View;

    const-string v2, "menuBg"

    .line 56
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Lo/onChildrenLoaded;->setTranslationX(F)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
