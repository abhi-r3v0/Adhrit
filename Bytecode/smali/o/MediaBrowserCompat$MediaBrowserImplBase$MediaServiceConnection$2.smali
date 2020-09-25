.class final Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;
.super Lo/MediaBrowserCompat$MediaItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaBrowserCompat$MediaItem<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {p0}, Lo/MediaBrowserCompat$MediaItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 2

    .line 648
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-nez p1, :cond_0

    .line 1325
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onNavigationEvent()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method protected final ICustomTabsCallback()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final extraCallback(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 2

    .line 653
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-nez p1, :cond_0

    .line 2325
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onNavigationEvent()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady(II)Ljava/lang/Object;
    .locals 0

    .line 643
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object p2, p2, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected final onNavigationEvent()V
    .locals 1

    .line 678
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->clear()V

    return-void
.end method

.method protected final onPostMessage()I
    .locals 1

    .line 638
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onNavigationEvent:I

    return v0
.end method

.method protected final onPostMessage(I)V
    .locals 1

    .line 673
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onPostMessage(I)Ljava/lang/Object;

    return-void
.end method

.method protected final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 663
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {p2, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->add(Ljava/lang/Object;)Z

    return-void
.end method
