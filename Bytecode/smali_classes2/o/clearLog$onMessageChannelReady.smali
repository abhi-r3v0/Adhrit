.class final Lo/clearLog$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/clearLog$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final splitThreshold:J


# direct methods
.method public constructor <init>(Lo/LogFileManager$DirectoryProvider;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lo/initializeAllApis;->estimateSerializedNodeSize(Lo/LogFileManager$DirectoryProvider;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    long-to-double v0, v0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x200

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/clearLog$onMessageChannelReady;->splitThreshold:J

    return-void
.end method


# virtual methods
.method public final shouldSplit(Lo/clearLog$onPostMessage;)Z
    .locals 5

    .line 71
    invoke-virtual {p1}, Lo/clearLog$onPostMessage;->currentHashLength()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lo/clearLog$onMessageChannelReady;->splitThreshold:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 72
    invoke-virtual {p1}, Lo/clearLog$onPostMessage;->currentPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-virtual {v0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lo/clearLog$onPostMessage;->currentPath()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object p1

    invoke-static {}, Lo/LogFileManager;->getPriorityKey()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
