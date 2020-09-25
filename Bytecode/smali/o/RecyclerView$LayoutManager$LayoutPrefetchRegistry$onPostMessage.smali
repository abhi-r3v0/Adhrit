.class final Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u00042\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/WindowInsets;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "insets",
        "onApplyWindowInsets"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# direct methods
.method constructor <init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_1
    iget-object v2, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {v2, v3}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    .line 51
    invoke-virtual {v2, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    iget-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$onPostMessage;->ICustomTabsCallback:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {p1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    return-object p2
.end method
