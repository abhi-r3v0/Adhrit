.class public abstract Lo/pathPrefixStartToPrefixEnd;
.super Lo/findKeyOrInsertPosition;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lo/findKeyOrInsertPosition<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/findKeyOrInsertPosition;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lo/findKeyOrInsertPosition;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected abstract delegate()Lo/resetPreviouslyActiveTrackedQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic getAttributes()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 22
    invoke-super {p0}, Lo/findKeyOrInsertPosition;->getAttributes()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic halfClose()V
    .locals 0

    .line 22
    invoke-super {p0}, Lo/findKeyOrInsertPosition;->halfClose()V

    return-void
.end method

.method public bridge synthetic isReady()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lo/findKeyOrInsertPosition;->isReady()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic request(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lo/findKeyOrInsertPosition;->request(I)V

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lo/pathPrefixStartToPrefixEnd;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/resetPreviouslyActiveTrackedQueries;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setMessageCompression(Z)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lo/findKeyOrInsertPosition;->setMessageCompression(Z)V

    return-void
.end method

.method public start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;",
            "Lo/getPredecessorKey;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lo/pathPrefixStartToPrefixEnd;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/resetPreviouslyActiveTrackedQueries;->start(Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;Lo/getPredecessorKey;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-super {p0}, Lo/findKeyOrInsertPosition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
