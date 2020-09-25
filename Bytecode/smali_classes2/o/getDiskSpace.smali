.class public Lo/getDiskSpace;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDiskSpace$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setContents;",
            ">;"
        }
    .end annotation
.end field

.field private final didSyncStateChange:Z

.field private final documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

.field private excludesMetadataChanges:Z

.field private final isFromCache:Z

.field private final mutatedKeys:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

.field private final query:Lo/AutoValue_CrashlyticsReport_Session_Application;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Ljava/util/List;ZLo/CrashlyticsReportWithSessionId;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;",
            "Ljava/util/List<",
            "Lo/setContents;",
            ">;Z",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;ZZ)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/getDiskSpace;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 53
    iput-object p2, p0, Lo/getDiskSpace;->documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 54
    iput-object p3, p0, Lo/getDiskSpace;->oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 55
    iput-object p4, p0, Lo/getDiskSpace;->changes:Ljava/util/List;

    .line 56
    iput-boolean p5, p0, Lo/getDiskSpace;->isFromCache:Z

    .line 57
    iput-object p6, p0, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 58
    iput-boolean p7, p0, Lo/getDiskSpace;->didSyncStateChange:Z

    .line 59
    iput-boolean p8, p0, Lo/getDiskSpace;->excludesMetadataChanges:Z

    return-void
.end method

.method public static fromInitialDocuments(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/CrashlyticsReportWithSessionId;ZZ)Lo/getDiskSpace;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;ZZ)",
            "Lo/getDiskSpace;"
        }
    .end annotation

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setDiskUsed;

    .line 71
    sget-object v2, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    invoke-static {v2, v1}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    new-instance v9, Lo/getDiskSpace;

    .line 76
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->emptySet(Ljava/util/Comparator;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v3

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lo/getDiskSpace;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Ljava/util/List;ZLo/CrashlyticsReportWithSessionId;ZZ)V

    return-object v9
.end method


# virtual methods
.method public didSyncStateChange()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lo/getDiskSpace;->didSyncStateChange:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 125
    :cond_0
    instance-of v0, p1, Lo/getDiskSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 129
    :cond_1
    check-cast p1, Lo/getDiskSpace;

    .line 131
    iget-boolean v0, p0, Lo/getDiskSpace;->isFromCache:Z

    iget-boolean v2, p1, Lo/getDiskSpace;->isFromCache:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 134
    :cond_2
    iget-boolean v0, p0, Lo/getDiskSpace;->didSyncStateChange:Z

    iget-boolean v2, p1, Lo/getDiskSpace;->didSyncStateChange:Z

    if-eq v0, v2, :cond_3

    return v1

    .line 137
    :cond_3
    iget-boolean v0, p0, Lo/getDiskSpace;->excludesMetadataChanges:Z

    iget-boolean v2, p1, Lo/getDiskSpace;->excludesMetadataChanges:Z

    if-eq v0, v2, :cond_4

    return v1

    .line 140
    :cond_4
    iget-object v0, p0, Lo/getDiskSpace;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v2, p1, Lo/getDiskSpace;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 143
    :cond_5
    iget-object v0, p0, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    iget-object v2, p1, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 146
    :cond_6
    iget-object v0, p0, Lo/getDiskSpace;->documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    iget-object v2, p1, Lo/getDiskSpace;->documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 149
    :cond_7
    iget-object v0, p0, Lo/getDiskSpace;->oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    iget-object v2, p1, Lo/getDiskSpace;->oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 152
    :cond_8
    iget-object v0, p0, Lo/getDiskSpace;->changes:Ljava/util/List;

    iget-object p1, p1, Lo/getDiskSpace;->changes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public excludesMetadataChanges()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lo/getDiskSpace;->excludesMetadataChanges:Z

    return v0
.end method

.method public getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setContents;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/getDiskSpace;->changes:Ljava/util/List;

    return-object v0
.end method

.method public getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/getDiskSpace;->documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    return-object v0
.end method

.method public getMutatedKeys()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public getOldDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/getDiskSpace;->oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    return-object v0
.end method

.method public getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/getDiskSpace;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    return-object v0
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 157
    iget-object v0, p0, Lo/getDiskSpace;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-object v1, p0, Lo/getDiskSpace;->documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget-object v1, p0, Lo/getDiskSpace;->oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 160
    iget-object v1, p0, Lo/getDiskSpace;->changes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 161
    iget-object v1, p0, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget-boolean v1, p0, Lo/getDiskSpace;->isFromCache:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 163
    iget-boolean v1, p0, Lo/getDiskSpace;->didSyncStateChange:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 164
    iget-boolean v1, p0, Lo/getDiskSpace;->excludesMetadataChanges:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lo/getDiskSpace;->isFromCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getDiskSpace;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/getDiskSpace;->documents:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/getDiskSpace;->oldDocuments:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getDiskSpace;->changes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFromCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/getDiskSpace;->isFromCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mutatedKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getDiskSpace;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 181
    invoke-virtual {v1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", didSyncStateChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/getDiskSpace;->didSyncStateChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", excludesMetadataChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/getDiskSpace;->excludesMetadataChanges:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
