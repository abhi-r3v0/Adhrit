.class Lo/getDatabase;
.super Lo/getEndPost;
.source ""


# instance fields
.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/exceptionStacktrace;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/getEndPost;-><init>(Lo/exceptionStacktrace;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lo/getDatabase;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-super {p0}, Lo/getEndPost;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lo/getDatabase;->onPostMessage:Z

    .line 45
    invoke-virtual {p0}, Lo/getDatabase;->extraCallback()V

    return-void
.end method

.method protected extraCallback()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lo/getDatabase;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-super {p0}, Lo/getEndPost;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lo/getDatabase;->onPostMessage:Z

    .line 35
    invoke-virtual {p0}, Lo/getDatabase;->extraCallback()V

    return-void
.end method

.method public final onPostMessage(Lo/updatePriority;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lo/getDatabase;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1, p2, p3}, Lo/updatePriority;->asInterface(J)V

    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lo/getEndPost;->onPostMessage(Lo/updatePriority;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lo/getDatabase;->onPostMessage:Z

    .line 25
    invoke-virtual {p0}, Lo/getDatabase;->extraCallback()V

    return-void
.end method
