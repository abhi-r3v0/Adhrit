.class final Lo/hasValidAnchor$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValidAnchor;->onCreateAnimator(IZI)Landroid/animation/Animator;
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
        "com/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicFragment$onCreateAnimator$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/hasValidAnchor;


# direct methods
.method constructor <init>(Lo/hasValidAnchor;)V
    .locals 0

    iput-object p1, p0, Lo/hasValidAnchor$extraCallback;->onPostMessage:Lo/hasValidAnchor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animator"

    .line 194
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 195
    iget-object v0, p0, Lo/hasValidAnchor$extraCallback;->onPostMessage:Lo/hasValidAnchor;

    .line 1131
    iget-object v0, v0, Lo/hasValidAnchor;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 196
    :cond_0
    iget-object v0, p0, Lo/hasValidAnchor$extraCallback;->onPostMessage:Lo/hasValidAnchor;

    .line 2131
    iget-object v0, v0, Lo/hasValidAnchor;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 197
    :cond_1
    iget-object v0, p0, Lo/hasValidAnchor$extraCallback;->onPostMessage:Lo/hasValidAnchor;

    .line 3131
    iget-object v0, v0, Lo/hasValidAnchor;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 198
    :cond_2
    iget-object v0, p0, Lo/hasValidAnchor$extraCallback;->onPostMessage:Lo/hasValidAnchor;

    .line 4130
    iget-object v0, v0, Lo/hasValidAnchor;->extraCallback:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void

    .line 194
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
