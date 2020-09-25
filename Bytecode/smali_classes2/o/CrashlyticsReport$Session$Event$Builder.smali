.class final Lo/CrashlyticsReport$Session$Event$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private current:Z

.field private final documentChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setContents$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private hasChanges:Z

.field private outstandingResponses:I

.field private resumeToken:Lo/SessionProtobufHelper;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->outstandingResponses:I

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/CrashlyticsReport$Session$Event$Builder;->documentChanges:Ljava/util/Map;

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    .line 49
    sget-object v1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v1, p0, Lo/CrashlyticsReport$Session$Event$Builder;->resumeToken:Lo/SessionProtobufHelper;

    .line 51
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->current:Z

    return-void
.end method


# virtual methods
.method final addDocumentChange(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setContents$onPostMessage;)V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    .line 125
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->documentChanges:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final clearChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    .line 120
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->documentChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method final hasChanges()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    return v0
.end method

.method final isCurrent()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->current:Z

    return v0
.end method

.method final isPending()Z
    .locals 1

    .line 66
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->outstandingResponses:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final markCurrent()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    .line 143
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->current:Z

    return-void
.end method

.method final recordPendingTargetRequest()V
    .locals 1

    .line 134
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->outstandingResponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->outstandingResponses:I

    return-void
.end method

.method final recordTargetResponse()V
    .locals 1

    .line 138
    iget v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->outstandingResponses:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->outstandingResponses:I

    return-void
.end method

.method final removeDocumentChange(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    .line 130
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Builder;->documentChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final toTargetChange()Lo/CrashlyticsReport$Session$Event$Device$Builder;
    .locals 10

    .line 91
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    .line 92
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    .line 93
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lo/CrashlyticsReport$Session$Event$Builder;->documentChanges:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setContents$onPostMessage;

    .line 98
    sget-object v2, Lo/getIconUri$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 106
    invoke-virtual {v9, v1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v9

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Encountered invalid change type: %s"

    .line 109
    invoke-static {v0, v1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 103
    :cond_1
    invoke-virtual {v8, v1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v8

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v7, v1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v7

    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    iget-object v5, p0, Lo/CrashlyticsReport$Session$Event$Builder;->resumeToken:Lo/SessionProtobufHelper;

    iget-boolean v6, p0, Lo/CrashlyticsReport$Session$Event$Builder;->current:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/CrashlyticsReport$Session$Event$Device$Builder;-><init>(Lo/SessionProtobufHelper;ZLo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;)V

    return-object v0
.end method

.method final updateResumeToken(Lo/SessionProtobufHelper;)V
    .locals 2

    .line 1235
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    iput-boolean v1, p0, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges:Z

    .line 81
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Builder;->resumeToken:Lo/SessionProtobufHelper;

    :cond_1
    return-void
.end method
