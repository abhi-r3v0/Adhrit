.class public final Lo/buildLogMessage;
.super Lo/logsDebug;
.source ""


# instance fields
.field public onPostMessage:Lo/logsDebug;


# direct methods
.method public constructor <init>(Lo/logsDebug;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/logsDebug;-><init>()V

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 54
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final S_()J
    .locals 2

    .line 46
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->S_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final T_()Lo/logsDebug;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->T_()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public final U_()Lo/logsDebug;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->U_()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public final asInterface()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->asInterface()V

    return-void
.end method

.method public final onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0, p1, p2, p3}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(J)Lo/logsDebug;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0, p1, p2}, Lo/logsDebug;->onPostMessage(J)Lo/logsDebug;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    invoke-virtual {v0}, Lo/logsDebug;->onPostMessage()Z

    move-result v0

    return v0
.end method
