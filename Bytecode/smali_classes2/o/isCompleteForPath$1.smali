.class final Lo/isCompleteForPath$1;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isCompleteForPath;->onPostMessage(Lo/isFiltered;Ljava/io/File;)Lo/isCompleteForPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isFiltered;

.field private synthetic onMessageChannelReady:Ljava/io/File;


# direct methods
.method constructor <init>(Lo/isFiltered;Ljava/io/File;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lo/isCompleteForPath$1;->ICustomTabsCallback:Lo/isFiltered;

    iput-object p2, p0, Lo/isCompleteForPath$1;->onMessageChannelReady:Ljava/io/File;

    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    .line 113
    iget-object v0, p0, Lo/isCompleteForPath$1;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Lo/isCompleteForPath$1;->onMessageChannelReady:Ljava/io/File;

    invoke-static {v1}, Lo/warn;->onMessageChannelReady(Ljava/io/File;)Lo/toLog;

    move-result-object v0

    .line 120
    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Lo/toLog;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/isCompleteForPath$1;->ICustomTabsCallback:Lo/isFiltered;

    return-object v0
.end method
