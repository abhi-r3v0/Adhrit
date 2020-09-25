.class final Lo/AppCompatCheckBox;
.super Lo/getSupportCompoundDrawablesTintMode;
.source ""


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/getSupportCompoundDrawablesTintMode;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/AppCompatCheckBox;->onMessageChannelReady()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    return-void
.end method
