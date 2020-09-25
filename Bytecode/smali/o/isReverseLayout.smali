.class public final Lo/isReverseLayout;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/Group2InnerCardHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cardView",
        "Landroidx/cardview/widget/CardView;",
        "kotlin.jvm.PlatformType",
        "firstItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/MasonryCardSingleItemHolder;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final extraCallback:Landroidx/cardview/widget/CardView;

.field private final onMessageChannelReady:Lo/isLandscapeMode$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 3010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0221

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 17
    new-instance p1, Lo/isLandscapeMode$ICustomTabsCallback;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->firstItem:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const-string v1, "itemView.firstItem"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lo/isLandscapeMode$ICustomTabsCallback;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/isReverseLayout;->onMessageChannelReady:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->cardView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lo/isReverseLayout;->extraCallback:Landroidx/cardview/widget/CardView;

    const-string p2, "cardView"

    .line 21
    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/isReverseLayout;->extraCallback:Landroidx/cardview/widget/CardView;

    invoke-static {v0, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 22
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 4000
    sget-object v0, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sortAndDedup$ICustomTabsCallback;

    .line 4043
    iget v0, v0, Lo/sortAndDedup$ICustomTabsCallback;->ICustomTabsCallback:I

    int-to-float v0, v0

    const v1, 0x3f3851ec    # 0.72f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 22
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lo/scrollToPositionWithOffset;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lo/isReverseLayout;->onMessageChannelReady:Lo/isLandscapeMode$ICustomTabsCallback;

    check-cast p1, Lo/scrollToPositionWithOffset;

    if-eqz p1, :cond_0

    .line 1115
    iget-object p1, p1, Lo/scrollToPositionWithOffset;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1037
    :goto_0
    invoke-virtual {v0, p1}, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;)V

    .line 29
    iget-object p1, p0, Lo/isReverseLayout;->onMessageChannelReady:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 2020
    iget-object p1, p1, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 29
    new-instance v0, Lo/isReverseLayout$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/isReverseLayout$ICustomTabsCallback;-><init>(Lo/isReverseLayout;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    :cond_1
    return-void
.end method
