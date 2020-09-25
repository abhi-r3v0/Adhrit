.class final Lo/getParams$onNavigationEvent;
.super Lo/getStartPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getParams;

.field private onNavigationEvent:J

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getParams;Lo/toLog;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lo/getParams$onNavigationEvent;->extraCallback:Lo/getParams;

    .line 200
    invoke-direct {p0, p2}, Lo/getStartPost;-><init>(Lo/toLog;)V

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lo/getParams$onNavigationEvent;->onPostMessage:Z

    const-wide/16 p1, 0x0

    .line 197
    iput-wide p1, p0, Lo/getParams$onNavigationEvent;->onNavigationEvent:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lo/getStartPost;->onMessageChannelReady()Lo/toLog;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/toLog;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 207
    iget-wide v0, p0, Lo/getParams$onNavigationEvent;->onNavigationEvent:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/getParams$onNavigationEvent;->onNavigationEvent:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 1222
    iget-boolean p2, p0, Lo/getParams$onNavigationEvent;->onPostMessage:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 1223
    iput-boolean p2, p0, Lo/getParams$onNavigationEvent;->onPostMessage:Z

    .line 1224
    iget-object p2, p0, Lo/getParams$onNavigationEvent;->extraCallback:Lo/getParams;

    iget-object p2, p2, Lo/getParams;->extraCallback:Lo/getIndexEndValue;

    const/4 p3, 0x0

    iget-object v0, p0, Lo/getParams$onNavigationEvent;->extraCallback:Lo/getParams;

    invoke-virtual {p2, p3, v0, p1}, Lo/getIndexEndValue;->onMessageChannelReady(ZLo/getIndexStartName;Ljava/io/IOException;)V

    .line 212
    :cond_1
    throw p1
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-super {p0}, Lo/getStartPost;->close()V

    .line 2222
    iget-boolean v0, p0, Lo/getParams$onNavigationEvent;->onPostMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2223
    iput-boolean v0, p0, Lo/getParams$onNavigationEvent;->onPostMessage:Z

    .line 2224
    iget-object v0, p0, Lo/getParams$onNavigationEvent;->extraCallback:Lo/getParams;

    iget-object v0, v0, Lo/getParams;->extraCallback:Lo/getIndexEndValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/getParams$onNavigationEvent;->extraCallback:Lo/getParams;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/getIndexEndValue;->onMessageChannelReady(ZLo/getIndexStartName;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
