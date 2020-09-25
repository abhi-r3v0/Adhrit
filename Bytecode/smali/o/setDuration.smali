.class public abstract Lo/setDuration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0016\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0017J\u001e\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t2\u0006\u0010\u000b\u001a\u00020\u000cH\'J\u0012\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0010\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\'J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\nH\'\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeRepoDao;",
        "",
        "()V",
        "deleteEntry",
        "",
        "id",
        "",
        "deleteWishlist",
        "ids",
        "",
        "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
        "isLiked",
        "",
        "getWishlist",
        "getWishlistList",
        "insertWishlistEntity",
        "wishListItem",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public onMessageChannelReady(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    check-cast p1, Ljava/lang/Iterable;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    .line 1010
    iget-boolean v3, v3, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->onPostMessage:Z

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    .line 33
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 35
    check-cast v3, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    .line 2009
    iget-object v3, v3, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->ICustomTabsCallback:Ljava/lang/String;

    .line 25
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_2
    check-cast v1, Ljava/util/List;

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v1, v0}, Lo/setDuration;->onNavigationEvent(Ljava/util/List;Z)V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    .line 2010
    iget-boolean v4, v4, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->onPostMessage:Z

    xor-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 26
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 40
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 42
    check-cast v1, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    .line 3009
    iget-object v1, v1, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->ICustomTabsCallback:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_5
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lo/setDuration;->onNavigationEvent(Ljava/util/List;Z)V

    return-void
.end method

.method public abstract onNavigationEvent(Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;)V
.end method

.method public abstract onNavigationEvent(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method
