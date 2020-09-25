.class public Lo/sendExtras;
.super Lo/getVolumeControl;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/getVolumeControl;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    check-cast p1, Lo/fromQueueItem;

    invoke-virtual {p1}, Lo/fromQueueItem;->asBinder()Lo/fromQueueItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public ICustomTabsCallback(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 284
    check-cast p1, Lo/fromQueueItem;

    .line 285
    invoke-virtual {p1, p2}, Lo/fromQueueItem;->onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;

    :cond_0
    return-void
.end method

.method public ICustomTabsCallback(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 71
    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 2429
    iget-object v0, p1, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 76
    invoke-virtual {p3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 77
    invoke-static {v0, v3}, Lo/sendExtras;->onPostMessage(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p3, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0, p1, p3}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 186
    check-cast p1, Lo/fromQueueItem;

    .line 187
    check-cast p2, Lo/fromQueueItem;

    .line 188
    check-cast p3, Lo/fromQueueItem;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 190
    new-instance v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object p1

    const/4 p2, 0x1

    .line 193
    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->onMessageChannelReady(I)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 200
    new-instance p2, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p2, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 204
    :cond_3
    invoke-virtual {p2, p3}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 300
    check-cast p1, Lo/fromQueueItem;

    .line 301
    new-instance v0, Lo/sendExtras$1;

    invoke-direct {v0, p0, p2}, Lo/sendExtras$1;-><init>(Lo/sendExtras;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lo/fromQueueItem;->onNavigationEvent(Lo/fromQueueItem$extraCallback;)V

    :cond_0
    return-void
.end method

.method public extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 221
    move-object v0, p1

    check-cast v0, Lo/fromQueueItem;

    .line 222
    new-instance v9, Lo/sendExtras$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lo/sendExtras$3;-><init>(Lo/sendExtras;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public onMessageChannelReady(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lo/fromQueueItem;

    invoke-static {p1, p2}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 292
    check-cast p1, Lo/fromQueueItem;

    .line 293
    invoke-virtual {p1, p2}, Lo/fromQueueItem;->ICustomTabsCallback(Landroid/view/View;)Lo/fromQueueItem;

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 246
    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    if-eqz p1, :cond_0

    .line 6429
    iget-object v0, p1, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7429
    iget-object v0, p1, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 249
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    new-instance v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    .line 64
    check-cast p1, Lo/fromQueueItem;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 134
    new-instance v0, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    invoke-direct {v0}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;-><init>()V

    if-eqz p1, :cond_0

    .line 136
    check-cast p1, Lo/fromQueueItem;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    :cond_0
    if-eqz p2, :cond_1

    .line 139
    check-cast p2, Lo/fromQueueItem;

    invoke-virtual {v0, p2}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    :cond_1
    if-eqz p3, :cond_2

    .line 142
    check-cast p3, Lo/fromQueueItem;

    invoke-virtual {v0, p3}, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->ICustomTabsCallback(Lo/fromQueueItem;)Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    :cond_2
    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 87
    check-cast p1, Lo/fromQueueItem;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    invoke-virtual {p0, p2, v0}, Lo/sendExtras;->onMessageChannelReady(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 91
    new-instance p2, Lo/sendExtras$4;

    invoke-direct {p2, p0, v0}, Lo/sendExtras$4;-><init>(Lo/sendExtras;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lo/fromQueueItem;->onNavigationEvent(Lo/fromQueueItem$extraCallback;)V

    :cond_0
    return-void
.end method

.method public onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 102
    check-cast p1, Lo/fromQueueItem;

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    instance-of v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 107
    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 3211
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    if-ltz v2, :cond_2

    .line 3223
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 3226
    :cond_1
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v1

    .line 111
    :goto_2
    invoke-virtual {p0, v3, p2}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 4415
    :cond_4
    iget-object v0, p1, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 4126
    invoke-static {v0}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4127
    invoke-static {v1}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4128
    invoke-static {v1}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_7

    .line 5429
    iget-object v0, p1, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 115
    invoke-static {v0}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_7

    .line 119
    invoke-virtual {p2, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lo/fromQueueItem;->onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 257
    check-cast p1, Lo/fromQueueItem;

    .line 258
    instance-of v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 259
    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 8211
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ltz v2, :cond_1

    .line 8223
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 8226
    :cond_0
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper$1;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem;

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v1

    .line 263
    :goto_2
    invoke-virtual {p0, v3, p2, p3}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 9415
    :cond_3
    iget-object v0, p1, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 9126
    invoke-static {v0}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 9127
    invoke-static {v1}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9128
    invoke-static {v1}, Lo/sendExtras;->extraCallback(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_8

    .line 10429
    iget-object v0, p1, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ne v1, v4, :cond_8

    .line 268
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p3, :cond_6

    const/4 v0, 0x0

    goto :goto_5

    .line 270
    :cond_6
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_5
    if-ge v2, v0, :cond_7

    .line 272
    invoke-virtual {p3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lo/fromQueueItem;->onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 274
    :cond_7
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    sub-int/2addr p3, v3

    :goto_6
    if-ltz p3, :cond_8

    .line 275
    invoke-virtual {p2, p3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lo/fromQueueItem;->ICustomTabsCallback(Landroid/view/View;)Lo/fromQueueItem;

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public onPostMessage(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 150
    check-cast p1, Lo/fromQueueItem;

    .line 151
    new-instance v0, Lo/sendExtras$5;

    invoke-direct {v0, p0, p2, p3}, Lo/sendExtras$5;-><init>(Lo/sendExtras;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public onPostMessage(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    instance-of p1, p1, Lo/fromQueueItem;

    return p1
.end method
