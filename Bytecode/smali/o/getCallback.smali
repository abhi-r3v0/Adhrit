.class public Lo/getCallback;
.super Lo/removeSubscription;
.source ""


# instance fields
.field protected MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lo/removeSubscription;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/removeSubscription;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5564
    iput-object v0, p1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    return-void
.end method

.method public ICustomTabsCallback$Stub()V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 63
    invoke-super {p0}, Lo/removeSubscription;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public ICustomTabsService$Stub$Proxy()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lo/removeSubscription;->updateVisuals()V

    .line 278
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 283
    iget-object v2, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeSubscription;

    .line 284
    instance-of v3, v2, Lo/getCallback;

    if-eqz v3, :cond_1

    .line 285
    check-cast v2, Lo/getCallback;

    invoke-virtual {v2}, Lo/getCallback;->ICustomTabsService$Stub$Proxy()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 301
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public final cancelAll()Lo/addSubscription;
    .locals 4

    .line 6555
    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 121
    move-object v1, p0

    check-cast v1, Lo/addSubscription;

    :goto_0
    if-eqz v0, :cond_1

    .line 7555
    iget-object v2, v0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 126
    instance-of v3, v0, Lo/addSubscription;

    if-eqz v3, :cond_0

    .line 127
    move-object v1, v0

    check-cast v1, Lo/addSubscription;

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final onPostMessage(II)V
    .locals 3

    .line 245
    invoke-super {p0, p1, p2}, Lo/removeSubscription;->onPostMessage(II)V

    .line 246
    iget-object p1, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 248
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeSubscription;

    .line 249
    invoke-virtual {p0}, Lo/getCallback;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    invoke-virtual {p0}, Lo/getCallback;->newSession()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/removeSubscription;->onPostMessage(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/MediaBrowserCompat$MediaItem$1;)V
    .locals 3

    .line 292
    invoke-super {p0, p1}, Lo/removeSubscription;->onPostMessage(Lo/MediaBrowserCompat$MediaItem$1;)V

    .line 293
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 295
    iget-object v2, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeSubscription;

    .line 296
    invoke-virtual {v2, p1}, Lo/removeSubscription;->onPostMessage(Lo/MediaBrowserCompat$MediaItem$1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/removeSubscription;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1555
    iget-object v0, p1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 74
    check-cast v0, Lo/getCallback;

    .line 3098
    iget-object v0, v0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3564
    iput-object v0, p1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 4564
    :cond_0
    iput-object p0, p1, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    return-void
.end method

.method public final updateVisuals()V
    .locals 5

    .line 259
    invoke-super {p0}, Lo/removeSubscription;->updateVisuals()V

    .line 260
    iget-object v0, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 265
    iget-object v2, p0, Lo/getCallback;->MediaBrowserCompat$ItemCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeSubscription;

    .line 266
    invoke-virtual {p0}, Lo/removeSubscription;->warmup()I

    move-result v3

    invoke-virtual {p0}, Lo/removeSubscription;->ICustomTabsService()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lo/removeSubscription;->onPostMessage(II)V

    .line 267
    instance-of v3, v2, Lo/addSubscription;

    if-nez v3, :cond_1

    .line 268
    invoke-virtual {v2}, Lo/removeSubscription;->updateVisuals()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
