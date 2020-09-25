.class public final Lo/CrashlyticsReport$Session$Event$Device$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final addedDocuments:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final current:Z

.field private final modifiedDocuments:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final removedDocuments:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final resumeToken:Lo/SessionProtobufHelper;


# direct methods
.method public constructor <init>(Lo/SessionProtobufHelper;ZLo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionProtobufHelper;",
            "Z",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->resumeToken:Lo/SessionProtobufHelper;

    .line 50
    iput-boolean p2, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->current:Z

    .line 51
    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->addedDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 52
    iput-object p4, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->modifiedDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 53
    iput-object p5, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->removedDocuments:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method public static createSynthesizedTargetChangeForCurrentChange(Z)Lo/CrashlyticsReport$Session$Event$Device$Builder;
    .locals 7

    .line 35
    new-instance v6, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    sget-object v1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    .line 38
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    .line 39
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v4

    .line 40
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v5

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lo/CrashlyticsReport$Session$Event$Device$Builder;-><init>(Lo/SessionProtobufHelper;ZLo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;)V

    return-object v6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$Session$Event$Device$Builder;

    .line 104
    iget-boolean v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->current:Z

    iget-boolean v2, p1, Lo/CrashlyticsReport$Session$Event$Device$Builder;->current:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 105
    :cond_2
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->resumeToken:Lo/SessionProtobufHelper;

    iget-object v2, p1, Lo/CrashlyticsReport$Session$Event$Device$Builder;->resumeToken:Lo/SessionProtobufHelper;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 106
    :cond_3
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->addedDocuments:Lo/CrashlyticsReportWithSessionId;

    iget-object v2, p1, Lo/CrashlyticsReport$Session$Event$Device$Builder;->addedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 107
    :cond_4
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->modifiedDocuments:Lo/CrashlyticsReportWithSessionId;

    iget-object v2, p1, Lo/CrashlyticsReport$Session$Event$Device$Builder;->modifiedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 108
    :cond_5
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->removedDocuments:Lo/CrashlyticsReportWithSessionId;

    iget-object p1, p1, Lo/CrashlyticsReport$Session$Event$Device$Builder;->removedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public final getAddedDocuments()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->addedDocuments:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public final getModifiedDocuments()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->modifiedDocuments:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public final getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->removedDocuments:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public final getResumeToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->resumeToken:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 113
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->resumeToken:Lo/SessionProtobufHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-boolean v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->current:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->addedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->modifiedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->removedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCurrent()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$Event$Device$Builder;->current:Z

    return v0
.end method
