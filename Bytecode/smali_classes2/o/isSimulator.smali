.class public final Lo/isSimulator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$Builder;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IndexFreeQueryEngine"


# instance fields
.field private localDocumentsView:Lo/setModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/populateFramesList;)Lo/CrashlyticsReportWithSessionId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;)",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {p2}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 118
    instance-of v2, v1, Lo/setDiskUsed;

    if-eqz v2, :cond_0

    check-cast v1, Lo/setDiskUsed;

    invoke-virtual {p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matches(Lo/setDiskUsed;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private executeFullCollectionScan(Lo/AutoValue_CrashlyticsReport_Session_Application;)Lo/populateFramesList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-static {}, Lo/lastIndexOf;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "IndexFreeQueryEngine"

    const-string v2, "Using full collection scan to execute query: %s"

    invoke-static {v1, v2, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lo/isSimulator;->localDocumentsView:Lo/setModel;

    sget-object v1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {v0, p1, v1}, Lo/setModel;->getDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object p1

    return-object p1
.end method

.method private needsRefill(Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;Lo/withNdkPayload;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/setDiskUsed;",
            ">;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;",
            "Lo/withNdkPayload;",
            ")Z"
        }
    .end annotation

    .line 143
    invoke-virtual {p3}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result p3

    invoke-virtual {p2}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq p3, v0, :cond_0

    return v1

    .line 154
    :cond_0
    sget-object p3, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    if-ne p1, p3, :cond_1

    .line 155
    invoke-virtual {p2}, Lo/CrashlyticsReportWithSessionId;->getMaxEntry()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDiskUsed;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p2}, Lo/CrashlyticsReportWithSessionId;->getMinEntry()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setDiskUsed;

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_2

    return p2

    .line 161
    :cond_2
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->hasPendingWrites()Z

    move-result p3

    if-nez p3, :cond_4

    .line 162
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {p1, p4}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    return p2

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public final getDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;Lo/CrashlyticsReportWithSessionId;)Lo/populateFramesList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/withNdkPayload;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/isSimulator;->localDocumentsView:Lo/setModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "setLocalDocumentsView() not called"

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matchesAllDocuments()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lo/isSimulator;->executeFullCollectionScan(Lo/AutoValue_CrashlyticsReport_Session_Application;)Lo/populateFramesList;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    sget-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-direct {p0, p1}, Lo/isSimulator;->executeFullCollectionScan(Lo/AutoValue_CrashlyticsReport_Session_Application;)Lo/populateFramesList;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    iget-object v0, p0, Lo/isSimulator;->localDocumentsView:Lo/setModel;

    .line 78
    invoke-virtual {v0, p3}, Lo/setModel;->getDocuments(Ljava/lang/Iterable;)Lo/populateFramesList;

    move-result-object v0

    .line 79
    invoke-direct {p0, p1, v0}, Lo/isSimulator;->applyQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/populateFramesList;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToLast()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    :cond_3
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getLimitType()Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    move-result-object v3

    .line 82
    invoke-direct {p0, v3, v0, p3, p2}, Lo/isSimulator;->needsRefill(Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;Lo/withNdkPayload;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 84
    invoke-direct {p0, p1}, Lo/isSimulator;->executeFullCollectionScan(Lo/AutoValue_CrashlyticsReport_Session_Application;)Lo/populateFramesList;

    move-result-object p1

    return-object p1

    .line 87
    :cond_4
    invoke-static {}, Lo/lastIndexOf;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    const-string v1, "IndexFreeQueryEngine"

    const-string v2, "Re-using previous result from %s to execute query: %s"

    .line 88
    invoke-static {v1, v2, p3}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_5
    iget-object p3, p0, Lo/isSimulator;->localDocumentsView:Lo/setModel;

    .line 98
    invoke-virtual {p3, p1, p2}, Lo/setModel;->getDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;

    move-result-object p1

    .line 102
    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/setDiskUsed;

    .line 103
    invoke-virtual {p3}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method public final handleDocumentChange(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V
    .locals 0

    return-void
.end method

.method public final setLocalDocumentsView(Lo/setModel;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/isSimulator;->localDocumentsView:Lo/setModel;

    return-void
.end method
