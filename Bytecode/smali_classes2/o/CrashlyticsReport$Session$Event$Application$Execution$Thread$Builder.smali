.class public final Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final documentUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final resolvedLimboDocuments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotVersion:Lo/withNdkPayload;

.field private final targetChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/CrashlyticsReport$Session$Event$Device$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final targetMismatches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/withNdkPayload;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/withNdkPayload;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/CrashlyticsReport$Session$Event$Device$Builder;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;",
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->snapshotVersion:Lo/withNdkPayload;

    .line 41
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->targetChanges:Ljava/util/Map;

    .line 42
    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->targetMismatches:Ljava/util/Set;

    .line 43
    iput-object p4, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->documentUpdates:Ljava/util/Map;

    .line 44
    iput-object p5, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->resolvedLimboDocuments:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getDocumentUpdates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->documentUpdates:Ljava/util/Map;

    return-object v0
.end method

.method public final getResolvedLimboDocuments()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->resolvedLimboDocuments:Ljava/util/Set;

    return-object v0
.end method

.method public final getSnapshotVersion()Lo/withNdkPayload;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->snapshotVersion:Lo/withNdkPayload;

    return-object v0
.end method

.method public final getTargetChanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/CrashlyticsReport$Session$Event$Device$Builder;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->targetChanges:Ljava/util/Map;

    return-object v0
.end method

.method public final getTargetMismatches()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->targetMismatches:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteEvent{snapshotVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->snapshotVersion:Lo/withNdkPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->targetChanges:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetMismatches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->targetMismatches:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->documentUpdates:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resolvedLimboDocuments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;->resolvedLimboDocuments:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
