.class abstract Lo/onReady;
.super Lo/insert;
.source ""


# instance fields
.field private final onPostMessage:Lo/insert;


# direct methods
.method constructor <init>(Lo/insert;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/insert;-><init>()V

    .line 32
    iput-object p1, p0, Lo/onReady;->onPostMessage:Lo/insert;

    return-void
.end method


# virtual methods
.method public final asBinder()V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->asBinder()V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0}, Lo/pruneCache;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Z)Lo/setTransactionSuccessful;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0, p1}, Lo/insert;->extraCallback(Z)Lo/setTransactionSuccessful;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady()Lo/insert;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->onMessageChannelReady()Lo/insert;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0, p1, p2, p3}, Lo/insert;->onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public onNavigationEvent()Lo/insert;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->onNavigationEvent()Lo/insert;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TRequestT;TResponseT;>;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0, p1, p2}, Lo/pruneCache;->onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()V
    .locals 1

    .line 83
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lo/onReady;->onPostMessage:Lo/insert;

    invoke-virtual {v0, p1, p2}, Lo/insert;->onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 93
    iget-object v1, p0, Lo/onReady;->onPostMessage:Lo/insert;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
