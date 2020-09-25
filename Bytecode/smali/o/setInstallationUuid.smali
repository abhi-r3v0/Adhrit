.class public Lo/setInstallationUuid;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setInstallationUuid$onNavigationEvent;
    }
.end annotation


# instance fields
.field final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field final query:Lo/AutoValue_CrashlyticsReport_Session_Application;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    iput-object p1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 75
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    return-void
.end method

.method private addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getGenerator$onMessageChannelReady;",
            "Landroid/app/Activity;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 1129
    invoke-direct {p0}, Lo/setInstallationUuid;->validateHasExplicitOrderByForLimitToLast()V

    .line 1132
    invoke-static {p0, p4}, Lo/AutoValue_CrashlyticsReport$Builder;->lambdaFactory$(Lo/setInstallationUuid;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    move-result-object p4

    .line 1146
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    invoke-direct {v0, p1, p4}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;-><init>(Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    .line 1149
    iget-object p1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p1

    iget-object p4, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {p1, p4, p2, v0}, Lo/getEndedAt;->listen(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/getGenerator$onMessageChannelReady;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getOrganization;

    move-result-object p1

    .line 1150
    new-instance p2, Lo/setCrashed;

    iget-object p4, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 1152
    invoke-virtual {p4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p4

    invoke-direct {p2, p4, p1, v0}, Lo/setCrashed;-><init>(Lo/getEndedAt;Lo/getOrganization;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V

    .line 1150
    invoke-static {p3, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->bind(Landroid/app/Activity;Lo/getNdkPayload;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method private boundFromDocumentSnapshot(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;Z)Lo/getFilename;
    .locals 5

    const-string v0, "Provided snapshot must not be null."

    .line 831
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-virtual {p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 838
    invoke-virtual {p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getDocument()Lo/setDiskUsed;

    move-result-object p1

    .line 839
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 846
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOrganization;

    .line 847
    invoke-virtual {v1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v2

    sget-object v3, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-static {v1, v2}, Lo/withSessionEndFields;->refValue(Lo/setProximityOn;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/writeRawMessageSetExtension;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {v1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v2

    .line 851
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->isServerTimestamp(Lo/writeRawMessageSetExtension;)Z

    move-result v3

    const-string v4, "Invalid query. You are trying to start or end a query using a document for which the field \'"

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 859
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 861
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' (used as the orderBy) does not exist."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 852
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\' is an uncommitted server timestamp. (Since the value of this field is unknown, you cannot start/end a query with it.)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 869
    :cond_3
    new-instance p1, Lo/getFilename;

    invoke-direct {p1, p2, p3}, Lo/getFilename;-><init>(Ljava/util/List;Z)V

    return-object p1

    .line 833
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t use a DocumentSnapshot for a document that doesn\'t exist for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lo/getFilename;
    .locals 6

    .line 875
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    .line 876
    array-length v1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 885
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 886
    aget-object v3, p2, v2

    .line 887
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setOrganization;

    .line 888
    invoke-virtual {v4}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v4

    sget-object v5, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 889
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 897
    check-cast v3, Ljava/lang/String;

    .line 898
    iget-object v4, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 899
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. When querying a collection and ordering by FieldPath.documentId(), the value passed to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() must be a plain document ID, but \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' contains a slash."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 907
    :cond_1
    :goto_1
    iget-object v4, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v4

    invoke-static {v3}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object v3

    invoke-virtual {v4, v3}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object v3

    check-cast v3, Lo/setJailbroken;

    .line 908
    invoke-static {v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 917
    invoke-static {v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    .line 918
    iget-object v4, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v4

    invoke-static {v4, v3}, Lo/withSessionEndFields;->refValue(Lo/setProximityOn;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/writeRawMessageSetExtension;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 909
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. When querying a collection group and ordering by FieldPath.documentId(), the value passed to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() must result in a valid document path, but \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not because it contains an odd number of segments."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 890
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. Expected a string for document ID in "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(), but got "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 920
    :cond_4
    iget-object v4, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v4}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseQueryValue(Ljava/lang/Object;)Lo/writeRawMessageSetExtension;

    move-result-object v3

    .line 921
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 925
    :cond_5
    new-instance p1, Lo/getFilename;

    invoke-direct {p1, v1, p3}, Lo/getFilename;-><init>(Ljava/util/List;Z)V

    return-object p1

    .line 877
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Too many arguments provided to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(). The number of arguments must be less than or equal to the number of orderBy() clauses."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private conflictingOps(Lo/isCrashed$onNavigationEvent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isCrashed$onNavigationEvent;",
            ")",
            "Ljava/util/List<",
            "Lo/isCrashed$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 539
    sget-object v0, Lo/isCurrent$ICustomTabsCallback;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x3

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    .line 557
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-array p1, v5, [Lo/isCrashed$onNavigationEvent;

    .line 550
    sget-object v5, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    aput-object v5, p1, v0

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v2

    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v3

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v4, [Lo/isCrashed$onNavigationEvent;

    .line 547
    sget-object v4, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    aput-object v4, p1, v0

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v2

    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v3, [Lo/isCrashed$onNavigationEvent;

    .line 545
    sget-object v3, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    aput-object v3, p1, v0

    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v2

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v3, [Lo/isCrashed$onNavigationEvent;

    .line 543
    sget-object v3, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    aput-object v3, p1, v0

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v2

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    new-array p1, v1, [Lo/isCrashed$onNavigationEvent;

    .line 541
    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    aput-object v1, p1, v0

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getViaSnapshotListener(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/setSession;",
            ">;"
        }
    .end annotation

    .line 965
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 966
    new-instance v1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 968
    new-instance v2, Lo/getGenerator$onMessageChannelReady;

    invoke-direct {v2}, Lo/getGenerator$onMessageChannelReady;-><init>()V

    const/4 v3, 0x1

    .line 969
    iput-boolean v3, v2, Lo/getGenerator$onMessageChannelReady;->includeDocumentMetadataChanges:Z

    .line 970
    iput-boolean v3, v2, Lo/getGenerator$onMessageChannelReady;->includeQueryMetadataChanges:Z

    .line 971
    iput-boolean v3, v2, Lo/getGenerator$onMessageChannelReady;->waitForSyncWhenOnline:Z

    .line 973
    sget-object v3, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lo/setSdkVersion;->lambdaFactory$(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    move-result-object p1

    const/4 v4, 0x0

    .line 974
    invoke-direct {p0, v3, v2, v4, p1}, Lo/setInstallationUuid;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    .line 2008
    iget-object v1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v1, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    .line 2014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method private static internalOptions(Lo/getBuildVersion;)Lo/getGenerator$onMessageChannelReady;
    .locals 4

    .line 1185
    new-instance v0, Lo/getGenerator$onMessageChannelReady;

    invoke-direct {v0}, Lo/getGenerator$onMessageChannelReady;-><init>()V

    .line 1186
    sget-object v1, Lo/getBuildVersion;->INCLUDE:Lo/getBuildVersion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lo/getGenerator$onMessageChannelReady;->includeDocumentMetadataChanges:Z

    .line 1187
    sget-object v1, Lo/getBuildVersion;->INCLUDE:Lo/getBuildVersion;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lo/getGenerator$onMessageChannelReady;->includeQueryMetadataChanges:Z

    .line 1188
    iput-boolean v3, v0, Lo/getGenerator$onMessageChannelReady;->waitForSyncWhenOnline:Z

    return-object v0
.end method

.method static synthetic lambda$addSnapshotListenerInternal$2(Lo/setInstallationUuid;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;Lo/getDiskSpace;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1135
    invoke-interface {p1, v0, p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-array p3, p3, [Ljava/lang/Object;

    const-string v2, "Got event without value or error set"

    .line 1139
    invoke-static {v1, v2, p3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    new-instance p3, Lo/setSession;

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {p3, p0, p2, v1}, Lo/setSession;-><init>(Lo/setInstallationUuid;Lo/getDiskSpace;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    .line 1142
    invoke-interface {p1, p3, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method public static synthetic lambda$get$0(Lo/setInstallationUuid;Lcom/google/android/gms/tasks/Task;)Lo/setSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 958
    new-instance v0, Lo/setSession;

    new-instance v1, Lo/setInstallationUuid;

    iget-object v2, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v3, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v1, v2, v3}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getDiskSpace;

    iget-object p0, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, v1, p1, p0}, Lo/setSession;-><init>(Lo/setInstallationUuid;Lo/getDiskSpace;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method static synthetic lambda$getViaSnapshotListener$1(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;Lo/setSession;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const-string v0, "Failed to register a listener for a query result"

    if-eqz p4, :cond_0

    .line 3011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p4}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    :cond_0
    const/4 p4, 0x0

    .line 3014
    :try_start_0
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 988
    invoke-static {p1}, Lo/clearInstancesForTest;->onNavigationEvent(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getNdkPayload;

    .line 992
    invoke-interface {p1}, Lo/getNdkPayload;->remove()V

    .line 994
    invoke-virtual {p3}, Lo/setSession;->getMetadata()Lo/setBuildVersion;

    move-result-object p1

    invoke-virtual {p1}, Lo/setBuildVersion;->isFromCache()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->SERVER:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    if-ne p2, p1, :cond_1

    .line 995
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string p2, "Failed to get documents from server. (However, these documents may exist in the local cache. Run again without setting source to SERVER to retrieve the cached documents.)"

    sget-object p3, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    .line 4011
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 5008
    :cond_1
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p3}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1007
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-array p1, p4, [Ljava/lang/Object;

    .line 1008
    invoke-static {p0, v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-array p1, p4, [Ljava/lang/Object;

    .line 1005
    invoke-static {p0, v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method private orderBy(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;
    .locals 2

    const-string v0, "Provided direction must not be null."

    .line 653
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getStartAt()Lo/getFilename;

    move-result-object v0

    if-nez v0, :cond_2

    .line 659
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getEndAt()Lo/getFilename;

    move-result-object v0

    if-nez v0, :cond_1

    .line 664
    invoke-direct {p0, p1}, Lo/setInstallationUuid;->validateOrderByField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    .line 666
    sget-object v0, Lo/setInstallationUuid$onNavigationEvent;->ASCENDING:Lo/setInstallationUuid$onNavigationEvent;

    if-ne p2, v0, :cond_0

    .line 667
    sget-object p2, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    goto :goto_0

    .line 668
    :cond_0
    sget-object p2, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    .line 669
    :goto_0
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-static {p2, p1}, Lo/setOrganization;->getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->orderBy(Lo/setOrganization;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object p2, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, p2}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0

    .line 660
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid query. You must not call Query.endAt() or Query.endBefore() before calling Query.orderBy()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 655
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid query. You must not call Query.startAt() or Query.startAfter() before calling Query.orderBy()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseDocumentIdValue(Ljava/lang/Object;)Lo/writeRawMessageSetExtension;
    .locals 3

    .line 444
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 445
    check-cast p1, Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 451
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->isCollectionGroupQuery()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. When querying a collection by FieldPath.documentId() you must provide a plain document ID, but \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' contains a \'/\' character."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-static {p1}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    .line 459
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {p0}, Lo/setInstallationUuid;->getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v0

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-static {v0, p1}, Lo/withSessionEndFields;->refValue(Lo/setProximityOn;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1

    .line 460
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. When querying a collection group by FieldPath.documentId(), the value provided must result in a valid document path, but \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not because it has an odd number of segments ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query. When querying with FieldPath.documentId() you must provide a valid document ID, but it was an empty string."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_4
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    if-eqz v0, :cond_5

    .line 470
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    .line 471
    invoke-virtual {p0}, Lo/setInstallationUuid;->getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getDatabaseId()Lo/setProximityOn;

    move-result-object v0

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-static {v0, p1}, Lo/withSessionEndFields;->refValue(Lo/setProximityOn;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1

    .line 473
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. When querying with FieldPath.documentId() you must provide a valid String or DocumentReference, but it was of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-static {p1}, Lo/eventFromJson;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateDisjunctiveFilterElements(Ljava/lang/Object;Lo/isCrashed$onNavigationEvent;)V
    .locals 3

    .line 482
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "Invalid Query. \'"

    if-gt v0, v1, :cond_4

    .line 492
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v0, :cond_0

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 493
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 499
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 500
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' filters cannot contain \'NaN\' in the value array."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' filters cannot contain \'null\' in the value array."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' filters support a maximum of 10 elements in the value array."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Query. A non-empty array is required for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' filters."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateHasExplicitOrderByForLimitToLast()V
    .locals 2

    .line 1156
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToLast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "limitToLast() queries require specifying at least one orderBy() clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateNewFilter(Lo/isCrashed;)V
    .locals 4

    .line 562
    instance-of v0, p1, Lo/getOs;

    if-eqz v0, :cond_4

    .line 563
    move-object v0, p1

    check-cast v0, Lo/getOs;

    .line 564
    invoke-virtual {v0}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object v1

    .line 565
    invoke-virtual {v0}, Lo/getOs;->isInequality()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->inequalityField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 567
    invoke-virtual {p1}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 574
    invoke-virtual {v0}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "All where filters other than whereEqualTo() must be on the same field. But you have filters on \'%s\' and \'%s\'"

    .line 571
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 577
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getFirstOrderByField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 579
    invoke-direct {p0, v0, p1}, Lo/setInstallationUuid;->validateOrderByFieldMatchesInequality(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    .line 582
    :cond_2
    iget-object p1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-direct {p0, v1}, Lo/setInstallationUuid;->conflictingOps(Lo/isCrashed$onNavigationEvent;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->findFilterOperator(Ljava/util/List;)Lo/isCrashed$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    .line 586
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Query. You cannot use more than one \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' filter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 589
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Query. You cannot use \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' filters with \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' filters."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private validateOrderByField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->inequalityField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getFirstOrderByField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0, p1, v0}, Lo/setInstallationUuid;->validateOrderByFieldMatchesInequality(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    :cond_0
    return-void
.end method

.method private validateOrderByFieldMatchesInequality(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V
    .locals 3

    .line 511
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p2}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p2

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    .line 519
    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Invalid query. You have an inequality where filter (whereLessThan(), whereGreaterThan(), etc.) on field \'%s\' and so you must also have \'%s\' as your first orderBy() field, but your first orderBy() is currently on field \'%s\' instead."

    .line 514
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 2

    const-string v0, "Provided field path must not be null."

    .line 397
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided op must not be null."

    .line 398
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->isKeyField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v0, :cond_3

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v0, :cond_3

    .line 407
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v0, :cond_1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-direct {p0, p3}, Lo/setInstallationUuid;->parseDocumentIdValue(Ljava/lang/Object;)Lo/writeRawMessageSetExtension;

    move-result-object p3

    goto/16 :goto_4

    .line 408
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p2}, Lo/setInstallationUuid;->validateDisjunctiveFilterElements(Ljava/lang/Object;Lo/isCrashed$onNavigationEvent;)V

    .line 409
    invoke-static {}, Lo/toByteString;->onNavigationEvent()Lo/toByteString$onMessageChannelReady;

    move-result-object v0

    .line 410
    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 411
    invoke-direct {p0, v1}, Lo/setInstallationUuid;->parseDocumentIdValue(Ljava/lang/Object;)Lo/writeRawMessageSetExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/toByteString$onMessageChannelReady;->onPostMessage(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;

    goto :goto_1

    .line 413
    :cond_2
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p3

    invoke-virtual {p3, v0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p3

    invoke-virtual {p3}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p3

    check-cast p3, Lo/writeRawMessageSetExtension;

    goto :goto_4

    .line 403
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. You can\'t perform \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' queries on FieldPath.documentId()."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_4
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v0, :cond_5

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v0, :cond_5

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    if-ne p2, v0, :cond_6

    .line 419
    :cond_5
    invoke-direct {p0, p3, p2}, Lo/setInstallationUuid;->validateDisjunctiveFilterElements(Ljava/lang/Object;Lo/isCrashed$onNavigationEvent;)V

    .line 421
    :cond_6
    iget-object v0, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 423
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getUserDataReader()Lo/AutoValue_CrashlyticsReport_FilesPayload;

    move-result-object v0

    sget-object v1, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    if-eq p2, v1, :cond_8

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    if-ne p2, v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v1, 0x1

    .line 424
    :goto_3
    invoke-virtual {v0, p3, v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload;->parseQueryValue(Ljava/lang/Object;Z)Lo/writeRawMessageSetExtension;

    move-result-object p3

    .line 426
    :goto_4
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lo/getOs;->create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;

    move-result-object p1

    .line 427
    invoke-direct {p0, p1}, Lo/setInstallationUuid;->validateNewFilter(Lo/isCrashed;)V

    .line 428
    new-instance p2, Lo/setInstallationUuid;

    iget-object p3, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {p3, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->filter(Lo/isCrashed;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object p3, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {p2, p1, p3}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object p2
.end method


# virtual methods
.method public addSnapshotListener(Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 1053
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, p1, v0, p2}, Lo/setInstallationUuid;->addSnapshotListener(Landroid/app/Activity;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Landroid/app/Activity;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getBuildVersion;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    const-string v0, "Provided activity must not be null."

    .line 1106
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided MetadataChanges value must not be null."

    .line 1107
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided EventListener must not be null."

    .line 1108
    invoke-static {p3, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1110
    invoke-static {p2}, Lo/setInstallationUuid;->internalOptions(Lo/getBuildVersion;)Lo/getGenerator$onMessageChannelReady;

    move-result-object p2

    .line 1109
    invoke-direct {p0, v0, p2, p1, p3}, Lo/setInstallationUuid;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 1038
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, p1, v0, p2}, Lo/setInstallationUuid;->addSnapshotListener(Ljava/util/concurrent/Executor;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getBuildVersion;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    const-string v0, "Provided executor must not be null."

    .line 1084
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided MetadataChanges value must not be null."

    .line 1085
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided EventListener must not be null."

    .line 1086
    invoke-static {p3, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    invoke-static {p2}, Lo/setInstallationUuid;->internalOptions(Lo/getBuildVersion;)Lo/getGenerator$onMessageChannelReady;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lo/setInstallationUuid;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lo/getGenerator$onMessageChannelReady;Landroid/app/Activity;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 1025
    sget-object v0, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    invoke-virtual {p0, v0, p1}, Lo/setInstallationUuid;->addSnapshotListener(Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBuildVersion;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "Lo/setSession;",
            ">;)",
            "Lo/getNdkPayload;"
        }
    .end annotation

    .line 1067
    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1, p2}, Lo/setInstallationUuid;->addSnapshotListener(Ljava/util/concurrent/Executor;Lo/getBuildVersion;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;)Lo/setInstallationUuid;
    .locals 2

    const-string v0, "endAt"

    const/4 v1, 0x0

    .line 802
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromDocumentSnapshot(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;Z)Lo/getFilename;

    move-result-object p1

    .line 803
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public varargs endAt([Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 2

    const-string v0, "endAt"

    const/4 v1, 0x0

    .line 816
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lo/getFilename;

    move-result-object p1

    .line 817
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public endBefore(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;)Lo/setInstallationUuid;
    .locals 2

    const-string v0, "endBefore"

    const/4 v1, 0x1

    .line 774
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromDocumentSnapshot(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;Z)Lo/getFilename;

    move-result-object p1

    .line 775
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public varargs endBefore([Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 2

    const-string v0, "endBefore"

    const/4 v1, 0x1

    .line 788
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lo/getFilename;

    move-result-object p1

    .line 789
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->endAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1167
    :cond_0
    instance-of v1, p1, Lo/setInstallationUuid;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1171
    :cond_1
    check-cast p1, Lo/setInstallationUuid;

    .line 1173
    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v3, p1, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object p1, p1, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public get()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/setSession;",
            ">;"
        }
    .end annotation

    .line 935
    sget-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->DEFAULT:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    invoke-virtual {p0, v0}, Lo/setInstallationUuid;->get(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public get(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_CustomAttribute;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/setSession;",
            ">;"
        }
    .end annotation

    .line 950
    invoke-direct {p0}, Lo/setInstallationUuid;->validateHasExplicitOrderByForLimitToLast()V

    .line 951
    sget-object v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute;->CACHE:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    if-ne p1, v0, :cond_0

    .line 952
    iget-object p1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 953
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getClient()Lo/getEndedAt;

    move-result-object p1

    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 954
    invoke-virtual {p1, v0}, Lo/getEndedAt;->getDocumentsFromLocalCache(Lo/AutoValue_CrashlyticsReport_Session_Application;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lo/toStringMap$onMessageChannelReady;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lo/attach$onMessageChannelReady;->lambdaFactory$(Lo/setInstallationUuid;)Lo/isDefaultApp;

    move-result-object v1

    .line 955
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Ljava/util/concurrent/Executor;Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lo/setInstallationUuid;->getViaSnapshotListener(Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getFirestore()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1178
    iget-object v0, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1179
    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public limit(J)Lo/setInstallationUuid;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 685
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitToFirst(J)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object p2, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, p2}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Query. Query limit ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid. Limit must be positive."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public limitToLast(J)Lo/setInstallationUuid;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 704
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->limitToLast(J)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object p2, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, p2}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Query. Query limitToLast ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid. Limit must be positive."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orderBy(Ljava/lang/String;)Lo/setInstallationUuid;
    .locals 1

    .line 608
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/setInstallationUuid$onNavigationEvent;->ASCENDING:Lo/setInstallationUuid$onNavigationEvent;

    invoke-virtual {p0, p1, v0}, Lo/setInstallationUuid;->orderBy(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Ljava/lang/String;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;
    .locals 0

    .line 633
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/setInstallationUuid;->orderBy(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;)Lo/setInstallationUuid;
    .locals 1

    const-string v0, "Provided field path must not be null."

    .line 619
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    sget-object v0, Lo/setInstallationUuid$onNavigationEvent;->ASCENDING:Lo/setInstallationUuid$onNavigationEvent;

    invoke-direct {p0, p1, v0}, Lo/setInstallationUuid;->orderBy(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;
    .locals 1

    const-string v0, "Provided field path must not be null."

    .line 646
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/setInstallationUuid;->orderBy(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/setInstallationUuid$onNavigationEvent;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;)Lo/setInstallationUuid;
    .locals 2

    const-string/jumbo v0, "startAfter"

    const/4 v1, 0x0

    .line 745
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromDocumentSnapshot(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;Z)Lo/getFilename;

    move-result-object p1

    .line 746
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public varargs startAfter([Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 2

    const-string/jumbo v0, "startAfter"

    const/4 v1, 0x0

    .line 760
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lo/getFilename;

    move-result-object p1

    .line 761
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public startAt(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;)Lo/setInstallationUuid;
    .locals 2

    const-string/jumbo v0, "startAt"

    const/4 v1, 0x1

    .line 717
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromDocumentSnapshot(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;Z)Lo/getFilename;

    move-result-object p1

    .line 718
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public varargs startAt([Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 2

    const-string/jumbo v0, "startAt"

    const/4 v1, 0x1

    .line 731
    invoke-direct {p0, v0, p1, v1}, Lo/setInstallationUuid;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lo/getFilename;

    move-result-object p1

    .line 732
    new-instance v0, Lo/setInstallationUuid;

    iget-object v1, p0, Lo/setInstallationUuid;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->startAt(Lo/getFilename;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    iget-object v1, p0, Lo/setInstallationUuid;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, p1, v1}, Lo/setInstallationUuid;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public whereArrayContains(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 263
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereArrayContains(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 280
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereArrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lo/setInstallationUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/setInstallationUuid;"
        }
    .end annotation

    .line 298
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereArrayContainsAny(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/util/List;)Lo/setInstallationUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/setInstallationUuid;"
        }
    .end annotation

    .line 316
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 94
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereEqualTo(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 107
    sget-object v0, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 206
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThan(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 219
    sget-object v0, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 233
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    .line 232
    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThanOrEqualTo(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 246
    sget-object v0, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereIn(Ljava/lang/String;Ljava/util/List;)Lo/setInstallationUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/setInstallationUuid;"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereIn(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/util/List;)Lo/setInstallationUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/setInstallationUuid;"
        }
    .end annotation

    .line 348
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 154
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThan(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 167
    sget-object v0, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 180
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThanOrEqualTo(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 193
    sget-object v0, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 124
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method whereNotEqualTo(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Object;)Lo/setInstallationUuid;
    .locals 1

    .line 141
    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method whereNotIn(Ljava/lang/String;Ljava/util/List;)Lo/setInstallationUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/setInstallationUuid;"
        }
    .end annotation

    .line 366
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method

.method whereNotIn(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/util/List;)Lo/setInstallationUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/setInstallationUuid;"
        }
    .end annotation

    .line 384
    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/setInstallationUuid;->whereHelper(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/isCrashed$onNavigationEvent;Ljava/lang/Object;)Lo/setInstallationUuid;

    move-result-object p1

    return-object p1
.end method
