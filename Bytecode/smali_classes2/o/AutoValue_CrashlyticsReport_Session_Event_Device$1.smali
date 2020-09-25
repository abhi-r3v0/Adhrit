.class interface abstract Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract addTargetData(Lo/setBatteryVelocity;)V
.end method

.method public abstract containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
.end method

.method public abstract forEachTarget(Lo/from;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/setBatteryVelocity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getHighestListenSequenceNumber()J
.end method

.method public abstract getHighestTargetId()I
.end method

.method public abstract getLastRemoteSnapshotVersion()Lo/withNdkPayload;
.end method

.method public abstract getMatchingKeysForTargetId(I)Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTargetCount()J
.end method

.method public abstract getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;
.end method

.method public abstract removeMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract removeTargetData(Lo/setBatteryVelocity;)V
.end method

.method public abstract setLastRemoteSnapshotVersion(Lo/withNdkPayload;)V
.end method

.method public abstract updateTargetData(Lo/setBatteryVelocity;)V
.end method
