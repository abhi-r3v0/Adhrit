.class final Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaItem;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1170
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result v0

    .line 176
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result p1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    .line 184
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 189
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 191
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 192
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/MediaBrowserCompat$MediaItem;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 196
    :cond_1
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v0

    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 203
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 253
    invoke-static {p0, p1}, Lo/MediaBrowserCompat$MediaItem;->ICustomTabsCallback(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 6

    .line 259
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 260
    iget-object v4, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v4, v0, v2}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v4

    .line 261
    iget-object v5, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v5, v0, v1}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    .line 263
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_2
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final isEmpty()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 218
    new-instance v0, Lo/MediaBrowserCompat$MediaItem$onPostMessage;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, v1}, Lo/MediaBrowserCompat$MediaItem$onPostMessage;-><init>(Lo/MediaBrowserCompat$MediaItem;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 233
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 238
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 248
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
