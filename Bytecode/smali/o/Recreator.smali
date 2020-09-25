.class public Lo/Recreator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/containsPosition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Recreator$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:I

.field private volatile ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/recycleTile;

.field private final onPostMessage:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lo/Recreator;

    sput-object v0, Lo/Recreator;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILo/setPivotX;Ljava/lang/String;Lo/recycleTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/setPivotX<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lo/recycleTile;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lo/Recreator;->ICustomTabsCallback:I

    .line 53
    iput-object p4, p0, Lo/Recreator;->onNavigationEvent:Lo/recycleTile;

    .line 54
    iput-object p2, p0, Lo/Recreator;->onPostMessage:Lo/setPivotX;

    .line 55
    iput-object p3, p0, Lo/Recreator;->onMessageChannelReady:Ljava/lang/String;

    .line 56
    new-instance p1, Lo/Recreator$ICustomTabsCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lo/Recreator$ICustomTabsCallback;-><init>(Ljava/io/File;Lo/containsPosition;)V

    iput-object p1, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    return-void
.end method

.method private declared-synchronized onNavigationEvent()Lo/containsPosition;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1160
    :try_start_0
    iget-object v0, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    .line 1161
    iget-object v1, v0, Lo/Recreator$ICustomTabsCallback;->onPostMessage:Lo/containsPosition;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/Recreator$ICustomTabsCallback;->onNavigationEvent:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lo/Recreator$ICustomTabsCallback;->onNavigationEvent:Ljava/io/File;

    .line 1163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 1168
    iget-object v0, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    iget-object v0, v0, Lo/Recreator$ICustomTabsCallback;->onPostMessage:Lo/containsPosition;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    iget-object v0, v0, Lo/Recreator$ICustomTabsCallback;->onNavigationEvent:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 1171
    iget-object v0, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    iget-object v0, v0, Lo/Recreator$ICustomTabsCallback;->onNavigationEvent:Ljava/io/File;

    .line 2064
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2065
    invoke-static {v0}, Lo/newArray;->onNavigationEvent(Ljava/io/File;)Z

    .line 2068
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2176
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/Recreator;->onPostMessage:Lo/setPivotX;

    invoke-interface {v1}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lo/Recreator;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    :try_start_1
    invoke-static {v0}, Lcom/facebook/common/file/FileUtils;->onMessageChannelReady(Ljava/io/File;)V
    :try_end_1
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2194
    :try_start_2
    sget-object v1, Lo/Recreator;->extraCallback:Ljava/lang/Class;

    const-string v2, "Created cache directory %s"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2178
    new-instance v1, Lo/TileList$Tile;

    iget v2, p0, Lo/Recreator;->ICustomTabsCallback:I

    iget-object v3, p0, Lo/Recreator;->onNavigationEvent:Lo/recycleTile;

    invoke-direct {v1, v0, v2, v3}, Lo/TileList$Tile;-><init>(Ljava/io/File;ILo/recycleTile;)V

    .line 2179
    new-instance v2, Lo/Recreator$ICustomTabsCallback;

    invoke-direct {v2, v0, v1}, Lo/Recreator$ICustomTabsCallback;-><init>(Ljava/io/File;Lo/containsPosition;)V

    iput-object v2, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2187
    sget-object v1, Lo/recycleTile$extraCallback;->asBinder:Lo/recycleTile$extraCallback;

    .line 2192
    throw v0

    .line 156
    :cond_4
    :goto_2
    iget-object v0, p0, Lo/Recreator;->ICustomTabsCallback$Stub:Lo/Recreator$ICustomTabsCallback;

    iget-object v0, v0, Lo/Recreator$ICustomTabsCallback;->onPostMessage:Lo/containsPosition;

    if-eqz v0, :cond_5

    check-cast v0, Lo/containsPosition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2215
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/containsPosition;->ICustomTabsCallback(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 71
    :try_start_0
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0}, Lo/containsPosition;->ICustomTabsCallback()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/findLastReferenceChildPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/containsPosition;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/findLastReferenceChildPosition;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 104
    :try_start_0
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0}, Lo/containsPosition;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lo/Recreator;->extraCallback:Ljava/lang/Class;

    const-string v2, "purgeUnexpectedResources"

    invoke-static {v1, v2, v0}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/containsPosition$onNavigationEvent;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/containsPosition;->onNavigationEvent(Lo/containsPosition$onNavigationEvent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/containsPosition$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/containsPosition;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)Lo/containsPosition$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/containsPosition$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0}, Lo/containsPosition;->onPostMessage()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lo/Recreator;->onNavigationEvent()Lo/containsPosition;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/containsPosition;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
