.class public final Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/highlights/viewholder/HighlightsListViewHolder$layoutManager$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateRequestPermissionsRequestCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/cm/manage/smartstatement/highlights/viewholder/HighlightsListViewHolder$layoutManager$1",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "margin",
        "",
        "checkLayoutParams",
        "",
        "lp",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private final onNavigationEvent:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/highlights/viewholder/HighlightsListViewHolder$layoutManager$1;->extraCallback:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "Resources.getSystem()"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1010
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 49
    iput p1, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/highlights/viewholder/HighlightsListViewHolder$layoutManager$1;->onNavigationEvent:F

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/highlights/viewholder/HighlightsListViewHolder$layoutManager$1;->onNavigationEvent:F

    sub-float/2addr v1, v2

    .line 53
    iget v2, p0, Lcom/dreamplug/fabrik/ui/cm/manage/smartstatement/highlights/viewholder/HighlightsListViewHolder$layoutManager$1;->extraCallback:I

    if-le v2, v0, :cond_0

    const v2, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 54
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return v0
.end method
