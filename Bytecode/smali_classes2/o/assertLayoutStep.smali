.class public final Lo/assertLayoutStep;
.super Lo/setDuration;
.source ""


# instance fields
.field private final extraCallback:Lo/setCurrentControllerInfo;

.field private final onNavigationEvent:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lo/setDuration;-><init>()V

    .line 28
    iput-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 29
    new-instance v0, Lo/assertLayoutStep$5;

    invoke-direct {v0, p1}, Lo/assertLayoutStep$5;-><init>(Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/assertLayoutStep;->onNavigationEvent:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 47
    new-instance v0, Lo/assertLayoutStep$1;

    invoke-direct {v0, p1}, Lo/assertLayoutStep$1;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT `WishlistUnlikeEntity`.`id` AS `id`, `WishlistUnlikeEntity`.`isLiked` AS `isLiked` FROM WishlistUnlikeEntity"

    .line 136
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 138
    iget-object v2, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 4323
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 4324
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 4328
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 140
    invoke-static {v2, v3}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "isLiked"

    .line 141
    invoke-static {v2, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 146
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 151
    :goto_1
    new-instance v8, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    invoke-direct {v8, v6, v7}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;-><init>(Ljava/lang/String;Z)V

    .line 152
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 157
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v5

    :catchall_0
    move-exception v0

    .line 156
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 157
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 158
    throw v0
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 2351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 2353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 2354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 3020
    :try_start_0
    invoke-super {p0, p1}, Lo/setDuration;->onMessageChannelReady(Ljava/util/List;)V

    .line 73
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 3395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 76
    throw p1
.end method

.method public final onNavigationEvent(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 59
    iget-object v0, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 61
    :try_start_0
    iget-object v0, p0, Lo/assertLayoutStep;->onNavigationEvent:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 65
    throw p1
.end method

.method public final onNavigationEvent(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 5045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM WishlistUnlikeEntity WHERE id IN ("

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 167
    invoke-static {v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/StringBuilder;I)V

    const-string v2, ") and isLiked = "

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 5339
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 5340
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 5341
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 175
    invoke-interface {v0, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 177
    :cond_0
    invoke-interface {v0, v3, v4}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v2

    int-to-long p1, p2

    .line 184
    invoke-interface {v0, v1, p1, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 185
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onNavigationEvent()V

    .line 187
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 188
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    .line 5395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object p1, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/assertLayoutStep;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 191
    throw p1
.end method
