.class final Lo/TileList$Tile$extraCallback;
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
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/TileList$Tile;

.field final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/containsPosition$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/TileList$Tile;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lo/TileList$Tile$extraCallback;->onMessageChannelReady:Lo/TileList$Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/TileList$Tile$extraCallback;->onNavigationEvent:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lo/TileList$Tile;B)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lo/TileList$Tile$extraCallback;-><init>(Lo/TileList$Tile;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/io/File;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lo/TileList$Tile$extraCallback;->onMessageChannelReady:Lo/TileList$Tile;

    invoke-static {v0, p1}, Lo/TileList$Tile;->onNavigationEvent(Lo/TileList$Tile;Ljava/io/File;)Lo/TileList$Tile$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, v0, Lo/TileList$Tile$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, ".cnt"

    if-ne v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lo/TileList$Tile$extraCallback;->onNavigationEvent:Ljava/util/List;

    new-instance v2, Lo/TileList$Tile$onMessageChannelReady;

    iget-object v0, v0, Lo/TileList$Tile$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lo/TileList$Tile$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/io/File;B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/io/File;)V
    .locals 0

    return-void
.end method
