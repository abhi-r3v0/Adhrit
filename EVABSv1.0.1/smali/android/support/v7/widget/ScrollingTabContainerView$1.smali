.class Landroid/support/v7/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0

    .line 262
    iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    iput-object p2, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 265
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 266
    iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method
