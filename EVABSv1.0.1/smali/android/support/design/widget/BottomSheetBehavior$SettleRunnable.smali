.class Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mTargetState:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 748
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 750
    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mTargetState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 755
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 758
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;->mTargetState:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    :goto_0
    return-void
.end method
