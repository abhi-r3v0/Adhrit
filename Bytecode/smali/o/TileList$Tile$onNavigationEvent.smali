.class final Lo/TileList$Tile$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/containsPosition$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TileList$Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private extraCallback:Ljava/io/File;

.field private synthetic onMessageChannelReady:Lo/TileList$Tile;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/TileList$Tile;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lo/TileList$Tile$onNavigationEvent;->onMessageChannelReady:Lo/TileList$Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p2, p0, Lo/TileList$Tile$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 631
    iput-object p3, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()Lo/findLastReferenceChildPosition;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lo/TileList$Tile$onNavigationEvent;->onMessageChannelReady:Lo/TileList$Tile;

    iget-object v1, p0, Lo/TileList$Tile$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/TileList$Tile;->onNavigationEvent(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 675
    :try_start_0
    iget-object v1, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    if-eqz v1, :cond_5

    .line 1058
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1060
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 1065
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1067
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1070
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_0
    new-instance v2, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_1
    new-instance v2, Lcom/facebook/common/file/FileUtils$FileDeleteException;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/common/file/FileUtils$FileDeleteException;-><init>(Ljava/lang/String;)V

    .line 1073
    :cond_2
    :goto_0
    new-instance v3, Lcom/facebook/common/file/FileUtils$RenameException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown error renaming "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/facebook/common/file/FileUtils$RenameException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 693
    iget-object v1, p0, Lo/TileList$Tile$onNavigationEvent;->onMessageChannelReady:Lo/TileList$Tile;

    invoke-static {v1}, Lo/TileList$Tile;->ICustomTabsCallback(Lo/TileList$Tile;)Lo/CoroutineWorker;

    move-result-object v1

    invoke-interface {v1}, Lo/CoroutineWorker;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 3066
    :cond_4
    new-instance v1, Lo/loadTile;

    invoke-direct {v1, v0}, Lo/loadTile;-><init>(Ljava/io/File;)V

    return-object v1

    .line 1215
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 681
    instance-of v2, v1, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-nez v2, :cond_7

    .line 684
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_6

    .line 685
    sget-object v1, Lo/recycleTile$extraCallback;->onMessageChannelReady:Lo/recycleTile$extraCallback;

    goto :goto_1

    .line 687
    :cond_6
    sget-object v1, Lo/recycleTile$extraCallback;->asInterface:Lo/recycleTile$extraCallback;

    goto :goto_1

    .line 682
    :cond_7
    sget-object v1, Lo/recycleTile$extraCallback;->extraCallback:Lo/recycleTile$extraCallback;

    goto :goto_1

    .line 680
    :cond_8
    sget-object v1, Lo/recycleTile$extraCallback;->asInterface:Lo/recycleTile$extraCallback;

    .line 689
    :goto_1
    iget-object v1, p0, Lo/TileList$Tile$onNavigationEvent;->onMessageChannelReady:Lo/TileList$Tile;

    invoke-static {v1}, Lo/TileList$Tile;->onMessageChannelReady(Lo/TileList$Tile;)Lo/recycleTile;

    invoke-static {}, Lo/TileList$Tile;->onNavigationEvent()Ljava/lang/Class;

    .line 690
    throw v0
.end method

.method public final onPostMessage(Lo/ThreadUtil$MainThreadCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :try_start_1
    new-instance v1, Lo/setTrimPathOffset;

    invoke-direct {v1, v0}, Lo/setTrimPathOffset;-><init>(Ljava/io/OutputStream;)V

    .line 651
    invoke-interface {p1, v1}, Lo/ThreadUtil$MainThreadCallback;->ICustomTabsCallback(Ljava/io/OutputStream;)V

    .line 654
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1047
    iget-wide v1, v1, Lo/setTrimPathOffset;->extraCallback:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 664
    iget-object p1, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    return-void

    .line 665
    :cond_0
    new-instance p1, Lo/TileList$Tile$ICustomTabsCallback;

    iget-object v0, p0, Lo/TileList$Tile$onNavigationEvent;->extraCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lo/TileList$Tile$ICustomTabsCallback;-><init>(JJ)V

    throw p1

    :catchall_0
    move-exception p1

    .line 660
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1

    :catch_0
    move-exception p1

    .line 640
    iget-object v0, p0, Lo/TileList$Tile$onNavigationEvent;->onMessageChannelReady:Lo/TileList$Tile;

    invoke-static {v0}, Lo/TileList$Tile;->onMessageChannelReady(Lo/TileList$Tile;)Lo/recycleTile;

    sget-object v0, Lo/recycleTile$extraCallback;->ICustomTabsCallback:Lo/recycleTile$extraCallback;

    .line 642
    invoke-static {}, Lo/TileList$Tile;->onNavigationEvent()Ljava/lang/Class;

    .line 645
    throw p1
.end method
