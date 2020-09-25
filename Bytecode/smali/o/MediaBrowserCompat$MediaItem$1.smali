.class public final Lo/MediaBrowserCompat$MediaItem$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field extraCallback:Lo/getMediaId$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMediaId$onPostMessage<",
            "Lo/getDescription;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Lo/getMediaId$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMediaId$onPostMessage<",
            "Lo/onSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:[Lo/onSearchResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lo/getMediaId$onNavigationEvent;

    invoke-direct {v0}, Lo/getMediaId$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaItem$1;->extraCallback:Lo/getMediaId$onPostMessage;

    .line 23
    new-instance v0, Lo/getMediaId$onNavigationEvent;

    invoke-direct {v0}, Lo/getMediaId$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaItem$1;->onNavigationEvent:Lo/getMediaId$onPostMessage;

    const/16 v0, 0x20

    new-array v0, v0, [Lo/onSearchResult;

    .line 24
    iput-object v0, p0, Lo/MediaBrowserCompat$MediaItem$1;->onPostMessage:[Lo/onSearchResult;

    return-void
.end method
