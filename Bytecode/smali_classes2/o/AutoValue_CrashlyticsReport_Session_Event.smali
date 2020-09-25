.class public final Lo/AutoValue_CrashlyticsReport_Session_Event;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final added:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final fromCache:Z

.field private final removed:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final targetId:I


# direct methods
.method public constructor <init>(IZLo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->targetId:I

    .line 67
    iput-boolean p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->fromCache:Z

    .line 68
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->added:Lo/CrashlyticsReportWithSessionId;

    .line 69
    iput-object p4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->removed:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method public static fromViewSnapshot(ILo/getDiskSpace;)Lo/AutoValue_CrashlyticsReport_Session_Event;
    .locals 6

    .line 31
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    new-instance v1, Lo/CrashlyticsReportWithSessionId;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 36
    invoke-virtual {p1}, Lo/getDiskSpace;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setContents;

    .line 37
    sget-object v4, Lo/MediaDescriptionCompat;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {v3}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v3}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object v3

    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object v3

    invoke-virtual {v3}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    new-instance v2, Lo/AutoValue_CrashlyticsReport_Session_Event;

    invoke-virtual {p1}, Lo/getDiskSpace;->isFromCache()Z

    move-result p1

    invoke-direct {v2, p0, p1, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event;-><init>(IZLo/CrashlyticsReportWithSessionId;Lo/CrashlyticsReportWithSessionId;)V

    return-object v2
.end method


# virtual methods
.method public final getAdded()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->added:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public final getRemoved()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->removed:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public final getTargetId()I
    .locals 1

    .line 73
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->targetId:I

    return v0
.end method

.method public final isFromCache()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event;->fromCache:Z

    return v0
.end method
