.class Landroid/support/transition/ChangeBounds$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mViewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$ViewBounds;)V
    .locals 0

    .line 322
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$7;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$7;->val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 325
    iget-object p1, p0, Landroid/support/transition/ChangeBounds$7;->val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    iput-object p1, p0, Landroid/support/transition/ChangeBounds$7;->mViewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    return-void
.end method
