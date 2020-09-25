.class final Lo/getCustomActions$onPostMessage;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;Landroid/content/Context;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/getCustomActions$onPostMessage;->ICustomTabsCallback:Lo/getCustomActions;

    .line 1002
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 2

    .line 1024
    iget-object v0, p0, Lo/getCustomActions$onPostMessage;->ICustomTabsCallback:Lo/getCustomActions;

    .line 1850
    iget v0, v0, Lo/getCustomActions;->onTransact:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    return-void

    .line 1030
    :cond_0
    iget-object p1, p0, Lo/getCustomActions$onPostMessage;->ICustomTabsCallback:Lo/getCustomActions;

    invoke-virtual {p1}, Lo/getCustomActions;->onMessageChannelReady()I

    move-result p1

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 1031
    aput p1, p2, v0

    const/4 v0, 0x1

    .line 1032
    aput p1, p2, v0

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lo/getPlaybackState;)V
    .locals 0

    .line 1017
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lo/getPlaybackState;)V

    .line 1018
    iget-object p1, p0, Lo/getCustomActions$onPostMessage;->ICustomTabsCallback:Lo/getCustomActions;

    iget-object p1, p1, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p1, p3}, Lo/getCustomActions$onMessageChannelReady;->onNavigationEvent(Lo/getPlaybackState;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lo/getCustomActions$onPostMessage;->ICustomTabsCallback:Lo/getCustomActions;

    iget-object v0, v0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0, p3}, Lo/getCustomActions$onMessageChannelReady;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object p1, p0, Lo/getCustomActions$onPostMessage;->ICustomTabsCallback:Lo/getCustomActions;

    iget-object p1, p1, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p1, p3}, Lo/getCustomActions$onMessageChannelReady;->onMessageChannelReady(I)Z

    move-result p1

    return p1

    .line 1011
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
