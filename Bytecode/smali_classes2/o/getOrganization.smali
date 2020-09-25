.class public Lo/getOrganization;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final listener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/getDiskSpace;",
            ">;"
        }
    .end annotation
.end field

.field private onlineState:Lo/setGeneratorType;

.field private final options:Lo/getGenerator$onMessageChannelReady;

.field private final query:Lo/AutoValue_CrashlyticsReport_Session_Application;

.field private raisedInitialEvent:Z

.field private snapshot:Lo/getDiskSpace;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/getGenerator$onMessageChannelReady;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/getGenerator$onMessageChannelReady;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/getDiskSpace;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lo/getOrganization;->raisedInitialEvent:Z

    .line 47
    sget-object v0, Lo/setGeneratorType;->UNKNOWN:Lo/setGeneratorType;

    iput-object v0, p0, Lo/getOrganization;->onlineState:Lo/setGeneratorType;

    .line 53
    iput-object p1, p0, Lo/getOrganization;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 54
    iput-object p3, p0, Lo/getOrganization;->listener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    .line 55
    iput-object p2, p0, Lo/getOrganization;->options:Lo/getGenerator$onMessageChannelReady;

    return-void
.end method

.method private raiseInitialEvent(Lo/getDiskSpace;)V
    .locals 5

    .line 167
    iget-boolean v0, p0, Lo/getOrganization;->raisedInitialEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to raise initial event for second time"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p1}, Lo/getDiskSpace;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Lo/getDiskSpace;->getMutatedKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    .line 173
    invoke-virtual {p1}, Lo/getDiskSpace;->isFromCache()Z

    move-result v4

    .line 174
    invoke-virtual {p1}, Lo/getDiskSpace;->excludesMetadataChanges()Z

    move-result p1

    .line 169
    invoke-static {v0, v2, v3, v4, p1}, Lo/getDiskSpace;->fromInitialDocuments(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/CrashlyticsReportWithSessionId;ZZ)Lo/getDiskSpace;

    move-result-object p1

    .line 175
    iput-boolean v1, p0, Lo/getOrganization;->raisedInitialEvent:Z

    .line 176
    iget-object v0, p0, Lo/getOrganization;->listener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method private shouldRaiseEvent(Lo/getDiskSpace;)Z
    .locals 4

    .line 150
    invoke-virtual {p1}, Lo/getDiskSpace;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lo/getOrganization;->snapshot:Lo/getDiskSpace;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lo/getDiskSpace;->hasPendingWrites()Z

    move-result v0

    invoke-virtual {p1}, Lo/getDiskSpace;->hasPendingWrites()Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-virtual {p1}, Lo/getDiskSpace;->didSyncStateChange()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    .line 157
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/getOrganization;->options:Lo/getGenerator$onMessageChannelReady;

    iget-boolean p1, p1, Lo/getGenerator$onMessageChannelReady;->includeQueryMetadataChanges:Z

    return p1
.end method

.method private shouldRaiseInitialEvent(Lo/getDiskSpace;Lo/setGeneratorType;)Z
    .locals 5

    .line 123
    iget-boolean v0, p0, Lo/getOrganization;->raisedInitialEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Determining whether to raise first event but already had first event."

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Lo/getDiskSpace;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    sget-object v0, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 137
    iget-object v3, p0, Lo/getOrganization;->options:Lo/getGenerator$onMessageChannelReady;

    iget-boolean v3, v3, Lo/getGenerator$onMessageChannelReady;->waitForSyncWhenOnline:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lo/getDiskSpace;->isFromCache()Z

    move-result p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Waiting for sync, but snapshot is not from cache"

    invoke-static {p1, v0, p2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 143
    :cond_1
    invoke-virtual {p1}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object p1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/getOrganization;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    return-object v0
.end method

.method public onError(Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lo/getOrganization;->listener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public onOnlineStateChanged(Lo/setGeneratorType;)Z
    .locals 2

    .line 113
    iput-object p1, p0, Lo/getOrganization;->onlineState:Lo/setGeneratorType;

    .line 115
    iget-object v0, p0, Lo/getOrganization;->snapshot:Lo/getDiskSpace;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lo/getOrganization;->raisedInitialEvent:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lo/getOrganization;->shouldRaiseInitialEvent(Lo/getDiskSpace;Lo/setGeneratorType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lo/getOrganization;->snapshot:Lo/getDiskSpace;

    invoke-direct {p0, p1}, Lo/getOrganization;->raiseInitialEvent(Lo/getDiskSpace;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onViewSnapshot(Lo/getDiskSpace;)Z
    .locals 12

    .line 69
    invoke-virtual {p1}, Lo/getDiskSpace;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/getDiskSpace;->didSyncStateChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "We got a new snapshot with no changes?"

    .line 68
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lo/getOrganization;->options:Lo/getGenerator$onMessageChannelReady;

    iget-boolean v0, v0, Lo/getGenerator$onMessageChannelReady;->includeDocumentMetadataChanges:Z

    if-nez v0, :cond_4

    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p1}, Lo/getDiskSpace;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setContents;

    .line 77
    invoke-virtual {v3}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    if-eq v4, v5, :cond_2

    .line 78
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 81
    :cond_3
    new-instance v0, Lo/getDiskSpace;

    .line 83
    invoke-virtual {p1}, Lo/getDiskSpace;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v4

    .line 84
    invoke-virtual {p1}, Lo/getDiskSpace;->getDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v5

    .line 85
    invoke-virtual {p1}, Lo/getDiskSpace;->getOldDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v6

    .line 87
    invoke-virtual {p1}, Lo/getDiskSpace;->isFromCache()Z

    move-result v8

    .line 88
    invoke-virtual {p1}, Lo/getDiskSpace;->getMutatedKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v9

    .line 89
    invoke-virtual {p1}, Lo/getDiskSpace;->didSyncStateChange()Z

    move-result v10

    const/4 v11, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lo/getDiskSpace;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Ljava/util/List;ZLo/CrashlyticsReportWithSessionId;ZZ)V

    move-object p1, v0

    .line 93
    :cond_4
    iget-boolean v0, p0, Lo/getOrganization;->raisedInitialEvent:Z

    if-nez v0, :cond_5

    .line 94
    iget-object v0, p0, Lo/getOrganization;->onlineState:Lo/setGeneratorType;

    invoke-direct {p0, p1, v0}, Lo/getOrganization;->shouldRaiseInitialEvent(Lo/getDiskSpace;Lo/setGeneratorType;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    invoke-direct {p0, p1}, Lo/getOrganization;->raiseInitialEvent(Lo/getDiskSpace;)V

    goto :goto_3

    .line 98
    :cond_5
    invoke-direct {p0, p1}, Lo/getOrganization;->shouldRaiseEvent(Lo/getDiskSpace;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lo/getOrganization;->listener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :goto_3
    const/4 v1, 0x1

    .line 103
    :cond_6
    iput-object p1, p0, Lo/getOrganization;->snapshot:Lo/getDiskSpace;

    return v1
.end method
