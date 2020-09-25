.class interface abstract Lo/setCustomAttributes;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract acknowledgeBatch(Lo/CrashlyticsReport$Builder;Lo/SessionProtobufHelper;)V
.end method

.method public abstract addMutationBatch(Lo/getStream;Ljava/util/List;Ljava/util/List;)Lo/CrashlyticsReport$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getStream;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)",
            "Lo/CrashlyticsReport$Builder;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatches()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatchesAffectingDocumentKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ")",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatchesAffectingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            ")",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighestUnacknowledgedBatchId()I
.end method

.method public abstract getLastStreamToken()Lo/SessionProtobufHelper;
.end method

.method public abstract getNextMutationBatchAfterBatchId(I)Lo/CrashlyticsReport$Builder;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract lookupMutationBatch(I)Lo/CrashlyticsReport$Builder;
.end method

.method public abstract performConsistencyCheck()V
.end method

.method public abstract removeMutationBatch(Lo/CrashlyticsReport$Builder;)V
.end method

.method public abstract setLastStreamToken(Lo/SessionProtobufHelper;)V
.end method

.method public abstract start()V
.end method
