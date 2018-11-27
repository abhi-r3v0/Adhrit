.class Landroid/support/v4/widget/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V
    .locals 0

    .line 484
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 487
    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    return-void
.end method
