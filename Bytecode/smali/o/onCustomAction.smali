.class public Lo/onCustomAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onCustomAction$extraCallback;,
        Lo/onCustomAction$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lo/onCustomAction$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    iput-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    .line 47
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/onCustomAction;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 0

    .line 273
    invoke-static {}, Lo/onCustomAction$extraCallback;->onPostMessage()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onCustomAction$extraCallback;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lo/onCustomAction$extraCallback;->onMessageChannelReady()Lo/onCustomAction$extraCallback;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iput-object p2, v0, Lo/onCustomAction$extraCallback;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 188
    iget p1, v0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    return-void
.end method

.method public final onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 3

    .line 101
    iget-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {v0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    return-object v0

    .line 105
    :cond_1
    iget-object v1, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    .line 1399
    iget-object v1, v1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 105
    check-cast v1, Lo/onCustomAction$extraCallback;

    if-eqz v1, :cond_5

    .line 106
    iget v2, v1, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_5

    .line 107
    iget v0, v1, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 110
    iget-object p2, v1, Lo/onCustomAction$extraCallback;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    .line 112
    iget-object p2, v1, Lo/onCustomAction$extraCallback;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 117
    :goto_1
    iget v0, v1, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_3

    .line 118
    iget-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    .line 119
    invoke-static {v1}, Lo/onCustomAction$extraCallback;->onNavigationEvent(Lo/onCustomAction$extraCallback;)V

    :cond_3
    return-object p2

    .line 114
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v0
.end method

.method public final onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onCustomAction$extraCallback;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lo/onCustomAction$extraCallback;->onMessageChannelReady()Lo/onCustomAction$extraCallback;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    iget p1, v0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    return-void
.end method

.method public final onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onCustomAction$extraCallback;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lo/onCustomAction$extraCallback;->onMessageChannelReady()Lo/onCustomAction$extraCallback;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iput-object p2, v0, Lo/onCustomAction$extraCallback;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 70
    iget p1, v0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lo/onCustomAction$extraCallback;->onNavigationEvent:I

    return-void
.end method

.method public final onNavigationEvent(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 260
    iget-object v0, p0, Lo/onCustomAction;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 2327
    iget-boolean v1, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 2328
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 2331
    :cond_0
    iget v0, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 261
    iget-object v2, p0, Lo/onCustomAction;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 2373
    iget-boolean v3, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v3, :cond_1

    .line 2374
    invoke-virtual {v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 2377
    :cond_1
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_2

    .line 262
    iget-object v2, p0, Lo/onCustomAction;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 3171
    iget-object v3, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v3, v3, v0

    sget-object v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    .line 3172
    iget-object v3, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    sget-object v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage:Ljava/lang/Object;

    aput-object v4, v3, v0

    .line 3173
    iput-boolean v1, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/onCustomAction;->onNavigationEvent:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onCustomAction$extraCallback;

    if-eqz p1, :cond_4

    .line 268
    invoke-static {p1}, Lo/onCustomAction$extraCallback;->onNavigationEvent(Lo/onCustomAction$extraCallback;)V

    :cond_4
    return-void
.end method
