.class final Lo/setUiOrientation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;


# instance fields
.field private highestSequenceNumber:J

.field private highestTargetId:I

.field private lastRemoteSnapshotVersion:Lo/withNdkPayload;

.field private final persistence:Lo/getSignal;

.field private final references:Lo/setBinaries;

.field private final targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/setClsId;",
            "Lo/setBatteryVelocity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getSignal;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    .line 38
    new-instance v0, Lo/setBinaries;

    invoke-direct {v0}, Lo/setBinaries;-><init>()V

    iput-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    .line 44
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    iput-object v0, p0, Lo/setUiOrientation;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lo/setUiOrientation;->highestSequenceNumber:J

    .line 51
    iput-object p1, p0, Lo/setUiOrientation;->persistence:Lo/getSignal;

    return-void
.end method

.method private removeMatchingKeysForTargetId(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    invoke-virtual {v0, p1}, Lo/setBinaries;->removeReferencesForId(I)Lo/CrashlyticsReportWithSessionId;

    return-void
.end method


# virtual methods
.method public final addMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    invoke-virtual {v0, p1, p2}, Lo/setBinaries;->addReferences(Lo/CrashlyticsReportWithSessionId;I)V

    .line 145
    iget-object p2, p0, Lo/setUiOrientation;->persistence:Lo/getSignal;

    invoke-virtual {p2}, Lo/getSignal;->getReferenceDelegate()Lo/setException;

    move-result-object p2

    .line 146
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 147
    invoke-interface {p2, v0}, Lo/setException;->addReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addTargetData(Lo/setBatteryVelocity;)V
    .locals 5

    .line 90
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v0

    .line 92
    iget v1, p0, Lo/setUiOrientation;->highestTargetId:I

    if-le v0, v1, :cond_0

    .line 93
    iput v0, p0, Lo/setUiOrientation;->highestTargetId:I

    .line 95
    :cond_0
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lo/setUiOrientation;->highestSequenceNumber:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 96
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setUiOrientation;->highestSequenceNumber:J

    :cond_1
    return-void
.end method

.method public final containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    invoke-virtual {v0, p1}, Lo/setBinaries;->containsKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result p1

    return p1
.end method

.method public final forEachTarget(Lo/from;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/setBatteryVelocity;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setBatteryVelocity;

    .line 67
    invoke-interface {p1, v1}, Lo/from;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final getByteSize(Lo/setDiskSpace;)J
    .locals 5

    .line 176
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setBatteryVelocity;

    invoke-virtual {p1, v3}, Lo/setDiskSpace;->encodeTargetData(Lo/setBatteryVelocity;)Lo/CrashlyticsReport$Session$Event;

    move-result-object v3

    invoke-virtual {v3}, Lo/getEventAppExecutionSize;->getSerializedSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final getHighestListenSequenceNumber()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lo/setUiOrientation;->highestSequenceNumber:J

    return-wide v0
.end method

.method public final getHighestTargetId()I
    .locals 1

    .line 56
    iget v0, p0, Lo/setUiOrientation;->highestTargetId:I

    return v0
.end method

.method public final getLastRemoteSnapshotVersion()Lo/withNdkPayload;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/setUiOrientation;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    return-object v0
.end method

.method public final getMatchingKeysForTargetId(I)Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    invoke-virtual {v0, p1}, Lo/setBinaries;->referencesForId(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    return-object p1
.end method

.method public final getTargetCount()J
    .locals 2

    .line 61
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getTargetData(Lo/setClsId;)Lo/setBatteryVelocity;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setBatteryVelocity;

    return-object p1
.end method

.method public final removeMatchingKeys(Lo/CrashlyticsReportWithSessionId;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;I)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    invoke-virtual {v0, p1, p2}, Lo/setBinaries;->removeReferences(Lo/CrashlyticsReportWithSessionId;I)V

    .line 154
    iget-object p2, p0, Lo/setUiOrientation;->persistence:Lo/getSignal;

    invoke-virtual {p2}, Lo/getSignal;->getReferenceDelegate()Lo/setException;

    move-result-object p2

    .line 155
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 156
    invoke-interface {p2, v0}, Lo/setException;->removeReference(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final removeQueries(JLandroid/util/SparseArray;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setBatteryVelocity;

    invoke-virtual {v3}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v3

    .line 124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setBatteryVelocity;

    invoke-virtual {v2}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-gtz v2, :cond_0

    .line 125
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 127
    invoke-direct {p0, v3}, Lo/setUiOrientation;->removeMatchingKeysForTargetId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final removeTargetData(Lo/setBatteryVelocity;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lo/setUiOrientation;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lo/setUiOrientation;->references:Lo/setBinaries;

    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/setBinaries;->removeReferencesForId(I)Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method public final setLastRemoteSnapshotVersion(Lo/withNdkPayload;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/setUiOrientation;->lastRemoteSnapshotVersion:Lo/withNdkPayload;

    return-void
.end method

.method public final updateTargetData(Lo/setBatteryVelocity;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lo/setUiOrientation;->addTargetData(Lo/setBatteryVelocity;)V

    return-void
.end method
