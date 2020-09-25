.class final Lo/postOrRun$4;
.super Lo/MediaBrowserCompat$MediaItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/postOrRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaBrowserCompat$MediaItem<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/postOrRun;


# direct methods
.method constructor <init>(Lo/postOrRun;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 2

    .line 89
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {v0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method protected final ICustomTabsCallback()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    return-object v0
.end method

.method protected final extraCallback(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0, p1, p2}, Lo/fromMediaItemList;->onMessageChannelReady(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0, p1}, Lo/postOrRun;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady(II)Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    iget-object v0, v0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0}, Lo/fromMediaItemList;->clear()V

    return-void
.end method

.method protected final onPostMessage()I
    .locals 1

    .line 79
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    iget v0, v0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    return v0
.end method

.method protected final onPostMessage(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    return-void
.end method

.method protected final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lo/postOrRun$4;->onPostMessage:Lo/postOrRun;

    invoke-virtual {v0, p1, p2}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
