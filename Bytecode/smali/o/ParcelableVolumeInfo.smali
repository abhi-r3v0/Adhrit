.class public final Lo/ParcelableVolumeInfo;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static extraCallback(Landroid/view/ViewGroup;)Lo/ParcelableVolumeInfo;
    .locals 2

    .line 37
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-static {}, Lo/unregisterCallbackListener;->extraCallback()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/4 p0, 0x0

    .line 42
    invoke-virtual {v0, p0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 43
    new-instance p0, Lo/ParcelableVolumeInfo;

    invoke-direct {p0, v0}, Lo/ParcelableVolumeInfo;-><init>(Landroid/widget/FrameLayout;)V

    return-object p0
.end method
