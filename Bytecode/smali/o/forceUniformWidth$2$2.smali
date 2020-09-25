.class final Lo/forceUniformWidth$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/forceUniformWidth$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/forceUniformWidth$2;


# direct methods
.method constructor <init>(Lo/forceUniformWidth$2;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/forceUniformWidth$2$2;->extraCallback:Lo/forceUniformWidth$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 2

    .line 111
    iget-object v0, p0, Lo/forceUniformWidth$2$2;->extraCallback:Lo/forceUniformWidth$2;

    .line 1099
    iget-object v1, v0, Lo/forceUniformWidth$2;->ICustomTabsCallback:Lo/forceUniformWidth;

    invoke-static {v1}, Lo/forceUniformWidth;->extraCallback(Lo/forceUniformWidth;)Z

    .line 1101
    iget-object v0, v0, Lo/forceUniformWidth$2;->ICustomTabsCallback:Lo/forceUniformWidth;

    invoke-static {v0}, Lo/forceUniformWidth;->onPostMessage(Lo/forceUniformWidth;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method
