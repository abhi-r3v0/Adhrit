.class final Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# direct methods
.method constructor <init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$asInterface;->onPostMessage:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$asInterface;->onPostMessage:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {p1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lo/RecyclerView$LayoutParams$ICustomTabsCallback;->extraCallback:Lo/RecyclerView$LayoutParams$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Lo/RecyclerView$LayoutParams;->extraCallback(Lo/RecyclerView$LayoutParams$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method
