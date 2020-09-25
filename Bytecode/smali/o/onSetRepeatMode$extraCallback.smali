.class final Lo/onSetRepeatMode$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSetRepeatMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onSetRepeatMode;


# direct methods
.method constructor <init>(Lo/onSetRepeatMode;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lo/onSetRepeatMode$extraCallback;->onPostMessage:Lo/onSetRepeatMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 582
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 583
    iget-object v0, p0, Lo/onSetRepeatMode$extraCallback;->onPostMessage:Lo/onSetRepeatMode;

    iget-object v0, v0, Lo/onSetRepeatMode;->extraCallback:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 584
    iget-object v0, p0, Lo/onSetRepeatMode$extraCallback;->onPostMessage:Lo/onSetRepeatMode;

    iget-object v0, v0, Lo/onSetRepeatMode;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 585
    iget-object p1, p0, Lo/onSetRepeatMode$extraCallback;->onPostMessage:Lo/onSetRepeatMode;

    .line 1191
    iget-object p1, p1, Lo/onSetRepeatMode;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
