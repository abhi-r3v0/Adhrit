.class public Lo/setSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSession$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/setPlatform;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private cachedChangesMetadataState:Lo/getBuildVersion;

.field private final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final metadata:Lo/setBuildVersion;

.field private final originalQuery:Lo/setInstallationUuid;

.field private final snapshot:Lo/getDiskSpace;


# direct methods
.method constructor <init>(Lo/setInstallationUuid;Lo/getDiskSpace;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setInstallationUuid;

    iput-object p1, p0, Lo/setSession;->originalQuery:Lo/setInstallationUuid;

    .line 52
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getDiskSpace;

    iput-object p1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    .line 53
    invoke-static {p3}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p1, p0, Lo/setSession;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 54
    new-instance p1, Lo/setBuildVersion;

    invoke-virtual {p2}, Lo/getDiskSpace;->hasPendingWrites()Z

    move-result p3

    invoke-virtual {p2}, Lo/getDiskSpace;->isFromCache()Z

    move-result p2

    invoke-direct {p1, p3, p2}, Lo/setBuildVersion;-><init>(ZZ)V

    iput-object p1, p0, Lo/setSession;->metadata:Lo/setBuildVersion;

    return-void
.end method

.method static synthetic access$000(Lo/setSession;Lo/setDiskUsed;)Lo/setPlatform;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/setSession;->convertDocument(Lo/setDiskUsed;)Lo/setPlatform;

    move-result-object p0

    return-object p0
.end method

.method private convertDocument(Lo/setDiskUsed;)Lo/setPlatform;
    .locals 4

    .line 190
    iget-object v0, p0, Lo/setSession;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    .line 193
    invoke-virtual {v1}, Lo/getDiskSpace;->isFromCache()Z

    move-result v1

    iget-object v2, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    .line 194
    invoke-virtual {v2}, Lo/getDiskSpace;->getMutatedKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 190
    invoke-static {v0, p1, v1, v2}, Lo/setPlatform;->fromDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/setDiskUsed;ZZ)Lo/setPlatform;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 202
    :cond_0
    instance-of v1, p1, Lo/setSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 205
    :cond_1
    check-cast p1, Lo/setSession;

    .line 206
    iget-object v1, p0, Lo/setSession;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v3, p1, Lo/setSession;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setSession;->originalQuery:Lo/setInstallationUuid;

    iget-object v3, p1, Lo/setSession;->originalQuery:Lo/setInstallationUuid;

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    iget-object v3, p1, Lo/setSession;->snapshot:Lo/getDiskSpace;

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setSession;->metadata:Lo/setBuildVersion;

    iget-object p1, p1, Lo/setSession;->metadata:Lo/setBuildVersion;

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDocumentChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, v0}, Lo/setSession;->getDocumentChanges(Lo/getBuildVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentChanges(Lo/getBuildVersion;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBuildVersion;",
            ")",
            "Ljava/util/List<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lo/getBuildVersion;->INCLUDE:Lo/getBuildVersion;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v0}, Lo/getDiskSpace;->excludesMetadataChanges()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "To include metadata changes with your document changes, you must also pass MetadataChanges.INCLUDE to addSnapshotListener()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/setSession;->cachedChanges:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/setSession;->cachedChangesMetadataState:Lo/getBuildVersion;

    if-eq v0, p1, :cond_3

    .line 120
    :cond_2
    iget-object v0, p0, Lo/setSession;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    .line 122
    invoke-static {v0, p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->changesFromSnapshot(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/getBuildVersion;Lo/getDiskSpace;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/setSession;->cachedChanges:Ljava/util/List;

    .line 123
    iput-object p1, p0, Lo/setSession;->cachedChangesMetadataState:Lo/getBuildVersion;

    .line 125
    :cond_3
    iget-object p1, p0, Lo/setSession;->cachedChanges:Ljava/util/List;

    return-object p1
.end method

.method public getDocuments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v1}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v1}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setDiskUsed;

    .line 137
    invoke-direct {p0, v2}, Lo/setSession;->convertDocument(Lo/setDiskUsed;)Lo/setPlatform;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMetadata()Lo/setBuildVersion;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/setSession;->metadata:Lo/setBuildVersion;

    return-object v0
.end method

.method public getQuery()Lo/setInstallationUuid;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/setSession;->originalQuery:Lo/setInstallationUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 214
    iget-object v0, p0, Lo/setSession;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 215
    iget-object v1, p0, Lo/setSession;->originalQuery:Lo/setInstallationUuid;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-object v1, p0, Lo/setSession;->metadata:Lo/setBuildVersion;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v0}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/setPlatform;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Lo/setSession$extraCallback;

    iget-object v1, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v1}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/setSession$extraCallback;-><init>(Lo/setSession;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 149
    iget-object v0, p0, Lo/setSession;->snapshot:Lo/getDiskSpace;

    invoke-virtual {v0}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v0

    return v0
.end method

.method public toObjects(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 166
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/setSession;->toObjects(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toObjects(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Provided POJO type must not be null."

    .line 181
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual {p0}, Lo/setSession;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    .line 184
    invoke-virtual {v2, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->toObject(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
