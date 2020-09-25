.class final Lo/getCustomActions$onTransact;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onTransact"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lo/getCustomActions$onTransact;->onPostMessage:Lo/getCustomActions;

    invoke-direct {p0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    .line 1054
    iget-object v0, p0, Lo/getCustomActions$onTransact;->onPostMessage:Lo/getCustomActions;

    .line 1761
    iget-object v0, v0, Lo/getCustomActions;->onRelationshipValidationResult:Lo/MediaBrowserCompat$ItemCallback$4;

    .line 1054
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
