.class final Lo/assertLayoutStep$5;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/assertLayoutStep;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WishlistUnlikeEntity` (`id`,`isLiked`) VALUES (?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 29
    check-cast p2, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    .line 2009
    iget-object v0, p2, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1038
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 3009
    :cond_0
    iget-object v0, p2, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->ICustomTabsCallback:Ljava/lang/String;

    .line 1040
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 3010
    :goto_0
    iget-boolean p2, p2, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->onPostMessage:Z

    const/4 v0, 0x2

    int-to-long v1, p2

    .line 1044
    invoke-interface {p1, v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
