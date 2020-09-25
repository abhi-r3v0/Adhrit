.class public final Lo/setClipToPadding;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/MasonryCardHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "firstItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/MasonryCardSingleItemHolder;",
        "firstItemLayoutParams",
        "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
        "secondItem",
        "secondItemLayoutParams",
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
.field private final extraCallback:Lo/onChildrenLoaded$onPostMessage;

.field private final onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

.field private final onNavigationEvent:Lo/isLandscapeMode$ICustomTabsCallback;

.field private final onPostMessage:Lo/isLandscapeMode$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 9010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0223

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

    iput-object p1, p0, Lo/setClipToPadding;->onNavigationEvent:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 18
    new-instance p1, Lo/isLandscapeMode$ICustomTabsCallback;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->secondItem:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const-string v0, "itemView.secondItem"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lo/isLandscapeMode$ICustomTabsCallback;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/setClipToPadding;->onPostMessage:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 19
    iget-object p1, p0, Lo/setClipToPadding;->onNavigationEvent:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 9020
    iget-object p1, p1, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz p1, :cond_1

    check-cast p1, Lo/onChildrenLoaded$onPostMessage;

    iput-object p1, p0, Lo/setClipToPadding;->onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

    .line 20
    iget-object p1, p0, Lo/setClipToPadding;->onPostMessage:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 10020
    iget-object p1, p1, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/onChildrenLoaded$onPostMessage;

    iput-object p1, p0, Lo/setClipToPadding;->extraCallback:Lo/onChildrenLoaded$onPostMessage;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    instance-of v0, p1, Lo/computeVerticalScrollExtent;

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lo/setClipToPadding;->onNavigationEvent:Lo/isLandscapeMode$ICustomTabsCallback;

    check-cast p1, Lo/computeVerticalScrollExtent;

    .line 1064
    iget-object v1, p1, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2115
    iget-object v1, v1, Lo/scrollToPositionWithOffset;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2037
    :goto_0
    invoke-virtual {v0, v1}, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;)V

    .line 25
    iget-object v0, p0, Lo/setClipToPadding;->onPostMessage:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 3065
    iget-object v1, p1, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    if-eqz v1, :cond_1

    .line 4115
    iget-object v2, v1, Lo/scrollToPositionWithOffset;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    .line 4037
    :cond_1
    invoke-virtual {v0, v2}, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;)V

    .line 26
    iget-object v0, p0, Lo/setClipToPadding;->onNavigationEvent:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 5020
    iget-object v0, v0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 26
    new-instance v1, Lo/setClipToPadding$onMessageChannelReady;

    invoke-direct {v1, p0}, Lo/setClipToPadding$onMessageChannelReady;-><init>(Lo/setClipToPadding;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 29
    iget-object v0, p0, Lo/setClipToPadding;->onPostMessage:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 6020
    iget-object v0, v0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 29
    new-instance v1, Lo/setClipToPadding$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/setClipToPadding$onNavigationEvent;-><init>(Lo/setClipToPadding;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 32
    iget-object v0, p0, Lo/setClipToPadding;->onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

    .line 6066
    iget v1, p1, Lo/computeVerticalScrollExtent;->onMessageChannelReady:F

    .line 32
    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 33
    iget-object v0, p0, Lo/setClipToPadding;->extraCallback:Lo/onChildrenLoaded$onPostMessage;

    .line 6067
    iget p1, p1, Lo/computeVerticalScrollExtent;->onPostMessage:F

    .line 33
    iput p1, v0, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 34
    iget-object p1, p0, Lo/setClipToPadding;->onNavigationEvent:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 7020
    iget-object p1, p1, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lo/setClipToPadding;->onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lo/setClipToPadding;->onPostMessage:Lo/isLandscapeMode$ICustomTabsCallback;

    .line 8020
    iget-object p1, p1, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lo/setClipToPadding;->extraCallback:Lo/onChildrenLoaded$onPostMessage;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
