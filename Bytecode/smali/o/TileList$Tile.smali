.class public Lo/TileList$Tile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/containsPosition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TileList$Tile$onNavigationEvent;,
        Lo/TileList$Tile$onPostMessage;,
        Lo/TileList$Tile$onMessageChannelReady;,
        Lo/TileList$Tile$ICustomTabsCallback$Stub;,
        Lo/TileList$Tile$extraCallback;,
        Lo/TileList$Tile$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final extraCallback:J

.field private static final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/io/File;

.field private final asBinder:Lo/CoroutineWorker;

.field private final asInterface:Lo/recycleTile;

.field private final onMessageChannelReady:Ljava/io/File;

.field private final onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-class v0, Lo/TileList$Tile;

    sput-object v0, Lo/TileList$Tile;->onPostMessage:Ljava/lang/Class;

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/TileList$Tile;->extraCallback:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILo/recycleTile;)V
    .locals 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lo/TileList$Tile;->onMessageChannelReady:Ljava/io/File;

    .line 94
    invoke-static {p1}, Lo/TileList$Tile;->extraCallback(Ljava/io/File;)Z

    move-result p1

    iput-boolean p1, p0, Lo/TileList$Tile;->onNavigationEvent:Z

    .line 100
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/TileList$Tile;->onMessageChannelReady:Ljava/io/File;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "v2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x64

    .line 2143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 p2, 0x0

    const-string v2, "%s.ols%d.%d"

    .line 2139
    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lo/TileList$Tile;->ICustomTabsCallback:Ljava/io/File;

    .line 101
    iput-object p3, p0, Lo/TileList$Tile;->asInterface:Lo/recycleTile;

    .line 2174
    iget-object p1, p0, Lo/TileList$Tile;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 2176
    :cond_0
    iget-object p1, p0, Lo/TileList$Tile;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2178
    iget-object p1, p0, Lo/TileList$Tile;->onMessageChannelReady:Ljava/io/File;

    invoke-static {p1}, Lo/newArray;->extraCallback(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 2183
    :try_start_0
    iget-object p1, p0, Lo/TileList$Tile;->ICustomTabsCallback:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->onMessageChannelReady(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2186
    :catch_0
    sget-object p1, Lo/recycleTile$extraCallback;->asBinder:Lo/recycleTile$extraCallback;

    .line 103
    :cond_2
    :goto_2
    invoke-static {}, Lo/setUserInputEnabled;->onNavigationEvent()Lo/setUserInputEnabled;

    move-result-object p1

    iput-object p1, p0, Lo/TileList$Tile;->asBinder:Lo/CoroutineWorker;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/TileList$Tile;)Lo/CoroutineWorker;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/TileList$Tile;->asBinder:Lo/CoroutineWorker;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/TileList$Tile;)Ljava/io/File;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/TileList$Tile;->onMessageChannelReady:Ljava/io/File;

    return-object p0
.end method

.method private static extraCallback(Ljava/io/File;)Z
    .locals 1

    .line 111
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 120
    :catch_0
    :try_start_2
    sget-object p0, Lo/recycleTile$extraCallback;->ICustomTabsService:Lo/recycleTile$extraCallback;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 128
    :catch_1
    sget-object p0, Lo/recycleTile$extraCallback;->ICustomTabsService:Lo/recycleTile$extraCallback;

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/TileList$Tile;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/TileList$Tile;)Lo/recycleTile;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/TileList$Tile;->asInterface:Lo/recycleTile;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/TileList$Tile;)Ljava/io/File;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/TileList$Tile;->ICustomTabsCallback:Ljava/io/File;

    return-object p0
.end method

.method static synthetic onNavigationEvent()Ljava/lang/Class;
    .locals 1

    .line 39
    sget-object v0, Lo/TileList$Tile;->onPostMessage:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/TileList$Tile;Ljava/io/File;)Lo/TileList$Tile$onPostMessage;
    .locals 8

    .line 7599
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 7600
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    :goto_0
    move-object v1, v3

    goto :goto_2

    .line 7604
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".cnt"

    .line 8560
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ".tmp"

    if-eqz v6, :cond_1

    goto :goto_1

    .line 8562
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v5, v7

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 7609
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7610
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7611
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_0

    .line 7615
    :cond_4
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7618
    :cond_5
    new-instance v1, Lo/TileList$Tile$onPostMessage;

    invoke-direct {v1, v5, v0}, Lo/TileList$Tile$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_6

    .line 7540
    iget-object v0, v1, Lo/TileList$Tile$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 9230
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v0}, Lo/TileList$Tile;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7541
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v1

    :cond_6
    return-object v3
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)J
    .locals 2

    .line 406
    invoke-virtual {p0, p1}, Lo/TileList$Tile;->onNavigationEvent(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6410
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 6414
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 6415
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lo/TileList$Tile;->onNavigationEvent:Z

    return v0
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/findLastReferenceChildPosition;
    .locals 2

    .line 363
    invoke-virtual {p0, p1}, Lo/TileList$Tile;->onNavigationEvent(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 365
    iget-object p2, p0, Lo/TileList$Tile;->asBinder:Lo/CoroutineWorker;

    invoke-interface {p2}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 4066
    new-instance p2, Lo/loadTile;

    invoke-direct {p2, p1}, Lo/loadTile;-><init>(Ljava/io/File;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 321
    iget-object v0, p0, Lo/TileList$Tile;->onMessageChannelReady:Ljava/io/File;

    new-instance v1, Lo/TileList$Tile$ICustomTabsCallback$Stub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/TileList$Tile$ICustomTabsCallback$Stub;-><init>(Lo/TileList$Tile;B)V

    invoke-static {v0, v1}, Lo/newArray;->extraCallback(Ljava/io/File;Lo/setTrimPathStart;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/containsPosition$onNavigationEvent;)J
    .locals 2

    .line 399
    check-cast p1, Lo/TileList$Tile$onMessageChannelReady;

    .line 4516
    iget-object p1, p1, Lo/TileList$Tile$onMessageChannelReady;->onPostMessage:Lo/loadTile;

    .line 5029
    iget-object p1, p1, Lo/loadTile;->onMessageChannelReady:Ljava/io/File;

    .line 5410
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 5414
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 5415
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method final onNavigationEvent(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 209
    new-instance v0, Ljava/io/File;

    .line 2372
    new-instance v1, Lo/TileList$Tile$onPostMessage;

    const-string v2, ".cnt"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lo/TileList$Tile$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 2373
    iget-object p1, v1, Lo/TileList$Tile$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/TileList$Tile;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lo/TileList$Tile$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lo/TileList$Tile$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/containsPosition$onPostMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    new-instance p2, Lo/TileList$Tile$onPostMessage;

    const-string v0, ".tmp"

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lo/TileList$Tile$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    .line 346
    iget-object v1, p2, Lo/TileList$Tile$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 3230
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v1}, Lo/TileList$Tile;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3334
    :try_start_0
    invoke-static {v2}, Lcom/facebook/common/file/FileUtils;->onMessageChannelReady(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3336
    sget-object p2, Lo/recycleTile$extraCallback;->asBinder:Lo/recycleTile$extraCallback;

    .line 3338
    throw p1

    .line 3593
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lo/TileList$Tile$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 353
    new-instance v0, Lo/TileList$Tile$onNavigationEvent;

    invoke-direct {v0, p0, p1, p2}, Lo/TileList$Tile$onNavigationEvent;-><init>(Lo/TileList$Tile;Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 355
    sget-object p2, Lo/recycleTile$extraCallback;->onPostMessage:Lo/recycleTile$extraCallback;

    .line 357
    throw p1
.end method

.method public final synthetic onPostMessage()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6479
    new-instance v0, Lo/TileList$Tile$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/TileList$Tile$extraCallback;-><init>(Lo/TileList$Tile;B)V

    .line 6480
    iget-object v1, p0, Lo/TileList$Tile;->ICustomTabsCallback:Ljava/io/File;

    invoke-static {v1, v0}, Lo/newArray;->extraCallback(Ljava/io/File;Lo/setTrimPathStart;)V

    .line 7257
    iget-object v0, v0, Lo/TileList$Tile$extraCallback;->onNavigationEvent:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 4388
    invoke-virtual {p0, p1}, Lo/TileList$Tile;->onNavigationEvent(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 4389
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4391
    iget-object v0, p0, Lo/TileList$Tile;->asBinder:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_0
    return p2
.end method
