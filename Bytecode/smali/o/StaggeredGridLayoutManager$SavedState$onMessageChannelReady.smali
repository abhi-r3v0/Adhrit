.class final Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setOverflowIcon$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StaggeredGridLayoutManager$SavedState;->onPostMessage(Ljava/util/List;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

.field private synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/StaggeredGridLayoutManager$SavedState;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    iput-object p2, p0, Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 4

    .line 156
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isFullSpan;

    .line 1010
    iget-object v1, v1, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 156
    invoke-static {v0, v1, v2, v3}, Lo/StaggeredGridLayoutManager$SavedState;->onNavigationEvent(Lo/StaggeredGridLayoutManager$SavedState;Ljava/lang/String;II)V

    .line 157
    iget-object v0, p0, Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager$SavedState;

    invoke-static {v0}, Lo/StaggeredGridLayoutManager$SavedState;->onMessageChannelReady(Lo/StaggeredGridLayoutManager$SavedState;)Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, v0, Lo/StaggeredGridLayoutManager$SavedState$onNavigationEvent;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lo/StaggeredGridLayoutManager$SavedState$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isFullSpan;

    const-string/jumbo v1, "top_menu"

    invoke-interface {v0, p1, v1}, Lo/StaggeredGridLayoutManager$SavedState$ICustomTabsCallback;->ICustomTabsCallback(Lo/isFullSpan;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
