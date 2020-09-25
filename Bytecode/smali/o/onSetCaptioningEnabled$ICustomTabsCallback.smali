.class public Lo/onSetCaptioningEnabled$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSetCaptioningEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field extraCallback:I

.field onMessageChannelReady:I

.field public onNavigationEvent:[I

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    .line 121
    iget v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    shl-int/lit8 v0, v0, 0x1

    .line 122
    iget-object v1, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 123
    iput-object v1, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    const/4 v2, -0x1

    .line 124
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 125
    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    shl-int/lit8 v2, v0, 0x1

    .line 127
    new-array v2, v2, [I

    iput-object v2, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    .line 128
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 133
    aput p2, v1, v0

    .line 135
    iget p1, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    return-void

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(I)Z
    .locals 5

    .line 139
    iget-object v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 140
    iget v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 142
    iget-object v4, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method final onPostMessage(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    .line 80
    iget-object v1, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    .line 81
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 84
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 85
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_2

    .line 91
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/onSkipToNext;

    .line 1460
    iget-object v2, v2, Lo/onSkipToNext;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    .line 92
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    iget v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onMessageChannelReady:I

    iget v2, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->extraCallback:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v0, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 102
    :cond_3
    :goto_0
    iget v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v0, v2, :cond_4

    .line 103
    iget v0, p0, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 104
    iput-boolean p2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 105
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_4
    return-void
.end method
