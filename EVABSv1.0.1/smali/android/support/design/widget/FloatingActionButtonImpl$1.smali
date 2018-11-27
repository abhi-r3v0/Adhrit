.class Landroid/support/design/widget/FloatingActionButtonImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonImpl;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 237
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 239
    iget-boolean p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->mCancelled:Z

    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object p1, p1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 242
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {p1}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 226
    iget-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->this$0:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object p1, p1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->val$fromUser:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 227
    iput-boolean v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl$1;->mCancelled:Z

    return-void
.end method
