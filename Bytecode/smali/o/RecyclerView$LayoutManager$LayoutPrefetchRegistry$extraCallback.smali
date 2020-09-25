.class final Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onPostMessage(I)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# direct methods
.method constructor <init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;I)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    iput p2, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 118
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->score:I

    invoke-virtual {v0, v1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "score"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->extraCallback:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onMessageChannelReady(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "hiScore"

    if-eqz v0, :cond_1

    .line 120
    iget v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->extraCallback:I

    iget-object v4, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v4}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->ICustomTabsCallback(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)I

    move-result v4

    if-le v0, v4, :cond_0

    .line 121
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    iget v4, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->extraCallback:I

    invoke-static {v0, v4}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->hiScore:I

    invoke-virtual {v0, v4}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    const v4, 0x7f1301ad

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->ICustomTabsCallback(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 125
    :cond_1
    iget v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->extraCallback:I

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object v4, Lo/setTrackTintMode;->disconnect:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x29

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v0, v4, :cond_2

    .line 126
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    iget v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->extraCallback:I

    .line 2000
    sget-object v4, Lo/setTrackTintMode;->disconnect:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 128
    :cond_2
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->hiScore:I

    invoke-virtual {v0, v4}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$extraCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    const v4, 0x7f130284

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v5, Lo/setTrackTintMode;->disconnect:Lo/getCollapseContentDescription;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v7, v6

    invoke-virtual {v5, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
