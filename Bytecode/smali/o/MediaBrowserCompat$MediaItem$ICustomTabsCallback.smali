.class final Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field final extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaItem;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaItem;I)V
    .locals 1

    .line 43
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 44
    iput p2, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->extraCallback:I

    .line 45
    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 50
    iget v0, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onMessageChannelReady:I

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onNavigationEvent:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaItem;

    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onMessageChannelReady:I

    iget v2, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->extraCallback:I

    invoke-virtual {v0, v1, v2}, Lo/MediaBrowserCompat$MediaItem;->onMessageChannelReady(II)Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onMessageChannelReady:I

    .line 58
    iput-boolean v2, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->ICustomTabsCallback:Z

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onMessageChannelReady:I

    .line 68
    iget v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onNavigationEvent:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onNavigationEvent:I

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 70
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaItem$ICustomTabsCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaItem;

    invoke-virtual {v1, v0}, Lo/MediaBrowserCompat$MediaItem;->onPostMessage(I)V

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
