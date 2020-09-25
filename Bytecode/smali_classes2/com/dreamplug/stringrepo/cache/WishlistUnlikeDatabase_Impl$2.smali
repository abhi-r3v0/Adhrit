.class final Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;
.super Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onNavigationEvent(Lo/onAddQueueItem;)Lo/update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 2

    const-string v0, "DROP TABLE IF EXISTS `WishlistUnlikeEntity`"

    .line 40
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {p1}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->extraCallback(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 42
    iget-object v0, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v0}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v1}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onNavigationEvent(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v0, p1}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onMessageChannelReady(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;Lo/MediaControllerCompatApi21$Callback;)Lo/MediaControllerCompatApi21$Callback;

    .line 60
    iget-object v0, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v0, p1}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;Lo/MediaControllerCompatApi21$Callback;)V

    .line 61
    iget-object v0, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v0}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onRelationshipValidationResult(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v1}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->ICustomTabsCallback$Stub(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v2}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->asBinder(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCurrentControllerInfo$onPostMessage;

    invoke-virtual {v2, p1}, Lo/setCurrentControllerInfo$onPostMessage;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v0}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onMessageChannelReady(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v1}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onPostMessage(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl$2;->extraCallback:Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;

    invoke-static {v2}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;->onTransact(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCurrentControllerInfo$onPostMessage;

    invoke-virtual {v2, p1}, Lo/setCurrentControllerInfo$onPostMessage;->extraCallback(Lo/MediaControllerCompatApi21$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;
    .locals 10

    .line 79
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v3, "id"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;

    const-string v4, "isLiked"

    const-string v5, "INTEGER"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lo/MediaSessionCompat$MediaSessionImplApi28$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "isLiked"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 83
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 84
    new-instance v4, Lo/MediaSessionCompat$MediaSessionImplApi28;

    const-string v5, "WishlistUnlikeEntity"

    invoke-direct {v4, v5, v0, v1, v3}, Lo/MediaSessionCompat$MediaSessionImplApi28;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1169
    invoke-static {p1, v5}, Lo/MediaSessionCompat$MediaSessionImplApi28;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1170
    invoke-static {p1, v5}, Lo/MediaSessionCompat$MediaSessionImplApi28;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1171
    invoke-static {p1, v5}, Lo/MediaSessionCompat$MediaSessionImplApi28;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1172
    new-instance v3, Lo/MediaSessionCompat$MediaSessionImplApi28;

    invoke-direct {v3, v5, v0, v1, p1}, Lo/MediaSessionCompat$MediaSessionImplApi28;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WishlistUnlikeEntity(com.dreamplug.stringrepo.cache.WishlistUnlikeEntity).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method public final onPostMessage(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `WishlistUnlikeEntity` (`id` TEXT NOT NULL, `isLiked` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    .line 33
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 34
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'4ea2c3a0d45a1b77759375fdbacd873a\')"

    .line 35
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onTransact(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lo/onPlaybackPositionUpdate;->extraCallback(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method
