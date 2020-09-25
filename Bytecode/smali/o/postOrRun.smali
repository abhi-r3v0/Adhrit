.class public Lo/postOrRun;
.super Lo/fromMediaItemList;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/fromMediaItemList<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaItem<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/fromMediaItemList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lo/fromMediaItemList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lo/fromMediaItemList;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lo/fromMediaItemList;-><init>(Lo/fromMediaItemList;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Lo/postOrRun$4;

    invoke-direct {v0, p0}, Lo/postOrRun$4;-><init>(Lo/postOrRun;)V

    iput-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    .line 1123
    :cond_0
    iget-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    .line 1533
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;

    if-nez v1, :cond_1

    .line 1534
    new-instance v1, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;-><init>(Lo/MediaBrowserCompat$MediaItem;)V

    iput-object v1, v0, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;

    .line 1536
    :cond_1
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem$onNavigationEvent;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2075
    iget-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    if-nez v0, :cond_0

    .line 2076
    new-instance v0, Lo/postOrRun$4;

    invoke-direct {v0, p0}, Lo/postOrRun$4;-><init>(Lo/postOrRun;)V

    iput-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    .line 2123
    :cond_0
    iget-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    .line 2540
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$extraCallback;

    if-nez v1, :cond_1

    .line 2541
    new-instance v1, Lo/MediaBrowserCompat$MediaItem$extraCallback;

    invoke-direct {v1, v0}, Lo/MediaBrowserCompat$MediaItem$extraCallback;-><init>(Lo/MediaBrowserCompat$MediaItem;)V

    iput-object v1, v0, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$extraCallback;

    .line 2543
    :cond_1
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent:Lo/MediaBrowserCompat$MediaItem$extraCallback;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 142
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lo/fromMediaItemList;->ICustomTabsCallback(I)V

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3075
    iget-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    if-nez v0, :cond_0

    .line 3076
    new-instance v0, Lo/postOrRun$4;

    invoke-direct {v0, p0}, Lo/postOrRun$4;-><init>(Lo/postOrRun;)V

    iput-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    .line 3123
    :cond_0
    iget-object v0, p0, Lo/postOrRun;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaItem;

    .line 3547
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaItem;->extraCallback:Lo/MediaBrowserCompat$MediaItem$onMessageChannelReady;

    if-nez v1, :cond_1

    .line 3548
    new-instance v1, Lo/MediaBrowserCompat$MediaItem$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/MediaBrowserCompat$MediaItem$onMessageChannelReady;-><init>(Lo/MediaBrowserCompat$MediaItem;)V

    iput-object v1, v0, Lo/MediaBrowserCompat$MediaItem;->extraCallback:Lo/MediaBrowserCompat$MediaItem$onMessageChannelReady;

    .line 3550
    :cond_1
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaItem;->extraCallback:Lo/MediaBrowserCompat$MediaItem$onMessageChannelReady;

    return-object v0
.end method
