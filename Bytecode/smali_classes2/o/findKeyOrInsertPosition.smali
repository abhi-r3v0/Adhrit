.class abstract Lo/findKeyOrInsertPosition;
.super Lo/resetPreviouslyActiveTrackedQueries;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lo/resetPreviouslyActiveTrackedQueries<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/resetPreviouslyActiveTrackedQueries;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/resetPreviouslyActiveTrackedQueries;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected abstract delegate()Lo/resetPreviouslyActiveTrackedQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "**>;"
        }
    .end annotation
.end method

.method public getAttributes()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0}, Lo/resetPreviouslyActiveTrackedQueries;->getAttributes()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    return-object v0
.end method

.method public halfClose()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0}, Lo/resetPreviouslyActiveTrackedQueries;->halfClose()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0}, Lo/resetPreviouslyActiveTrackedQueries;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/resetPreviouslyActiveTrackedQueries;->request(I)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/resetPreviouslyActiveTrackedQueries;->setMessageCompression(Z)V

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

    .line 64
    invoke-virtual {p0}, Lo/findKeyOrInsertPosition;->delegate()Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
