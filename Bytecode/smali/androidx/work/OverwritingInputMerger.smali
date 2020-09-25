.class public final Landroidx/work/OverwritingInputMerger;
.super Lo/fromPlaybackState;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/fromPlaybackState;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/util/List;)Lo/PlaybackStateCompat$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/PlaybackStateCompat$Builder;",
            ">;)",
            "Lo/PlaybackStateCompat$Builder;"
        }
    .end annotation

    .line 36
    new-instance v0, Lo/PlaybackStateCompat$Builder$onPostMessage;

    invoke-direct {v0}, Lo/PlaybackStateCompat$Builder$onPostMessage;-><init>()V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PlaybackStateCompat$Builder;

    .line 1333
    iget-object v2, v2, Lo/PlaybackStateCompat$Builder;->extraCallback:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady(Ljava/util/Map;)Lo/PlaybackStateCompat$Builder$onPostMessage;

    .line 1843
    new-instance p1, Lo/PlaybackStateCompat$Builder;

    iget-object v0, v0, Lo/PlaybackStateCompat$Builder$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    invoke-direct {p1, v0}, Lo/PlaybackStateCompat$Builder;-><init>(Ljava/util/Map;)V

    .line 1846
    invoke-static {p1}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    return-object p1
.end method
