.class final Lo/TileList$Tile$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTrimPathStart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TileList$Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/TileList$Tile;

.field private onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/TileList$Tile;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/TileList$Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/TileList$Tile;B)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lo/TileList$Tile$ICustomTabsCallback$Stub;-><init>(Lo/TileList$Tile;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/File;)V
    .locals 1

    .line 274
    iget-boolean v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->onPostMessage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/TileList$Tile;

    invoke-static {v0}, Lo/TileList$Tile;->onNavigationEvent(Lo/TileList$Tile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->onPostMessage:Z

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/io/File;)V
    .locals 9

    .line 282
    iget-boolean v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->onPostMessage:Z

    if-eqz v0, :cond_5

    .line 1302
    iget-object v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/TileList$Tile;

    invoke-static {v0, p1}, Lo/TileList$Tile;->onNavigationEvent(Lo/TileList$Tile;Ljava/io/File;)Lo/TileList$Tile$onPostMessage;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1306
    :cond_0
    iget-object v3, v0, Lo/TileList$Tile$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, ".tmp"

    if-ne v3, v4, :cond_1

    .line 1315
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/TileList$Tile;

    invoke-static {v0}, Lo/TileList$Tile;->ICustomTabsCallback(Lo/TileList$Tile;)Lo/CoroutineWorker;

    move-result-object v0

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v5

    sget-wide v7, Lo/TileList$Tile;->extraCallback:J

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    goto :goto_0

    .line 1309
    :cond_1
    iget-object v0, v0, Lo/TileList$Tile$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, ".cnt"

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    goto :goto_2

    .line 2162
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 283
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_6
    return-void
.end method

.method public final onMessageChannelReady(Ljava/io/File;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/TileList$Tile;

    invoke-static {v0}, Lo/TileList$Tile;->extraCallback(Lo/TileList$Tile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-boolean v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 295
    :cond_0
    iget-boolean v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->onPostMessage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/TileList$Tile;

    invoke-static {v0}, Lo/TileList$Tile;->onNavigationEvent(Lo/TileList$Tile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 297
    iput-boolean p1, p0, Lo/TileList$Tile$ICustomTabsCallback$Stub;->onPostMessage:Z

    :cond_1
    return-void
.end method
