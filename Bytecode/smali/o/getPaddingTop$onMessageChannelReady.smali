.class final Lo/getPaddingTop$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPaddingTop;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "list",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getPaddingTop;


# direct methods
.method constructor <init>(Lo/getPaddingTop;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 12

    .line 34
    check-cast p1, Ljava/util/List;

    const-string v0, "listParent"

    const-string v1, "emptyNotification"

    const-string v2, "recyclerView"

    const-string v3, "$this$visible"

    const/16 v4, 0x8

    const-string v5, "$this$gone"

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    .line 1046
    move-object v7, p1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-eqz v7, :cond_1

    .line 1047
    iget-object v7, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    invoke-static {v7}, Lo/getPaddingTop;->onPostMessage(Lo/getPaddingTop;)Z

    move-result v7

    if-nez v7, :cond_0

    new-array v7, v8, [Lo/addWrite;

    .line 1049
    iget-object v9, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    invoke-static {v9}, Lo/getPaddingTop;->onNavigationEvent(Lo/getPaddingTop;)Lo/getDecoratedMeasuredHeight;

    move-result-object v9

    .line 2045
    iget-object v9, v9, Lo/getDecoratedMeasuredHeight;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 3043
    new-instance v10, Lo/addWrite;

    const-string/jumbo v11, "unseen_count"

    invoke-direct {v10, v11, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v7, v6

    const-string v9, "pairs"

    .line 1048
    invoke-static {v7, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v9, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/HashMap;-><init>(I)V

    check-cast v9, Ljava/util/Map;

    invoke-static {v9, v7}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v7, "notification_screen_load"

    .line 1048
    invoke-static {v7, v9}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1051
    iget-object v7, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    invoke-static {v7}, Lo/getPaddingTop;->extraCallback(Lo/getPaddingTop;)V

    .line 1052
    iget-object v7, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    invoke-static {v7}, Lo/getPaddingTop;->onNavigationEvent(Lo/getPaddingTop;)Lo/getDecoratedMeasuredHeight;

    move-result-object v7

    .line 4000
    iget-object v7, v7, Lo/getDecoratedMeasuredHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ignoreView;

    .line 3114
    invoke-interface {v7}, Lo/ignoreView;->onNavigationEvent()Lo/clearScrap;

    move-result-object v7

    .line 3115
    new-instance v8, Lo/getDecoratedMeasuredHeight$onMessageChannelReady;

    invoke-direct {v8}, Lo/getDecoratedMeasuredHeight$onMessageChannelReady;-><init>()V

    check-cast v8, Lo/getScrapOrCachedViewForId;

    invoke-interface {v7, v8}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1054
    :cond_0
    iget-object v7, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    invoke-static {v7}, Lo/getPaddingTop;->ICustomTabsCallback(Lo/getPaddingTop;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-static {p1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v7, v7, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v7, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1055
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, v7}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->listParent:I

    invoke-virtual {p1, v2}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->emptyNotification:I

    invoke-virtual {p1, v0}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onViewStateRestored;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1059
    :cond_1
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v7, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {p1, v7}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7017
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptyNotification:I

    invoke-virtual {p1, v2}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onViewStateRestored;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->listParent:I

    invoke-virtual {p1, v1}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    iget-object p1, p0, Lo/getPaddingTop$onMessageChannelReady;->onPostMessage:Lo/getPaddingTop;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->emptyNotification:I

    invoke-virtual {p1, v0}, Lo/getPaddingTop;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onViewStateRestored;

    new-instance v0, Lo/onViewStateRestored$onNavigationEvent;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130195

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130194

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080341

    invoke-direct {v0, v1, v2, v3}, Lo/onViewStateRestored$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lo/onViewStateRestored;->setData(Lo/onViewStateRestored$onNavigationEvent;)V

    return-void
.end method
