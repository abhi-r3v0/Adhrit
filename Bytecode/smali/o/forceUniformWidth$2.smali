.class final Lo/forceUniformWidth$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/forceUniformWidth;->ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/forceUniformWidth;

.field private synthetic onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lo/forceUniformWidth;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lo/forceUniformWidth$2;->ICustomTabsCallback:Lo/forceUniformWidth;

    iput-object p2, p0, Lo/forceUniformWidth$2;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lo/forceUniformWidth$2;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lo/forceUniformWidth$2;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    new-instance v1, Lo/forceUniformWidth$2$2;

    invoke-direct {v1, p0}, Lo/forceUniformWidth$2$2;-><init>(Lo/forceUniformWidth$2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lo/forceUniformWidth$2;->ICustomTabsCallback:Lo/forceUniformWidth;

    invoke-static {v0}, Lo/forceUniformWidth;->extraCallback(Lo/forceUniformWidth;)Z

    .line 1101
    iget-object v0, p0, Lo/forceUniformWidth$2;->ICustomTabsCallback:Lo/forceUniformWidth;

    invoke-static {v0}, Lo/forceUniformWidth;->onPostMessage(Lo/forceUniformWidth;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method
