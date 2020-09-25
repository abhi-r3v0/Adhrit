.class final Lo/AppCompatCheckedTextView;
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
    .locals 2

    .line 14
    invoke-virtual {p0}, Lo/AppCompatCheckedTextView;->onMessageChannelReady()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method
