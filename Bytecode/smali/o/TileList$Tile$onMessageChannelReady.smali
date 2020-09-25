.class final Lo/TileList$Tile$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/containsPosition$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TileList$Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private final extraCallback:Ljava/lang/String;

.field private onNavigationEvent:J

.field final onPostMessage:Lo/loadTile;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 494
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/TileList$Tile$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3066
    new-instance v0, Lo/loadTile;

    invoke-direct {v0, p2}, Lo/loadTile;-><init>(Ljava/io/File;)V

    .line 495
    :cond_0
    iput-object v0, p0, Lo/TileList$Tile$onMessageChannelReady;->onPostMessage:Lo/loadTile;

    const-wide/16 p1, -0x1

    .line 496
    iput-wide p1, p0, Lo/TileList$Tile$onMessageChannelReady;->ICustomTabsCallback:J

    .line 497
    iput-wide p1, p0, Lo/TileList$Tile$onMessageChannelReady;->onNavigationEvent:J

    return-void

    .line 2215
    :cond_1
    throw v0

    .line 1215
    :cond_2
    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;B)V
    .locals 0

    .line 486
    invoke-direct {p0, p1, p2}, Lo/TileList$Tile$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 5

    .line 521
    iget-wide v0, p0, Lo/TileList$Tile$onMessageChannelReady;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 522
    iget-object v0, p0, Lo/TileList$Tile$onMessageChannelReady;->onPostMessage:Lo/loadTile;

    .line 4039
    iget-object v0, v0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 522
    iput-wide v0, p0, Lo/TileList$Tile$onMessageChannelReady;->ICustomTabsCallback:J

    .line 524
    :cond_0
    iget-wide v0, p0, Lo/TileList$Tile$onMessageChannelReady;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lo/TileList$Tile$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()J
    .locals 5

    .line 507
    iget-wide v0, p0, Lo/TileList$Tile$onMessageChannelReady;->onNavigationEvent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 508
    iget-object v0, p0, Lo/TileList$Tile$onMessageChannelReady;->onPostMessage:Lo/loadTile;

    .line 4029
    iget-object v0, v0, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lo/TileList$Tile$onMessageChannelReady;->onNavigationEvent:J

    .line 511
    :cond_0
    iget-wide v0, p0, Lo/TileList$Tile$onMessageChannelReady;->onNavigationEvent:J

    return-wide v0
.end method
