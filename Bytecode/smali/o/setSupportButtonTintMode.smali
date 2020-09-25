.class final Lo/setSupportButtonTintMode;
.super Lo/getSupportCompoundDrawablesTintMode;
.source ""


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/getSupportCompoundDrawablesTintMode;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lo/setSupportButtonTintMode;->onMessageChannelReady()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    return-void
.end method
