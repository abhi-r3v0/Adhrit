.class public final Lo/MediaBrowserCompat$MediaBrowserImpl;
.super Lo/MediaBrowserCompat$MediaBrowserImplApi21;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/MediaBrowserCompat$MediaBrowserImplApi21<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public onNavigationEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    if-eqz v0, :cond_0

    .line 48
    iget-object p1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImpl;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Object;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    return-object p1
.end method
